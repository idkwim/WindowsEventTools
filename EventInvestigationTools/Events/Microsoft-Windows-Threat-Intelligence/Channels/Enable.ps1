. "$PSScriptRoot\..\..\..\Tools\WinEvent.ps1"

Get-WinEvent -ListLog "Microsoft-Windows-Threat-Intelligence*" -Force -ErrorAction SilentlyContinue | 
Enable-WinEvent -Passthru | 
Format-Table -Property LogMode,MaximumSizeInBytes,RecordCount,LogName,isEnabled -AutoSize

