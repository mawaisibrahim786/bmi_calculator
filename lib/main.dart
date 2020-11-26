Miscellaneous
*.class
*.log
*.pyc
*.swp
    .DS_Store
    .atom/
    .buildlog/
    .history
    .svn/

# IntelliJ related
*.iml
*.ipr
*.iws
    .idea/

# The .vscode folder contains launch configuration and tasks you configure in
# VS Code which you may wish to be included in version control, so this line
# is commented out by default.
#.vscode/

# Flutter/Dart/Pub related
**/doc/api/
**/ios/Flutter/.last_build_id
    .dart_tool/
    .flutter-plugins
    .flutter-plugins-dependencies
    .packages
    .pub-cache/
    .pub/
/build/

# Web related
lib/generated_plugin_registrant.dart

# Symbolication related
app.*.symbols

# Obfuscation related
app.*.map.json
10  .metadata
@@ -0,0 +1,10 @@
# This file tracks properties of this Flutter project.
# Used by Flutter tool to assess capabilities and perform upgrades etc.
#
# This file should be version controlled and should not be manually edited.

version:
revision: d408d302e22179d598f467e11da5dd968dbdc9ec
channel: stable

project_type: app
16  README.md
@@ -0,0 +1,16 @@
# bmi_calculator

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
11  android/.gitignore
@@ -0,0 +1,11 @@
gradle-wrapper.jar
/.gradle
/captures/
/gradlew
/gradlew.bat
/local.properties
GeneratedPluginRegistrant.java

# Remember to never publicly share your keystore.
# See https://flutter.dev/docs/deployment/android#reference-the-keystore-from-the-app
key.properties
54  android/app/build.gradle
@@ -0,0 +1,54 @@
def localProperties = new Properties()
def localPropertiesFile = rootProject.file('local.properties')
if (localPropertiesFile.exists()) {
localPropertiesFile.withReader('UTF-8') { reader ->
localProperties.load(reader)
}
}

def flutterRoot = localProperties.getProperty('flutter.sdk')
if (flutterRoot == null) {
throw new GradleException("Flutter SDK not found. Define location with flutter.sdk in the local.properties file.")
}

def flutterVersionCode = localProperties.getProperty('flutter.versionCode')
if (flutterVersionCode == null) {
flutterVersionCode = '1'
}

def flutterVersionName = localProperties.getProperty('flutter.versionName')
if (flutterVersionName == null) {
flutterVersionName = '1.0'
}

apply plugin: 'com.android.application'
apply from: "$flutterRoot/packages/flutter_tools/gradle/flutter.gradle"

android {
compileSdkVersion 29

lintOptions {
disable 'InvalidPackage'
}

defaultConfig {
// TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
applicationId "com.example.bmi_calculator"
minSdkVersion 16
targetSdkVersion 29
versionCode flutterVersionCode.toInteger()
versionName flutterVersionName
}

buildTypes {
release {
// TODO: Add your own signing config for the release build.
// Signing with the debug keys for now, so `flutter run --release` works.
signingConfig signingConfigs.debug
}
}
}

flutter {
source '../..'
}
7  android/app/src/debug/AndroidManifest.xml
@@ -0,0 +1,7 @@
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
package="com.example.bmi_calculator">
<!-- Flutter needs it to communicate with the running application
to allow setting breakpoints, to provide hot reload, etc.
-->
<uses-permission android:name="android.permission.INTERNET"/>
</manifest>
47  android/app/src/main/AndroidManifest.xml
@@ -0,0 +1,47 @@
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
package="com.example.bmi_calculator">
<!-- io.flutter.app.FlutterApplication is an android.app.Application that
calls FlutterMain.startInitialization(this); in its onCreate method.
In most cases you can leave this as-is, but you if you want to provide
additional functionality it is fine to subclass or reimplement
FlutterApplication and put your custom class here. -->
<application
android:name="io.flutter.app.FlutterApplication"
android:label="bmi_calculator"
android:icon="@mipmap/ic_launcher">
<activity
android:name=".MainActivity"
android:launchMode="singleTop"
android:theme="@style/LaunchTheme"
android:configChanges="orientation|keyboardHidden|keyboard|screenSize|smallestScreenSize|locale|layoutDirection|fontScale|screenLayout|density|uiMode"
android:hardwareAccelerated="true"
android:windowSoftInputMode="adjustResize">
<!-- Specifies an Android theme to apply to this Activity as soon as
the Android process has started. This theme is visible to the user
while the Flutter UI initializes. After that, this theme continues
to determine the Window background behind the Flutter UI. -->
<meta-data
android:name="io.flutter.embedding.android.NormalTheme"
android:resource="@style/NormalTheme"
/>
<!-- Displays an Android View that continues showing the launch screen
Drawable until Flutter paints its first frame, then this splash
screen fades out. A splash screen is useful to avoid any visual
gap between the end of Android's launch screen and the painting of
Flutter's first frame. -->
<meta-data
android:name="io.flutter.embedding.android.SplashScreenDrawable"
android:resource="@drawable/launch_background"
/>
<intent-filter>
<action android:name="android.intent.action.MAIN"/>
<category android:name="android.intent.category.LAUNCHER"/>
</intent-filter>
</activity>
<!-- Don't delete the meta-data below.
This is used by the Flutter tool to generate GeneratedPluginRegistrant.java -->
<meta-data
android:name="flutterEmbedding"
android:value="2" />
</application>
</manifest>
6  android/app/src/main/java/com/example/bmi_calculator/MainActivity.java
@@ -0,0 +1,6 @@
package com.example.bmi_calculator;

