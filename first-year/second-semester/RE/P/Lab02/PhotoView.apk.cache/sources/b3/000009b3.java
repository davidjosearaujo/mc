package com.google.android.gms.common.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.support.v4.util.LruCache;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.images.a;
import com.google.android.gms.common.internal.j;
import com.google.android.gms.internal.zzabv;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final class ImageManager {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f419a = new Object();
    private static HashSet<Uri> b = new HashSet<>();
    private final Context c;
    private final Handler d;
    private final ExecutorService e;
    private final b f;
    private final zzabv g;
    private final Map<com.google.android.gms.common.images.a, ImageReceiver> h;
    private final Map<Uri, ImageReceiver> i;
    private final Map<Uri, Long> j;

    /* JADX INFO: Access modifiers changed from: private */
    @KeepName
    /* loaded from: classes.dex */
    public final class ImageReceiver extends ResultReceiver {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ImageManager f420a;
        private final Uri b;
        private final ArrayList<com.google.android.gms.common.images.a> c;

        @Override // android.os.ResultReceiver
        public void onReceiveResult(int i, Bundle bundle) {
            this.f420a.e.execute(new c(this.b, (ParcelFileDescriptor) bundle.getParcelable("com.google.android.gms.extra.fileDescriptor")));
        }
    }

    /* loaded from: classes.dex */
    public interface a {
        void a(Uri uri, Drawable drawable, boolean z);
    }

    /* loaded from: classes.dex */
    private static final class b extends LruCache<a.C0021a, Bitmap> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.support.v4.util.LruCache
        /* renamed from: a */
        public int sizeOf(a.C0021a c0021a, Bitmap bitmap) {
            return bitmap.getHeight() * bitmap.getRowBytes();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.support.v4.util.LruCache
        /* renamed from: a */
        public void entryRemoved(boolean z, a.C0021a c0021a, Bitmap bitmap, Bitmap bitmap2) {
            super.entryRemoved(z, c0021a, bitmap, bitmap2);
        }
    }

    /* loaded from: classes.dex */
    private final class c implements Runnable {
        private final Uri b;
        private final ParcelFileDescriptor c;

        public c(Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
            this.b = uri;
            this.c = parcelFileDescriptor;
        }

        @Override // java.lang.Runnable
        public void run() {
            j.b("LoadBitmapFromDiskRunnable can't be executed in the main thread");
            boolean z = false;
            Bitmap bitmap = null;
            if (this.c != null) {
                try {
                    bitmap = BitmapFactory.decodeFileDescriptor(this.c.getFileDescriptor());
                } catch (OutOfMemoryError e) {
                    String valueOf = String.valueOf(this.b);
                    Log.e("ImageManager", new StringBuilder(String.valueOf(valueOf).length() + 34).append("OOM while loading bitmap for uri: ").append(valueOf).toString(), e);
                    z = true;
                }
                try {
                    this.c.close();
                } catch (IOException e2) {
                    Log.e("ImageManager", "closed failed", e2);
                }
            }
            CountDownLatch countDownLatch = new CountDownLatch(1);
            ImageManager.this.d.post(new d(this.b, bitmap, z, countDownLatch));
            try {
                countDownLatch.await();
            } catch (InterruptedException e3) {
                String valueOf2 = String.valueOf(this.b);
                Log.w("ImageManager", new StringBuilder(String.valueOf(valueOf2).length() + 32).append("Latch interrupted while posting ").append(valueOf2).toString());
            }
        }
    }

    /* loaded from: classes.dex */
    private final class d implements Runnable {
        private final Uri b;
        private final Bitmap c;
        private final CountDownLatch d;
        private boolean e;

        public d(Uri uri, Bitmap bitmap, boolean z, CountDownLatch countDownLatch) {
            this.b = uri;
            this.c = bitmap;
            this.e = z;
            this.d = countDownLatch;
        }

        private void a(ImageReceiver imageReceiver, boolean z) {
            ArrayList arrayList = imageReceiver.c;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                com.google.android.gms.common.images.a aVar = (com.google.android.gms.common.images.a) arrayList.get(i);
                if (z) {
                    aVar.a(ImageManager.this.c, this.c, false);
                } else {
                    ImageManager.this.j.put(this.b, Long.valueOf(SystemClock.elapsedRealtime()));
                    aVar.a(ImageManager.this.c, ImageManager.this.g, false);
                }
                if (!(aVar instanceof a.b)) {
                    ImageManager.this.h.remove(aVar);
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            j.a("OnBitmapLoadedRunnable must be executed in the main thread");
            boolean z = this.c != null;
            if (ImageManager.this.f != null) {
                if (this.e) {
                    ImageManager.this.f.evictAll();
                    System.gc();
                    this.e = false;
                    ImageManager.this.d.post(this);
                    return;
                } else if (z) {
                    ImageManager.this.f.put(new a.C0021a(this.b), this.c);
                }
            }
            ImageReceiver imageReceiver = (ImageReceiver) ImageManager.this.i.remove(this.b);
            if (imageReceiver != null) {
                a(imageReceiver, z);
            }
            this.d.countDown();
            synchronized (ImageManager.f419a) {
                ImageManager.b.remove(this.b);
            }
        }
    }
}