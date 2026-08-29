cmake -B build -D CMAKE_INTERPROCEDURAL_OPTIMIZATION=1 $CMAKE_ARGS
cmake --build build --target zlib
cmake --install build --component Runtime --strip
rm "$PREFIX/lib/libz.dylib"
