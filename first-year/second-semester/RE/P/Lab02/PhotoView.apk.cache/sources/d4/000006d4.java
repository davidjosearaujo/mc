package com.chanven.lib.cptr.header;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;
import java.util.ArrayList;

/* compiled from: MaterialProgressDrawable.java */
/* loaded from: classes.dex */
public class a extends Drawable implements Animatable {

    /* renamed from: a  reason: collision with root package name */
    private static final Interpolator f39a = new LinearInterpolator();
    private static final Interpolator b = new C0008a();
    private static final Interpolator c = new d();
    private static final Interpolator d = new AccelerateDecelerateInterpolator();
    private float i;
    private Resources j;
    private View k;
    private Animation l;
    private float m;
    private double n;
    private double o;
    private Animation p;
    private int q;
    private ShapeDrawable r;
    private final int[] e = {-3591113, -13149199, -536002, -13327536};
    private final ArrayList<Animation> f = new ArrayList<>();
    private final Drawable.Callback h = new Drawable.Callback() { // from class: com.chanven.lib.cptr.header.a.1
        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            a.this.invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            a.this.scheduleSelf(runnable, j);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            a.this.unscheduleSelf(runnable);
        }
    };
    private final c g = new c(this.h);

    public a(Context context, View view) {
        this.k = view;
        this.j = context.getResources();
        this.g.a(this.e);
        a(1);
        c();
    }

    private void a(double d2, double d3, double d4, double d5, float f, float f2) {
        c cVar = this.g;
        float f3 = this.j.getDisplayMetrics().density;
        this.n = f3 * d2;
        this.o = f3 * d3;
        cVar.a(((float) d5) * f3);
        cVar.a(f3 * d4);
        cVar.b(0);
        cVar.a(f * f3, f3 * f2);
        cVar.a((int) this.n, (int) this.o);
        a(this.n);
    }

    private void a(double d2) {
        com.chanven.lib.cptr.b.b.a(this.k.getContext());
        int a2 = com.chanven.lib.cptr.b.b.a(1.75f);
        int a3 = com.chanven.lib.cptr.b.b.a(0.0f);
        int a4 = com.chanven.lib.cptr.b.b.a(3.5f);
        this.r = new ShapeDrawable(new b(a4, (int) d2));
        if (Build.VERSION.SDK_INT >= 11) {
            this.k.setLayerType(1, this.r.getPaint());
        }
        this.r.getPaint().setShadowLayer(a4, a3, a2, 503316480);
    }

    public void a(int i) {
        if (i == 0) {
            a(56.0d, 56.0d, 12.5d, 3.0d, 12.0f, 6.0f);
        } else {
            a(40.0d, 40.0d, 8.75d, 2.5d, 10.0f, 5.0f);
        }
    }

    public void a(boolean z) {
        this.g.a(z);
    }

    public void a(float f) {
        this.g.e(f);
    }

    public void a(float f, float f2) {
        this.g.b(f);
        this.g.c(f2);
    }

    public void b(float f) {
        this.g.d(f);
    }

    public void b(int i) {
        this.q = i;
        this.g.a(i);
    }

    public void a(int... iArr) {
        this.g.a(iArr);
        this.g.b(0);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.o;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) this.n;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.r != null) {
            this.r.getPaint().setColor(this.q);
            this.r.draw(canvas);
        }
        Rect bounds = getBounds();
        int save = canvas.save();
        canvas.rotate(this.i, bounds.exactCenterX(), bounds.exactCenterY());
        this.g.a(canvas, bounds);
        canvas.restoreToCount(save);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.g.b();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.g.c(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.g.a(colorFilter);
    }

    void c(float f) {
        this.i = f;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        ArrayList<Animation> arrayList = this.f;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Animation animation = arrayList.get(i);
            if (animation.hasStarted() && !animation.hasEnded()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.l.reset();
        this.g.j();
        if (this.g.g() != this.g.d()) {
            this.k.startAnimation(this.p);
            return;
        }
        this.g.b(0);
        this.g.k();
        this.k.startAnimation(this.l);
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.k.clearAnimation();
        c(0.0f);
        this.g.a(false);
        this.g.b(0);
        this.g.k();
    }

    private void c() {
        final c cVar = this.g;
        Animation animation = new Animation() { // from class: com.chanven.lib.cptr.header.a.2
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                cVar.b(cVar.e() + ((cVar.f() - cVar.e()) * f));
                cVar.d(((((float) (Math.floor(cVar.i() / 0.8f) + 1.0d)) - cVar.i()) * f) + cVar.i());
                cVar.e(1.0f - f);
            }
        };
        animation.setInterpolator(d);
        animation.setDuration(666L);
        animation.setAnimationListener(new Animation.AnimationListener() { // from class: com.chanven.lib.cptr.header.a.3
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation2) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation2) {
                cVar.a();
                cVar.j();
                cVar.a(false);
                a.this.k.startAnimation(a.this.l);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation2) {
            }
        });
        Animation animation2 = new Animation() { // from class: com.chanven.lib.cptr.header.a.4
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                float f2 = cVar.f();
                float e = cVar.e();
                float i = cVar.i();
                cVar.c(((0.8f - ((float) Math.toRadians(cVar.c() / (6.283185307179586d * cVar.h())))) * a.c.getInterpolation(f)) + f2);
                cVar.b((a.b.getInterpolation(f) * 0.8f) + e);
                cVar.d((0.25f * f) + i);
                a.this.c((144.0f * f) + (720.0f * (a.this.m / 5.0f)));
            }
        };
        animation2.setRepeatCount(-1);
        animation2.setRepeatMode(1);
        animation2.setInterpolator(f39a);
        animation2.setDuration(1333L);
        animation2.setAnimationListener(new Animation.AnimationListener() { // from class: com.chanven.lib.cptr.header.a.5
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation3) {
                a.this.m = 0.0f;
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation3) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation3) {
                cVar.j();
                cVar.a();
                cVar.b(cVar.g());
                a.this.m = (a.this.m + 1.0f) % 5.0f;
            }
        });
        this.p = animation;
        this.l = animation2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MaterialProgressDrawable.java */
    /* loaded from: classes.dex */
    public static class c {
        private final Drawable.Callback d;
        private int[] k;
        private int l;
        private float m;
        private float n;
        private float o;
        private boolean p;
        private Path q;
        private float r;
        private double s;
        private int t;
        private int u;
        private int v;
        private int w;

        /* renamed from: a  reason: collision with root package name */
        private final RectF f46a = new RectF();
        private final Paint b = new Paint();
        private final Paint c = new Paint();
        private final Paint e = new Paint();
        private float f = 0.0f;
        private float g = 0.0f;
        private float h = 0.0f;
        private float i = 5.0f;
        private float j = 2.5f;

        public c(Drawable.Callback callback) {
            this.d = callback;
            this.b.setStrokeCap(Paint.Cap.SQUARE);
            this.b.setAntiAlias(true);
            this.b.setStyle(Paint.Style.STROKE);
            this.c.setStyle(Paint.Style.FILL);
            this.c.setAntiAlias(true);
            this.e.setAntiAlias(true);
        }

        public void a(int i) {
            this.w = i;
        }

        public void a(float f, float f2) {
            this.t = (int) f;
            this.u = (int) f2;
        }

        public void a(Canvas canvas, Rect rect) {
            this.e.setColor(this.w);
            this.e.setAlpha(this.v);
            canvas.drawCircle(rect.exactCenterX(), rect.exactCenterY(), rect.width() / 2, this.e);
            RectF rectF = this.f46a;
            rectF.set(rect);
            rectF.inset(this.j, this.j);
            float f = (this.f + this.h) * 360.0f;
            float f2 = ((this.g + this.h) * 360.0f) - f;
            this.b.setColor(this.k[this.l]);
            this.b.setAlpha(this.v);
            canvas.drawArc(rectF, f, f2, false, this.b);
            a(canvas, f, f2, rect);
        }

        private void a(Canvas canvas, float f, float f2, Rect rect) {
            if (this.p) {
                if (this.q == null) {
                    this.q = new Path();
                    this.q.setFillType(Path.FillType.EVEN_ODD);
                } else {
                    this.q.reset();
                }
                float f3 = (((int) this.j) / 2) * this.r;
                float cos = (float) ((this.s * Math.cos(0.0d)) + rect.exactCenterX());
                this.q.moveTo(0.0f, 0.0f);
                this.q.lineTo(this.t * this.r, 0.0f);
                this.q.lineTo((this.t * this.r) / 2.0f, this.u * this.r);
                this.q.offset(cos - f3, (float) ((this.s * Math.sin(0.0d)) + rect.exactCenterY()));
                this.q.close();
                this.c.setColor(this.k[this.l]);
                this.c.setAlpha(this.v);
                canvas.rotate((f + f2) - 5.0f, rect.exactCenterX(), rect.exactCenterY());
                canvas.drawPath(this.q, this.c);
            }
        }

        public void a(int[] iArr) {
            this.k = iArr;
            b(0);
        }

        public void b(int i) {
            this.l = i;
        }

        public void a() {
            this.l = (this.l + 1) % this.k.length;
        }

        public void a(ColorFilter colorFilter) {
            this.b.setColorFilter(colorFilter);
            l();
        }

        public int b() {
            return this.v;
        }

        public void c(int i) {
            this.v = i;
        }

        public float c() {
            return this.i;
        }

        public void a(float f) {
            this.i = f;
            this.b.setStrokeWidth(f);
            l();
        }

        public float d() {
            return this.f;
        }

        public void b(float f) {
            this.f = f;
            l();
        }

        public float e() {
            return this.m;
        }

        public float f() {
            return this.n;
        }

        public float g() {
            return this.g;
        }

        public void c(float f) {
            this.g = f;
            l();
        }

        public void d(float f) {
            this.h = f;
            l();
        }

        public void a(int i, int i2) {
            float ceil;
            float min = Math.min(i, i2);
            if (this.s <= 0.0d || min < 0.0f) {
                ceil = (float) Math.ceil(this.i / 2.0f);
            } else {
                ceil = (float) ((min / 2.0f) - this.s);
            }
            this.j = ceil;
        }

        public double h() {
            return this.s;
        }

        public void a(double d) {
            this.s = d;
        }

        public void a(boolean z) {
            if (this.p != z) {
                this.p = z;
                l();
            }
        }

        public void e(float f) {
            if (f != this.r) {
                this.r = f;
                l();
            }
        }

        public float i() {
            return this.o;
        }

        public void j() {
            this.m = this.f;
            this.n = this.g;
            this.o = this.h;
        }

        public void k() {
            this.m = 0.0f;
            this.n = 0.0f;
            this.o = 0.0f;
            b(0.0f);
            c(0.0f);
            d(0.0f);
        }

        private void l() {
            this.d.invalidateDrawable(null);
        }
    }

    /* compiled from: MaterialProgressDrawable.java */
    /* renamed from: com.chanven.lib.cptr.header.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static class C0008a extends AccelerateDecelerateInterpolator {
        private C0008a() {
        }

        @Override // android.view.animation.AccelerateDecelerateInterpolator, android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            return super.getInterpolation(Math.max(0.0f, (f - 0.5f) * 2.0f));
        }
    }

    /* compiled from: MaterialProgressDrawable.java */
    /* loaded from: classes.dex */
    private static class d extends AccelerateDecelerateInterpolator {
        private d() {
        }

        @Override // android.view.animation.AccelerateDecelerateInterpolator, android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            return super.getInterpolation(Math.min(1.0f, 2.0f * f));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MaterialProgressDrawable.java */
    /* loaded from: classes.dex */
    public class b extends OvalShape {
        private RadialGradient b;
        private int c;
        private Paint d = new Paint();
        private int e;

        public b(int i, int i2) {
            this.c = i;
            this.e = i2;
            this.b = new RadialGradient(this.e / 2, this.e / 2, this.c, new int[]{1023410176, 0}, (float[]) null, Shader.TileMode.CLAMP);
            this.d.setShader(this.b);
        }

        @Override // android.graphics.drawable.shapes.OvalShape, android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        public void draw(Canvas canvas, Paint paint) {
            int width = a.this.getBounds().width();
            int height = a.this.getBounds().height();
            canvas.drawCircle(width / 2, height / 2, (this.e / 2) + this.c, this.d);
            canvas.drawCircle(width / 2, height / 2, this.e / 2, paint);
        }
    }
}