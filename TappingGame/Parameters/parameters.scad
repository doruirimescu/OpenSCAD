/* Button parameters */
button_diameter = 23.6; //main button hole
button_fixer_diameter = 3.25; //small protusions to keep button in place
button_fixer_coordinates = [ 7 + button_diameter / 2, 0 ];
button_whole_diameter = 60; //the space that the whole button takes
n_buttons = 4;

/* Button locations */
button_plate_distance  = 30; //distance between button and plate edge
button_button_distance = 30; //distance between 2 button edges
button_x0 = button_plate_distance + button_whole_diameter / 2;
button_y0 = button_plate_distance + button_whole_diameter / 2;

/* Front plate dimensions */
width = n_buttons * button_whole_diameter + ( n_buttons - 1 ) * button_button_distance + button_plate_distance * 2 ;
height = 200;

/* LCD parameters */
lcd_width = 98.1;
lcd_height = 42.1;

lcd_hole = 4; //lcd hole diameter (make it larger)
lcd_hole_vertical_offset = 6.5;//up left hole offset
lcd_hole_horizontal_offset = 2.5;

lcd_x0 = width / 2 - lcd_width / 2;
lcd_y0 = height - 2.0 * lcd_height;

/* MCU plate parameters */
mcu_width = 100;
mcu_height = 50.0;
mcu_hole = 3;
mcu_hole_offset = 3;
mcu_x0 = lcd_x0 * 1.8;
mcu_y0 = lcd_y0 - ( mcu_height - lcd_height ) / 2;

/* Text */
text_font = "Times new Roman";
text_size = 7;
text_height_scale = 1.3;
text = [ "Left", "Right", "Select", "Back" ];

/* Side plates */
side_height = 100;

/* Fitting */
fitting_number_h = 10;
fitting_number_v = 5;
fitting_length = 20;
fitting_offset = 0;
fitting_width = 3; //Acrylic or plywood thickness

fitting_distance = ( width - fitting_number_h * fitting_length - 2 * fitting_offset ) / ( fitting_number_h  );
fittings_length = fitting_number_h * fitting_length + ( fitting_number_h - 1 ) * fitting_distance;

fitting_distance_v = ( height - fitting_number_v * fitting_length - 2 * fitting_offset ) / ( fitting_number_v  );
fittings_length_v = fitting_number_v * fitting_length + ( fitting_number_v - 1 ) * fitting_distance_v;

fitting_length_l = 10;
fitting_number_l = 5;
fitting_distance_l = ( side_height - fitting_number_l * fitting_length_l - 2 * fitting_offset ) / ( fitting_number_l  );
fittings_length_l = fitting_number_l * fitting_length_l + ( fitting_number_l - 1 ) * fitting_distance_l;



/* USB B connector */
usb_w = 12; // connector width
usb_h = 11; // connector height
usb_hole_dist = 8;// distance from connector to con hole