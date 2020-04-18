---
external help file: ReportingEventsReader-help.xml
Module Name: ReportingEventsReader
online version:
schema: 2.0.0
---

# Get-EventsForUpdate

## SYNOPSIS
Returns events for a specific update from a ReportingEvents 
collection.

## SYNTAX

```
Get-EventsForUpdate [-UpdateName] <String> [-ReportingEvents] <Object> [<CommonParameters>]
```

## DESCRIPTION
Returns events for a specific update from a ReportingEvents 
collection. The function applies a wildcard to any text provided to the -UpdateName parameter.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-EventsForUpdate -UpdateName onenote -ReportingEvents $RE

```

In this example all reporting events for OneNote are returned.

## PARAMETERS

### -ReportingEvents
A collection of reporting events, as returned by Import-ReportingEvents .

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UpdateName
Textual name of the update to search for.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
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
