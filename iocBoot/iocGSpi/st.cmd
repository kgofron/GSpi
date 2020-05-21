#!../../bin/linux-x86_64/GSpi

#- You may have to change GSpi to something else
#- everywhere it appears in this file

#< envPaths

## Register all support components
dbLoadDatabase("../../dbd/GSpi.dbd",0,0)
GSpi_registerRecordDeviceDriver(pdbbase) 

## Load record instances
dbLoadRecords("../../db/GSpi.db","user=kaz")

iocInit()

## Start any sequence programs
#seq sncGSpi,"user=kaz"
