# ***************************************************************************************
# ***************************************************************************************
#
#		Name : 		Makefile
#		Author :	Paul Robson (paul@robsons.org.uk)
#		Date : 		20th November 2023
#		Reviewed :	No
#		Purpose :	Main firmware makefile, most of the work is done by CMake.
#
# ***************************************************************************************
# ***************************************************************************************

ifeq ($(OS),Windows_NT)
include build_env\common.make
else
include build_env/common.make
endif

RELEASEFILE = neo6502.zip

DOCDIR = documents$(S)release$(S)

DOCUMENTS =  $(DOCDIR)*.pdf $(DOCDIR)*.txt $(BINDIR)neo6502.inc
BINARIES = 	 $(BINDIR)*.uf2 $(BINDIR)*.elf $(ROOTDIR)emulator$(S)cross-compile$(S)neowin.zip $(BINDIR)basic.bin \
			 $(ROOTDIR)emulator$(S)neolinux.zip
PYTHONAPPS = $(BINDIR)makebasic.zip $(BINDIR)listbasic.zip $(BINDIR)createblanks.zip $(BINDIR)makeimg.zip \
			 $(BINDIR)nxmit.zip

# ***************************************************************************************
#
#						Remake everything to release state
#
# ***************************************************************************************

all:
	$(CMAKEDIR) bin
	$(CMAKEDIR) release
	make -B -C kernel release
	make -B -C basic release
	make -B -C firmware release
	make -B -C emulator release
	make -B -C examples release
	make -B zipfile 

# ***************************************************************************************
#
#								Make the release zip
#
# ***************************************************************************************

zipfile: crossdev
	zip -r -j -q release$(S)$(RELEASEFILE) $(DOCUMENTS) $(BINARIES) $(PYTHONAPPS) \
						examples$(S)samples.zip documents$(S)release$(S)crossdev$(S)crossdev.zip
	$(CDEL) documents$(S)release$(S)crossdev$(S)crossdev.zip

crossdev:
	cd documents$(S)release$(S)crossdev ; $(CDEL) crossdev.zip ; zip -r -q crossdev.zip *

# ***************************************************************************************
#
#							Make windows & linux versions
#
# ***************************************************************************************

windows:
		make -B -C kernel clean
		make -B -C basic clean
		make -B -C emulator clean
		make -B -C emulator ewindows

linux:
		make -B -C kernel clean
		make -B -C basic clean
		make -B -C emulator clean
		make -B -C emulator elinux

macos:
		make -B -C kernel clean
		make -B -C basic clean
		make -B -C emulator clean
		make -B -C emulator emacos


# ***************************************************************************************
#
#								Clean everything
#
# ***************************************************************************************

clean:
	make -B -C kernel clean
	make -B -C basic clean
	make -B -C emulator clean
	make -B -C firmware clean

