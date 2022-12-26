cmake -S . -B build -G Ninja \
   -DCMAKE_BUILD_TYPE=Release \
   -DCMAKE_INSTALL_PREFIX="/usr" \ # Use "/usr" when building Linux packages. If building not for package, use "/usr/local"
   -DENABLE_LTO=ON # if you want to enable LTO/IPO
#  -DLauncher_QT_VERSION_MAJOR="6" # if you want to use Qt 6

cmake --build build
cmake --install build # Optionally specify DESTDIR for packages (i.e. DESTDIR=${pkgdir} cmake --install ...)