$ErrorActionPreference = 'Stop';

$packageName= 'riot-web'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://riot.im/download/desktop/install/win32/ia32/Riot%20Setup%200.11.4-ia32.exe'
$url64      = 'https://riot.im/download/desktop/install/win32/x64/Riot%20Setup%200.11.4.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  softwareName  = 'Riot*'

  checksum      = '12A9C3CE7FCF38B660B98385F7E86CD1A87A4853D51B184C7F213AC37D10C7A7'
  checksumType  = 'sha256'
  checksum64    = 'E25E7BF03A901AD74CA1A806A332CD6CD736271403DD99EDF63ECE07B558F3C7'
  checksumType64= 'sha256'

  silentArgs    = '--silent'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs










    








