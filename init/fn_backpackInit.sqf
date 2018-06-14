/*
	author: xetra11
	description: none
	returns: nothing
*/

params ["_backpackItem"];

format['init backpack: %1', typeOf _backpackItem] call ReconMod_fnc_log;
_backpackItem addAction ["Build Recon Camp", ReconMod_fnc_buildCampsite];


