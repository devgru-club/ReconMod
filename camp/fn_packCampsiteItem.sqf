params ["_target", "_caller", "_id", "_arguments"];
private ["_message", "_camp"];
_camp = _this select 3;

_message = format['%1 is packing up the campsite', name _caller];
hint _message;

_message = format["camp item action was used on: %1", typeOf _target];
_message call ReconMod_fnc_log;

_message = format['camp given: ', _camp];
_message call ReconMod_fnc_log;
