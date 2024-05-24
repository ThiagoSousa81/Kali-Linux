# Comandos para ativação de Windows e/ou Office

# Antigo
irm https://massgrave.dev/get | iex

# Check massgrave.dev for more details

$ErrorActionPreference = "Stop"

write-host
Write-Host "The current command (irm https://massgrave.dev/get | iex) will be retired on July 4, 2024."
Write-Host -ForegroundColor Green "Use the new command (irm https://get.activated.win | iex) moving forward."
write-host

# Enable TLSv1.2 for compatibility with older clients for current session
[Net.ServicePointManager]::SecurityProtocol=[Net.SecurityProtocolType]::Tls12

$DownloadURL1 = 'https://raw.githubusercontent.com/massgravel/Microsoft-Activation-Scripts/36f7291963f4264a9e5c9b8d82740ed5d625152a/MAS/All-In-One-Version/MAS_AIO-CRC32_C67E873E.cmd'
$DownloadURL2 = 'https://bitbucket.org/WindowsAddict/microsoft-activation-scripts/raw/36f7291963f4264a9e5c9b8d82740ed5d625152a/MAS/All-In-One-Version/MAS_AIO-CRC32_C67E873E.cmd'

$URLs = @($DownloadURL1, $DownloadURL2)
$RandomURL1 = Get-Random -InputObject $URLs
$RandomURL2 = $URLs -ne $RandomURL1

try {
    $response = Invoke-WebRequest -Uri $RandomURL1 -UseBasicParsing
}
catch {
	$response = Invoke-WebRequest -Uri $RandomURL2 -UseBasicParsing
}

$rand = Get-Random -Maximum 99999999
$isAdmin = [bool]([Security.Principal.WindowsIdentity]::GetCurrent().Groups -match 'S-1-5-32-544')
$FilePath = if ($isAdmin) { "$env:SystemRoot\Temp\MAS_$rand.cmd" } else { "$env:TEMP\MAS_$rand.cmd" }

$ScriptArgs = "$args "
$prefix = "@::: $rand `r`n"
$content = $prefix + $response
Set-Content -Path $FilePath -Value $content

Start-Process $FilePath $ScriptArgs -Wait

$FilePaths = @("$env:TEMP\MAS*.cmd", "$env:SystemRoot\Temp\MAS*.cmd")
foreach ($FilePath in $FilePaths) { Get-Item $FilePath | Remove-Item }





# Novo
irm https://get.activated.win | iex

# The following get.ps1 code is hosted on get.activated.win for massgrave.dev. For more info, please visit massgrave.dev.

$ErrorActionPreference = "Stop"
# Enable TLSv1.2 for compatibility with older clients for current session
[Net.ServicePointManager]::SecurityProtocol=[Net.SecurityProtocolType]::Tls12

$DownloadURL1 = 'https://raw.githubusercontent.com/massgravel/Microsoft-Activation-Scripts/36f7291963f4264a9e5c9b8d82740ed5d625152a/MAS/All-In-One-Version/MAS_AIO-CRC32_C67E873E.cmd'
$DownloadURL2 = 'https://bitbucket.org/WindowsAddict/microsoft-activation-scripts/raw/36f7291963f4264a9e5c9b8d82740ed5d625152a/MAS/All-In-One-Version/MAS_AIO-CRC32_C67E873E.cmd'

$URLs = @($DownloadURL1, $DownloadURL2)
$RandomURL1 = Get-Random -InputObject $URLs
$RandomURL2 = $URLs -ne $RandomURL1

try {
    $response = Invoke-WebRequest -Uri $RandomURL1 -UseBasicParsing
}
catch {
	$response = Invoke-WebRequest -Uri $RandomURL2 -UseBasicParsing
}

$rand = Get-Random -Maximum 99999999
$isAdmin = [bool]([Security.Principal.WindowsIdentity]::GetCurrent().Groups -match 'S-1-5-32-544')
$FilePath = if ($isAdmin) { "$env:SystemRoot\Temp\MAS_$rand.cmd" } else { "$env:TEMP\MAS_$rand.cmd" }

$ScriptArgs = "$args "
$prefix = "@::: $rand `r`n"
$content = $prefix + $response
Set-Content -Path $FilePath -Value $content

Start-Process $FilePath $ScriptArgs -Wait

$FilePaths = @("$env:TEMP\MAS*.cmd", "$env:SystemRoot\Temp\MAS*.cmd")
foreach ($FilePath in $FilePaths) { Get-Item $FilePath | Remove-Item }
