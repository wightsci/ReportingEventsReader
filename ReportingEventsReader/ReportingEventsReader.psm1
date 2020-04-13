[CmdletBinding()]
Param()

# Loader for external modules
$ScriptRoot = Split-Path $Script:MyInvocation.MyCommand.Path
$Public = @( Get-ChildItem -Path $ScriptRoot\Public\*.ps1 -ErrorAction SilentlyContinue )
$Private = @( Get-ChildItem -Path $ScriptRoot\Private\*.ps1 -ErrorAction SilentlyContinue )
@($Public + $Private) | Foreach-Object { . $_.FullName }
Export-ModuleMember -Function $Public.Basename