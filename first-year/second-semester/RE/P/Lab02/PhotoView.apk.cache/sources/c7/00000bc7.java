package com.mbv.a.sdklibrary.b;

import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.net.NetworkInterface;
import java.util.Collections;

/* compiled from: HeaderUtil.java */
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static String f687a;
    private static String b = "52005";
    private static String c = "52003";
    private static String d = "46002";
    private static String[] e = {c, b, d};

    public static String a() {
        if (f687a != null) {
            return f687a;
        }
        try {
            f687a = com.google.android.gms.a.a.a.b(c.a()).a();
            return f687a;
        } catch (Error | Exception e2) {
            return "";
        }
    }

    public static String b() {
        return Build.VERSION.RELEASE;
    }

    public static String c() {
        try {
            String deviceId = ((TelephonyManager) c.a().getSystemService("phone")).getDeviceId();
            return deviceId == null ? "" : deviceId;
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static String d() {
        WifiManager wifiManager = (WifiManager) c.a().getApplicationContext().getSystemService("wifi");
        WifiInfo connectionInfo = wifiManager.getConnectionInfo();
        if (connectionInfo != null && "02:00:00:00:00:00".equals(connectionInfo.getMacAddress())) {
            try {
                String u = u();
                return u != null ? u : a(wifiManager);
            } catch (Exception e2) {
                return "02:00:00:00:00:00";
            }
        } else if (connectionInfo != null && connectionInfo.getMacAddress() != null) {
            return connectionInfo.getMacAddress();
        } else {
            return "";
        }
    }

    private static String u() {
        try {
            for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                if (networkInterface.getName().equalsIgnoreCase("wlan0")) {
                    byte[] hardwareAddress = networkInterface.getHardwareAddress();
                    if (hardwareAddress == null) {
                        return "";
                    }
                    StringBuilder sb = new StringBuilder();
                    int length = hardwareAddress.length;
                    for (int i = 0; i < length; i++) {
                        sb.append(String.format("%02X:", Byte.valueOf(hardwareAddress[i])));
                    }
                    if (sb.length() > 0) {
                        sb.deleteCharAt(sb.length() - 1);
                    }
                    return sb.toString();
                }
            }
        } catch (Exception e2) {
        }
        return null;
    }

    private static String a(WifiManager wifiManager) {
        FileInputStream fileInputStream = new FileInputStream(new File("/sys/class/net/wlan0/address"));
        String a2 = a(fileInputStream);
        fileInputStream.close();
        return a2;
    }

    private static String a(InputStream inputStream) {
        if (inputStream == null) {
            return "No Contents";
        }
        StringWriter stringWriter = new StringWriter();
        char[] cArr = new char[2048];
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
            while (true) {
                int read = bufferedReader.read(cArr);
                if (read != -1) {
                    stringWriter.write(cArr, 0, read);
                } else {
                    inputStream.close();
                    return stringWriter.toString();
                }
            }
        } catch (Throwable th) {
            inputStream.close();
            throw th;
        }
    }

    public static String e() {
        return Settings.Secure.getString(c.a().getContentResolver(), "android_id");
    }

    public static String f() {
        return c.a().getPackageName();
    }

    public static String g() {
        String a2 = b.a(c.a(), "OC_SDK_NAME");
        if (TextUtils.isEmpty(a2)) {
            return f();
        }
        return a2;
    }

    public static String h() {
        try {
            return c.a().getPackageManager().getPackageInfo(c.a().getPackageName(), 0).versionCode + "";
        } catch (Exception e2) {
            return "";
        }
    }

    public static String i() {
        try {
            return c.a().getPackageManager().getPackageInfo(c.a().getPackageName(), 0).versionName;
        } catch (Exception e2) {
            return "";
        }
    }

    public static String j() {
        return c.a().getResources().getConfiguration().locale.toString();
    }

    public static String k() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) c.a().getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            String typeName = activeNetworkInfo.getTypeName();
            if (typeName.equalsIgnoreCase("WIFI")) {
                return "WIFI";
            }
            if (!typeName.equalsIgnoreCase("MOBILE")) {
                return "";
            }
            return l();
        }
        return "INVALID";
    }

    public static String l() {
        switch (((TelephonyManager) c.a().getSystemService("phone")).getNetworkType()) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return "2G";
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return "3G";
            case 13:
                return "4G";
            default:
                return "3G";
        }
    }

    public static boolean m() {
        String simSerialNumber = ((TelephonyManager) c.a().getSystemService("phone")).getSimSerialNumber();
        return (simSerialNumber == null || simSerialNumber.equals("")) ? false : true;
    }

    public static boolean n() {
        String r = r();
        for (int i = 0; i < e.length; i++) {
            if (e[i].equals(r)) {
                return true;
            }
        }
        return false;
    }

    public static String o() {
        try {
            String line1Number = ((TelephonyManager) c.a().getSystemService("phone")).getLine1Number();
            return line1Number == null ? "" : line1Number;
        } catch (Exception e2) {
            return "";
        }
    }

    public static String p() {
        return ((TelephonyManager) c.a().getSystemService("phone")).getNetworkCountryIso();
    }

    public static String q() {
        return h.a(c() + e());
    }

    public static String r() {
        String simOperator;
        TelephonyManager telephonyManager = (TelephonyManager) c.a().getSystemService("phone");
        return (telephonyManager.getSimState() != 5 || (simOperator = telephonyManager.getSimOperator()) == null) ? "" : simOperator;
    }

    public static void a(String str) {
        SharedPreferences sharedPreferences = c.a().getSharedPreferences("REFERRER", 0);
        if (TextUtils.isEmpty(sharedPreferences.getString("value", ""))) {
            sharedPreferences.edit().putString("value", str).commit();
        }
    }

    public static String s() {
        return c.a().getSharedPreferences("REFERRER", 0).getString("value", "");
    }

    public static boolean t() {
        String host;
        int port;
        if (Build.VERSION.SDK_INT >= 14) {
            host = System.getProperty("http.proxyHost");
            String property = System.getProperty("http.proxyPort");
            if (property == null) {
                property = "-1";
            }
            port = Integer.parseInt(property);
        } else {
            host = Proxy.getHost(c.a());
            port = Proxy.getPort(c.a());
        }
        return (TextUtils.isEmpty(host) || port == -1) ? false : true;
    }
}