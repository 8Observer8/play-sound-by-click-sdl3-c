cd dist
cmake --build . -j4

cd ..
mkdir public\js
set current_dir=%~dp0
copy "%current_dir%dist\app.wasm" "%current_dir%public\js"
copy "%current_dir%dist\app.js" "%current_dir%public\js"
