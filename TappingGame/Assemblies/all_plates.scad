include <../Parameters/includes.scad>
include <../Parts/front_plate.scad>
include <../Parts/side_plate_horizontal.scad>
include <../Parts/side_plate_vertical.scad>
$fn = 1000;

/* Shows either buttons as whole, or 
    the design for print (button holes) */
for_print = true;

front_plate();

translate( [ fitting_width, -30 ] )
{
    rotate( a = [ 0, 0, 0 ] )
    {
        side_plate_horizontal();
    }
}
translate( [ -30, 0 ] )
{
    rotate( a = [ 0, 0, 0 ] )
    {
        side_plate_vertical();
    }
}