import io.flutter.embedding.android.FlutterActivity;

public class MainActivity extends FlutterActivity {
}
12  android/app/src/main/res/drawable/launch_background.xml
@@ -0,0 +1,12 @@
<?xml version="1.0" encoding="utf-8"?>
<!-- Modify this file to customize your launch splash screen -->
<layer-list xmlns:android="http://schemas.android.com/apk/res/android">
<item android:drawable="@android:color/white" />

<!-- You can insert your own image assets here -->
<!-- <item>
<bitmap
android:gravity="center"
android:src="@mipmap/launch_image" />
</item> -->
</layer-list>
BIN +544 Bytes android/app/src/main/res/mipmap-hdpi/ic_launcher.png
Binary file not shown.
BIN +442 Bytes android/app/src/main/res/mipmap-mdpi/ic_launcher.png
Binary file not shown.
BIN +721 Bytes android/app/src/main/res/mipmap-xhdpi/ic_launcher.png
Binary file not shown.
BIN +1.01 KB android/app/src/main/res/mipmap-xxhdpi/ic_launcher.png
Binary file not shown.
BIN +1.41 KB android/app/src/main/res/mipmap-xxxhdpi/ic_launcher.png
Binary file not shown.
18  android/app/src/main/res/values/styles.xml
@@ -0,0 +1,18 @@
<?xml version="1.0" encoding="utf-8"?>
<resources>
<!-- Theme applied to the Android Window while the process is starting -->
<style name="LaunchTheme" parent="@android:style/Theme.Black.NoTitleBar">
<!-- Show a splash screen on the activity. Automatically removed when
Flutter draws its first frame -->
<item name="android:windowBackground">@drawable/launch_background</item>
</style>
<!-- Theme applied to the Android Window as soon as the process has started.
This theme determines the color of the Android Window while your
Flutter UI initializes, as well as behind your Flutter UI while its
running.

This Theme is only used starting with V2 of Flutter's Android embedding. -->
<style name="NormalTheme" parent="@android:style/Theme.Black.NoTitleBar">
<item name="android:windowBackground">@android:color/white</item>
</style>
</resources>
7  android/app/src/profile/AndroidManifest.xml
@@ -0,0 +1,7 @@
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
package="com.example.bmi_calculator">
<!-- Flutter needs it to communicate with the running application
to allow setting breakpoints, to provide hot reload, etc.
-->
<uses-permission android:name="android.permission.INTERNET"/>
</manifest>
29  android/build.gradle
@@ -0,0 +1,29 @@
buildscript {
repositories {
google()
jcenter()
}

dependencies {
classpath 'com.android.tools.build:gradle:3.5.0'
}
}

allprojects {
repositories {
google()
jcenter()
}
}

rootProject.buildDir = '../build'
subprojects {
project.buildDir = "${rootProject.buildDir}/${project.name}"
}
subprojects {
project.evaluationDependsOn(':app')
}

task clean(type: Delete) {
delete rootProject.buildDir
}
3  android/gradle.properties
@@ -0,0 +1,3 @@
org.gradle.jvmargs=-Xmx1536M
android.useAndroidX=true
android.enableJetifier=true
6  android/gradle/wrapper/gradle-wrapper.properties
@@ -0,0 +1,6 @@
#Fri Jun 23 08:50:38 CEST 2017
distributionBase=GRADLE_USER_HOME
distributionPath=wrapper/dists
zipStoreBase=GRADLE_USER_HOME
zipStorePath=wrapper/dists
distributionUrl=https\://services.gradle.org/distributions/gradle-5.6.2-all.zip
11  android/settings.gradle
@@ -0,0 +1,11 @@
include ':app'

def localPropertiesFile = new File(rootProject.projectDir, "local.properties")
def properties = new Properties()

assert localPropertiesFile.exists()
localPropertiesFile.withReader("UTF-8") { reader -> properties.load(reader) }

