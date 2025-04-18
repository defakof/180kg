@echo off

echo Setting console to UTF-8 mode (chcp 65001)...
REM Change the active code page to UTF-8. Output is hidden (> nul).
chcp 65001 > nul

echo Generating file tree using ASCII characters (UTF-8 mode) and copying to clipboard...
echo Please wait...

REM Run tree with ASCII chars (/A), include files (/F), pipe output to clip
tree /F /A | clip

echo.
echo ==========================================================
echo The file tree (using ASCII characters) for the current folder (%cd%) has been copied to your clipboard.
echo Console mode was temporarily set to UTF-8 (65001) for this operation.
echo You can now paste it (Ctrl+V) into another application.
echo ==========================================================
echo.

REM Optional: Restore original code page (less critical here as script exits)
REM For example, if original was 437: chcp 437 > nul

pause