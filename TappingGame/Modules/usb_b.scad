include <../Parameters/parameters.scad>

module usb_b()
{
    /*USB B connector*/
        circle( 1.5, center = false );
        translate( [ 1.5 + usb_hole_dist, -usb_h/2 ] )
        {
            square( [ usb_w, usb_h ] );
        }
        translate( [ 3 + usb_hole_dist + usb_w + usb_hole_dist, 0 ] )
        {
            circle( 1.5, center = false );
        }
}