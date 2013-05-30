emcc \
    --minify 1 \
    --closure 1 \
    libmodplug/src/*.cpp \
	-I libmodplug/src \
	-I libmodplug/src/libmodplug/ \
	-DHAVE_SETENV -Drandom=rand -Dsrandom=srand -DHAVE_SINF \
    -O2 \
	-o libmodplug.js \
	-s EXPORTED_FUNCTIONS="['_ModPlug_Load', '_ModPlug_Unload', '_ModPlug_Read', '_ModPlug_Seek']"