@echo off
echo ============================================
echo  Living NPCs Mod - Windows Setup Script
echo ============================================
echo.
echo This script will download the Gradle wrapper and build the mod.
echo.
echo Step 1: Downloading Gradle wrapper...
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/gradle/gradle/raw/v8.8.0/gradle/wrapper/gradle-wrapper.jar' -OutFile 'gradle\wrapper\gradle-wrapper.jar'"

if not exist "gradle\wrapper\gradle-wrapper.jar" (
    echo ERROR: Could not download gradle-wrapper.jar
    echo Please manually download from:
    echo https://github.com/gradle/gradle/raw/v8.8.0/gradle/wrapper/gradle-wrapper.jar
    echo and place it in gradle\wrapper\
    pause
    exit /b 1
)

echo.
echo Step 2: Building the mod...
call gradlew.bat build

if %ERRORLEVEL% equ 0 (
    echo.
    echo ============================================
    echo  BUILD SUCCESSFUL!
    echo  JAR location: build\libs\living-npcs-1.0.0.jar
    echo  Copy this JAR to your .minecraft\mods\ folder
    echo ============================================
) else (
    echo.
    echo Build failed. Check errors above.
)
pause
