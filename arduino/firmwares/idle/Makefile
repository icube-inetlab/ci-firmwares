# This has to be the absolute path to the Arduino base directory:
ARDUINOBASE = $(CURDIR)/../../../arduino

ARDUINO_DIR = $(ARDUINOBASE)/arduino-1.8.5

# gets the TAG and SUB from the BOARD variable (split on !)
BOARD_TAG = $(word 1,$(subst !, ,$(BOARD)))
BOARD_SUB = $(word 2,$(subst !, ,$(BOARD)))
# gets the alternate core path from the boards folder (only zigduino needed inhere for now)
ALTERNATE_CORE_PATH += $(ARDUINOBASE)/boards/$(BOARD_TAG)
# if the alternate core path does not exist, default back to the standard folder
ifeq ("$(wildcard $(ALTERNATE_CORE_PATH))","")
ALTERNATE_CORE_PATH = $(ARDUINO_DIR)/hardware/arduino/avr
endif
# where the compilation happens
OBJDIR = bin/$(BOARD)

CPPFLAGS += -$(MCU_FLAG_NAME)=$(MCU) -DF_CPU=$(F_CPU) -DARDUINO=$(ARDUINO_VERSION) $(ARDUINO_ARCH_FLAG) \
        -I$(ARDUINO_CORE_PATH) -I$(ARDUINO_VAR_PATH)/$(VARIANT) \
        $(SYS_INCLUDES) $(PLATFORM_INCLUDES) $(USER_INCLUDES) -w -ffunction-sections \
        -fdata-sections
	
include ../../Arduino-Makefile/Arduino.mk
