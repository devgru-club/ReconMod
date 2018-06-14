/*
	author: xetra11
	description: none
	returns: nothing
*/

params ["_backpackItem"];

diag_log format['%1 init backpack %2', reconModName, _backpackItem];

_backpackItem addAction ["Build Recon Camp", ReconMod_fnc_buildCampsite];


