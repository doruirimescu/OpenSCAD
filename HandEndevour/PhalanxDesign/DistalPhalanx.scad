$fn = 200;
length = 1.5;
difference()
{
    hull()
    {
        circle(1);
        translate( [ 0, length ] )
            circle(1);
    }
    
    translate([0,0])
        circle(0.15);
    
    translate( [0.6, 0] )
        circle(0.15);
    
    translate( [-0.6, 0] )
        circle(0.15);
    
    translate( [0, length] )
        circle(0.15);
    translate([0, length + 0.6] )
        circle(0.15);
    translate( [0, length - 0.6] )
        circle( 0.15 );
    translate( [-0.6, length ] )
        circle( 0.15 );
    translate( [0.6, length] )
        circle( 0.15 );
}