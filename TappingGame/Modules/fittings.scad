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

/* Lateral fittings */
module fittings_l()
{
    for( i = [0 : fitting_number_l - 1 ] )
    {
        translate( [ ( fitting_distance_l + fitting_length_l ) * i,  0 ] )
            square( [ fitting_length_l, fitting_width ]);
    }
}