TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = GSpi
# GSpi.dbd will be created and installed
DBD += GSpi.dbd

# GSpi.dbd will be made up from these files:
GSpi_DBD += base.dbd

# Include dbd files from all support applications:
# GSpi_DBD += xxx.dbd
GSpi_DBD += asyn.dbd
GSpi_DBD += calc.dbd
GSpi_DBD += stream.dbd
GSpi_DBD += drvAsynSerialPort.dbd
GSpi_DBD += drvAsynIPPort.dbd
GSpi_DBD += system.dbd
GSpi_DBD += devIocStats.dbd
GSpi_DBD += asSupport.dbd
GSpi_DBD += caPutLog.dbd

# Add all the support libraries needed by this IOC
#GSpi_LIBS += xxx

# GSpi_registerRecordDeviceDriver.cpp derives from GSpi.dbd
GSpi_SRCS += GSpi_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
GSpi_SRCS_DEFAULT += GSpiMain.cpp
GSpi_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#GSpi_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Link in the code from the support library
GSpi_LIBS += asyn stream calc
GSpi_LIBS += devIocStats autosave caPutLog

# Finally link to the EPICS Base libraries
GSpi_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

