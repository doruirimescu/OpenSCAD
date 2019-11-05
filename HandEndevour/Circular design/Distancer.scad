$fn = 100;

scale = 0.5;
helper_radius  = 0.25;
guide_hole = 0.15;
string_hole = 0.05;
disk_hole = 0.15;
hole_distance = 0.6;

difference()
{
    hull()
    {
        translate( [ -hole_distance, -0.5 ] )
            square( [ 2 * hole_distance, 1 ] );
        
        /* round corners */
        translate( [ -1.5 * hole_distance, -0.4 ] )
            circle( 0.1 );
        translate( [ -1.5 * hole_distance, 0.4 ] )
            circle( 0.1 );
        translate( [1.5 * hole_distance,0.4] )
            circle( 0.1 );
        translate( [1.5*hole_distance,-0.4] )
            circle( 0.1 );
    }
    /* subtract holes */
    translate( [0, 0] )
        circle( guide_hole );
    translate( [ hole_distance, 0 ] )
        circle( disk_hole );
    translate( [ -hole_distance, 0 ] )
        circle( disk_hole );
}
