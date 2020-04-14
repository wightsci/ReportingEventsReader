# Stolen from Kevin Marquette :)
$projectRoot = Resolve-Path "$PSScriptRoot\.."
$moduleRoot = Split-Path (Resolve-Path "$projectRoot\*\*.psm1")
$moduleName = Split-Path $moduleRoot -Leaf

Describe "General project validation: $moduleName" {

    $scripts = Get-ChildItem $projectRoot -Include *.ps1,*.psm1,*.psd1 -Recurse

    # TestCases are splatted to the script so we need hashtables
    $testCase = $scripts | Foreach-Object{@{file=$_}}         
    It "Script <file> should be valid powershell" -TestCases $testCase {
        param($file)

        $file.FullName | Should Exist

        $contents = Get-Content -Path $file.FullName -ErrorAction Stop
        $errors = $null
        $null = [System.Management.Automation.PSParser]::Tokenize($contents, [ref]$errors)
        $errors.Count | Should Be 0
    }

    It "Module '$moduleName' can import cleanly" {
        {Import-Module (Join-Path $moduleRoot "$moduleName.psm1") -force } | Should Not Throw
    }
}

Describe "PS Script Analyzer: $modulename" {
    
    Import-Module PSScriptAnalyzer
    It "Module should pass PSScriptAnalyzer with 0 violations" {
        (Invoke-ScriptAnalyzer -Path .\ReportingEventsReader -Recurse -ExcludeRule PSUseSingularNouns).Count | Should Be 0
    }
}

Describe "Online Help files should exist" {

    It "about_$modulename.help.txt file should exist" {
        "$modulename\en-US\about_$modulename.help.txt" | Should exist
    }

    It "$modulename-help.xml file should exist" {
        "$modulename\en-US\$modulename-help.xml" | Should exist
    }

}