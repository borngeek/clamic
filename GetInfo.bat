@echo off
REM set /p %name% = Your Name: 
REM set /p %lab% = Your Lab: 
REM set /p %roll% = Roll No: 

REM wmic computersystem get name,systemtype 
REM wmic bios get serialnumber
REM wmic csproduct get identifyingnumber
REM wmic nic get macaddress,description
REM wmic COMPUTERSYSTEM get TotalPhysicalMemory
REM wmic COMPUTERSYSTEM get Memory


REM list bios details
REM list motherboard/baseboard details
REM list RAM/MEMORYCHIP details
REM list RAM/MEMORYCHIP details
wmic diskdrive get model,serialNumber,size,mediaType

echo "##:: COMPUTERSYSTEM ::##" > out_base64
wmic COMPUTERSYSTEM get Manufacturer, Model, Name, NameFormat, BootROMSupported >> out_base64
echo "##:: MEMORYCHIP ::##" >> out_base64
wmic MEMORYCHIP get SerialNumber, Manufacturer, Capacity, Speed, Description, PartNumber, FormFactor >> out_base64
echo "##:: MOTHERBOARD ::##" >> out_base64
wmic baseboard get product,Manufacturer,version,serialnumber >> out_base64
echo "##:: GRAPHICSCARD ::##" >> out_base64
VideoController get name, DeviceID, VideoArchitecture, VideoMemoryType, PNPDeviceID, VideoModeDescription >> out_base64
type out_base64
REM powershell "[convert]::ToBase64String([Text.Encoding]::UTF8.GetBytes(\"Hello world!\"))"

REM hh http://10.23.2.41/RAD_Clamic/