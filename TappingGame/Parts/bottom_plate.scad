include <../Parameters/includes.scad>
$fn = 1000;

/* Shows either buttons as whole, or 
    the design for print (button holes) */
for_print = true; 

module bottom_plate()
{
    difference()
    {   
        square( [ width, height ] );
        translate( [ ( width - fittings_length ) / 2, fitting_offset ] )
        {
            fittings_h();
        }
        translate( [ ( width - fittings_length ) / 2, height - fitting_width ] )
        {
            fittings_h();
        }
        
        translate( [ fitting_width + fitting_offset, ( height - fittings_length_v ) / 2 ] )
        {
            rotate( a = [ 0, 0, 90 ] )
            {
                fittings_v();
            }
        }
        translate( [ width - ( fitting_offset ), ( height - fittings_length_v ) / 2 ] )
        {
            rotate( a = [ 0, 0, 90 ] )
            {
                fittings_v();
            }
        }
    }
}