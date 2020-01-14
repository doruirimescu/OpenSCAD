include <../Parameters/includes.scad>
$fn = 1000;

/* Shows either buttons as whole, or 
    the design for print (button holes) */
for_print = true; 

module front_plate()
{
    difference()
    {   
        square( [ width, height ] );
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
            //Will stack mcu plate over the lcd
            //mcu_plate();
        }
        translate( [ width / 2 - fittings_length / 2 , fitting_offset ] )
        {
            fittings_h();
        }
        translate( [ width / 2 - fittings_length / 2 , height - fitting_width ] )
        {
            fittings_h();
        }
        
        translate( [ fitting_width + fitting_offset, height / 2 - fittings_length_v / 2 ] )
        {
            rotate( a = [0,0,90] )
            {
                fittings_v();
            }
        }
        translate( [ width - ( fitting_offset ), height / 2 - fittings_length_v / 2 ] )
        {
            rotate( a = [ 0, 0, 90 ] )
            {
                fittings_v();
            }
        }
    }
}
front_plate($fn=1000);
echo(width);