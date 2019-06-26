include <../Parameters/BackPlate_param.scad>
$fn = 1000;
difference()
{
    /* Base plate */
    square( [ width, height ] ); 
    
    /* Mounting holes attaching to enclosure */
    translate( [ 18, hole_offest ] )
        circle(1.5);
    translate( [ width - 18 , hole_offest ] )
        circle(1.5);
    translate( [ 18 , height - hole_offest ] )
        circle(1.5);
    translate( [ width - 18 , height - hole_offest ] )
        circle(1.5);
     /* Side holes */
    translate( [ 8, height / 2 ] )
        circle( 1.5, center = false );
    translate( [ width - 8, height / 2 ] )
        circle( 1.5, center = false );
    
    /* Heatsink */
    tol = 0.5;//!< 1 mm tolerance on both sides
    polygon( points = [ [ 85 - tol, 0 ], [ 85 + hs_width + tol, 0 ], 
    [ 85 + hs_width + tol, 50 ], [ 85 + hs_width / 2, 50 + 20 ], [ 85 - tol, 50 ] ]);
    /* Mounting holes */
    translate( [ 85 - 32 , hs_hole_height ] )
        circle(1.5);
    translate( [ 85 + hs_width + 32 , hs_hole_height ] )
        circle(1.5);
    
    /* Power button (single) */
    translate( [ 11.45, height - 20 - 20 ] )
        square( [ 12.12, 20 ] );
    
    /* Power button with IEC connector included */
    translate( [ 11.45 + 12.12 + 8, 150 - 40 - 6.5 / 2 ] )
        square( [19, 26.5]);

}