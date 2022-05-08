@echo off
powershell -noprofile -Command "Get-ChildItem -Path '%~dp0' -Recurse | Unblock-File; Start-Process powershell.exe -Argument '-WindowStyle hidden -executionpolicy bypass -file """%~dp0Winget-AutoUpdate-Install.ps1"" -Silent -DoNotUpdate -DisableWAUAutoUpdate -NotificationLevel SuccessOnly'" -Verb RunAs
