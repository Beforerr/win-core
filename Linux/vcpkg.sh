git clone https://github.com/microsoft/vcpkg
sudo apt-get install pkg-config
./vcpkg/bootstrap-vcpkg.sh -disableMetrics
./vcpkg/vcpkg integrate install

./vcpkg/vcpkg install opencv
./vcpkg/vcpkg remove opencv opencv4 libjpeg-turbo liblzma libpng libwebp protobuf quirc tiff zlib
./vcpkg/vcpkg list


./vcpkg/vcpkg integrate remove

rm -rf vcpkg