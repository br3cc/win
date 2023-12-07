$vpnName = "Veepy Yen Name"
$serverAddress = "your.vpn.server.net" # Can also be an IP
$tunnelType = "L2tp"
$encryptionLevel = "Required"
$dnsSuffix = "your.domain.com"
$l2tpPsk = "xxxxxxYOURxPSKxxxxxxxx" # beware, this is the plaintext version, will be stored in PS history
$authMethod = "MSChapv2"
$splitTunnel = $false # $false means force tunneled, use $true for split

Add-VpnConnection -Name $vpnName `
                  -ServerAddress $serverAddress `
                  -TunnelType $tunnelType `
                  -SplitTunneling $splitTunnel ` 
                  -EncryptionLevel $encryptionLevel `
                  -DnsSuffix $dnsSuffix `
                  -L2tpPsk $l2tpPsk `
                  -AuthenticationMethod $authMethod