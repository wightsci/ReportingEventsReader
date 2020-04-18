---
external help file: ReportingEventsReader-help.xml
Module Name: ReportingEventsReader
online version:
schema: 2.0.0
---

# Get-EventsForTimeSpan

## SYNOPSIS
Returns events that occur between DateTimes from a ReportingEvents 
collection.

## SYNTAX

```
Get-EventsForTimeSpan [[-Start] <DateTime>] [[-End] <DateTime>] [-ReportingEvents] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Returns events that occur between DateTimes from a ReportingEvents 
collection.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-EventsForTimeSpan -ReportingEvents $RE -start (Get-Date '20/03/2020 17:49:11') -end (Get-Date '20/03/2020 17:49:12.999')
```

In this example reporting events tht occurred between the supplied dates and times are returned. 

## PARAMETERS

### -End
The end DateTime for the search.

```yaml
Type: DateTime
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReportingEvents
A collection of reporting events, as returned by Import-ReportingEvents .

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Start
The start DateTime for the search.

```yaml
Type: DateTime
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
Reporting event time stamps have a time resolution to milliseconds. If not specified, the milliseconds
of a DateTime object will be 000. Bear this in mind when constructing DateTime objects for the -End parameter. You probably want 999 as your milliseconds.

## RELATED LINKS
