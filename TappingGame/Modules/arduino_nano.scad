arduino_nano_width  = 43.2;
arduino_nano_height = 17.78; 
module arduino_nano()
{//Holes for arduino nano plate fitting
    /* Left down */
    circle( d = 2 );
    translate([ 40.64, 0 ])
    {
        /* Right down */
        circle( d = 2 );
    }
    translate( [ 0 , 15.24 ] )
    {
        /* Left up */
        circle( d = 2 );
        translate([ 40.64, 0 ])
        {
            /* Right up */
            circle( d = 2 );
        } 
    }
}
