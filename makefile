# Makefile to build class 'helloworld' for Pure Data.
# Needs Makefile.pdlibbuilder as helper makefile for platform-dependent build
# settings and rules.

# library name
lib.name = gphoto

# input source file (class name == source file basename)
class.sources = gphoto.c

# build for 64 bit only
arch := x86_64

# link to libgphoto2
ldlibs = -lgphoto2

# all extra files to be included in binary distribution of the library
datafiles = gphoto-help.pd README.txt LICENSE.txt

# include Makefile.pdlibbuilder from submodule directory 'pd-lib-builder'
PDLIBBUILDER_DIR=pd-lib-builder/
include $(PDLIBBUILDER_DIR)/Makefile.pdlibbuilder

# must do (why this doesn”t work with stock pd and pd-lib-builder?)
# make PDINCLUDEDIR=Applications/Pd.app/Contents/Resources/include/