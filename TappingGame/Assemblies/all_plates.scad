include <../Parameters/includes.scad>
include <../Parts/front_plate.scad>
include <../Parts/bottom_plate.scad>
include <../Parts/side_plate_horizontal.scad>
include <../Parts/side_plate_vertical.scad>
$fn = 1000;

/* Shows either buttons as whole, or 
    the design for print (button holes) */
for_print = true;

front_plate();
dx = -3;
translate( [ fitting_width, -dx ] )
{
    rotate( a = [ 90, 0, 0 ] )
    {
        side_plate_horizontal();
    }
}
translate( [ -dx, 0 ] )
{
    rotate( a = [ 0, -90, 0 ] )
    {
        side_plate_vertical();
    }
}
translate( [ width + dx, 0 ] )
{
    rotate( a = [ 0, -90, 0 ] )
    {
        side_plate_vertical();
    }
}
translate([ 0, 0, -side_height ] )
{
   // bottom_plate();
}