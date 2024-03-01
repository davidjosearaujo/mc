package com.squareup.picasso;

import android.content.Context;
import android.net.Uri;
import android.net.http.HttpResponseCache;
import android.os.Build;
import com.squareup.picasso.Downloader;
import java.io.File;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

/* compiled from: UrlConnectionDownloader.java */
/* loaded from: classes.dex */
public class x implements Downloader {

    /* renamed from: a  reason: collision with root package name */
    static volatile Object f793a;
    private static final Object b = new Object();
    private static final ThreadLocal<StringBuilder> c = new ThreadLocal<StringBuilder>() { // from class: com.squareup.picasso.x.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public StringBuilder initialValue() {
            return new StringBuilder();
        }
    };
    private final Context d;

    public x(Context context) {
        this.d = context.getApplicationContext();
    }

    protected HttpURLConnection a(Uri uri) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(uri.toString()).openConnection();
        httpURLConnection.setConnectTimeout(15000);
        httpURLConnection.setReadTimeout(20000);
        return httpURLConnection;
    }

    @Override // com.squareup.picasso.Downloader
    public Downloader.a a(Uri uri, int i) {
        String sb;
        if (Build.VERSION.SDK_INT >= 14) {
            a(this.d);
        }
        HttpURLConnection a2 = a(uri);
        a2.setUseCaches(true);
        if (i != 0) {
            if (NetworkPolicy.isOfflineOnly(i)) {
                sb = "only-if-cached,max-age=2147483647";
            } else {
                StringBuilder sb2 = c.get();
                sb2.setLength(0);
                if (!NetworkPolicy.shouldReadFromDiskCache(i)) {
                    sb2.append("no-cache");
                }
                if (!NetworkPolicy.shouldWriteToDiskCache(i)) {
                    if (sb2.length() > 0) {
                        sb2.append(',');
                    }
                    sb2.append("no-store");
                }
                sb = sb2.toString();
            }
            a2.setRequestProperty("Cache-Control", sb);
        }
        int responseCode = a2.getResponseCode();
        if (responseCode >= 300) {
            a2.disconnect();
            throw new Downloader.ResponseException(responseCode + " " + a2.getResponseMessage(), i, responseCode);
        }
        return new Downloader.a(a2.getInputStream(), y.a(a2.getHeaderField("X-Android-Response-Source")), a2.getHeaderFieldInt("Content-Length", -1));
    }

    private static void a(Context context) {
        if (f793a == null) {
            try {
                synchronized (b) {
                    if (f793a == null) {
                        f793a = a.a(context);
                    }
                }
            } catch (IOException e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: UrlConnectionDownloader.java */
    /* loaded from: classes.dex */
    public static class a {
        static Object a(Context context) {
            File b = y.b(context);
            HttpResponseCache installed = HttpResponseCache.getInstalled();
            if (installed == null) {
                return HttpResponseCache.install(b, y.a(b));
            }
            return installed;
        }
    }
}