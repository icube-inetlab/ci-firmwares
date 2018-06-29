# Define all target architectures
#
# For each target define:
#
#  * PREFIX_$(target) variable with the firmware name prefix
#

install-arduino-ide:
	if [ ! -f arduino-1.8.5-linux64.tar.xz ]; then\
		wget http://downloads.arduino.cc/arduino-1.8.5-linux64.tar.xz;\
		fi; \
	if [ ! -d arduino-1.8.5 ]; then tar xf arduino-1.8.5-linux64.tar.xz; fi;


ARCHIS += zigduino_r2
PREFIX_zigduino_r2 += zigduino

ARCHIS += mega~atmega2560
PREFIX_mega~atmega2560 += mega2560

ARCHIS += uno
PREFIX_uno += uno

include ../Makefile.in
