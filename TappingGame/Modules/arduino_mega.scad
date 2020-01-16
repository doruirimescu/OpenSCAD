module arduino_mega()
{//Holes for arduino mega plate fitting
    /* Left down */
    circle( d = 3 );
    translate( [ 1.3 , 53.3 - 5 ] )
    {
        /* Left up */
        circle( d = 3 );
        translate([ 74.9, 0 ])
        {
            /* Middle up */
            circle( d = 3 );
        }
    }
    translate( [ 1.3 + 50.8 , 5.1] )
    {
        /* Middle bottom */
        circle( d = 3 );
        translate( [ 0, 27.9 ] )
        {
            /* Right up */
            circle( d = 3 );
        }
    }
    translate( [ 84.5, 0 ] )
    {
        circle( d = 3 );
    }
}