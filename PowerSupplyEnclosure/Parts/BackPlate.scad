$fn = 1000;
difference()
{
    /*Base plate*/
    square( [ 210, 150 ] ); 
    
    /*Mounting holes attaching to enclosure*/
    translate( [ 18, 8 ] )
        circle(1.5);
    translate( [ 210 - 18 , 8 ] )
        circle(1.5);
    translate( [ 18 , 150 - 8 ] )
        circle(1.5);
    translate( [ 210 - 18 , 150 - 8 ] )
        circle(1.5);
     /*Side holes*/
    translate( [ 8, 150 / 2 ] )
        circle( 1.5, center = false );
    translate( [ 210 - 8, 150 / 2 ] )
        circle( 1.5, center = false );
    
    /*Heatsink*/
    tol = 0.5;//!< 1 mm tolerance on both sides
    polygon( points = [ [ 85 - tol, 0 ], [ 85 + 42 + tol, 0 ], 
    [ 85 + 42 + tol, 50 ], [ 85 + 42 / 2, 50 + 20 ], [ 85 - tol, 50 ] ]);
    
    /*Power button (single)*/
    
    translate( [ 11.45, 150 - 20 - 20 ] )
        square( [ 12.12, 20 ] );
    
    /*Power button with IEC connector included*/
    translate( [ 11.45 + 12.12 + 8, 150 - 40 - 6.5 / 2 ] )
        square( [18, 26.5]);
}