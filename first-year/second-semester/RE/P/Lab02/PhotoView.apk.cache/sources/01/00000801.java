package com.facebook.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.facebook.internal.ae;
import com.facebook.internal.p;
import java.io.Closeable;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

/* compiled from: ImageDownloader.java */
/* loaded from: classes.dex */
public class o {

    /* renamed from: a  reason: collision with root package name */
    private static Handler f201a;
    private static ae b = new ae(8);
    private static ae c = new ae(2);
    private static final Map<d, c> d = new HashMap();

    public static void a(p pVar) {
        if (pVar != null) {
            d dVar = new d(pVar.b(), pVar.e());
            synchronized (d) {
                c cVar = d.get(dVar);
                if (cVar != null) {
                    cVar.b = pVar;
                    cVar.c = false;
                    cVar.f205a.b();
                } else {
                    a(pVar, dVar, pVar.d());
                }
            }
        }
    }

    public static boolean b(p pVar) {
        boolean z;
        d dVar = new d(pVar.b(), pVar.e());
        synchronized (d) {
            c cVar = d.get(dVar);
            if (cVar == null) {
                z = false;
            } else if (cVar.f205a.a()) {
                d.remove(dVar);
                z = true;
            } else {
                cVar.c = true;
                z = true;
            }
        }
        return z;
    }

    private static void a(p pVar, d dVar, boolean z) {
        a(pVar, dVar, c, new a(pVar.a(), dVar, z));
    }

    private static void a(p pVar, d dVar) {
        a(pVar, dVar, b, new b(pVar.a(), dVar));
    }

    private static void a(p pVar, d dVar, ae aeVar, Runnable runnable) {
        synchronized (d) {
            c cVar = new c();
            cVar.b = pVar;
            d.put(dVar, cVar);
            cVar.f205a = aeVar.a(runnable);
        }
    }

    private static void a(d dVar, final Exception exc, final Bitmap bitmap, final boolean z) {
        final p pVar;
        final p.b c2;
        c a2 = a(dVar);
        if (a2 != null && !a2.c && (c2 = (pVar = a2.b).c()) != null) {
            a().post(new Runnable() { // from class: com.facebook.internal.o.1
                @Override // java.lang.Runnable
                public void run() {
                    c2.a(new q(p.this, exc, z, bitmap));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(d dVar, Context context, boolean z) {
        boolean z2;
        InputStream inputStream;
        Uri a2;
        if (!z || (a2 = aa.a(dVar.f206a)) == null) {
            z2 = false;
            inputStream = null;
        } else {
            InputStream a3 = r.a(a2, context);
            inputStream = a3;
            z2 = a3 != null;
        }
        if (!z2) {
            inputStream = r.a(dVar.f206a, context);
        }
        if (inputStream != null) {
            Bitmap decodeStream = BitmapFactory.decodeStream(inputStream);
            ab.a((Closeable) inputStream);
            a(dVar, (Exception) null, decodeStream, z2);
            return;
        }
        c a4 = a(dVar);
        if (a4 != null && !a4.c) {
            a(a4.b, dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 5, insn: 0x00a1: MOVE  (r3 I:??[OBJECT, ARRAY]) = (r5 I:??[OBJECT, ARRAY]), block:B:36:0x00a1 */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:59:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void b(com.facebook.internal.o.d r11, android.content.Context r12) {
        /*
            Method dump skipped, instructions count: 222
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.o.b(com.facebook.internal.o$d, android.content.Context):void");
    }

    private static synchronized Handler a() {
        Handler handler;
        synchronized (o.class) {
            if (f201a == null) {
                f201a = new Handler(Looper.getMainLooper());
            }
            handler = f201a;
        }
        return handler;
    }

    private static c a(d dVar) {
        c remove;
        synchronized (d) {
            remove = d.remove(dVar);
        }
        return remove;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ImageDownloader.java */
    /* loaded from: classes.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        Uri f206a;
        Object b;

        d(Uri uri, Object obj) {
            this.f206a = uri;
            this.b = obj;
        }

        public int hashCode() {
            return ((this.f206a.hashCode() + 1073) * 37) + this.b.hashCode();
        }

        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return dVar.f206a == this.f206a && dVar.b == this.b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ImageDownloader.java */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        ae.a f205a;
        p b;
        boolean c;

        private c() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ImageDownloader.java */
    /* loaded from: classes.dex */
    public static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private Context f203a;
        private d b;
        private boolean c;

        a(Context context, d dVar, boolean z) {
            this.f203a = context;
            this.b = dVar;
            this.c = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            o.b(this.b, this.f203a, this.c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ImageDownloader.java */
    /* loaded from: classes.dex */
    public static class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private Context f204a;
        private d b;

        b(Context context, d dVar) {
            this.f204a = context;
            this.b = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            o.b(this.b, this.f204a);
        }
    }
}