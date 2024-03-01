package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.NetworkInfo;
import com.squareup.picasso.Downloader;
import com.squareup.picasso.NetworkRequestHandler;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.s;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BitmapHunter.java */
/* loaded from: classes.dex */
public class c implements Runnable {
    private static final Object t = new Object();
    private static final ThreadLocal<StringBuilder> u = new ThreadLocal<StringBuilder>() { // from class: com.squareup.picasso.c.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public StringBuilder initialValue() {
            return new StringBuilder("Picasso-");
        }
    };
    private static final AtomicInteger v = new AtomicInteger();
    private static final s w = new s() { // from class: com.squareup.picasso.c.2
        @Override // com.squareup.picasso.s
        public boolean a(q qVar) {
            return true;
        }

        @Override // com.squareup.picasso.s
        public s.a a(q qVar, int i) {
            throw new IllegalStateException("Unrecognized type of request: " + qVar);
        }
    };

    /* renamed from: a  reason: collision with root package name */
    final int f767a = v.incrementAndGet();
    final Picasso b;
    final i c;
    final d d;
    final u e;
    final String f;
    final q g;
    final int h;
    int i;
    final s j;
    a k;
    List<a> l;
    Bitmap m;
    Future<?> n;
    Picasso.LoadedFrom o;
    Exception p;
    int q;
    int r;
    Picasso.Priority s;

    c(Picasso picasso, i iVar, d dVar, u uVar, a aVar, s sVar) {
        this.b = picasso;
        this.c = iVar;
        this.d = dVar;
        this.e = uVar;
        this.k = aVar;
        this.f = aVar.e();
        this.g = aVar.c();
        this.s = aVar.k();
        this.h = aVar.h();
        this.i = aVar.i();
        this.j = sVar;
        this.r = sVar.a();
    }

    static Bitmap a(InputStream inputStream, q qVar) {
        m mVar = new m(inputStream);
        long a2 = mVar.a(65536);
        BitmapFactory.Options c = s.c(qVar);
        boolean a3 = s.a(c);
        boolean c2 = y.c(mVar);
        mVar.a(a2);
        if (c2) {
            byte[] b = y.b(mVar);
            if (a3) {
                BitmapFactory.decodeByteArray(b, 0, b.length, c);
                s.a(qVar.h, qVar.i, c, qVar);
            }
            return BitmapFactory.decodeByteArray(b, 0, b.length, c);
        }
        if (a3) {
            BitmapFactory.decodeStream(mVar, null, c);
            s.a(qVar.h, qVar.i, c, qVar);
            mVar.a(a2);
        }
        Bitmap decodeStream = BitmapFactory.decodeStream(mVar, null, c);
        if (decodeStream == null) {
            throw new IOException("Failed to decode stream.");
        }
        return decodeStream;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            a(this.g);
            if (this.b.l) {
                y.a("Hunter", "executing", y.a(this));
            }
            this.m = a();
            if (this.m == null) {
                this.c.c(this);
            } else {
                this.c.a(this);
            }
        } catch (Exception e) {
            this.p = e;
            this.c.c(this);
        } catch (Downloader.ResponseException e2) {
            if (!e2.localCacheOnly || e2.responseCode != 504) {
                this.p = e2;
            }
            this.c.c(this);
        } catch (OutOfMemoryError e3) {
            StringWriter stringWriter = new StringWriter();
            this.e.e().a(new PrintWriter(stringWriter));
            this.p = new RuntimeException(stringWriter.toString(), e3);
            this.c.c(this);
        } catch (NetworkRequestHandler.ContentLengthException e4) {
            this.p = e4;
            this.c.b(this);
        } catch (IOException e5) {
            this.p = e5;
            this.c.b(this);
        } finally {
            Thread.currentThread().setName("Picasso-Idle");
        }
    }

    Bitmap a() {
        Bitmap bitmap = null;
        if (MemoryPolicy.shouldReadFromMemoryCache(this.h) && (bitmap = this.d.a(this.f)) != null) {
            this.e.a();
            this.o = Picasso.LoadedFrom.MEMORY;
            if (this.b.l) {
                y.a("Hunter", "decoded", this.g.a(), "from cache");
            }
        } else {
            this.g.c = this.r == 0 ? NetworkPolicy.OFFLINE.index : this.i;
            s.a a2 = this.j.a(this.g, this.i);
            if (a2 != null) {
                this.o = a2.c();
                this.q = a2.d();
                bitmap = a2.a();
                if (bitmap == null) {
                    InputStream b = a2.b();
                    try {
                        bitmap = a(b, this.g);
                    } finally {
                        y.a(b);
                    }
                }
            }
            if (bitmap != null) {
                if (this.b.l) {
                    y.a("Hunter", "decoded", this.g.a());
                }
                this.e.a(bitmap);
                if (this.g.e() || this.q != 0) {
                    synchronized (t) {
                        if (this.g.f() || this.q != 0) {
                            bitmap = a(this.g, bitmap, this.q);
                            if (this.b.l) {
                                y.a("Hunter", "transformed", this.g.a());
                            }
                        }
                        if (this.g.g()) {
                            bitmap = a(this.g.g, bitmap);
                            if (this.b.l) {
                                y.a("Hunter", "transformed", this.g.a(), "from custom transformations");
                            }
                        }
                    }
                    if (bitmap != null) {
                        this.e.b(bitmap);
                    }
                }
            }
        }
        return bitmap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(a aVar) {
        boolean z = this.b.l;
        q qVar = aVar.b;
        if (this.k == null) {
            this.k = aVar;
            if (z) {
                if (this.l == null || this.l.isEmpty()) {
                    y.a("Hunter", "joined", qVar.a(), "to empty hunter");
                    return;
                } else {
                    y.a("Hunter", "joined", qVar.a(), y.a(this, "to "));
                    return;
                }
            }
            return;
        }
        if (this.l == null) {
            this.l = new ArrayList(3);
        }
        this.l.add(aVar);
        if (z) {
            y.a("Hunter", "joined", qVar.a(), y.a(this, "to "));
        }
        Picasso.Priority k = aVar.k();
        if (k.ordinal() > this.s.ordinal()) {
            this.s = k;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(a aVar) {
        boolean z = false;
        if (this.k == aVar) {
            this.k = null;
            z = true;
        } else if (this.l != null) {
            z = this.l.remove(aVar);
        }
        if (z && aVar.k() == this.s) {
            this.s = o();
        }
        if (this.b.l) {
            y.a("Hunter", "removed", aVar.b.a(), y.a(this, "from "));
        }
    }

    private Picasso.Priority o() {
        boolean z = true;
        int i = 0;
        Picasso.Priority priority = Picasso.Priority.LOW;
        boolean z2 = (this.l == null || this.l.isEmpty()) ? false : true;
        if (this.k == null && !z2) {
            z = false;
        }
        if (z) {
            Picasso.Priority k = this.k != null ? this.k.k() : priority;
            if (z2) {
                int size = this.l.size();
                while (i < size) {
                    Picasso.Priority k2 = this.l.get(i).k();
                    if (k2.ordinal() <= k.ordinal()) {
                        k2 = k;
                    }
                    i++;
                    k = k2;
                }
                return k;
            }
            return k;
        }
        return priority;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        if (this.k == null) {
            return (this.l == null || this.l.isEmpty()) && this.n != null && this.n.cancel(false);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c() {
        return this.n != null && this.n.isCancelled();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(boolean z, NetworkInfo networkInfo) {
        if (this.r > 0) {
            this.r--;
            return this.j.a(z, networkInfo);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d() {
        return this.j.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bitmap e() {
        return this.m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String f() {
        return this.f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int g() {
        return this.h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public q h() {
        return this.g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a i() {
        return this.k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Picasso j() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<a> k() {
        return this.l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Exception l() {
        return this.p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Picasso.LoadedFrom m() {
        return this.o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Picasso.Priority n() {
        return this.s;
    }

    static void a(q qVar) {
        String c = qVar.c();
        StringBuilder sb = u.get();
        sb.ensureCapacity("Picasso-".length() + c.length());
        sb.replace("Picasso-".length(), sb.length(), c);
        Thread.currentThread().setName(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static c a(Picasso picasso, i iVar, d dVar, u uVar, a aVar) {
        q c = aVar.c();
        List<s> a2 = picasso.a();
        int size = a2.size();
        for (int i = 0; i < size; i++) {
            s sVar = a2.get(i);
            if (sVar.a(c)) {
                return new c(picasso, iVar, dVar, uVar, aVar, sVar);
            }
        }
        return new c(picasso, iVar, dVar, uVar, aVar, w);
    }

    static Bitmap a(List<w> list, Bitmap bitmap) {
        int size = list.size();
        int i = 0;
        Bitmap bitmap2 = bitmap;
        while (i < size) {
            final w wVar = list.get(i);
            try {
                Bitmap a2 = wVar.a(bitmap2);
                if (a2 == null) {
                    final StringBuilder append = new StringBuilder().append("Transformation ").append(wVar.a()).append(" returned null after ").append(i).append(" previous transformation(s).\n\nTransformation list:\n");
                    for (w wVar2 : list) {
                        append.append(wVar2.a()).append('\n');
                    }
                    Picasso.f757a.post(new Runnable() { // from class: com.squareup.picasso.c.4
                        @Override // java.lang.Runnable
                        public void run() {
                            throw new NullPointerException(append.toString());
                        }
                    });
                    return null;
                } else if (a2 == bitmap2 && bitmap2.isRecycled()) {
                    Picasso.f757a.post(new Runnable() { // from class: com.squareup.picasso.c.5
                        @Override // java.lang.Runnable
                        public void run() {
                            throw new IllegalStateException("Transformation " + w.this.a() + " returned input Bitmap but recycled it.");
                        }
                    });
                    return null;
                } else if (a2 == bitmap2 || bitmap2.isRecycled()) {
                    i++;
                    bitmap2 = a2;
                } else {
                    Picasso.f757a.post(new Runnable() { // from class: com.squareup.picasso.c.6
                        @Override // java.lang.Runnable
                        public void run() {
                            throw new IllegalStateException("Transformation " + w.this.a() + " mutated input Bitmap but failed to recycle the original.");
                        }
                    });
                    return null;
                }
            } catch (RuntimeException e) {
                Picasso.f757a.post(new Runnable() { // from class: com.squareup.picasso.c.3
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new RuntimeException("Transformation " + w.this.a() + " crashed with exception.", e);
                    }
                });
                return null;
            }
        }
        return bitmap2;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:49:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static android.graphics.Bitmap a(com.squareup.picasso.q r16, android.graphics.Bitmap r17, int r18) {
        /*
            Method dump skipped, instructions count: 232
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.picasso.c.a(com.squareup.picasso.q, android.graphics.Bitmap, int):android.graphics.Bitmap");
    }

    private static boolean a(boolean z, int i, int i2, int i3, int i4) {
        return !z || i > i3 || i2 > i4;
    }
}