$newName = (Get-WmiObject Win32_BIOS).SerialNumber.Trim()
$currentName = $env:COMPUTERNAME

if ($currentName -ne $newName) {
    Rename-Computer -NewName $newName -Force -Restart
}
