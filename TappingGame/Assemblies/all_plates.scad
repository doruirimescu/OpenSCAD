include <../Parameters/includes.scad>
include <../Parts/front_plate.scad>
include <../Parts/side_plate_horizontal.scad>
include <../Parts/side_plate_vertical.scad>
$fn = 1000;

/* Shows either buttons as whole, or 
    the design for print (button holes) */
for_print = false;

front_plate();

translate( [ 0, -50 ] )
{
    side_plate_horizontal();
}
translate( [ -50, 0 ] )
{
    side_plate_vertical();
}