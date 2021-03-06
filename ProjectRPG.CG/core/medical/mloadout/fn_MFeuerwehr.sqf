#include <macro.h>
/*
	File: fn_Feuerwehr.sqf
	
	
	Description:
	
*/
removeAllWeapons player;
removeAllItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

player forceAddUniform "vvv_traje_bombero_2";
player addVest "V_Firefighter";
player addBackpack "cg_invisbp";
player addGoggles "Mask_M40";
player addWeapon "A3L_Extinguisher";
player addPrimaryWeaponItem "A3L_Extinguisher";
for "_i" from 1 to 5 do {player addItemToVest "30Rnd_test_mag_Tracer";};
for "_i" from 1 to 1 do {player addItemToVest "ACE_EarPlugs";};
for "_i" from 1 to 1 do {player addItemToVest "ACE_Flashlight_XL50";};

for "_i" from 1 to 20 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 20 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 1 do {player addItemToBackpack "ToolKit";};

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemGPS";
player linkItem "TRYK_Headset_NV";

["Sie besitzen nun die Feuerwehrausrüstung!", false] spawn doquickmsg;

if(cash_in_bank > 500) then {
	["bank","take",500] call life_fnc_handleCash;
};