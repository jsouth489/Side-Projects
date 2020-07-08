CD C:\Users\US20419\Desktop
Import-Module ActiveDirectory,MyTools
$FormatEnumerationLimit = -1
function prompt {
if ([System.IntPtr]::Size -eq 8) {$size = '64 bit'}
else {$size = '32 bit'}
$currentUser = [Security.Principal.WindowsIdentity]::GetCurrent()
$secprin = New-Object Security.Principal.WindowsPrincipal $currentUser
if ($secprin.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator))
{$admin = 'Administrator'}
else {$admin = 'non-Administrator'}
$host.ui.RawUI.WindowTitle = "Hello Joe! $admin $size $(get-location)"
Get-Location

}  