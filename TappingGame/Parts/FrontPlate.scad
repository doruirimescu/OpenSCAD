include <../Parameters/Parameters.scad>
$fn = 1000;

/* Shows either buttons as whole, or 
    the design for print (button holes) */
for_print = 0; 

module front_plate()
{
    square( [ width, height ] );
}

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

module lcd()
{
    square( [ lcd_width, lcd_height ] );
    /* Lower left */
    translate( [ lcd_hole / 2, - ( lcd_hole_vertical_offset + lcd_hole / 2 ) ] )
    {
        circle( d = lcd_hole );
    }
    /* Lower right */
    translate( [ lcd_width - lcd_hole / 2, -( lcd_hole_vertical_offset + lcd_hole / 2 ) ] )
    {
        circle( d = lcd_hole );
    }
    /* Upper left */
    translate( [ lcd_hole / 2, lcd_height + lcd_hole_vertical_offset ] )
    {
        circle( d = lcd_hole );
    }
    translate( [ lcd_width - lcd_hole / 2, lcd_height + lcd_hole_vertical_offset ] )
    {
        circle( d = lcd_hole );
    }
}

module mcu_plate()
{
        translate( [ mcu_hole_offset + mcu_hole / 2, mcu_hole_offset + mcu_hole / 2 ] )
        {
            circle( d = mcu_hole );
        }
        translate( [ mcu_width - ( mcu_hole_offset + mcu_hole / 2 ), mcu_hole_offset + mcu_hole / 2 ] )
        {
            circle( d = mcu_hole );
        }
        translate( [ mcu_width - ( mcu_hole_offset + mcu_hole / 2 ), mcu_height - ( mcu_hole_offset + mcu_hole / 2 ) ] )
        {
            circle( d = mcu_hole );
        }
        translate( [ mcu_hole_offset + mcu_hole / 2, mcu_height - ( mcu_hole_offset + mcu_hole / 2 ) ] )
        {
            circle( d = mcu_hole );
        }
}

module fittings()
{
    for( i = [0 : fitting_number - 1 ] )
    {
        translate( [ ( fitting_distance + fitting_length ) * i, 0 ] )
            square( [ fitting_length, fitting_width ] );
    }
}

module fittings_v()
{
    for( i = [0 : fitting_number - 1 ] )
    {
        translate( [ ( fitting_distance_v + fitting_length ) * i,  0 ] )
            square( [ fitting_length, fitting_width ]);
    }
}

module full_plate()
{
    difference()
    {   
        front_plate();
        translate( [ button_x0, button_y0 ] )
        { 
            buttons();
        }
        translate( [ lcd_x0, lcd_y0 ] )
        {
            lcd();
        }
        translate( [ mcu_x0, mcu_y0 ] )
        {
            mcu_plate();
        }
        translate( [ width / 2 - fittings_length / 2 , fitting_offset ] )
        {
            fittings();
        }
        translate( [ width / 2 - fittings_length / 2 , height - fitting_offset ] )
        {
            fittings();
        }
        
        translate( [ fitting_width + fitting_offset, height / 2 - fittings_length_v / 2 ] )
        {
            rotate( a = [0,0,90] )
            {
                fittings_v();
            }
        }
        translate( [ width - ( fitting_width + fitting_offset ), height / 2 - fittings_length_v / 2 ] )
        {
            rotate( a = [ 0, 0, 90 ] )
            {
                fittings_v();
            }
        }
    }
}
/* Draw whole front plate */
full_plate();

module side_plate1()
{
    translate( [ 0, -50 ] )
    {
        
        translate( [ width / 2 - fittings_length / 2 , 0 ] )
        {
            fittings();
        }
        translate( [0 , -side_height ] )
        {
            square( [ width, side_height ], center= false );
        }
    }
}
module side_plate2()
{
    translate( [ -50, 0 ] )
    {
        translate( [ fitting_width, height / 2 - fittings_length_v / 2 ] )
        {
            rotate( a = [ 0, 0, 90 ] )
            {
                fittings_v();
            }
        }
        translate( [-side_height , 0 ] )
        {
            square( [ side_height, height ], center= false );
        }
    }
}
/* Todo: Add USB to side plate */
side_plate1();
side_plate2();