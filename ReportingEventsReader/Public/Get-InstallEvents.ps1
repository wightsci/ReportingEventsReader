Function Get-InstallEvents{
[CmdletBinding()]
Param(
    $ReportingEvents
)
$ReportingEvents.Where({$_.EventID -in 183,184,190,191,197,199}) | Select-Object DateTimeAtTarget,EventID,@{N='Message';E={($_.Message -Split ':')[2].Trim()}}
}