def flutterSdkPath = properties.getProperty("flutter.sdk")
assert flutterSdkPath != null, "flutter.sdk not set in local.properties"
apply from: "$flutterSdkPath/packages/flutter_tools/gradle/app_plugin_loader.gradle"
32  ios/.gitignore
@@ -0,0 +1,32 @@
*.mode1v3
*.mode2v3
*.moved-aside
*.pbxuser
*.perspectivev3
**/*sync/
.sconsign.dblite
.tags*
**/.vagrant/
**/DerivedData/
Icon?
**/Pods/
**/.symlinks/
profile
xcuserdata
**/.generated/
Flutter/App.framework
Flutter/Flutter.framework
Flutter/Flutter.podspec
Flutter/Generated.xcconfig
Flutter/app.flx
Flutter/app.zip
Flutter/flutter_assets/
Flutter/flutter_export_environment.sh
ServiceDefinitions.json
Runner/GeneratedPluginRegistrant.*

# Exceptions to above rules.
!default.mode1v3
!default.mode2v3
!default.pbxuser
!default.perspectivev3
26  ios/Flutter/AppFrameworkInfo.plist
@@ -0,0 +1,26 @@
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
<key>CFBundleDevelopmentRegion</key>
<string>$(DEVELOPMENT_LANGUAGE)</string>
<key>CFBundleExecutable</key>
<string>App</string>
<key>CFBundleIdentifier</key>
<string>io.flutter.flutter.app</string>
<key>CFBundleInfoDictionaryVersion</key>
<string>6.0</string>
<key>CFBundleName</key>
<string>App</string>
<key>CFBundlePackageType</key>
<string>FMWK</string>
<key>CFBundleShortVersionString</key>
<string>1.0</string>
<key>CFBundleSignature</key>
<string>????</string>
<key>CFBundleVersion</key>
<string>1.0</string>
<key>MinimumOSVersion</key>
<string>9.0</string>
</dict>
</plist>
1  ios/Flutter/Debug.xcconfig
@@ -0,0 +1 @@
#include "Generated.xcconfig"
1  ios/Flutter/Release.xcconfig
@@ -0,0 +1 @@
#include "Generated.xcconfig"
496  ios/Runner.xcodeproj/project.pbxproj
Large diffs are not rendered by default.

7  ios/Runner.xcodeproj/project.xcworkspace/contents.xcworkspacedata
8  ios/Runner.xcodeproj/project.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist
@@ -0,0 +1,8 @@
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
<key>IDEDidComputeMac32BitWarning</key>
<true/>
</dict>
</plist>
8  ios/Runner.xcodeproj/project.xcworkspace/xcshareddata/WorkspaceSettings.xcsettings
@@ -0,0 +1,8 @@
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
<key>PreviewsEnabled</key>
<false/>
</dict>
</plist>
91  ios/Runner.xcodeproj/xcshareddata/xcschemes/Runner.xcscheme
@@ -0,0 +1,91 @@
<?xml version="1.0" encoding="UTF-8"?>
<Scheme
LastUpgradeVersion = "1020"
version = "1.3">
<BuildAction
parallelizeBuildables = "YES"
buildImplicitDependencies = "YES">
<BuildActionEntries>
<BuildActionEntry
buildForTesting = "YES"
buildForRunning = "YES"
buildForProfiling = "YES"
buildForArchiving = "YES"
buildForAnalyzing = "YES">
<BuildableReference
BuildableIdentifier = "primary"
BlueprintIdentifier = "97C146ED1CF9000F007C117D"
BuildableName = "Runner.app"
BlueprintName = "Runner"
ReferencedContainer = "container:Runner.xcodeproj">
</BuildableReference>
</BuildActionEntry>
</BuildActionEntries>
</BuildAction>
<TestAction
buildConfiguration = "Debug"
selectedDebuggerIdentifier = "Xcode.DebuggerFoundation.Debugger.LLDB"
selectedLauncherIdentifier = "Xcode.DebuggerFoundation.Launcher.LLDB"
shouldUseLaunchSchemeArgsEnv = "YES">
<Testables>
</Testables>
<MacroExpansion>
<BuildableReference
BuildableIdentifier = "primary"
BlueprintIdentifier = "97C146ED1CF9000F007C117D"
BuildableName = "Runner.app"
BlueprintName = "Runner"
ReferencedContainer = "container:Runner.xcodeproj">
</BuildableReference>
</MacroExpansion>
<AdditionalOptions>
</AdditionalOptions>
</TestAction>
<LaunchAction
buildConfiguration = "Debug"
selectedDebuggerIdentifier = "Xcode.DebuggerFoundation.Debugger.LLDB"
selectedLauncherIdentifier = "Xcode.DebuggerFoundation.Launcher.LLDB"
launchStyle = "0"
useCustomWorkingDirectory = "NO"
ignoresPersistentStateOnLaunch = "NO"
debugDocumentVersioning = "YES"
debugServiceExtension = "internal"
allowLocationSimulation = "YES">
<BuildableProductRunnable
runnableDebuggingMode = "0">
<BuildableReference
BuildableIdentifier = "primary"
BlueprintIdentifier = "97C146ED1CF9000F007C117D"
BuildableName = "Runner.app"
BlueprintName = "Runner"
ReferencedContainer = "container:Runner.xcodeproj">
</BuildableReference>
</BuildableProductRunnable>
<AdditionalOptions>
</AdditionalOptions>
</LaunchAction>
<ProfileAction
buildConfiguration = "Profile"
shouldUseLaunchSchemeArgsEnv = "YES"
savedToolIdentifier = ""
useCustomWorkingDirectory = "NO"
debugDocumentVersioning = "YES">
<BuildableProductRunnable
runnableDebuggingMode = "0">
<BuildableReference
BuildableIdentifier = "primary"
BlueprintIdentifier = "97C146ED1CF9000F007C117D"
BuildableName = "Runner.app"
BlueprintName = "Runner"
ReferencedContainer = "container:Runner.xcodeproj">
</BuildableReference>
</BuildableProductRunnable>
</ProfileAction>
<AnalyzeAction
buildConfiguration = "Debug">
</AnalyzeAction>
<ArchiveAction
buildConfiguration = "Release"
revealArchiveInOrganizer = "YES">
</ArchiveAction>
</Scheme>
7  ios/Runner.xcworkspace/contents.xcworkspacedata
8  ios/Runner.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist
@@ -0,0 +1,8 @@
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
<key>IDEDidComputeMac32BitWarning</key>
<true/>
</dict>
</plist>
8  ios/Runner.xcworkspace/xcshareddata/WorkspaceSettings.xcsettings
@@ -0,0 +1,8 @@
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
<key>PreviewsEnabled</key>
<false/>
</dict>
</plist>
6  ios/Runner/AppDelegate.h
@@ -0,0 +1,6 @@
#import <Flutter/Flutter.h>
#import <UIKit/UIKit.h>

