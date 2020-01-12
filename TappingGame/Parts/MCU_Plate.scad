include <../Parameters/includes.scad>
$fn = 1000;



module mcu_plate()
{
    difference()
    {
        square( [ mcu_width, mcu_height ] );
        translate( [ mcu_hole_offset + mcu_hole / 2, mcu_hole_offset + mcu_hole / 2 ] )
        {
            circle( d = mcu_hole );
        }
        translate( [ mcu_width - ( mcu_hole_offset + mcu_hole / 2 ), mcu_hole_offset + mcu_hole / 2 ] )
        {
            circle( d = mcu_hole );
        }
        translate( [ mcu_width - ( mcu_hole_offset + mcu_hole / 2 ), mcu_height - ( mcu_hole_offset + mcu_hole / 2 ) ] )
        {
            circle( d = mcu_hole );
        }
        translate( [ mcu_hole_offset + mcu_hole / 2, mcu_height - ( mcu_hole_offset + mcu_hole / 2 ) ] )
        {
            circle( d = mcu_hole );
        }
        
        hole_diam = 3;
        hole_offset = 3.05;
        hole_offset_v = 3.05;
        for( j = [ 0 : 5 ] )
        {
            for( i = [0 : 15 ] )
            {
                translate( [ hole_diam / 2 + hole_offset + i * ( hole_diam  + hole_offset ),10 +  j * ( hole_diam + hole_offset_v )  ] )
                {
                    circle( d = hole_diam );
                }

            }
        }
    }
}