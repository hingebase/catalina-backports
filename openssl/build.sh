# https://github.com/AnacondaRecipes/openssl-feedstock/commit/e93f97703b20ced6f2e2bce1dad17aba34b81dcb
./Configure --prefix="$PREFIX" no-module

# `make -j install_sw` fails randomly
make -j$CPU_COUNT
make install_sw

cd "$PREFIX"
rm lib/libcrypto.a lib/libssl.a

# https://github.com/conda-forge/openssl-feedstock/commit/c259725f2e4dfc11fe7ad25707eb3fea2378544e
mkdir -p ssl/certs
touch ssl/certs/.keep
