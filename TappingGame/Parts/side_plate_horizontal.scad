include <../Parameters/includes.scad>
$fn = 1000;

/* Shows either buttons as whole, or 
    the design for print (button holes) */
for_print = false; 

module side_plate_horizontal()
{
    sqw = width - fitting_width*2;
    translate( [ sqw / 2 - fittings_length / 2 , 0 ] )
    {
        fittings_h();
    }
    translate( [0 , -side_height ] )
    {
        square( [ sqw, side_height ], center= false );
    }
    translate( [ 0, -side_height + ( side_height - fittings_length_l ) / 2 ] )
    {
        rotate( a = [ 0, 0, 90 ] )
        {
            fittings_l();
        }
    }
    translate( [ sqw + fitting_width, -side_height + ( side_height - fittings_length_l ) / 2 ] )
    {
        rotate( a = [ 0, 0, 90 ] )
        {
            fittings_l();
        }
    }
}