# shared_preferences_android 2.5.0+ calls its Kotlin pigeon API from Dart via
# raw JNI (jnigen), looking methods up by name and signature. R8 renaming or
# removing them crashes at the first preferences read with
# NoSuchMethodError (flutter/flutter#194649); the plugin ships no consumer
# rules, so keep them here.
-keep class io.flutter.plugins.sharedpreferences.** { *; }

# jnigen's runtime must survive R8 as well (its own consumer rules keep only
# com.github.dart_lang.jni.**).
-keep class com.github.dart_lang.jni.** { *; }
