package com.facebook.internal;

import android.net.Uri;
import com.facebook.internal.m;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;

/* compiled from: UrlRedirectCache.java */
/* loaded from: classes.dex */
class aa {

    /* renamed from: a  reason: collision with root package name */
    static final String f157a = aa.class.getSimpleName();
    private static final String b = f157a + "_Redirect";
    private static m c;

    aa() {
    }

    static synchronized m a() {
        m mVar;
        synchronized (aa.class) {
            if (c == null) {
                c = new m(f157a, new m.d());
            }
            mVar = c;
        }
        return mVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Uri a(Uri uri) {
        InputStreamReader inputStreamReader;
        Throwable th;
        Uri uri2 = null;
        boolean z = false;
        if (uri != null) {
            String uri3 = uri.toString();
            try {
                m a2 = a();
                String str = uri3;
                InputStreamReader inputStreamReader2 = null;
                while (true) {
                    try {
                        InputStream a3 = a2.a(str, b);
                        if (a3 == null) {
                            break;
                        }
                        inputStreamReader = new InputStreamReader(a3);
                        try {
                            char[] cArr = new char[128];
                            StringBuilder sb = new StringBuilder();
                            while (true) {
                                int read = inputStreamReader.read(cArr, 0, cArr.length);
                                if (read <= 0) {
                                    break;
                                }
                                sb.append(cArr, 0, read);
                            }
                            ab.a(inputStreamReader);
                            str = sb.toString();
                            inputStreamReader2 = inputStreamReader;
                            z = true;
                        } catch (IOException e) {
                            ab.a(inputStreamReader);
                            return uri2;
                        } catch (Throwable th2) {
                            th = th2;
                            ab.a(inputStreamReader);
                            throw th;
                        }
                    } catch (IOException e2) {
                        inputStreamReader = inputStreamReader2;
                    } catch (Throwable th3) {
                        th = th3;
                        inputStreamReader = inputStreamReader2;
                    }
                }
                if (z) {
                    uri2 = Uri.parse(str);
                    ab.a(inputStreamReader2);
                } else {
                    ab.a(inputStreamReader2);
                }
            } catch (IOException e3) {
                inputStreamReader = null;
            } catch (Throwable th4) {
                inputStreamReader = null;
                th = th4;
            }
        }
        return uri2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Uri uri, Uri uri2) {
        OutputStream outputStream;
        Throwable th;
        OutputStream b2;
        if (uri != null && uri2 != null) {
            try {
                try {
                    b2 = a().b(uri.toString(), b);
                } catch (Throwable th2) {
                    outputStream = null;
                    th = th2;
                }
                try {
                    b2.write(uri2.toString().getBytes());
                    ab.a(b2);
                } catch (Throwable th3) {
                    outputStream = b2;
                    th = th3;
                    ab.a(outputStream);
                    throw th;
                }
            } catch (IOException e) {
                ab.a((Closeable) null);
            }
        }
    }
}