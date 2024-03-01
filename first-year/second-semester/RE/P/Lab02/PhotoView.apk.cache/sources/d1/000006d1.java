package com.chanven.lib.cptr.header;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Transformation;
import com.chanven.lib.cptr.PtrFrameLayout;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class StoreHouseHeader extends View implements com.chanven.lib.cptr.b {

    /* renamed from: a  reason: collision with root package name */
    public ArrayList<b> f37a;
    private int b;
    private float c;
    private int d;
    private float e;
    private int f;
    private float g;
    private int h;
    private int i;
    private int j;
    private int k;
    private float l;
    private float m;
    private float n;
    private int o;
    private int p;
    private int q;
    private Transformation r;
    private boolean s;
    private a t;
    private int u;

    public StoreHouseHeader(Context context) {
        super(context);
        this.f37a = new ArrayList<>();
        this.b = -1;
        this.c = 1.0f;
        this.d = -1;
        this.e = 0.7f;
        this.f = -1;
        this.g = 0.0f;
        this.h = 0;
        this.i = 0;
        this.j = 0;
        this.k = 0;
        this.l = 0.4f;
        this.m = 1.0f;
        this.n = 0.4f;
        this.o = 1000;
        this.p = 1000;
        this.q = 400;
        this.r = new Transformation();
        this.s = false;
        this.t = new a();
        this.u = -1;
        a();
    }

    public StoreHouseHeader(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f37a = new ArrayList<>();
        this.b = -1;
        this.c = 1.0f;
        this.d = -1;
        this.e = 0.7f;
        this.f = -1;
        this.g = 0.0f;
        this.h = 0;
        this.i = 0;
        this.j = 0;
        this.k = 0;
        this.l = 0.4f;
        this.m = 1.0f;
        this.n = 0.4f;
        this.o = 1000;
        this.p = 1000;
        this.q = 400;
        this.r = new Transformation();
        this.s = false;
        this.t = new a();
        this.u = -1;
        a();
    }

    public StoreHouseHeader(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f37a = new ArrayList<>();
        this.b = -1;
        this.c = 1.0f;
        this.d = -1;
        this.e = 0.7f;
        this.f = -1;
        this.g = 0.0f;
        this.h = 0;
        this.i = 0;
        this.j = 0;
        this.k = 0;
        this.l = 0.4f;
        this.m = 1.0f;
        this.n = 0.4f;
        this.o = 1000;
        this.p = 1000;
        this.q = 400;
        this.r = new Transformation();
        this.s = false;
        this.t = new a();
        this.u = -1;
        a();
    }

    private void a() {
        com.chanven.lib.cptr.b.b.a(getContext());
        this.b = com.chanven.lib.cptr.b.b.a(1.0f);
        this.d = com.chanven.lib.cptr.b.b.a(40.0f);
        this.f = com.chanven.lib.cptr.b.b.f30a / 2;
    }

    private void setProgress(float f) {
        this.g = f;
    }

    public int getLoadingAniDuration() {
        return this.o;
    }

    public void setLoadingAniDuration(int i) {
        this.o = i;
        this.p = i;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(getTopOffset() + this.i + getBottomOffset(), 1073741824));
        this.j = (getMeasuredWidth() - this.h) / 2;
        this.k = getTopOffset();
        this.d = getTopOffset();
    }

    private int getTopOffset() {
        return getPaddingTop() + com.chanven.lib.cptr.b.b.a(10.0f);
    }

    private int getBottomOffset() {
        return getPaddingBottom() + com.chanven.lib.cptr.b.b.a(10.0f);
    }

    public float getScale() {
        return this.c;
    }

    public void setScale(float f) {
        this.c = f;
    }

    private void b() {
        this.s = true;
        this.t.a();
        invalidate();
    }

    private void c() {
        this.s = false;
        this.t.b();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f = this.g;
        int save = canvas.save();
        int size = this.f37a.size();
        for (int i = 0; i < size; i++) {
            canvas.save();
            b bVar = this.f37a.get(i);
            float f2 = bVar.f47a.x + this.j;
            float f3 = bVar.f47a.y + this.k;
            if (this.s) {
                bVar.getTransformation(getDrawingTime(), this.r);
                canvas.translate(f2, f3);
            } else if (f == 0.0f) {
                bVar.a(this.f);
            } else {
                float f4 = ((1.0f - this.e) * i) / size;
                float f5 = (1.0f - this.e) - f4;
                if (f == 1.0f || f >= 1.0f - f5) {
                    canvas.translate(f2, f3);
                    bVar.a(this.l);
                } else {
                    float min = f <= f4 ? 0.0f : Math.min(1.0f, (f - f4) / this.e);
                    Matrix matrix = new Matrix();
                    matrix.postRotate(360.0f * min);
                    matrix.postScale(min, min);
                    matrix.postTranslate(f2 + (bVar.b * (1.0f - min)), f3 + ((-this.d) * (1.0f - min)));
                    bVar.a(min * this.l);
                    canvas.concat(matrix);
                }
            }
            bVar.a(canvas);
            canvas.restore();
        }
        if (this.s) {
            invalidate();
        }
        canvas.restoreToCount(save);
    }

    @Override // com.chanven.lib.cptr.b
    public void a(PtrFrameLayout ptrFrameLayout) {
        c();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.f37a.size()) {
                this.f37a.get(i2).a(this.f);
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    @Override // com.chanven.lib.cptr.b
    public void b(PtrFrameLayout ptrFrameLayout) {
    }

    @Override // com.chanven.lib.cptr.b
    public void c(PtrFrameLayout ptrFrameLayout) {
        b();
    }

    @Override // com.chanven.lib.cptr.b
    public void d(PtrFrameLayout ptrFrameLayout) {
        c();
    }

    @Override // com.chanven.lib.cptr.b
    public void a(PtrFrameLayout ptrFrameLayout, boolean z, byte b, com.chanven.lib.cptr.a.a aVar) {
        setProgress(Math.min(1.0f, aVar.w()));
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        private int b;
        private int c;
        private int d;
        private int e;
        private boolean f;

        private a() {
            this.b = 0;
            this.c = 0;
            this.d = 0;
            this.e = 0;
            this.f = true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            this.f = true;
            this.b = 0;
            this.e = StoreHouseHeader.this.o / StoreHouseHeader.this.f37a.size();
            this.c = StoreHouseHeader.this.p / this.e;
            this.d = (StoreHouseHeader.this.f37a.size() / this.c) + 1;
            run();
        }

        @Override // java.lang.Runnable
        public void run() {
            int i = this.b % this.c;
            for (int i2 = 0; i2 < this.d; i2++) {
                int i3 = (this.c * i2) + i;
                if (i3 <= this.b) {
                    b bVar = StoreHouseHeader.this.f37a.get(i3 % StoreHouseHeader.this.f37a.size());
                    bVar.setFillAfter(false);
                    bVar.setFillEnabled(true);
                    bVar.setFillBefore(false);
                    bVar.setDuration(StoreHouseHeader.this.q);
                    bVar.a(StoreHouseHeader.this.m, StoreHouseHeader.this.n);
                }
            }
            this.b++;
            if (this.f) {
                StoreHouseHeader.this.postDelayed(this, this.e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b() {
            this.f = false;
            StoreHouseHeader.this.removeCallbacks(this);
        }
    }
}