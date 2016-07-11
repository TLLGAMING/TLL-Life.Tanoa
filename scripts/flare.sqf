player addEventHandler ["fired",{
 
        _p = _this select 6;
        _weapon = _this select 1;
        _v = velocity _p;
        if(_weapon == "hgun_P07_F") then {
                _f = 'CMflare_Chaff_Ammo' createVehicle (position _p);
                _f setposatl (getposatl _p);_f setVelocity _v;
                [_p,_f] spawn {waitUntil{isNull (_this select 0)}; deleteVehicle (_this select 1);};
        };
       
}];