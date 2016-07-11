//RIB
 
	while {isNil "OpenDoors"} do
	
	if(life_inv_keycard < 1) exitWith{ hint "You need the jail blue prints to know where to trigger";};
	player setVariable ["copLevel",1,true];
    sleep 0.1;
};

 exitWith {}; 
