Function Get-DetectionEvents {
[CmdletBinding()]
Param(
    [Parameter(Mandatory)]
    $ReportingEvents
)
$ReportingEvents.Where({$_.EventID -in 147}) | Select-Object DateTimeAtTarget,Message
}