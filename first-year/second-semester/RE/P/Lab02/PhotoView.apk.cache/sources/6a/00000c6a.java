package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.squareup.picasso.Picasso;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ImageViewAction.java */
/* loaded from: classes.dex */
public class k extends a<ImageView> {
    e m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(Picasso picasso, ImageView imageView, q qVar, int i, int i2, int i3, Drawable drawable, String str, Object obj, e eVar, boolean z) {
        super(picasso, imageView, qVar, i, i2, i3, drawable, str, obj, z);
        this.m = eVar;
    }

    @Override // com.squareup.picasso.a
    public void a(Bitmap bitmap, Picasso.LoadedFrom loadedFrom) {
        if (bitmap == null) {
            throw new AssertionError(String.format("Attempted to complete action with no result!\n%s", this));
        }
        ImageView imageView = (ImageView) this.c.get();
        if (imageView != null) {
            o.a(imageView, this.f764a.c, bitmap, loadedFrom, this.d, this.f764a.k);
            if (this.m != null) {
                this.m.a();
            }
        }
    }

    @Override // com.squareup.picasso.a
    public void a() {
        ImageView imageView = (ImageView) this.c.get();
        if (imageView != null) {
            if (this.g != 0) {
                imageView.setImageResource(this.g);
            } else if (this.h != null) {
                imageView.setImageDrawable(this.h);
            }
            if (this.m != null) {
                this.m.b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.squareup.picasso.a
    public void b() {
        super.b();
        if (this.m != null) {
            this.m = null;
        }
    }
}