include <../Parameters/parameters.scad>
include <../Modules/arduino_nano.scad>
include <../Modules/arduino_mega.scad>
include <../Modules/lcd.scad>

module mcu_plate_arduinos()
{
    plate_width = 100;
    plate_height = 65;
    difference()
    {
        
        translate( [  -( plate_width - lcd_plate_width ) / 2  , ( lcd_plate_height - plate_height ) / 2 ] )
        {
            square( [  plate_width, plate_height ] );
        }
        lcd_holes();
        translate( [ 4.5, 4.5] )
        {
            arduino_mega();
        }
        
        translate( [ ( lcd_plate_width - arduino_nano_width ) / 2, ( lcd_plate_height - arduino_nano_height ) / 2] )
        {
            arduino_nano();
        }
    }
    
}