@interface AppDelegate : FlutterAppDelegate

@end
13  ios/Runner/AppDelegate.m
@@ -0,0 +1,13 @@
#import "AppDelegate.h"
#import "GeneratedPluginRegistrant.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
[GeneratedPluginRegistrant registerWithRegistry:self];
// Override point for customization after application launch.
return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

@end
122  ios/Runner/Assets.xcassets/AppIcon.appiconset/Contents.json
@@ -0,0 +1,122 @@
{
"images" : [
{
"size" : "20x20",
"idiom" : "iphone",
"filename" : "Icon-App-20x20@2x.png",
"scale" : "2x"
},
{
"size" : "20x20",
"idiom" : "iphone",
"filename" : "Icon-App-20x20@3x.png",
"scale" : "3x"
},
{
"size" : "29x29",
"idiom" : "iphone",
"filename" : "Icon-App-29x29@1x.png",
"scale" : "1x"
},
{
"size" : "29x29",
"idiom" : "iphone",
"filename" : "Icon-App-29x29@2x.png",
"scale" : "2x"
},
{
"size" : "29x29",
"idiom" : "iphone",
"filename" : "Icon-App-29x29@3x.png",
"scale" : "3x"
},
{
"size" : "40x40",
"idiom" : "iphone",
"filename" : "Icon-App-40x40@2x.png",
"scale" : "2x"
},
{
"size" : "40x40",
"idiom" : "iphone",
"filename" : "Icon-App-40x40@3x.png",
"scale" : "3x"
},
{
"size" : "60x60",
"idiom" : "iphone",
"filename" : "Icon-App-60x60@2x.png",
"scale" : "2x"
},
{
"size" : "60x60",
"idiom" : "iphone",
"filename" : "Icon-App-60x60@3x.png",
"scale" : "3x"
},
{
"size" : "20x20",
"idiom" : "ipad",
"filename" : "Icon-App-20x20@1x.png",
"scale" : "1x"
},
{
"size" : "20x20",
"idiom" : "ipad",
"filename" : "Icon-App-20x20@2x.png",
"scale" : "2x"
},
{
"size" : "29x29",
"idiom" : "ipad",
"filename" : "Icon-App-29x29@1x.png",
"scale" : "1x"
},
{
"size" : "29x29",
"idiom" : "ipad",
"filename" : "Icon-App-29x29@2x.png",
"scale" : "2x"
},
{
"size" : "40x40",
"idiom" : "ipad",
"filename" : "Icon-App-40x40@1x.png",
"scale" : "1x"
},
{
"size" : "40x40",
"idiom" : "ipad",
"filename" : "Icon-App-40x40@2x.png",
"scale" : "2x"
},
{
"size" : "76x76",
"idiom" : "ipad",
"filename" : "Icon-App-76x76@1x.png",
"scale" : "1x"
},
{
"size" : "76x76",
"idiom" : "ipad",
"filename" : "Icon-App-76x76@2x.png",
"scale" : "2x"
},
{
"size" : "83.5x83.5",
"idiom" : "ipad",
"filename" : "Icon-App-83.5x83.5@2x.png",
"scale" : "2x"
},
{
"size" : "1024x1024",
"idiom" : "ios-marketing",
"filename" : "Icon-App-1024x1024@1x.png",
"scale" : "1x"
}
],
"info" : {
"version" : 1,
"author" : "xcode"
}
}
BIN +10.7 KB ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-1024x1024@1x.png
Binary file not shown.
BIN +564 Bytes ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-20x20@1x.png
Binary file not shown.
BIN +1.25 KB ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-20x20@2x.png
Binary file not shown.
BIN +1.55 KB ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-20x20@3x.png
Binary file not shown.
BIN +1 KB ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-29x29@1x.png
Binary file not shown.
BIN +1.68 KB ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-29x29@2x.png
Binary file not shown.
BIN +1.88 KB ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-29x29@3x.png
Binary file not shown.
BIN +1.25 KB ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-40x40@1x.png
Binary file not shown.
BIN +1.85 KB ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-40x40@2x.png
Binary file not shown.
BIN +2.6 KB ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-40x40@3x.png
Binary file not shown.
BIN +2.6 KB ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-60x60@2x.png
Binary file not shown.
BIN +3.74 KB ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-60x60@3x.png
Binary file not shown.
BIN +1.84 KB ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-76x76@1x.png
Binary file not shown.
BIN +3.22 KB ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-76x76@2x.png
Binary file not shown.
BIN +3.53 KB ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-83.5x83.5@2x.png
Binary file not shown.
23  ios/Runner/Assets.xcassets/LaunchImage.imageset/Contents.json
@@ -0,0 +1,23 @@
{
"images" : [
{
"idiom" : "universal",
"filename" : "LaunchImage.png",
"scale" : "1x"
},
{
"idiom" : "universal",
"filename" : "LaunchImage@2x.png",
"scale" : "2x"
},
{
"idiom" : "universal",
"filename" : "LaunchImage@3x.png",
"scale" : "3x"
}
],
"info" : {
"version" : 1,
"author" : "xcode"
}
}
BIN +68 Bytes ios/Runner/Assets.xcassets/LaunchImage.imageset/LaunchImage.png
Binary file not shown.
BIN +68 Bytes ios/Runner/Assets.xcassets/LaunchImage.imageset/LaunchImage@2x.png
Binary file not shown.
BIN +68 Bytes ios/Runner/Assets.xcassets/LaunchImage.imageset/LaunchImage@3x.png
Binary file not shown.
5  ios/Runner/Assets.xcassets/LaunchImage.imageset/README.md
@@ -0,0 +1,5 @@
# Launch Screen Assets

