package com.example.cuy_test


import android.util.Log
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

import com.example.cuy_test.BuildConfig;


class MainActivity: FlutterActivity() {
    
    private val channel1 = "com.example.cuy_test/device_info"
    
    private val channel2 = "com.example.cuy_test/version_app"

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
 
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, channel1).setMethodCallHandler {
            call, result ->
            if (call.method == "getDeviceInfo") {
                val deviceInfo: HashMap<String, String> = getDeviceInfo()
                if (deviceInfo.isNotEmpty()) {
                    result.success(deviceInfo)
                } else {
                    result.error("UNAVAILABLE", "Device info not available.", null)
                }
            } else {
                result.notImplemented()
            }
 
        }
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, channel2).setMethodCallHandler {
            call, result ->
            if (call.method == "getVersionApp") {
                val versionApp: HashMap<String, String> = getVersionApp()
                if (versionApp.isNotEmpty()) {
                    result.success(versionApp)
                } else {
                    result.error("UNAVAILABLE", "App version not available.", null)
                }
            } else {
                result.notImplemented()
            }
 
        }

    }
    
    private fun getDeviceInfo(): HashMap<String, String> {
        val deviceInfo = HashMap<String, String>()
        deviceInfo["version"] = System.getProperty("os.version").toString() // OS version
        deviceInfo["device"] = android.os.Build.DEVICE           // Device
        deviceInfo["model"] = android.os.Build.MODEL            // Model
        deviceInfo["product"] = android.os.Build.PRODUCT          // Product
        return deviceInfo
    }

    private fun getVersionApp(): HashMap<String, String> {
        val versionApp = HashMap<String, String>()
        versionApp["code"] = BuildConfig.VERSION_CODE.toString()
        versionApp["name"] = BuildConfig.VERSION_NAME
        return versionApp
    }
}
