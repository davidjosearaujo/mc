package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.NetworkInfo;
import com.squareup.picasso.Picasso;
import java.io.InputStream;

/* compiled from: RequestHandler.java */
/* loaded from: classes.dex */
public abstract class s {
    public abstract a a(q qVar, int i);

    public abstract boolean a(q qVar);

    /* compiled from: RequestHandler.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final Picasso.LoadedFrom f787a;
        private final Bitmap b;
        private final InputStream c;
        private final int d;

        public a(Bitmap bitmap, Picasso.LoadedFrom loadedFrom) {
            this((Bitmap) y.a(bitmap, "bitmap == null"), null, loadedFrom, 0);
        }

        public a(InputStream inputStream, Picasso.LoadedFrom loadedFrom) {
            this(null, (InputStream) y.a(inputStream, "stream == null"), loadedFrom, 0);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Bitmap bitmap, InputStream inputStream, Picasso.LoadedFrom loadedFrom, int i) {
            if (!((inputStream != null) ^ (bitmap != null))) {
                throw new AssertionError();
            }
            this.b = bitmap;
            this.c = inputStream;
            this.f787a = (Picasso.LoadedFrom) y.a(loadedFrom, "loadedFrom == null");
            this.d = i;
        }

        public Bitmap a() {
            return this.b;
        }

        public InputStream b() {
            return this.c;
        }

        public Picasso.LoadedFrom c() {
            return this.f787a;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public int d() {
            return this.d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(boolean z, NetworkInfo networkInfo) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static BitmapFactory.Options c(q qVar) {
        boolean d = qVar.d();
        boolean z = qVar.q != null;
        BitmapFactory.Options options = null;
        if (d || z) {
            options = new BitmapFactory.Options();
            options.inJustDecodeBounds = d;
            if (z) {
                options.inPreferredConfig = qVar.q;
            }
        }
        return options;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(BitmapFactory.Options options) {
        return options != null && options.inJustDecodeBounds;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(int i, int i2, BitmapFactory.Options options, q qVar) {
        a(i, i2, options.outWidth, options.outHeight, options, qVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(int i, int i2, int i3, int i4, BitmapFactory.Options options, q qVar) {
        int i5 = 1;
        if (i4 > i2 || i3 > i) {
            if (i2 == 0) {
                i5 = (int) Math.floor(i3 / i);
            } else if (i == 0) {
                i5 = (int) Math.floor(i4 / i2);
            } else {
                int floor = (int) Math.floor(i4 / i2);
                int floor2 = (int) Math.floor(i3 / i);
                if (qVar.k) {
                    i5 = Math.max(floor, floor2);
                } else {
                    i5 = Math.min(floor, floor2);
                }
            }
        }
        options.inSampleSize = i5;
        options.inJustDecodeBounds = false;
    }
}