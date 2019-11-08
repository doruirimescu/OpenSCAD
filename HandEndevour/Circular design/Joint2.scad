$fn = 100;

scale = 0.5;
phalanx_radius = 1;
disk_hole = 0.15;

hull_dist = 1+0.6;
difference()
{
    /* Create main "tear" shape */
    hull()
    {
        circle( phalanx_radius / 2 );
        translate( [ -1, hull_dist ] )
            square([2,1]);
    }
    /* subtract holes */
    translate( [ 0, 0 ] )
        circle( disk_hole );
    
    /*center hole*/
    translate( [ 0, hull_dist ] )
        circle( disk_hole );
    translate( [-0.6,hull_dist ] )
        circle( disk_hole );
    translate( [0.6,hull_dist ] )
        circle( disk_hole );
    
    /*cut extra*/
    translate( [ -3, hull_dist + 3 * disk_hole ] )
        square( [ 5, 5 ] );
}
