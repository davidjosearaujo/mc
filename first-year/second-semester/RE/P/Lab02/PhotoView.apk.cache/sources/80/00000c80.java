package com.squareup.picasso;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.StatFs;
import android.provider.Settings;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Utils.java */
/* loaded from: classes.dex */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    static final StringBuilder f794a = new StringBuilder();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(Bitmap bitmap) {
        int rowBytes;
        if (Build.VERSION.SDK_INT >= 12) {
            rowBytes = b.a(bitmap);
        } else {
            rowBytes = bitmap.getRowBytes() * bitmap.getHeight();
        }
        if (rowBytes < 0) {
            throw new IllegalStateException("Negative size: " + bitmap);
        }
        return rowBytes;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T a(T t, String str) {
        if (t == null) {
            throw new NullPointerException(str);
        }
        return t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a() {
        if (!b()) {
            throw new IllegalStateException("Method call should happen from the main thread.");
        }
    }

    static boolean b() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(com.squareup.picasso.c cVar) {
        return a(cVar, "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(com.squareup.picasso.c cVar, String str) {
        StringBuilder sb = new StringBuilder(str);
        com.squareup.picasso.a i = cVar.i();
        if (i != null) {
            sb.append(i.b.a());
        }
        List<com.squareup.picasso.a> k = cVar.k();
        if (k != null) {
            int size = k.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (i2 > 0 || i != null) {
                    sb.append(", ");
                }
                sb.append(k.get(i2).b.a());
            }
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str, String str2, String str3) {
        a(str, str2, str3, "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str, String str2, String str3, String str4) {
        Log.d("Picasso", String.format("%1$-11s %2$-12s %3$s %4$s", str, str2, str3, str4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(q qVar) {
        String a2 = a(qVar, f794a);
        f794a.setLength(0);
        return a2;
    }

    static String a(q qVar, StringBuilder sb) {
        if (qVar.f != null) {
            sb.ensureCapacity(qVar.f.length() + 50);
            sb.append(qVar.f);
        } else if (qVar.d != null) {
            String uri = qVar.d.toString();
            sb.ensureCapacity(uri.length() + 50);
            sb.append(uri);
        } else {
            sb.ensureCapacity(50);
            sb.append(qVar.e);
        }
        sb.append('\n');
        if (qVar.m != 0.0f) {
            sb.append("rotation:").append(qVar.m);
            if (qVar.p) {
                sb.append('@').append(qVar.n).append('x').append(qVar.o);
            }
            sb.append('\n');
        }
        if (qVar.d()) {
            sb.append("resize:").append(qVar.h).append('x').append(qVar.i);
            sb.append('\n');
        }
        if (qVar.j) {
            sb.append("centerCrop").append('\n');
        } else if (qVar.k) {
            sb.append("centerInside").append('\n');
        }
        if (qVar.g != null) {
            int size = qVar.g.size();
            for (int i = 0; i < size; i++) {
                sb.append(qVar.g.get(i).a());
                sb.append('\n');
            }
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002f, code lost:
        if (java.lang.Integer.parseInt(r2[1]) == 304) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean a(java.lang.String r5) {
        /*
            r0 = 1
            r1 = 0
            if (r5 != 0) goto L5
        L4:
            return r1
        L5:
            java.lang.String r2 = " "
            r3 = 2
            java.lang.String[] r2 = r5.split(r2, r3)
            java.lang.String r3 = "CACHE"
            r4 = r2[r1]
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L18
            r1 = r0
            goto L4
        L18:
            int r3 = r2.length
            if (r3 == r0) goto L4
            java.lang.String r3 = "CONDITIONAL_CACHE"
            r4 = 0
            r4 = r2[r4]     // Catch: java.lang.NumberFormatException -> L35
            boolean r3 = r3.equals(r4)     // Catch: java.lang.NumberFormatException -> L35
            if (r3 == 0) goto L33
            r3 = 1
            r2 = r2[r3]     // Catch: java.lang.NumberFormatException -> L35
            int r2 = java.lang.Integer.parseInt(r2)     // Catch: java.lang.NumberFormatException -> L35
            r3 = 304(0x130, float:4.26E-43)
            if (r2 != r3) goto L33
        L31:
            r1 = r0
            goto L4
        L33:
            r0 = r1
            goto L31
        L35:
            r0 = move-exception
            goto L4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.picasso.y.a(java.lang.String):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Downloader a(Context context) {
        try {
            Class.forName("com.squareup.okhttp.OkHttpClient");
            return c.a(context);
        } catch (ClassNotFoundException e2) {
            return new x(context);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static File b(Context context) {
        File file = new File(context.getApplicationContext().getCacheDir(), "picasso-cache");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long a(File file) {
        long j;
        try {
            StatFs statFs = new StatFs(file.getAbsolutePath());
            j = (statFs.getBlockSize() * statFs.getBlockCount()) / 50;
        } catch (IllegalArgumentException e2) {
            j = 5242880;
        }
        return Math.max(Math.min(j, 52428800L), 5242880L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(Context context) {
        ActivityManager activityManager = (ActivityManager) a(context, "activity");
        return (((!((context.getApplicationInfo().flags & 1048576) != 0) || Build.VERSION.SDK_INT < 11) ? activityManager.getMemoryClass() : a.a(activityManager)) * 1048576) / 7;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean d(Context context) {
        try {
            return Settings.System.getInt(context.getContentResolver(), "airplane_mode_on", 0) != 0;
        } catch (NullPointerException e2) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T a(Context context, String str) {
        return (T) context.getSystemService(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(Context context, String str) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] b(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[4096];
        while (true) {
            int read = inputStream.read(bArr);
            if (-1 != read) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c(InputStream inputStream) {
        byte[] bArr = new byte[12];
        return inputStream.read(bArr, 0, 12) == 12 && "RIFF".equals(new String(bArr, 0, 4, "US-ASCII")) && "WEBP".equals(new String(bArr, 8, 4, "US-ASCII"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(Resources resources, q qVar) {
        if (qVar.e != 0 || qVar.d == null) {
            return qVar.e;
        }
        String authority = qVar.d.getAuthority();
        if (authority == null) {
            throw new FileNotFoundException("No package provided: " + qVar.d);
        }
        List<String> pathSegments = qVar.d.getPathSegments();
        if (pathSegments == null || pathSegments.isEmpty()) {
            throw new FileNotFoundException("No path segments: " + qVar.d);
        }
        if (pathSegments.size() == 1) {
            try {
                return Integer.parseInt(pathSegments.get(0));
            } catch (NumberFormatException e2) {
                throw new FileNotFoundException("Last path segment is not a resource ID: " + qVar.d);
            }
        } else if (pathSegments.size() == 2) {
            return resources.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
        } else {
            throw new FileNotFoundException("More than two path segments: " + qVar.d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Resources a(Context context, q qVar) {
        if (qVar.e != 0 || qVar.d == null) {
            return context.getResources();
        }
        String authority = qVar.d.getAuthority();
        if (authority == null) {
            throw new FileNotFoundException("No package provided: " + qVar.d);
        }
        try {
            return context.getPackageManager().getResourcesForApplication(authority);
        } catch (PackageManager.NameNotFoundException e2) {
            throw new FileNotFoundException("Unable to obtain resources for package: " + qVar.d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Looper looper) {
        Handler handler = new Handler(looper) { // from class: com.squareup.picasso.y.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                sendMessageDelayed(obtainMessage(), 1000L);
            }
        };
        handler.sendMessageDelayed(handler.obtainMessage(), 1000L);
    }

    /* compiled from: Utils.java */
    @TargetApi(11)
    /* loaded from: classes.dex */
    private static class a {
        static int a(ActivityManager activityManager) {
            return activityManager.getLargeMemoryClass();
        }
    }

    /* compiled from: Utils.java */
    /* loaded from: classes.dex */
    static class e implements ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new d(runnable);
        }
    }

    /* compiled from: Utils.java */
    /* loaded from: classes.dex */
    private static class d extends Thread {
        public d(Runnable runnable) {
            super(runnable);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            super.run();
        }
    }

    /* compiled from: Utils.java */
    @TargetApi(12)
    /* loaded from: classes.dex */
    private static class b {
        static int a(Bitmap bitmap) {
            return bitmap.getByteCount();
        }
    }

    /* compiled from: Utils.java */
    /* loaded from: classes.dex */
    private static class c {
        static Downloader a(Context context) {
            return new n(context);
        }
    }
}