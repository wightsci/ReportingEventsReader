[CmdletBinding()]
Param(
[String]$EventsPath="$env:WinDir\SoftwareDistribution\ReportingEvents.log"    
)
$header = "EventInstanceID",
"TimeAtTarget",
"EventNamespaceID",
"EventID",
"EventSource",
"UpdateID",
"RevisionID",
"SequenceNumber",
"AppName",
"Result",
"Action",
"Message",
"MessageID"

$ReportingEvents = Import-CSV -Path $EventsPath -Header $header -Delimiter  `t  

$ReportingEvents = $ReportingEvents | 
Select-Object *,
@{N='EventName';E={($_.EventID -Split ' ')[1]}},
@{N='EventNumber';E={($_.EventID -Split ' ')[0]}},
@{N='DateTimeAtTarget';E={([DateTime]::ParseExact($_.TimeAtTarget, 'yyyy-MM-dd HH:mm:ss:fffzzz',[CultureInfo]::CurrentCulture))}}

$ReportingEvents | 
Select-Object "EventInstanceID",
"DateTimeAtTarget",
"EventNamespaceID",
@{N="EventID";E={$_.EventNumber}},
"EventName",
"EventSource",
"UpdateID",
"RevisionID",
"SequenceNumber",
"AppName",
"Result",
"Action",
"Message",
"MessageID"
