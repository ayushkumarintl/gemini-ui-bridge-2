@echo off
cd /d "%~dp0"
echo Sending a small test prompt to Gemini through the local bridge...
echo.
powershell -NoProfile -ExecutionPolicy Bypass -Command "try { Invoke-RestMethod -Method Post -Uri 'http://127.0.0.1:8787/v1/prompt' -ContentType 'application/json' -Body '{\"prompt\":\"Reply with exactly this sentence: Gemini bridge is working.\"}' | ConvertTo-Json -Depth 8 } catch { Write-Host $_.Exception.Message; exit 1 }"
echo.
pause