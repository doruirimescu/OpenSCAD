include <../Parameters/includes.scad>
$fn = 1000;

/* Shows either buttons as whole, or 
    the design for print (button holes) */
for_print = false; 

module side_plate_horizontal()
{

    translate( [ width / 2 - fittings_length / 2 , 0 ] )
    {
        fittings_h();
    }
    translate( [0 , -side_height ] )
    {
        square( [ width, side_height ], center= false );
    }
}