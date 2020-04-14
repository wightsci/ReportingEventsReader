---
external help file: ReportingEventsReader-help.xml
Module Name: ReportingEventsReader
online version:
schema: 2.0.0
---

# Get-DownloadEvents

## SYNOPSIS
Returns successful Download events from a ReportingEvents collection.

## SYNTAX

```
Get-DownloadEvents [[-ReportingEvents] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Returns successful Detection events (event ID 167) from a ReportingEvents 
collection.

## EXAMPLES

### Example 1
```powershell
PS C:\> $ReportingEvents = Import-ReportingEvents
PS C:\> Get-DownloadEvents -ReportingEvents $ReportingEvents
```

In this example the ReportingEvents.log file is imported, then the successful 
Download events are returned.

## PARAMETERS

### -ReportingEvents
A collection of ReportingEvents.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
