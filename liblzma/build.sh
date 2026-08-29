cmake \
    -B build \
    -D BUILD_SHARED_LIBS=1 \
    -D CMAKE_INTERPROCEDURAL_OPTIMIZATION=1 \
    -D XZ_EXTERNAL_SHA256=1 \
    $CMAKE_ARGS
cmake --build build --target liblzma
cmake --install build --component liblzma_Runtime --strip
