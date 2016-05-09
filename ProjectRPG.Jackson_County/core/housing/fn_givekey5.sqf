#include <macro.h>
/*
	give a key givekey1
	fn_givekey1.sqf
*/

params [["_house", objNull, [objNull]], ["_key", 0, [0]]]; 

if(cash_in_hand < 5000) exitWith { ["Du brauchst $5000 Dollar um einen permanenten Schlüssel zu erstellen.", false] spawn domsg; };
if(life_karma < 5000) exitWith { ["Dein Karma-Level ist nicht hoch genug! Du brauchst Karma-Level 5", false] spawn domsg; };


if(isNull _house) exitWith {};
if(!(_house isKindOf "House_F")) exitWith {};

_radius = 3;
_sidecheck = civilian;

_nearestunits = nearestObjects [player,["Man"],_radius];
_nearestunitofside = [];

{
	_unit = _x;
	if (side _unit isEqualTo _sidecheck && (isPlayer _unit) && _unit != player) then 
		{
			_nearestunitofside pushBack _unit
		};
} foreach _nearestunits;

_nameshare = name (_nearestunitofside select 0);
_shared1 = getPlayerUID (_nearestunitofside select 0);
if(isNil "_shared1") then {
	["Kein Spieler ist nah genug.", false] spawn domsg;
} else {
	[format ["House keys given to user ID %1 -- %2", _shared1, _nameshare], false] spawn domsg;
	[_house,_shared1,_key] remoteExecCall ["TON_fnc_dogivekey1",(call life_fnc_HCC)];
	["cash","take",5000] call life_fnc_handleCash; 
	_house setVariable[format["shared%1",_key],true,true];
};