/* Button parameters */
button_diameter = 23.6; //main button hole
button_fixer_diameter = 3.25; //small protusions to keep button in place
button_fixer_coordinates = [ 7 + button_diameter / 2, 0 ];
button_whole_diameter = 60; //the space that the whole button takes

/* Button locations */

button_plate_distance  = 50; //distance between button and plate edge
button_button_distance = 50; //distance between 2 button edges

button1_location = [ 0, 0 ]; //button 1 x and y coordinates on the front plate
button2_location = [ 0 + 1 * button_whole_diameter + button_button_distance, 0 ]; //button 2 x and y coordinates on the front plate
button3_location = [ 0 + 2 * ( button_whole_diameter + button_button_distance ), 0 ]; //button 3 x and y coordinates on the front plate
button4_location = [ 0 + 3 * ( button_whole_diameter + button_button_distance ), 0 ]; //button 4 x and y coordinates on the front plate

button_x0 = button_plate_distance + button_whole_diameter / 2;
button_y0 = button_plate_distance + button_whole_diameter / 2;

/* Front plate dimensions */
width = 4 * button_whole_diameter + 3 * button_button_distance + button_plate_distance * 2 ;
height = 250;

/* LCD parameters */
lcd_width = 98.1;
lcd_height = 42.1;

lcd_hole = 4; //lcd hole diameter (make it larger)
lcd_hole_vertical_offset = 6.22;//up left hole offset

lcd_x0 = width / 2 - lcd_width / 2;
lcd_y0 = height - 2.0 * lcd_height;

/* MCU plate parameters */
mcu_width = 100;
mcu_height = 50.0;
mcu_hole = 3;
mcu_hole_offset = 3;
mcu_x0 = lcd_x0 * 1.7;
mcu_y0 = lcd_y0 - ( mcu_height - lcd_height ) / 2;

/* Text */
text_font = "Times new Roman";
text_size = 7;
text_height_scale = 1.3;
text_1 = "Left";
text_2 = "Right";
text_3 = "Select";
text_4 = "Back";

/* Fitting */
fitting_number = 10;
fitting_length = 10;
fitting_offset = 10;
fitting_width = 3; //Acrylic or plywood thickness
fitting_distance = ( width - fitting_number * fitting_length - 2 * fitting_offset ) / ( fitting_number  );
fittings_length = fitting_number * fitting_length + ( fitting_number - 1 ) * fitting_distance;

fitting_distance_v = ( height - fitting_number * fitting_length - 2 * fitting_offset ) / ( fitting_number  );
fittings_length_v = fitting_number * fitting_length + ( fitting_number - 1 ) * fitting_distance_v;


/* Side plates */
side_height = 50;

/* USB B connector */
usb_w = 12; //!< connector width
usb_h = 11; //!< connector height
usb_hole_dist = 8;//!< distance from connector to con hole