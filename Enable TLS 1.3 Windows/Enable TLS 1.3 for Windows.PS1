
######### Script to Enable TLS1.3 in Windows #####

# Created NTAdmin #

# Owned By NT Admin #



# Set variables to indicate value and key to set
$RegistryPath1 = 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.3’ 
$RegistryPath2 = 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.3\Client’
 

# Create the key if it does not exist
If (-NOT (Test-Path $RegistryPath1)) {
  New-Item -Path $RegistryPath1 -Force | Out-Null
}
 
If (-NOT (Test-Path $RegistryPath2)) {
  New-Item -Path $RegistryPath2 -Force | Out-Null
}  
 
# Now set the value
New-ItemProperty -Path $RegistryPath2 -Name DisabledByDefault -Value 0 -PropertyType DWORD -Force
New-ItemProperty -Path $RegistryPath2 -Name Enabled -Value 1 -PropertyType DWORD -Force