$fn=300;
difference()
{
    square( [ 297, 150 ] );//!< The base plate
    
    /*Lower 3 holes*/
    translate( [ 18, 8.5 ] )
        circle( 1.5, center = false );
    translate( [ 148, 8.5 ] )
        circle( 1.5, center = false );
    translate( [ 297 - 18.5, 8.5 ] )
        circle( 1.5, center = false );
    
    /*Upper 3 holes*/
    translate( [ 18, 150 - 8.5 ] )
        circle( 1.5, center = false );
    translate( [ 148, 150 - 8.5 ] )
        circle( 1.5, center = false );
    translate( [ 297 - 18, 150 - 8.5 ] )
        circle( 1.5, center = false );
    
    /*Side holes*/
    translate( [ 8, 150 / 2 ] )
        circle( 1.5, center = false );
    translate( [ 297-8, 150 / 2 ] )
        circle( 1.5, center = false );
    /*DC barrel jack*/
    translate( [ 18, 25])
        circle( 7.55/2 , center = false);
    /*USB B connector*/
    usb_w = 12;
    usb_h = 11;
    usb_hole_dist = 8;
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