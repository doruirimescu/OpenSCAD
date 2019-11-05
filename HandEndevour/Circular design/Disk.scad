$fn = 100;

scale = 0.5;

helper_radius  = 0.25;
guide_hole = 0.15;
string_hole = 0.1;
disk_hole =0.15;
string_hole_dist = 0.6;
phalanx_radius = 2*string_hole_dist;
string_hole_dist_2 = 2.25 * scale;
difference()
{
    /* Create main "tear" shape */
    hull()
    {
        circle( phalanx_radius );
        translate( [0, -string_hole_dist_2] )
            circle( helper_radius );
        translate( [0, string_hole_dist_2] )
            circle( helper_radius );
    }
    /* subtract holes */
    translate( [0, 0] )
        circle( guide_hole );
    
    translate( [0, 0] )
        circle( guide_hole );
    translate( [-string_hole_dist, -string_hole_dist] )
        circle( disk_hole );
    translate( [-string_hole_dist, string_hole_dist] )
        circle( disk_hole );
     translate( [string_hole_dist, string_hole_dist] )
        circle( disk_hole );
     translate( [string_hole_dist, -string_hole_dist] )
        circle( disk_hole );
    
    translate( [string_hole_dist, 0] )
        circle( disk_hole );
    translate( [-string_hole_dist, 0] )
        circle( disk_hole );
    translate( [ 0, string_hole_dist ] )
        circle( disk_hole );
        translate( [ 0, -string_hole_dist ] )
        circle( disk_hole );
    
    
    translate( [0, -string_hole_dist_2] )
        circle( string_hole );
    translate( [0, string_hole_dist_2] )
        circle( string_hole );
}
