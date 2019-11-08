$fn = 100;

disk_hole     = 0.15;
hole_distance = 0.6;
corner_radius = 0.1;

difference()
{
    hull()
    {
        translate( [ -hole_distance, -0.5 ] )
            square( [ 2 * hole_distance, 1 ] );
        /* round corners */
        
        translate( [ -1.5 * hole_distance, -0.4 ] )
            circle( corner_radius );
        translate( [ -1.5 * hole_distance, 0.4 ] )
            circle( corner_radius );
        translate( [1.5 * hole_distance, 0.4] )
            circle( corner_radius );
        translate( [1.5 * hole_distance, -0.4] )
            circle( corner_radius );
    }
    
    /* subtract holes */
    
    /* center circle */
    translate( [0, 0] )
        circle( disk_hole );
    /* right circle */
    translate( [ hole_distance, 0 ] )
        circle( disk_hole );
    /* left circle */
    translate( [ -hole_distance, 0 ] )
        circle( disk_hole );
    
}