You can customize the launch screen with your own desired assets by replacing the image files in this directory.

You can also do it by opening your Flutter project's Xcode project with `open ios/Runner.xcworkspace`, selecting `Runner/Assets.xcassets` in the Project Navigator and dropping in the desired images.
37  ios/Runner/Base.lproj/LaunchScreen.storyboard
@@ -0,0 +1,37 @@
<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<document type="com.apple.InterfaceBuilder3.CocoaTouch.Storyboard.XIB" version="3.0" toolsVersion="12121" systemVersion="16G29" targetRuntime="iOS.CocoaTouch" propertyAccessControl="none" useAutolayout="YES" launchScreen="YES" colorMatched="YES" initialViewController="01J-lp-oVM">
<dependencies>
<deployment identifier="iOS"/>
<plugIn identifier="com.apple.InterfaceBuilder.IBCocoaTouchPlugin" version="12089"/>
</dependencies>
<scenes>
<!--View Controller-->
<scene sceneID="EHf-IW-A2E">
<objects>
<viewController id="01J-lp-oVM" sceneMemberID="viewController">
<layoutGuides>
<viewControllerLayoutGuide type="top" id="Ydg-fD-yQy"/>
<viewControllerLayoutGuide type="bottom" id="xbc-2k-c8Z"/>
</layoutGuides>
<view key="view" contentMode="scaleToFill" id="Ze5-6b-2t3">
<autoresizingMask key="autoresizingMask" widthSizable="YES" heightSizable="YES"/>
<subviews>
<imageView opaque="NO" clipsSubviews="YES" multipleTouchEnabled="YES" contentMode="center" image="LaunchImage" translatesAutoresizingMaskIntoConstraints="NO" id="YRO-k0-Ey4">
</imageView>
</subviews>
<color key="backgroundColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
<constraints>
<constraint firstItem="YRO-k0-Ey4" firstAttribute="centerX" secondItem="Ze5-6b-2t3" secondAttribute="centerX" id="1a2-6s-vTC"/>
<constraint firstItem="YRO-k0-Ey4" firstAttribute="centerY" secondItem="Ze5-6b-2t3" secondAttribute="centerY" id="4X2-HB-R7a"/>
</constraints>
</view>
</viewController>
<placeholder placeholderIdentifier="IBFirstResponder" id="iYj-Kq-Ea1" userLabel="First Responder" sceneMemberID="firstResponder"/>
</objects>
<point key="canvasLocation" x="53" y="375"/>
</scene>
</scenes>
<resources>
<image name="LaunchImage" width="168" height="185"/>
</resources>
</document>
26  ios/Runner/Base.lproj/Main.storyboard
@@ -0,0 +1,26 @@
<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<document type="com.apple.InterfaceBuilder3.CocoaTouch.Storyboard.XIB" version="3.0" toolsVersion="10117" systemVersion="15F34" targetRuntime="iOS.CocoaTouch" propertyAccessControl="none" useAutolayout="YES" useTraitCollections="YES" initialViewController="BYZ-38-t0r">
<dependencies>
<deployment identifier="iOS"/>
<plugIn identifier="com.apple.InterfaceBuilder.IBCocoaTouchPlugin" version="10085"/>
</dependencies>
<scenes>
<!--Flutter View Controller-->
<scene sceneID="tne-QT-ifu">
<objects>
<viewController id="BYZ-38-t0r" customClass="FlutterViewController" sceneMemberID="viewController">
<layoutGuides>
<viewControllerLayoutGuide type="top" id="y3c-jy-aDJ"/>
<viewControllerLayoutGuide type="bottom" id="wfy-db-euE"/>
</layoutGuides>
<view key="view" contentMode="scaleToFill" id="8bC-Xf-vdC">
<rect key="frame" x="0.0" y="0.0" width="600" height="600"/>
<autoresizingMask key="autoresizingMask" widthSizable="YES" heightSizable="YES"/>
<color key="backgroundColor" white="1" alpha="1" colorSpace="custom" customColorSpace="calibratedWhite"/>
</view>
</viewController>
<placeholder placeholderIdentifier="IBFirstResponder" id="dkx-z0-nzr" sceneMemberID="firstResponder"/>
</objects>
</scene>
</scenes>
</document>
45  ios/Runner/Info.plist
@@ -0,0 +1,45 @@
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
<key>CFBundleDevelopmentRegion</key>
<string>$(DEVELOPMENT_LANGUAGE)</string>
<key>CFBundleExecutable</key>
<string>$(EXECUTABLE_NAME)</string>
<key>CFBundleIdentifier</key>
<string>$(PRODUCT_BUNDLE_IDENTIFIER)</string>
<key>CFBundleInfoDictionaryVersion</key>
<string>6.0</string>
<key>CFBundleName</key>
<string>bmi_calculator</string>
<key>CFBundlePackageType</key>
<string>APPL</string>
<key>CFBundleShortVersionString</key>
<string>$(FLUTTER_BUILD_NAME)</string>
<key>CFBundleSignature</key>
<string>????</string>
<key>CFBundleVersion</key>
<string>$(FLUTTER_BUILD_NUMBER)</string>
<key>LSRequiresIPhoneOS</key>
<true/>
<key>UILaunchStoryboardName</key>
<string>LaunchScreen</string>
<key>UIMainStoryboardFile</key>
<string>Main</string>
<key>UISupportedInterfaceOrientations</key>
<array>
<string>UIInterfaceOrientationPortrait</string>
<string>UIInterfaceOrientationLandscapeLeft</string>
<string>UIInterfaceOrientationLandscapeRight</string>
</array>
<key>UISupportedInterfaceOrientations~ipad</key>
<array>
<string>UIInterfaceOrientationPortrait</string>
<string>UIInterfaceOrientationPortraitUpsideDown</string>
<string>UIInterfaceOrientationLandscapeLeft</string>
<string>UIInterfaceOrientationLandscapeRight</string>
</array>
<key>UIViewControllerBasedStatusBarAppearance</key>
<false/>
</dict>
</plist>
9  ios/Runner/main.m
@@ -0,0 +1,9 @@
#import <Flutter/Flutter.h>
#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char* argv[]) {
@autoreleasepool {
return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
}
}
117  lib/main.dart
@@ -0,0 +1,117 @@
import 'package:flutter/material.dart';

