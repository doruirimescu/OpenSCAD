include <../Parameters/parameters.scad>
include <../Modules/arduino_mega.scad>
include <../Modules/lcd.scad>

module mcu_plate_mega()
{
    plate_width = 110;
    plate_height = 80;
    difference()
    {
        
        translate( [  -( plate_width - lcd_plate_width ) /2  , ( lcd_plate_height - plate_height ) / 2 ] )
        {
            square( [  plate_width, plate_height ] );
        }
        lcd_holes();
        translate( [ 4.5, 4.5] )
        {
            arduino_mega();
        }
    }
    
}