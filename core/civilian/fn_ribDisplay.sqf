/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Turns on and displays a security cam like feed via PiP to the laptop display.
*/
_laptop = _this select 0;
_mode = _this select 3;

if(!isPiPEnabled) exitWith {hint "You need to enable Picture in Picture (PiP) through your video settings to use this!";};
if(isNil "life_fed_scam") then {
	life_fed_scam = "camera" camCreate [0,0,0];
	life_fed_scam camSetFov 0.5;
	life_fed_scam camCommit 0;
	"rendertarget0" setPiPEffect [0];
	life_fed_scam cameraEffect ["INTERNAL", "BACK", "rendertarget0"];
	_laptop setObjectTexture [0,"#(argb,256,256,1)r2t(rendertarget0,1.0)"];
};

switch (_mode) do {
	case "Federal Reserve": {
		life_fed_scam camSetPos [9677.59,10155.8,0.597221];
		life_fed_scam camSetTarget [9677.59,10155.8,0.597221];
		life_fed_scam camCommit 0;
	};
	
	case "Lakeside Bank": {
		life_fed_scam camSetPos [8573.27,6593.79,0.597221];
		life_fed_scam camSetTarget [8573.27,6593.79,0.597221];
		life_fed_scam camCommit 0;
	};
	
	case "Rebel HQ": {
		life_fed_scam camSetPos [475.499,8147.27,0.597221];
		life_fed_scam camSetTarget [475.499,8147.27,0.597221];
		life_fed_scam camCommit 0;
	};
	
	case "Morrison": {
		life_fed_scam camSetPos [4325.26,2173.02,0.597221];
		life_fed_scam camSetTarget [4325.26,2173.02,0.597221];
		life_fed_scam camCommit 0;
	};
	
	case "Lakeside Garage": {
		life_fed_scam camSetPos [8546.66,6652.49,0.597221];
		life_fed_scam camSetTarget [8546.66,6652.49,0.597221];
		life_fed_scam camCommit 0;
	};
	
	case "off" :{
		life_fed_scam cameraEffect ["terminate", "back"];
		camDestroy life_fed_scam;
		_laptop setObjectTexture [0,""];
		life_fed_scam = nil;
	};
};
