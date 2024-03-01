package com.facebook.internal;

import android.content.Context;
import android.net.Uri;
import java.util.Locale;

/* compiled from: ImageRequest.java */
/* loaded from: classes.dex */
public class p {

    /* renamed from: a  reason: collision with root package name */
    private Context f207a;
    private Uri b;
    private b c;
    private boolean d;
    private Object e;

    /* compiled from: ImageRequest.java */
    /* loaded from: classes.dex */
    public interface b {
        void a(q qVar);
    }

    public static Uri a(String str, int i, int i2) {
        ac.a(str, "userId");
        int max = Math.max(i, 0);
        int max2 = Math.max(i2, 0);
        if (max == 0 && max2 == 0) {
            throw new IllegalArgumentException("Either width or height must be greater than 0");
        }
        Uri.Builder path = new Uri.Builder().scheme("https").authority("graph.facebook.com").path(String.format(Locale.US, "%s/picture", str));
        if (max2 != 0) {
            path.appendQueryParameter("height", String.valueOf(max2));
        }
        if (max != 0) {
            path.appendQueryParameter("width", String.valueOf(max));
        }
        path.appendQueryParameter("migration_overrides", "{october_2012:true}");
        return path.build();
    }

    private p(a aVar) {
        this.f207a = aVar.f208a;
        this.b = aVar.b;
        this.c = aVar.c;
        this.d = aVar.d;
        this.e = aVar.e == null ? new Object() : aVar.e;
    }

    public Context a() {
        return this.f207a;
    }

    public Uri b() {
        return this.b;
    }

    public b c() {
        return this.c;
    }

    public boolean d() {
        return this.d;
    }

    public Object e() {
        return this.e;
    }

    /* compiled from: ImageRequest.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private Context f208a;
        private Uri b;
        private b c;
        private boolean d;
        private Object e;

        public a(Context context, Uri uri) {
            ac.a(uri, "imageUri");
            this.f208a = context;
            this.b = uri;
        }

        public a a(b bVar) {
            this.c = bVar;
            return this;
        }

        public a a(Object obj) {
            this.e = obj;
            return this;
        }

        public a a(boolean z) {
            this.d = z;
            return this;
        }

        public p a() {
            return new p(this);
        }
    }
}