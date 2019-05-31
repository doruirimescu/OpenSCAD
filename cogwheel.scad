module servoPulley( n, r_inner, r_outer )
{   /*
    * n = number of teeth
    * r_inner = inner radius
    * r_outer = outer radius
    * r_outer - r_inner = tooth size
    */
    
    /*thickness is the tooth thickness(width)*/
    thickness = PI * r_outer / n;
    circle( r_inner );
    for( i = [ 1 : n ] )
    {
        rotate( -( 360 / n ) * i )
        {
            square( [ thickness, r_outer ] );
        }
    }
}

/*Empirical scale factor until pulley fits the belt*/
scale_factor =1.25;

scale( scale_factor )
{
    servoPulley( 39, 30, 35 );
}