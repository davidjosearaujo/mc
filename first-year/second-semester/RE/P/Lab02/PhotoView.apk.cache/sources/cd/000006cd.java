package com.chanven.lib.cptr.header;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import com.chanven.lib.cptr.PtrFrameLayout;
import com.chanven.lib.cptr.d;

/* loaded from: classes.dex */
public class MaterialHeader extends View implements com.chanven.lib.cptr.b {

    /* renamed from: a  reason: collision with root package name */
    private a f33a;
    private float b;
    private PtrFrameLayout c;
    private Animation d;

    public MaterialHeader(Context context) {
        super(context);
        this.b = 1.0f;
        this.d = new Animation() { // from class: com.chanven.lib.cptr.header.MaterialHeader.1
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                MaterialHeader.this.b = 1.0f - f;
                MaterialHeader.this.f33a.setAlpha((int) (255.0f * MaterialHeader.this.b));
                MaterialHeader.this.invalidate();
            }
        };
        a();
    }

    public MaterialHeader(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = 1.0f;
        this.d = new Animation() { // from class: com.chanven.lib.cptr.header.MaterialHeader.1
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                MaterialHeader.this.b = 1.0f - f;
                MaterialHeader.this.f33a.setAlpha((int) (255.0f * MaterialHeader.this.b));
                MaterialHeader.this.invalidate();
            }
        };
        a();
    }

    public MaterialHeader(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = 1.0f;
        this.d = new Animation() { // from class: com.chanven.lib.cptr.header.MaterialHeader.1
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                MaterialHeader.this.b = 1.0f - f;
                MaterialHeader.this.f33a.setAlpha((int) (255.0f * MaterialHeader.this.b));
                MaterialHeader.this.invalidate();
            }
        };
        a();
    }

    public void setPtrFrameLayout(PtrFrameLayout ptrFrameLayout) {
        final d dVar = new d() { // from class: com.chanven.lib.cptr.header.MaterialHeader.2
            @Override // java.lang.Runnable
            public void run() {
                MaterialHeader.this.startAnimation(MaterialHeader.this.d);
            }
        };
        this.d.setDuration(200L);
        this.d.setAnimationListener(new Animation.AnimationListener() { // from class: com.chanven.lib.cptr.header.MaterialHeader.3
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                dVar.b();
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }
        });
        this.c = ptrFrameLayout;
        this.c.setRefreshCompleteHook(dVar);
    }

    private void a() {
        this.f33a = new a(getContext(), this);
        this.f33a.b(-1);
        this.f33a.setCallback(this);
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        if (drawable == this.f33a) {
            invalidate();
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    public void setColorSchemeColors(int[] iArr) {
        this.f33a.a(iArr);
        invalidate();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(this.f33a.getIntrinsicHeight() + getPaddingTop() + getPaddingBottom(), 1073741824));
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int intrinsicHeight = this.f33a.getIntrinsicHeight();
        this.f33a.setBounds(0, 0, intrinsicHeight, intrinsicHeight);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int save = canvas.save();
        Rect bounds = this.f33a.getBounds();
        canvas.translate(getPaddingLeft() + ((getMeasuredWidth() - this.f33a.getIntrinsicWidth()) / 2), getPaddingTop());
        canvas.scale(this.b, this.b, bounds.exactCenterX(), bounds.exactCenterY());
        this.f33a.draw(canvas);
        canvas.restoreToCount(save);
    }

    @Override // com.chanven.lib.cptr.b
    public void a(PtrFrameLayout ptrFrameLayout) {
        this.b = 1.0f;
        this.f33a.stop();
    }

    @Override // com.chanven.lib.cptr.b
    public void b(PtrFrameLayout ptrFrameLayout) {
    }

    @Override // com.chanven.lib.cptr.b
    public void c(PtrFrameLayout ptrFrameLayout) {
        this.f33a.setAlpha(255);
        this.f33a.start();
    }

    @Override // com.chanven.lib.cptr.b
    public void d(PtrFrameLayout ptrFrameLayout) {
        this.f33a.stop();
    }

    @Override // com.chanven.lib.cptr.b
    public void a(PtrFrameLayout ptrFrameLayout, boolean z, byte b, com.chanven.lib.cptr.a.a aVar) {
        float min = Math.min(1.0f, aVar.w());
        if (b == 2) {
            this.f33a.setAlpha((int) (255.0f * min));
            this.f33a.a(true);
            this.f33a.a(0.0f, Math.min(0.8f, min * 0.8f));
            this.f33a.a(Math.min(1.0f, min));
            a aVar2 = this.f33a;
            aVar2.b(((min * 2.0f) + (-0.25f) + (0.4f * min)) * 0.5f);
            invalidate();
        }
    }
}