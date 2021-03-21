#!/usr/bin/env bash

# Clean all projects
./gradlew clean
# Build library release AAR
./gradlew :library:assembleRelease
# Move it to /libs inside client project
cp library/build/outputs/aar/library-release.aar client/libs/library-release.aar
# Run failing unit test in client project
./gradlew :client:testDebugUnitTest