# Abyssal Reign — Fabric 1.20.1

Minecraft **1.20.1 + Fabric + Java 17**.

This project contains 8 hostile mobs and 2 bosses:
- Grave Stalker
- Rotfang
- Hollow Knight
- Blood Maw
- Wraithling
- Mire Crawler
- Void Leaper
- Fleshbound
- Dread Sovereign (boss)
- Abyss Warden (boss)

## Build on Windows

The project includes a `gradle/wrapper/gradle-wrapper.jar` bootstrap so `gradlew.bat` does not fail with a missing-wrapper error.

**Simplest method:** double-click `build.bat`.

Or open Command Prompt in this folder and run:

```bat
gradlew.bat build
```

The first build downloads Gradle and the Minecraft/Fabric build dependencies, so an internet connection is required.

When it succeeds, the JAR is in:

```text
build\libs\
```

Use the normal mod JAR (the one without `-sources`).

## Important

Use **Java 17** for Minecraft 1.20.1 development. If your Java version is different, install/select Java 17 before building.

The bosses are available through their spawn eggs; only the eight regular mobs are added to normal Overworld monster spawning.
