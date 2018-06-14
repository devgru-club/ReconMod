[playerSide, 'HQ'] commandChat 'Building recon camp';
[playerSide, 'HQ'] commandChat 'Recon camp successfully build';

params["_actor"];

_message = format['%1 is building up a campsite', _actor];
hint _message; diag_log 'Creating campsite...';
