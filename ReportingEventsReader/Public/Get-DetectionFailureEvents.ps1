Function Get-DetectionFailureEvents {
[CmdletBinding()]
Param(
    [Parameter(Mandatory)]
    $ReportingEvents
)
$ReportingEvents.Where({$_.EventID -in 148}) | Select-Object DateTimeAtTarget,Message
}