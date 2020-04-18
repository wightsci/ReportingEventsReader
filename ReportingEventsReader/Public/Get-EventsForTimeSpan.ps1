Function Get-EventsForTimeSpan {
    [CmdletBinding()]
    Param(
        [DateTime]$Start,
        [DateTime]$End,
        [Parameter(Mandatory)]
        $ReportingEvents
    )
    $ReportingEvents.Where({($_.DateTimeAtTarget -ge $Start) -and ($_.DateTimeAtTarget -le $End)})
}