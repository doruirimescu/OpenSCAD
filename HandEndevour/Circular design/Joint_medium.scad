$fn = 100;

scale = 0.5;
phalanx_radius = 1; //radius of the bottom
disk_hole = 0.15;
width = 2; //width of top

hull_dist = 1;
difference()
{
    /* Create main "tear" shape */
    hull()
    {
        circle( phalanx_radius / 2 );
        
        translate( [ -width / 2, hull_dist] )
            square( [ width, 1 ] );

        translate( [ -1, -0.5 ] )
        {
            square( [0.5, 1]);
        }
    }
    /* subtract holes */
    translate( [0, 0] )
        circle( disk_hole );
    
    /*center hole*/
    translate( [ -0.5, hull_dist ] )
        square( [ 1, 0.3 ]);
    
    /*through-bolt hole*/
    translate( [ -disk_hole, hull_dist + 2 * disk_hole ] )
        square( [ 2 * disk_hole, 1 ]);
    
    /*bolthead hole*/
    bth = disk_hole-0.01;
    translate( [ -2 * bth, hull_dist - 2 * disk_hole -0.2 ] )
        square( [ 4 * bth, 0.5 ] );

    /*cut extra*/
    translate( [ -3, hull_dist + 4*disk_hole ] )
        square( [ 8, 5 ] );
}


