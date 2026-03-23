
REM Repository: papers/done/2023icaTutorial/repo
echo Restoring: papers/done/2023icaTutorial/repo
if exist "papers\done\2023icaTutorial\repo\.git" (
    echo   Directory already exists, skipping...
) else (
    REM Create parent directory if needed
    if not exist "papers\done\2023icaTutorial" mkdir "papers\done\2023icaTutorial"
    
    REM Clone the repository
    git clone "git@github.com:yasserfarouk/IEEEICA2023Tutorial.git" "papers\done\2023icaTutorial\repo"
    if errorlevel 1 (
        echo   Failed to clone
    ) else (
        echo   Successfully cloned
        
        REM Checkout the original branch if not already on it
        cd "papers\done\2023icaTutorial\repo"
        git checkout "main" 2>nul
        if errorlevel 1 (
            echo   Could not checkout branch: main
        ) else (
            echo   Checked out branch: main
        )
        cd ..\..
    )
)
echo.

