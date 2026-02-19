#!/bin/bash
echo "============================================"
echo " Living NPCs Mod - Linux/Mac Setup"
echo "============================================"

# Download gradle wrapper jar
echo "Downloading Gradle wrapper..."
curl -L "https://github.com/gradle/gradle/raw/v8.8.0/gradle/wrapper/gradle-wrapper.jar" \
     -o gradle/wrapper/gradle-wrapper.jar

if [ ! -f gradle/wrapper/gradle-wrapper.jar ]; then
    echo "ERROR: Could not download gradle-wrapper.jar"
    exit 1
fi

chmod +x gradlew
echo "Building..."
./gradlew build

echo ""
echo "Done! JAR: build/libs/living-npcs-1.0.0.jar"
echo "Copy to ~/.minecraft/mods/"
