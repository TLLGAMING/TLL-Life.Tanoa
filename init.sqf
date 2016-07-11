enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;
introSpawn = nil;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "EZ Life RPG v3.1.4.8";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "scripts\fn_trafficlights.sqf";
[] execVM "scripts\nightclub.sqf";
[] execVM "scripts\flare.sqf";
[] execVM "IgiLoad\IgiLoadInit.sqf";

//line added by GamerDF
_seconds = 54400;
diag_log "Set Sunny Weather";
_seconds setOvercast 0;
diag_log "Set Fog Minimal";
_seconds setFog 0;
diag_log "Set Rain";
_seconds setRain 0;
diag_log "Set New Weather Changes to 240min/4Hours";
_seconds = nextWeatherChange;

StartProgress = true;

player enableFatigue false;

tf_no_auto_long_range_radio = true

"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};