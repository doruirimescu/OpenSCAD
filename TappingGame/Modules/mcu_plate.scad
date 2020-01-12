include <../Parameters/parameters.scad>

module mcu_plate()
{
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
}
