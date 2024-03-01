package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.q;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: RequestCreator.java */
/* loaded from: classes.dex */
public class r {

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicInteger f786a = new AtomicInteger();
    private final Picasso b;
    private final q.a c;
    private boolean d;
    private boolean e;
    private boolean f;
    private int g;
    private int h;
    private int i;
    private int j;
    private Drawable k;
    private Drawable l;
    private Object m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(Picasso picasso, Uri uri, int i) {
        this.f = true;
        if (picasso.m) {
            throw new IllegalStateException("Picasso instance already shut down. Cannot submit new requests.");
        }
        this.b = picasso;
        this.c = new q.a(uri, i, picasso.j);
    }

    r() {
        this.f = true;
        this.b = null;
        this.c = new q.a(null, 0, null);
    }

    public r a(int i) {
        if (!this.f) {
            throw new IllegalStateException("Already explicitly declared as no placeholder.");
        }
        if (i == 0) {
            throw new IllegalArgumentException("Placeholder image resource invalid.");
        }
        if (this.k != null) {
            throw new IllegalStateException("Placeholder image already set.");
        }
        this.g = i;
        return this;
    }

    public r b(int i) {
        if (i == 0) {
            throw new IllegalArgumentException("Error image resource invalid.");
        }
        if (this.l != null) {
            throw new IllegalStateException("Error image already set.");
        }
        this.h = i;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public r a() {
        this.e = false;
        return this;
    }

    public r a(int i, int i2) {
        this.c.a(i, i2);
        return this;
    }

    public r a(Bitmap.Config config) {
        this.c.a(config);
        return this;
    }

    public void a(ImageView imageView) {
        a(imageView, (e) null);
    }

    public void a(ImageView imageView, e eVar) {
        Bitmap b;
        long nanoTime = System.nanoTime();
        y.a();
        if (imageView == null) {
            throw new IllegalArgumentException("Target must not be null.");
        }
        if (!this.c.a()) {
            this.b.a(imageView);
            if (this.f) {
                o.a(imageView, b());
                return;
            }
            return;
        }
        if (this.e) {
            if (this.c.b()) {
                throw new IllegalStateException("Fit cannot be used with resize.");
            }
            int width = imageView.getWidth();
            int height = imageView.getHeight();
            if (width == 0 || height == 0) {
                if (this.f) {
                    o.a(imageView, b());
                }
                this.b.a(imageView, new h(this, imageView, eVar));
                return;
            }
            this.c.a(width, height);
        }
        q a2 = a(nanoTime);
        String a3 = y.a(a2);
        if (MemoryPolicy.shouldReadFromMemoryCache(this.i) && (b = this.b.b(a3)) != null) {
            this.b.a(imageView);
            o.a(imageView, this.b.c, b, Picasso.LoadedFrom.MEMORY, this.d, this.b.k);
            if (this.b.l) {
                y.a("Main", "completed", a2.b(), "from " + Picasso.LoadedFrom.MEMORY);
            }
            if (eVar != null) {
                eVar.a();
                return;
            }
            return;
        }
        if (this.f) {
            o.a(imageView, b());
        }
        this.b.a((a) new k(this.b, imageView, a2, this.i, this.j, this.h, this.l, a3, this.m, eVar, this.d));
    }

    private Drawable b() {
        return this.g != 0 ? this.b.c.getResources().getDrawable(this.g) : this.k;
    }

    private q a(long j) {
        int andIncrement = f786a.getAndIncrement();
        q c = this.c.c();
        c.f784a = andIncrement;
        c.b = j;
        boolean z = this.b.l;
        if (z) {
            y.a("Main", "created", c.b(), c.toString());
        }
        q a2 = this.b.a(c);
        if (a2 != c) {
            a2.f784a = andIncrement;
            a2.b = j;
            if (z) {
                y.a("Main", "changed", a2.a(), "into " + a2);
            }
        }
        return a2;
    }
}