$fn = 200;
length = 2;
hole_distance = 0.6;
difference()
{
    hull()
    {
        circle(1);
        translate( [0, length] )
            circle(1);
    }
    translate( [-0.15, -1] )
        square( [0.3, length] );
    
    translate( [hole_distance, 0] )
        circle(0.15);
    translate( [hole_distance, hole_distance] )
        circle(0.15);
    
    translate( [-hole_distance, 0] )
        circle(0.15);
    translate( [-hole_distance, hole_distance] )
        circle(0.15);
    
    translate( [0, length] )
        circle(0.15);
    translate( [0, length + hole_distance] )
        circle(0.15);
    translate( [0, length - hole_distance] )
        circle(0.15);
    translate( [-hole_distance, length] )
        circle(0.15);
    translate( [hole_distance, length] )
        circle(0.15);
}