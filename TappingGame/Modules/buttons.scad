include <../Parameters/parameters.scad>

module button()
{
    circle( d = button_diameter );
    translate( button_fixer_coordinates )
    {
        circle( d = button_fixer_diameter );
    }
    translate( -button_fixer_coordinates )
    {
        circle( d = button_fixer_diameter );
    }
}

module buttons()
{
    for( i = [ 0 :  n_buttons - 1 ] )
    {
        translate( [ 0 + i * ( button_whole_diameter + button_button_distance ), 0 ] )
        {
            if( for_print )
                button();
            else
                circle( d = button_whole_diameter );
            translate( [ 0, -button_whole_diameter / 2 - text_size * text_height_scale ] )
                text( text[ i ], font = text_font, size = text_size, spacing = 1.0, halign="center" );
        }   
    }
}