void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
// This widget is the root of your application.
@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Flutter Demo',
theme: ThemeData(
// This is the theme of your application.
//
// Try running your application with "flutter run". You'll see the
// application has a blue toolbar. Then, without quitting the app, try
// changing the primarySwatch below to Colors.green and then invoke
// "hot reload" (press "r" in the console where you ran "flutter run",
// or simply save your changes to "hot reload" in a Flutter IDE).
// Notice that the counter didn't reset back to zero; the application
// is not restarted.
primarySwatch: Colors.blue,
// This makes the visual density adapt to the platform that you run
// the app on. For desktop platforms, the controls will be smaller and
// closer together (more dense) than on mobile platforms.
visualDensity: VisualDensity.adaptivePlatformDensity,
),
home: MyHomePage(title: 'Flutter Demo Home Page'),
);
}
}

class MyHomePage extends StatefulWidget {
MyHomePage({Key key, this.title}) : super(key: key);

// This widget is the home page of your application. It is stateful, meaning
// that it has a State object (defined below) that contains fields that affect
// how it looks.

// This class is the configuration for the state. It holds the values (in this
// case the title) provided by the parent (in this case the App widget) and
// used by the build method of the State. Fields in a Widget subclass are
// always marked "final".

final String title;

@override
_MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
int _counter = 0;

void _incrementCounter() {
setState(() {
// This call to setState tells the Flutter framework that something has
// changed in this State, which causes it to rerun the build method below
// so that the display can reflect the updated values. If we changed
// _counter without calling setState(), then the build method would not be
// called again, and so nothing would appear to happen.
_counter++;
});
}

@override
Widget build(BuildContext context) {
// This method is rerun every time setState is called, for instance as done
// by the _incrementCounter method above.
//
// The Flutter framework has been optimized to make rerunning build methods
// fast, so that you can just rebuild anything that needs updating rather
// than having to individually change instances of widgets.
return Scaffold(
appBar: AppBar(
// Here we take the value from the MyHomePage object that was created by
// the App.build method, and use it to set our appbar title.
title: Text(widget.title),
),
body: Center(
// Center is a layout widget. It takes a single child and positions it
// in the middle of the parent.
child: Column(
// Column is also a layout widget. It takes a list of children and
// arranges them vertically. By default, it sizes itself to fit its
// children horizontally, and tries to be as tall as its parent.
//
// Invoke "debug painting" (press "p" in the console, choose the
// "Toggle Debug Paint" action from the Flutter Inspector in Android
// Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
// to see the wireframe for each widget.
//
// Column has various properties to control how it sizes itself and
// how it positions its children. Here we use mainAxisAlignment to
// center the children vertically; the main axis here is the vertical
// axis because Columns are vertical (the cross axis would be
// horizontal).
mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
Text(
'You have pushed the button this many times:',
),
Text(
'$_counter',
style: Theme.of(context).textTheme.headline4,
),
],
),
),
floatingActionButton: FloatingActionButton(
onPressed: _incrementCounter,
tooltip: 'Increment',
child: Icon(Icons.add),
), // This trailing comma makes auto-formatting nicer for build methods.
);
}
}
153  pubspec.lock
@@ -0,0 +1,153 @@
# Generated by pub
# See https://dart.dev/tools/pub/glossary#lockfile
packages:
async:
dependency: transitive
description:
name: async
url: "https://pub.dartlang.org"
source: hosted
version: "2.5.0-nullsafety.1"
boolean_selector:
dependency: transitive
description:
name: boolean_selector
url: "https://pub.dartlang.org"
source: hosted
version: "2.1.0-nullsafety.1"
characters:
dependency: transitive
description:
name: characters
url: "https://pub.dartlang.org"
source: hosted
version: "1.1.0-nullsafety.3"
charcode:
dependency: transitive
description:
name: charcode
url: "https://pub.dartlang.org"
source: hosted
version: "1.2.0-nullsafety.1"
clock:
dependency: transitive
description:
name: clock
url: "https://pub.dartlang.org"
source: hosted
version: "1.1.0-nullsafety.1"
collection:
dependency: transitive
description:
name: collection
url: "https://pub.dartlang.org"
source: hosted
version: "1.15.0-nullsafety.3"
cupertino_icons:
dependency: "direct main"
description:
name: cupertino_icons
url: "https://pub.dartlang.org"
source: hosted
version: "1.0.0"
fake_async:
dependency: transitive
description:
name: fake_async
url: "https://pub.dartlang.org"
source: hosted
version: "1.2.0-nullsafety.1"
flutter:
dependency: "direct main"
description: flutter
source: sdk
version: "0.0.0"
flutter_test:
dependency: "direct dev"
description: flutter
source: sdk
version: "0.0.0"
matcher:
dependency: transitive
description:
name: matcher
url: "https://pub.dartlang.org"
source: hosted
version: "0.12.10-nullsafety.1"
meta:
dependency: transitive
description:
name: meta
url: "https://pub.dartlang.org"
source: hosted
version: "1.3.0-nullsafety.3"
path:
dependency: transitive
description:
name: path
url: "https://pub.dartlang.org"
source: hosted
version: "1.8.0-nullsafety.1"
sky_engine:
dependency: transitive
description: flutter
source: sdk
version: "0.0.99"
source_span:
dependency: transitive
description:
name: source_span
url: "https://pub.dartlang.org"
source: hosted
version: "1.8.0-nullsafety.2"
stack_trace:
dependency: transitive
description:
name: stack_trace
url: "https://pub.dartlang.org"
source: hosted
version: "1.10.0-nullsafety.1"
stream_channel:
dependency: transitive
description:
name: stream_channel
url: "https://pub.dartlang.org"
source: hosted
version: "2.1.0-nullsafety.1"
string_scanner:
dependency: transitive
description:
name: string_scanner
url: "https://pub.dartlang.org"
source: hosted
version: "1.1.0-nullsafety.1"
term_glyph:
dependency: transitive
description:
name: term_glyph
url: "https://pub.dartlang.org"
source: hosted
version: "1.2.0-nullsafety.1"
test_api:
dependency: transitive
description:
name: test_api
url: "https://pub.dartlang.org"
source: hosted
version: "0.2.19-nullsafety.2"
typed_data:
dependency: transitive
description:
name: typed_data
url: "https://pub.dartlang.org"
source: hosted
version: "1.3.0-nullsafety.3"
vector_math:
dependency: transitive
description:
name: vector_math
url: "https://pub.dartlang.org"
source: hosted
version: "2.1.0-nullsafety.3"
sdks:
dart: ">=2.10.0-110 <2.11.0"
76  pubspec.yaml
@@ -0,0 +1,76 @@
name: bmi_calculator
description: A new Flutter application.

