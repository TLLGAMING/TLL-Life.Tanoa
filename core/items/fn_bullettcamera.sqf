player addEventHandler ["Fired", {
    _null = _this spawn {
        _missile = _this select 6;
        _cam = "camera" camCreate (position player); 
        _cam cameraEffect ["External", "Back"];
        waitUntil {
            if (isNull _missile) exitWith {true};
            _cam camSetTarget _missile;
            _cam camSetRelPos [0,-3,0];
            _cam camCommit 0;
        };
        sleep 0.4;      
        _cam cameraEffect ["Terminate", "Back"];
        camDestroy _cam;
    };
}];