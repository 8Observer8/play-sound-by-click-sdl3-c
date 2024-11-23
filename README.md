My first app with stereo sound by click works in the browser: https://play-sound-by-click-sdl3-c.netlify.app/ 
Size of release:
- `app.js`: 178 KB
- `app.wasm` - 2.2 MB (sound file - 444 KB)
Source code: https://gist.github.com/8Observer8/7133520ecc2db970c7043a14e74ca148
The configure command for SDL3_ttf:
```bash
emcmake cmake -G "MinGW Makefiles" -S . -B dist -DCMAKE_INSTALL_PREFIX=E:/libs/sdl3_mixer-3.0.0-prefix/web -DCMAKE_FIND_ROOT_PATH_MODE_PACKAGE="E:/libs/sdl-3.1.6-prefix/web"
```
Building and installing:
```bash
cmake --build dist -j4
cmake --install dist
```
The configure command for your project:
config.bat
```bash
emcmake cmake -G "MinGW Makefiles" -S . -B dist -DSDL3_DIR=E:/libs/sdl-3.1.6-prefix/web/lib/cmake/SDL3 -DSDL3_mixer_DIR=E:/libs/sdl3_mixer-3.0.0-prefix/web -DCMAKE_FIND_ROOT_PATH_MODE_PACKAGE="E:/libs/sdl3_mixer-3.0.0-prefix/web" -DCMAKE_BUILD_TYPE=Debug
```
Building:
build.bat
```bash
cd dist
cmake --build . -j4

cd ..
mkdir public\js
set current_dir=%~dp0
copy "%current_dir%dist\app.wasm" "%current_dir%public\js"
copy "%current_dir%dist\app.js" "%current_dir%public\js"
```
