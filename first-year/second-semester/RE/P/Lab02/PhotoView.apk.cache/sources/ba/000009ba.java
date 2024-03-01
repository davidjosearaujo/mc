package com.google.android.gms.common.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.common.images.ImageManager;
import com.google.android.gms.common.internal.j;
import com.google.android.gms.internal.zzabv;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    final C0021a f424a;
    protected int b;

    /* renamed from: com.google.android.gms.common.images.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static final class C0021a {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f425a;

        public C0021a(Uri uri) {
            this.f425a = uri;
        }

        public boolean equals(Object obj) {
            if (obj instanceof C0021a) {
                if (this == obj) {
                    return true;
                }
                return com.google.android.gms.common.internal.b.a(((C0021a) obj).f425a, this.f425a);
            }
            return false;
        }

        public int hashCode() {
            return com.google.android.gms.common.internal.b.a(this.f425a);
        }
    }

    /* loaded from: classes.dex */
    public static final class b extends a {
        private WeakReference<ImageManager.a> c;

        @Override // com.google.android.gms.common.images.a
        protected void a(Drawable drawable, boolean z, boolean z2, boolean z3) {
            ImageManager.a aVar;
            if (z2 || (aVar = this.c.get()) == null) {
                return;
            }
            aVar.a(this.f424a.f425a, drawable, z3);
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                if (this == obj) {
                    return true;
                }
                b bVar = (b) obj;
                ImageManager.a aVar = this.c.get();
                ImageManager.a aVar2 = bVar.c.get();
                return aVar2 != null && aVar != null && com.google.android.gms.common.internal.b.a(aVar2, aVar) && com.google.android.gms.common.internal.b.a(bVar.f424a, this.f424a);
            }
            return false;
        }

        public int hashCode() {
            return com.google.android.gms.common.internal.b.a(this.f424a);
        }
    }

    private Drawable a(Context context, zzabv zzabvVar, int i) {
        return context.getResources().getDrawable(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Context context, Bitmap bitmap, boolean z) {
        j.a(bitmap);
        a(new BitmapDrawable(context.getResources(), bitmap), z, false, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Context context, zzabv zzabvVar, boolean z) {
        a(this.b != 0 ? a(context, zzabvVar, this.b) : null, z, false, false);
    }

    protected abstract void a(Drawable drawable, boolean z, boolean z2, boolean z3);
}