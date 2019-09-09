/*
	author: xetra11
	description: none
	returns: nothing
*/

params ["_backpackItem"];

format['init backpack: %1', typeOf _backpackItem] call bivouac_fnc_log;
_backpackItem addAction ["Build Bivouac Camp", bivouac_fnc_buildCampsite];
