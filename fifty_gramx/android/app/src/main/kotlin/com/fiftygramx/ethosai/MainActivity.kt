package com.fiftygramx.ethosai

import android.app.role.RoleManager
import android.content.ComponentName
import android.content.Intent
import android.os.Build
import android.provider.Settings
import android.provider.Telephony
import android.util.Log
import android.widget.Toast
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel


class MainActivity : FlutterFragmentActivity() {

    private val CHANNEL = "com.fiftygramx.ethosai/sms"

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            if (call.method == "setDefaultSms") {
                val defaultSmsApp = Telephony.Sms.getDefaultSmsPackage(this);
                var roleManager: RoleManager? = null
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
                    roleManager = getApplicationContext().getSystemService(RoleManager::class.java)

                    if (roleManager.isRoleAvailable(RoleManager.ROLE_ASSISTANT)) {
                        if (roleManager.isRoleHeld(RoleManager.ROLE_ASSISTANT)) {
                            Log.d("role", "role")
                        } else {
                            val roleRequestIntent = roleManager.createRequestRoleIntent(
                                    RoleManager.ROLE_ASSISTANT)
                            startActivityForResult(roleRequestIntent, 2);
                        }
                    }
                } else {
//                    try {
//                        var intent = Intent(Intent.ACTION_VOICE_COMMAND).
//                    } catch (ex: Exception) {
//                        result.error("UNAVAILABLE", "Setting default assistant.", null)
//                    }
                    try {
                        val assistant: String = Settings.Secure.getString(getContentResolver(),
                                "voice_interaction_service")

                        var areWeGood = false
                        if (assistant != null) {
                            val cn = ComponentName.unflattenFromString(assistant)
                            if (cn!!.packageName == "com.fiftygramx.ethosai") {
                                areWeGood = true
                            }
                        }
                        startActivity(Intent(Settings.ACTION_VOICE_INPUT_SETTINGS));
//                        val intent = Intent(Intent.ACTION_ASSIST)
//                        intent.addCategory(Intent.CATEGORY_DEFAULT)
//                        intent.flags = Intent.FLAG_ACTIVITY_NEW_TASK
//                        var intent = Intent(Telephony.Sms.Intents.ACTION_CHANGE_DEFAULT);
//                        intent.putExtra(Telephony.Sms.Intents.EXTRA_PACKAGE_NAME, "com.fiftygramx.ethosai");
//                        startActivity(intent);
                    } catch (ex: Exception) {
                        result.error("UNAVAILABLE", "Setting default sms.", null)
                    }
                }
                if (Telephony.Sms.getDefaultSmsPackage(this).equals("com.fiftygramx.ethosai")) {
                    result.success(true)
                } else {
                    result.success(false)
                }
            } else if (call.method == "isDefaultSmsApp") {
                try {

                    if (Intent.ACTION_ASSIST.equals("com.fiftygramx.ethosai")) {
                        result.success(true)
                    } else {
                        result.success(false)
                    }
                } catch (ex: Exception) {
                    result.error("UNAVAILABLE", "Setting default sms.", null)
                }
            } else {
                result.notImplemented()
            }
        }
    }


}

