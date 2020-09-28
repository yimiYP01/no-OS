################################################################################
#									       #
#     Shared variables:							       #
#	- PROJECT							       #
#	- DRIVERS							       #
#	- INCLUDE							       #
#	- PLATFORM_DRIVERS						       #
#	- NO-OS								       #
#									       #
################################################################################

# Add to SRCS source files to be build in the project
SRCS += $(PROJECT)/src/ad7768_evb.c

# Add to INCS inlcude files to be build in the porject
INCS += $(INCLUDE)/error.h
INCS += $(INCLUDE)/gpio.h
INCS += $(INCLUDE)/delay.h
INCS += $(INCLUDE)/util.h
INCS += $(INCLUDE)/axi_io.h
INCS += $(INCLUDE)/spi.h
INCS += $(INCLUDE)/timer.h
INCS += $(INCLUDE)/i2c.h
INCS += $(INCLUDE)/list.h
INCS += $(INCLUDE)/uart.h
INCS += $(INCLUDE)/irq.h
INCS += $(INCLUDE)/fifo.h

# Add to SRC_DIRS directories to be used in the build. All .c and .h files from
# the directory and subdirectories will be added to the build (recursively)
SRC_DIRS += $(PLATFORM_DRIVERS)
SRC_DIRS += $(DRIVERS)/adc/ad7768/
SRC_DIRS += $(DRIVERS)/axi_core/axi_dmac
SRC_DIRS += $(DRIVERS)/axi_core/axi_adc_core

# Add to IGNORE_FILES files to be ignored from build
IGNORED_FILES += $(PLATFORM_DRIVERS)/irq.c

# Add to LIBRARIES the libraries that need to be linked in the build
# LIBRARIES += mqtt
# LIBRARIES += fatfs
# LIBRARIES += mbedtls
# LIBRARIES += iio
