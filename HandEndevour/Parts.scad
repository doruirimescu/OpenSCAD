$fn = 1000;

scale = 1;
phalanx_radius = 2 * scale;
helper_radius  = 0.25;
guide_hole = 0.15;
string_hole = 0.05;

string_hole_dist = 1.5 * scale;
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
    translate( [0, string_hole_dist] )
        circle( string_hole );
    translate( [0, -string_hole_dist] )
        circle( string_hole );
    translate( [string_hole_dist, 0] )
        circle( string_hole );
    translate( [-string_hole_dist, 0] )
        circle( string_hole );
    translate( [0, -string_hole_dist_2] )
        circle( string_hole );
    translate( [0, string_hole_dist_2] )
        circle( string_hole );
}
