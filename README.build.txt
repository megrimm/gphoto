I have only tested this under OSX 64bit

install gphoto2 with homebrew

$ brew install gphoto2

then build and make sure the path to pd include dir is right

$ make PDINCLUDEDIR=/Applications/Pd.app/Contents/Resources/include/

the embed and link libgphoto2.dylib

$ ./embed-osx-dep-homebrew.sh



To try to build under linux use Makefile.old:

   make pd_linux

