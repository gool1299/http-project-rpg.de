#include <macro.h>
/*
	File: fn_initMedic.sqf
	
	
	Description:
	Initializes the medic..
*/

// TFR Variables API
tf_no_auto_long_range_radio = true; 

TF_terrain_interception_coefficient = 1;
player setVariable ["copLevel",1,true];

player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};

if((__GETC__(life_medicLevel)) < 1) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	uiSleep 35;
};

if((str(player) in ["medic_7"])) then {
	if((__GETC__(life_medicLevel) < 2)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		uiSleep 30;
	};
	life_paycheck = 4000;
};

[] call life_fnc_spawnMenu;
//[] execVM "core\welcomemedic.sqf";
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

if(life_karma > 999) then {
	karma_level = life_karma / 400;
	karma_level = floor (karma_level);
} else {
	karma_level = 0;	
};

if(karma_level > 80) then {
	karma_level = 80;
};
[format["Dein Karma-Level beträgt: %1",karma_level], false] spawn domsg;

uiSleep 2;
["S.L.F.D FREQ: 59.1 - Leitung FREQ: 38.8", false] spawn domsg;

playsound "medicalintro";