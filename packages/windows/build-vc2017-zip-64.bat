rmdir /S /Q build-vc2017-zip-64
mkdir build-vc2017-zip-64
cd build-vc2017-zip-64
cmake ..\source -G "Visual Studio 15 2017 Win64" ^
  -DMRN_GROONGA_EMBED=OFF ^
  -DMRN_GROONGA_NORMALIZER_MYSQL_EMBED=OFF ^
  -DGRN_WITH_BUNDLED_LZ4=ON ^
  -DGRN_WITH_BUNDLED_MECAB=ON ^
  > config.log
cmake --build . --config RelWithDebInfo > build.log
cmake --build . --config RelWithDebInfo --target package > zip.log
move *.zip ..\
cd ..
