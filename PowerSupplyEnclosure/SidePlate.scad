$fn=30;
difference()
{
    square( [ 297, 150 ] );//!< The base plate
    
    /*Lower 3 holes*/
    translate( [ 18, 8.5 ] )
        circle( 3, center = false );
    translate( [ 148, 8.5 ] )
        circle( 3, center = false );
    translate( [ 297 - 18.5, 8.5 ] )
        circle( 3, center = false );
    
    /*Upper 3 holes*/
    translate( [ 18, 150 - 8.5 ] )
        circle( 3, center = false );
    translate( [ 148, 150 - 8.5 ] )
        circle( 3, center = false );
    translate( [ 297 - 18, 150 - 8.5 ] )
        circle( 3, center = false );
    
    /*Side holes*/
    translate( [ 8, 150 / 2 ] )
        circle( 3, center = false );
    translate( [ 297-8, 150 / 2 ] )
        circle( 3, center = false );
}