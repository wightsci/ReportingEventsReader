---
external help file: ReportingEventsReader-help.xml
Module Name: ReportingEventsReader
online version:
schema: 2.0.0
---

# Import-ReportingEvents

## SYNOPSIS
Imports a ReportingEvents log file.

## SYNTAX

```
Import-ReportingEvents [[-EventsPath] <String>] [<CommonParameters>]
```

## DESCRIPTION
Imports a ReportingEvents log file.

## EXAMPLES

### Example 1
```powershell
PS C:\> $ReportingEvents = Import-ReportingEvents
```

In this example the ReportingEvents log file is imported into the
$ReportingEvents variable.

## PARAMETERS

### -EventsPath
The path to a ReportingEvents file. Defaults to 
$env:windir\SoftwareDistribution\ReportingEvents.log

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
Default value: $env:windir\SoftwareDistribution\ReportingEvents.log
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
