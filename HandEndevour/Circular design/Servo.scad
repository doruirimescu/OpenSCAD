$fn = 200;
servo_body_length = 4.1;
hole_distance = 0.5;
hole_size = 0.2; //hole radius
frame_width  = 10;
servo_length = servo_body_length +4*hole_distance;
servo_width = 2.1; 
vertical_margin = 3;
number_servos = 3;
frame_length = number_servos * ( servo_length ) + 2 * vertical_margin;


module servo()
{
    translate( [ -servo_width/2, -servo_body_length/2 ] )
    {  
        square( [ servo_width, servo_body_length ]);
    }
    translate( [ servo_width/2 - hole_distance, servo_body_length/2 + hole_distance ] )
    {
            circle( hole_size );
    }
    translate( [ -servo_width/2 + hole_distance, servo_body_length/2 + hole_distance ] )
    {
            circle( hole_size );
    }

    translate( [ -servo_width/2 + hole_distance, -servo_body_length/2 - hole_distance ] )
    {
            circle( hole_size );
    }
    translate( [ servo_width/2 - hole_distance, -servo_body_length/2 - hole_distance ] )
    {
            circle( hole_size );
    }
}

module servos()
{
    for( i = [ 1 : number_servos ] )
    {
        translate( [ 0, (i-1) * (-4 * hole_distance - servo_body_length )] )
        {
            servo();
        }
       
    }
}
module frame( width, length )
{
    translate( [ -frame_width/2 , -( (number_servos - 0.5) * ( servo_length ) ) - vertical_margin ] )
    {
        square( [ width, length ]);
    }
}
servos();
frame_thickness = 0.1;
difference()
{
    frame( frame_width, frame_length );
    translate( [ frame_thickness, frame_thickness ] )
    {
        frame( frame_width - frame_thickness * 2, frame_length - frame_thickness * 2 );
    }
}