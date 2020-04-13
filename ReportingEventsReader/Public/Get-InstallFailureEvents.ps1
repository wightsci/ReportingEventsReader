Function Get-InstallFailureEvents {
[CmdletBinding()]
Param(
    [Parameter(Mandatory)]
    $ReportingEvents
)
$ReportingEvents.Where({$_.EventID -in 182,195,198,203}) | Select-Object DateTimeAtTarget,@{N='Message';E={($_.Message -Split ':')[2]}}
}