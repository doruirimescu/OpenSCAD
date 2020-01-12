include <../Parameters/parameters.scad>

/* Horizontal fittings */
module fittings_h()
{
    for( i = [0 : fitting_number_h - 1 ] )
    {
        translate( [ ( fitting_distance + fitting_length ) * i, 0 ] )
            square( [ fitting_length, fitting_width ] );
    }
}

/* Vertical fittings */
module fittings_v()
{
    for( i = [0 : fitting_number_v - 1 ] )
    {
        translate( [ ( fitting_distance_v + fitting_length ) * i,  0 ] )
            square( [ fitting_length, fitting_width ]);
    }
}