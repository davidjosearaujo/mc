package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.squareup.picasso.Picasso;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* compiled from: Action.java */
/* loaded from: classes.dex */
abstract class a<T> {

    /* renamed from: a  reason: collision with root package name */
    final Picasso f764a;
    final q b;
    final WeakReference<T> c;
    final boolean d;
    final int e;
    final int f;
    final int g;
    final Drawable h;
    final String i;
    final Object j;
    boolean k;
    boolean l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(Bitmap bitmap, Picasso.LoadedFrom loadedFrom);

    /* compiled from: Action.java */
    /* renamed from: com.squareup.picasso.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static class C0044a<M> extends WeakReference<M> {

        /* renamed from: a  reason: collision with root package name */
        final a f765a;

        public C0044a(a aVar, M m, ReferenceQueue<? super M> referenceQueue) {
            super(m, referenceQueue);
            this.f765a = aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Picasso picasso, T t, q qVar, int i, int i2, int i3, Drawable drawable, String str, Object obj, boolean z) {
        this.f764a = picasso;
        this.b = qVar;
        this.c = t == null ? null : new C0044a(this, t, picasso.i);
        this.e = i;
        this.f = i2;
        this.d = z;
        this.g = i3;
        this.h = drawable;
        this.i = str;
        this.j = obj == null ? this : obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        this.l = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public q c() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public T d() {
        if (this.c == null) {
            return null;
        }
        return this.c.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String e() {
        return this.i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f() {
        return this.l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean g() {
        return this.k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int h() {
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int i() {
        return this.f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Picasso j() {
        return this.f764a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Picasso.Priority k() {
        return this.b.r;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object l() {
        return this.j;
    }
}