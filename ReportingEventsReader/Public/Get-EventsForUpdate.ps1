Function Get-EventsForUpdate {
    [CmdletBinding()]
    Param(
    [Parameter(Mandatory)]
    [String]$UpdateName,
    [Parameter(Mandatory)]
    $ReportingEvents
    )
    $ReportingEvents.Where({$_.Message -like "*the following update: *$UpdateName*"})

}