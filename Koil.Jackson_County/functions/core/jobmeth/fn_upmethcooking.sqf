_required = _this select 0;
if(checkFinish) exitwith { hint "Dafür musst du noch warten!"; };

if(animationState player != "Acts_carFixingWheel") then {
	player playmovenow "Acts_carFixingWheel";
	player disableAI "anim";
};

if(requiredOutput == _required) then {
	["Sieht aus als hätte es Funktioniert!",false] spawn doquickmsg;
	if(_required == "Acetone" || _required == "Pseudo") then { playSound3D ["CG_Jobs\sounds\meth\drugAdd.ogg", player, false, getPosasl player, 2, 1, 15]; };
	if(_required == "Cool") then { playSound3D ["CG_Jobs\sounds\meth\drugCool.ogg", player, false, getPosasl player, 2, 1, 15]; };
	if(_required == "Heat") then { playSound3D ["CG_Jobs\sounds\meth\drugBoil.ogg", player, false, getPosasl player, 2, 1, 15]; };
	if(_required == "Release") then { playSound3D ["CG_Jobs\sounds\meth\drugPressure.ogg", player, false, getPosasl player, 2, 1, 15]; };
} else {
	myDrugValue = myDrugValue - 10;
	["Scheiße!",false] spawn doquickmsg;
	_randomValue = random 30;
	playSound3D ["CG_Jobs\sounds\meth\drugBoil.ogg", player, false, getPosasl player, 5, 1, 15];
	playSound3D ["CG_Jobs\sounds\meth\drugPressure.ogg", player, false, getPosasl player, 5, 1, 15];
	if(_randomValue < 5) exitwith { "R_60mm_HE" createvehicle (getpos player); hint "Tja, du hast scheiße gebaut!"; };
};
checkFinish = true;