# The following line prevents the package from being accidentally published to
# pub.dev using `pub publish`. This is preferred for private packages.
publish_to: 'none' # Remove this line if you wish to publish to pub.dev

# The following defines the version and build number for your application.
# A version number is three numbers separated by dots, like 1.2.43
# followed by an optional build number separated by a +.
# Both the version and the builder number may be overridden in flutter
# build by specifying --build-name and --build-number, respectively.
# In Android, build-name is used as versionName while build-number used as versionCode.
# Read more about Android versioning at https://developer.android.com/studio/publish/versioning
# In iOS, build-name is used as CFBundleShortVersionString while build-number used as CFBundleVersion.
# Read more about iOS versioning at
# https://developer.apple.com/library/archive/documentation/General/Reference/InfoPlistKeyReference/Articles/CoreFoundationKeys.html
version: 1.0.0+1

environment:
sdk: ">=2.7.0 <3.0.0"

dependencies:
flutter:
sdk: flutter


# The following adds the Cupertino Icons font to your application.
# Use with the CupertinoIcons class for iOS style icons.
cupertino_icons: ^1.0.0

dev_dependencies:
flutter_test:
sdk: flutter

# For information on the generic Dart part of this file, see the
# following page: https://dart.dev/tools/pub/pubspec

# The following section is specific to Flutter.
flutter:

