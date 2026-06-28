import java.util.Properties
import java.io.FileInputStream

val keystoreProperties = Properties()
val keystorePropertiesFile = rootProject.file("key.properties")

if (keystorePropertiesFile.exists()) {
    keystoreProperties.load(FileInputStream(keystorePropertiesFile))
}

plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

//Version Code
val isAppBundleBuild = gradle.startParameter.taskNames.any { it.lowercase().contains("bundle") }

// Load or create version.properties file
val versionPropsFile = file("version.properties")
val versionProps = Properties()

if (versionPropsFile.canRead()) {
    versionProps.load(versionPropsFile.inputStream())
} else {
    versionProps["VERSION_CODE"] = "1"
}

// Read current version code
var code = versionProps["VERSION_CODE"].toString().toInt()

// Increment only when building an AppBundle
if (isAppBundleBuild) {
    code++
    versionProps["VERSION_CODE"] = code.toString()
    versionProps.store(versionPropsFile.writer(), null)
    println("Building AppBundle → versionCode = $code")
}

// Make 'code' available to android { } block
extra["versionCodeProp"] = code
println("Building AppBundle with versionCode = ${code}")


android {
    namespace = "com.social.orbix"
    compileSdk = 36
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_17.toString()
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.orbix.social"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = extra["versionCodeProp"] as Int
        versionName = flutter.versionName
    }

    signingConfigs {
        create("release") {
            keyAlias = keystoreProperties["keyAlias"] as String
            keyPassword = keystoreProperties["keyPassword"] as String
            storeFile = file(keystoreProperties["storeFile"] as String)
            storePassword = keystoreProperties["storePassword"] as String
        }
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("release")
        }
    }
}

flutter {
    source = "../.."
}
