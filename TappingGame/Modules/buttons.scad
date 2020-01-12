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
    translate( button1_location )
    {
        if( for_print ) 
            button();
        else
            circle( d=button_whole_diameter );
        translate( [ 0, -button_whole_diameter / 2 - text_size * text_height_scale ] )
            text( text_1, font = text_font, size = text_size, spacing = 1.0, halign="center" );
    }
    translate( button2_location )
    {
        if( for_print ) 
            button();
        else
            circle( d=button_whole_diameter );
        translate( [ 0, -button_whole_diameter / 2 - text_size * text_height_scale ] )
            text( text_2, font = text_font, size = text_size, spacing = 1.0, halign="center" );
    }
    translate( button3_location )
    {
        if( for_print ) 
            button();
        else
            circle( d=button_whole_diameter );
        translate( [ 0, -button_whole_diameter / 2 - text_size * text_height_scale ] )
            text( text_3, font = text_font, size = text_size, spacing = 1.0, halign="center" );
    }
    translate( button4_location )
    {
        if( for_print ) 
            button();
        else
            circle( d=button_whole_diameter );
        translate( [ 0, -button_whole_diameter / 2 - text_size * text_height_scale ] )
            text( text_4, font = text_font, size = text_size, spacing = 1.0, halign="center" );
    }
}
