include <../Parameters/includes.scad>
$fn = 1000;

/* Shows either buttons as whole, or 
    the design for print (button holes) */
for_print = false; 


module side_plate_vertical()
{
    translate( [ fitting_width, height / 2 - fittings_length_v / 2 ] )
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
        translate( [-side_height/2, 10] )
        {
            rotate( a = [ 0, 0, 90 ] )
            {
                usb_b();
            }
        }
    }
}
