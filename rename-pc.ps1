# get serial number
(Get-WmiObject Win32_BIOS).SerialNumber.Trim()
