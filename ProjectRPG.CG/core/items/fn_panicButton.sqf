/*
	File: fn_panicButton.sqf
	Author: Marcel "VariatoX" Koch
	Server: project-rpg.de
	
	Description:
	Startet entsprechende Aktionen des Panikknopfes.
*/

_allowed = param [3,false,[false]];	//Index 3, wegen addAction

if(!_allowed) exitWith {[player,1] remoteExecCall ["PRPG_fnc_toMaster",2]}; //Invalid call
if(isNull player) exitWith {};
if(player getVariable "restrained") exitWith {};
if(player getVariable "tied") exitWith {};
if(playerSide == civilian && !license_civ_udc && !license_civ_doj) exitWith {["Authentifizierung fehlgeschlagen!", false] spawn domsg;};
if(life_istazed OR life_knockout) exitWith {};

private _pos = mapGridPosition player;
private _side = 0;


//Cops
if(side player == west) then {
	_side = 1;
};

//RFA
if(side player == independent) then {
	_side = 2;
};

//Undercover
if(license_civ_udc) then {
	_side = 3;
};

//
if(license_civ_doj) then {
	_side = 4;
};

{ //Abfrage der Hurensöhne
	if((side _x == west) || (_x getVariable "udcLevel") || (_x getVariable "dojLevel")) then {
		switch(_side) do {
			case 0: {};
			case 1: {
				[1,format["911 NOTRUF - PANIK KNOPF VERWENDET VON %1 - Position: %2",name player, _pos]] remoteExecCall ["life_fnc_broadcast", _x];
				["dpanic", false] remoteExec ["fnc_dispatch",_x];
			};

			case 2: {
				[1,format["S.L.F.D NOTRUF - PANIK KNOPF VERWENDET VON %1 - Position: %2",name player, _pos]] remoteExecCall ["life_fnc_broadcast", _x];
				["dpanic", false] remoteExec ["fnc_dispatch",_x];
			};

			case 3: {
				[1,format["FBI NOTRUF - PANIK KNOPF VERWENDET VON %1 - Position: %2",name player, _pos]] remoteExecCall ["life_fnc_broadcast", _x];
				["dpanic", false] remoteExec ["fnc_dispatch",_x];
			};
			
			case 4: {
				[1,format["D.O.J. - PANIK KNOPF VERWENDET VON %1 - Position: %2",name player, _pos]] remoteExecCall ["life_fnc_broadcast", _x];
				["dpanic", false] remoteExec ["fnc_dispatch",_x];
			};
			default {};
		};
	};
} forEach playableUnits;
[] spawn {
	if(player getVariable "sosActive") exitWith {};
	player setVariable ["sosActive",true,true];
	sleep 60;
	player setVariable ["sosActive",false,true];
};

[player,"panicbutton"] spawn life_fnc_nearestSound;