@echo off
cd /d "%~dp0"
set LOW_RESOURCE_MODE=true
set BROWSER_WINDOW_WIDTH=960
set BROWSER_WINDOW_HEIGHT=640
set GEMINI_CAPTURE_MEDIA_REFS_FOR_TEXT=false
set GEMINI_RESPONSE_POLL_MS=2500
set GEMINI_MEDIA_POLL_MS=6000
set GEMINI_STABLE_RESPONSE_MS=3000
set GEMINI_RETURN_PROMPT_IN_RESPONSE=true
set GEMINI_MAX_MEDIA_REFS=50
set GEMINI_IDLE_CLOSE_BROWSER_MINUTES=10
call npm run launch-browser
if errorlevel 1 (
  echo.
  echo Could not launch Chrome or Edge for Gemini.
  pause
  exit /b 1
)
call npm start
echo.
echo Bridge stopped or failed to start.
pause