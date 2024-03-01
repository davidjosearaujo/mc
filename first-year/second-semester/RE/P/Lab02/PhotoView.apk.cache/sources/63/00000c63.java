package com.squareup.picasso;

import android.view.ViewTreeObserver;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DeferredRequestCreator.java */
/* loaded from: classes.dex */
public class h implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a  reason: collision with root package name */
    final r f775a;
    final WeakReference<ImageView> b;
    e c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(r rVar, ImageView imageView, e eVar) {
        this.f775a = rVar;
        this.b = new WeakReference<>(imageView);
        this.c = eVar;
        imageView.getViewTreeObserver().addOnPreDrawListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        ImageView imageView = this.b.get();
        if (imageView != null) {
            ViewTreeObserver viewTreeObserver = imageView.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                int width = imageView.getWidth();
                int height = imageView.getHeight();
                if (width > 0 && height > 0) {
                    viewTreeObserver.removeOnPreDrawListener(this);
                    this.f775a.a().a(width, height).a(imageView, this.c);
                }
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.c = null;
        ImageView imageView = this.b.get();
        if (imageView != null) {
            ViewTreeObserver viewTreeObserver = imageView.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this);
            }
        }
    }
}