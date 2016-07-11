private ["_vehicle","_onoff"];
_vehicle = _this select 0; 
_onoff = _this select 3; 

track_playing = true; 

while {track_playing} do 
{
    if (_onoff == "On") then 
        {
             hint "Song started"; 
             _vehicle say3D "/sounds/track1"; 
             sleep 49; 
             hint "Song finished";
             sleep 10; 
         };
    if (_onoff == "Off") exitWith {hint "MP3 Player Off"; _vehicle say3D "sounds/track2";}; 
};

exit;