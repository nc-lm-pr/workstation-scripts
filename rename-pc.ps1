# Open powershell as Admin
# Enable script execution for current session
Set-ExecutionPolicy Bypass -Scope Process -Force

# get domain creds. e.g (domain\username) and password
$creds = Get-Credential
$newName = (Get-WmiObject Win32_BIOS).SerialNumber.Trim()
$currentName = $env:COMPUTERNAME

if ($currentName -ne $newName) {
    Rename-Computer -NewName $newName -DomainCredential $creds -Force -Restart 
}
