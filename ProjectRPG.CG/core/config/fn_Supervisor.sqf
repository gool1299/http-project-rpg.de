#include <macro.h>
/*
	File: fn_Supervisor.sqf
	
	
	Description:
	
*/
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;


player forceAddUniform "pRPG_Sergeant1";
player addVest "prpg_policevest";
player addBackpack "AM_PoliceBelt";
player addHeadgear "AM_PatrolHat";
player addWeapon "Taser_26";
player addHandgunItem "Taser_26";
for "_i" from 1 to 5 do {player addItemToUniform "26_cartridge";};
for "_i" from 1 to 1 do {player addItemToBackpack "Radar_Gun";};
for "_i" from 1 to 1 do {player addItemToBackpack "Rangefinder";};
for "_i" from 1 to 5 do {player addItemToVest "ACE_CableTie";};
for "_i" from 1 to 1 do {player addItemToVest "ACE_EarPlugs";};
for "_i" from 1 to 5 do {player addItemToVest "ACE_Flashlight_XL50";};

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_anprc148jem_5";
player linkItem "ItemGPS";
player linkItem "BH_ImpNVChip";
player linkItem "ItemCopCard";

["Sie besitzen nun die Grundausrüstung! Seien Sie für unsere Bürger und Officer als Vermittel da, Supervisor!", false] spawn doquickmsg;