Function Get-DownloadFailureEvents{
[CmdletBinding()]
Param(
    $ReportingEvents
)
$ReportingEvents.Where({$_.EventID -eq 161}) | Select-Object DateTimeAtTarget,@{N='Message';E={($_.Message -Split ':')[2]}}
}