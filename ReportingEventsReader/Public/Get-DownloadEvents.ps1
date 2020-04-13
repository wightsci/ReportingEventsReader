Function Get-DownloadEvents{
[CmdletBinding()]
Param(
    [Parameter(Mandatory)]
    $ReportingEvents
)
$ReportingEvents.Where({$_.EventID -in  167}) | Select-Object DateTimeAtTarget,@{N='Message';E={($_.Message -Split ':')[2]}}
}