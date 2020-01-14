include <../Parameters/parameters.scad>

module lcd()
{   
    square( [ lcd_width, lcd_height ] );
    /* Lower left */
    translate( [ lcd_hole_horizontal_offset , - ( lcd_hole_vertical_offset ) ] )
    {
        circle( d = lcd_hole );
    }
    /* Lower right */
    translate( [ lcd_width - lcd_hole_horizontal_offset , -( lcd_hole_vertical_offset ) ] )
    {
        circle( d = lcd_hole );
    }
    /* Upper left */
    translate( [ lcd_hole_horizontal_offset , lcd_height + lcd_hole_vertical_offset ] )
    {
        circle( d = lcd_hole );
    }
    translate( [ lcd_width - lcd_hole_horizontal_offset, lcd_height + lcd_hole_vertical_offset ] )
    {
        circle( d = lcd_hole );
    }
}