# The following line ensures that the Material Icons font is
# included with your application, so that you can use the icons in
# the material Icons class.
uses-material-design: true

# To add assets to your application, add an assets section, like this:
# assets:
#   - images/a_dot_burr.jpeg
#   - images/a_dot_ham.jpeg

# An image asset can refer to one or more resolution-specific "variants", see
# https://flutter.dev/assets-and-images/#resolution-aware.

# For details regarding adding assets from package dependencies, see
# https://flutter.dev/assets-and-images/#from-packages

# To add custom fonts to your application, add a fonts section here,
# in this "flutter" section. Each entry in this list should have a
# "family" key with the font family name, and a "fonts" key with a
# list giving the asset and other descriptors for the font. For
# example:
# fonts:
#   - family: Schyler
#     fonts:
#       - asset: fonts/Schyler-Regular.ttf
#       - asset: fonts/Schyler-Italic.ttf
#         style: italic
#   - family: Trajan Pro
#     fonts:
#       - asset: fonts/TrajanPro.ttf
#       - asset: fonts/TrajanPro_Bold.ttf
#         weight: 700
#
# For details regarding fonts from package dependencies,
# see https://flutter.dev/custom-fonts/#from-packages
30  test/widget_test.dart
@@ -0,0 +1,30 @@
// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:bmi_calculator/main.dart';

void main() {
testWidgets('Counter increments smoke test', (WidgetTester tester) async {
// Build our app and trigger a frame.
await tester.pumpWidget(MyApp());

// Verify that our counter starts at 0.
expect(find.text('0'), findsOneWidget);
expect(find.text('1'), findsNothing);

// Tap the '+' icon and trigger a frame.
await tester.tap(find.byIcon(Icons.add));
await tester.pump();

// Verify that our counter has incremented.
expect(find.text('0'), findsNothing);
expect(find.text('1'), findsOneWidget);
});
}