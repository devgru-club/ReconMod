if not exist addon mkdir addon
if not exist "@bivouac/addons" mkdir "@bivouac/addons"

xcopy camp addon\camp /S /I /Y
xcopy init addon\init /S /I /Y
xcopy utils addon\utils /S /I /Y
xcopy data addon\data /S /I /Y

copy CfgFunctions.hpp addon
copy CfgVehicles.hpp addon
copy CfgPatches.hpp addon

copy config.cpp addon

exit 0
