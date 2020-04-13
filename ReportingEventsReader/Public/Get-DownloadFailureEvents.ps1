Function Get-DownloadFailureEvents{
[CmdletBinding()]
Param(
    [Parameter(Mandatory)]
    $ReportingEvents
)
$ReportingEvents.Where({$_.EventID -in 161}) | Select-Object DateTimeAtTarget,@{N='Message';E={($_.Message -Split ':')[2]}}
}