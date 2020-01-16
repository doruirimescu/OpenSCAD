include <../Parameters/includes.scad>
$fn = 1000;

/* Shows either buttons as whole, or 
    the design for print (button holes) */
for_print = false; 

module side_plate_horizontal()
{
    sqw = width - fitting_width*2;
    translate( [ ( sqw - fittings_length ) / 2 , 0 ] )
    {//Up fitting
        fittings_h();
    }
    translate( [ ( sqw - fittings_length ) / 2, -side_height - fitting_width + 0.001 ] )
    {//Down fitting
        fittings_h();
    }
    translate( [0 , -side_height ] )
    {//Main square
        square( [ sqw, side_height ], center= false );
    }
    translate( [ 0, -side_height + ( side_height - fittings_length_l ) / 2 ] )
    {//Left square
        rotate( a = [ 0, 0, 90 ] )
        {
            fittings_l();
        }
    }
    translate( [ sqw + fitting_width, -side_height + ( side_height - fittings_length_l ) / 2 ] )
    {//Right square
        rotate( a = [ 0, 0, 90 ] )
        {
            fittings_l();
        }
    }
}