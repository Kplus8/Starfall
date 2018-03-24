//Check for mouse pressed
//Can not use left pressed event because the gui element is incompatible with this method.

if (!mouse_check_button_pressed(mb_left)) {
	canSwap = true
}

if (canSwap) {
	if (device_mouse_x_to_gui(0) > xPos && device_mouse_x_to_gui(0) <xPos + 64) {
	   if (device_mouse_y_to_gui(0) >yPos && device_mouse_y_to_gui(0) <yPos + 64) {
	      if (mouse_check_button_pressed(mb_left)) {
	        tempItem = global.playerWeapon
			global.playerWeapon = global.invSlots[slotNum]
			global.invSlots[slotNum] = tempItem
			canSwap = false
	      }
	   }
	}
}