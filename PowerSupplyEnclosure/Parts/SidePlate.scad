$fn=300;
include <../Parameters/SidePlate_param.scad>
difference()
{
    square( [ width, height ] );//!< The base plate
    
    /*Lower 3 holes*/
    translate( [ 18, 8.5 ] )
        circle( 1.5, center = false );
    translate( [ 148, 8.5 ] )
        circle( 1.5, center = false );
    translate( [ width - 18.5, 8.5 ] )
        circle( 1.5, center = false );
    
    /*Upper 3 holes*/
    translate( [ 18, height - 8.5 ] )
        circle( 1.5, center = false );
    translate( [ 148, height - 8.5 ] )
        circle( 1.5, center = false );
    translate( [ width - 18, height - 8.5 ] )
        circle( 1.5, center = false );
    
    /*Side holes*/
    translate( [ 8, height / 2 ] )
        circle( 1.5, center = false );
    translate( [ width - 8, height / 2 ] )
        circle( 1.5, center = false );
        
    /*DC barrell jack*/
    translate( [ 18, 25])
        circle( dcb_diam / 2 , center = false);
        
    /*USB B connector*/
    translate( [ 30, 25 ] ) //!< position connector
    {
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
}