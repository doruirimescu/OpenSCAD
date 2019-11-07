$fn = 100;

scale = 0.5;

helper_radius  = 0.25;
guide_hole = 0.15;
disk_hole =0.15;
string_hole_dist = 0.45;
phalanx_radius = 1;
string_hole_dist_2 = 2.25 * scale;
difference()
{
    /* Create main shape */
    circle( phalanx_radius );
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
    
    
    
}
