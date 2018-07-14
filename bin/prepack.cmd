mkdir addon

xcopy camp addon\camp /S /I
xcopy init addon\init /S /I
xcopy utils addon\utils /S /I

copy CfgFunctions.hpp addon
copy CfgVehicles.hpp addon

copy config.cpp addon
