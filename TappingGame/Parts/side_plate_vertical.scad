include <../Parameters/includes.scad>
$fn = 1000;

/* Shows either buttons as whole, or 
    the design for print (button holes) */
for_print = false; 


module side_plate_vertical()
{
    translate( [ fitting_width, ( height  - fittings_length_v ) / 2 ] )
    {
        rotate( a = [ 0, 0, 90 ] )
        {
            fittings_v();
        }
    }
    difference()
    {
        translate( [-side_height , 0 ] )
        {
            square( [ side_height, height ], center= false );
        }
        translate( [-side_height/2, 20] )
        {
            rotate( a = [ 0, 0, 90 ] )
            {
                usb_b();
            }
        }
        translate( [ -side_height + ( side_height - fittings_length_l ) / 2 , 0] )
        {
            fittings_l();
        }
        translate( [ -side_height + ( side_height - fittings_length_l ) / 2 , height - fitting_width ] )
        {
            fittings_l();
        }
    }

}