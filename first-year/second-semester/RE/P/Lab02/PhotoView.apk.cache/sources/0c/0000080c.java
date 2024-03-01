package com.facebook.internal;

import android.content.Context;
import android.net.Uri;
import com.facebook.LoggingBehavior;
import com.facebook.internal.m;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;

/* compiled from: ImageResponseCache.java */
/* loaded from: classes.dex */
class r {

    /* renamed from: a  reason: collision with root package name */
    static final String f210a = r.class.getSimpleName();
    private static m b;

    r() {
    }

    static synchronized m a(Context context) {
        m mVar;
        synchronized (r.class) {
            if (b == null) {
                b = new m(f210a, new m.d());
            }
            mVar = b;
        }
        return mVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static InputStream a(Uri uri, Context context) {
        if (uri == null || !a(uri)) {
            return null;
        }
        try {
            return a(context).a(uri.toString());
        } catch (IOException e) {
            u.a(LoggingBehavior.CACHE, 5, f210a, e.toString());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static InputStream a(Context context, HttpURLConnection httpURLConnection) {
        if (httpURLConnection.getResponseCode() != 200) {
            return null;
        }
        Uri parse = Uri.parse(httpURLConnection.getURL().toString());
        InputStream inputStream = httpURLConnection.getInputStream();
        try {
            if (a(parse)) {
                return a(context).a(parse.toString(), new a(inputStream, httpURLConnection));
            }
            return inputStream;
        } catch (IOException e) {
            return inputStream;
        }
    }

    private static boolean a(Uri uri) {
        if (uri != null) {
            String host = uri.getHost();
            if (host.endsWith("fbcdn.net")) {
                return true;
            }
            if (host.startsWith("fbcdn") && host.endsWith("akamaihd.net")) {
                return true;
            }
        }
        return false;
    }

    /* compiled from: ImageResponseCache.java */
    /* loaded from: classes.dex */
    private static class a extends BufferedInputStream {

        /* renamed from: a  reason: collision with root package name */
        HttpURLConnection f211a;

        a(InputStream inputStream, HttpURLConnection httpURLConnection) {
            super(inputStream, 8192);
            this.f211a = httpURLConnection;
        }

        @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            super.close();
            ab.a(this.f211a);
        }
    }
}