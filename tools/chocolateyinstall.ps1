$ErrorActionPreference = 'Stop'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://download.microsoft.com/download/0/6/6/0660AD34-264B-4ED2-B975-ABFE255DAD47/vsta_setup.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  fileType       = 'EXE'
  url            = $url
  softwareName   = 'Microsoft Visual Studio Tools for Applications 2017*'
  checksum       = '872294D8C408A5BCC8B7BFEA11E130079C669F3CB6BB055FB6DFD367F28186A8'
  checksumType   = 'sha256'
  silentArgs     = "/Quiet /Silent /NoRestart"
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
