package com.ogaclejapan.smarttablayout;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.LinearLayout;
import com.ogaclejapan.smarttablayout.SmartTabLayout;

/* compiled from: SmartTabStrip.java */
/* loaded from: classes.dex */
class b extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private final int f742a;
    private final int b;
    private final int c;
    private final int d;
    private final Paint e;
    private final RectF f;
    private final boolean g;
    private final boolean h;
    private final boolean i;
    private final int j;
    private final int k;
    private final int l;
    private final float m;
    private final Paint n;
    private final int o;
    private final Paint p;
    private final float q;
    private final a r;
    private final boolean s;
    private int t;
    private int u;
    private float v;
    private com.ogaclejapan.smarttablayout.a w;
    private SmartTabLayout.f x;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context, AttributeSet attributeSet) {
        super(context);
        this.f = new RectF();
        setWillNotDraw(false);
        float f = getResources().getDisplayMetrics().density;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(16842800, typedValue, true);
        int i = typedValue.data;
        int a2 = a(i, (byte) 38);
        int a3 = a(i, (byte) 38);
        int a4 = a(i, (byte) 32);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.stl_SmartTabLayout);
        boolean z = obtainStyledAttributes.getBoolean(R.styleable.stl_SmartTabLayout_stl_indicatorAlwaysInCenter, false);
        boolean z2 = obtainStyledAttributes.getBoolean(R.styleable.stl_SmartTabLayout_stl_indicatorWithoutPadding, false);
        boolean z3 = obtainStyledAttributes.getBoolean(R.styleable.stl_SmartTabLayout_stl_indicatorInFront, false);
        int i2 = obtainStyledAttributes.getInt(R.styleable.stl_SmartTabLayout_stl_indicatorInterpolation, 0);
        int i3 = obtainStyledAttributes.getInt(R.styleable.stl_SmartTabLayout_stl_indicatorGravity, 0);
        int color = obtainStyledAttributes.getColor(R.styleable.stl_SmartTabLayout_stl_indicatorColor, -13388315);
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.stl_SmartTabLayout_stl_indicatorColors, -1);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.stl_SmartTabLayout_stl_indicatorThickness, (int) (8.0f * f));
        int layoutDimension = obtainStyledAttributes.getLayoutDimension(R.styleable.stl_SmartTabLayout_stl_indicatorWidth, -1);
        float dimension = obtainStyledAttributes.getDimension(R.styleable.stl_SmartTabLayout_stl_indicatorCornerRadius, 0.0f * f);
        int color2 = obtainStyledAttributes.getColor(R.styleable.stl_SmartTabLayout_stl_overlineColor, a2);
        int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(R.styleable.stl_SmartTabLayout_stl_overlineThickness, (int) (0.0f * f));
        int color3 = obtainStyledAttributes.getColor(R.styleable.stl_SmartTabLayout_stl_underlineColor, a3);
        int dimensionPixelSize3 = obtainStyledAttributes.getDimensionPixelSize(R.styleable.stl_SmartTabLayout_stl_underlineThickness, (int) (2.0f * f));
        int color4 = obtainStyledAttributes.getColor(R.styleable.stl_SmartTabLayout_stl_dividerColor, a4);
        int resourceId2 = obtainStyledAttributes.getResourceId(R.styleable.stl_SmartTabLayout_stl_dividerColors, -1);
        int dimensionPixelSize4 = obtainStyledAttributes.getDimensionPixelSize(R.styleable.stl_SmartTabLayout_stl_dividerThickness, (int) (f * 1.0f));
        boolean z4 = obtainStyledAttributes.getBoolean(R.styleable.stl_SmartTabLayout_stl_drawDecorationAfterTab, false);
        obtainStyledAttributes.recycle();
        int[] intArray = resourceId == -1 ? new int[]{color} : getResources().getIntArray(resourceId);
        int[] intArray2 = resourceId2 == -1 ? new int[]{color4} : getResources().getIntArray(resourceId2);
        this.r = new a();
        this.r.a(intArray);
        this.r.b(intArray2);
        this.f742a = dimensionPixelSize2;
        this.b = color2;
        this.c = dimensionPixelSize3;
        this.d = color3;
        this.e = new Paint(1);
        this.h = z;
        this.g = z2;
        this.i = z3;
        this.j = dimensionPixelSize;
        this.k = layoutDimension;
        this.n = new Paint(1);
        this.m = dimension;
        this.l = i3;
        this.q = 0.5f;
        this.p = new Paint(1);
        this.p.setStrokeWidth(dimensionPixelSize4);
        this.o = dimensionPixelSize4;
        this.s = z4;
        this.w = com.ogaclejapan.smarttablayout.a.a(i2);
    }

    private static int a(int i, byte b) {
        return Color.argb((int) b, Color.red(i), Color.green(i), Color.blue(i));
    }

    private static int a(int i, int i2, float f) {
        float f2 = 1.0f - f;
        return Color.rgb((int) ((Color.red(i) * f) + (Color.red(i2) * f2)), (int) ((Color.green(i) * f) + (Color.green(i2) * f2)), (int) ((f2 * Color.blue(i2)) + (Color.blue(i) * f)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(com.ogaclejapan.smarttablayout.a aVar) {
        this.w = aVar;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(SmartTabLayout.f fVar) {
        this.x = fVar;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int... iArr) {
        this.x = null;
        this.r.a(iArr);
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int... iArr) {
        this.x = null;
        this.r.b(iArr);
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, float f) {
        this.u = i;
        this.v = f;
        if (f == 0.0f && this.t != this.u) {
            this.t = this.u;
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        return this.h;
    }

    SmartTabLayout.f b() {
        return this.x != null ? this.x : this.r;
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onDraw(Canvas canvas) {
        if (!this.s) {
            a(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.s) {
            a(canvas);
        }
    }

    private void a(Canvas canvas) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int height = getHeight();
        int width = getWidth();
        int childCount = getChildCount();
        SmartTabLayout.f b = b();
        boolean l = c.l(this);
        if (this.i) {
            b(canvas, 0, width);
            a(canvas, 0, width, height);
        }
        if (childCount > 0) {
            View childAt = getChildAt(this.u);
            int a2 = c.a(childAt, this.g);
            int b2 = c.b(childAt, this.g);
            if (!l) {
                b2 = a2;
                a2 = b2;
            }
            int a3 = b.a(this.u);
            float f = this.j;
            if (this.v <= 0.0f || this.u >= getChildCount() - 1) {
                i = a3;
                i2 = a2;
                i3 = b2;
            } else {
                int a4 = b.a(this.u + 1);
                if (a3 != a4) {
                    a3 = a(a4, a3, this.v);
                }
                float a5 = this.w.a(this.v);
                float b3 = this.w.b(this.v);
                float c = this.w.c(this.v);
                View childAt2 = getChildAt(this.u + 1);
                int a6 = c.a(childAt2, this.g);
                int b4 = c.b(childAt2, this.g);
                if (l) {
                    i4 = (int) ((b2 * (1.0f - b3)) + (b4 * b3));
                    i5 = (int) ((a2 * (1.0f - a5)) + (a6 * a5));
                } else {
                    i4 = (int) ((b2 * (1.0f - a5)) + (a6 * a5));
                    i5 = (int) ((a2 * (1.0f - b3)) + (b4 * b3));
                }
                f *= c;
                i = a3;
                i2 = i5;
                i3 = i4;
            }
            a(canvas, i3, i2, height, f, i);
        }
        if (!this.i) {
            b(canvas, 0, width);
            a(canvas, 0, getWidth(), height);
        }
        a(canvas, height, childCount);
    }

    private void a(Canvas canvas, int i, int i2) {
        if (this.o > 0) {
            int min = (int) (Math.min(Math.max(0.0f, this.q), 1.0f) * i);
            SmartTabLayout.f b = b();
            int i3 = (i - min) / 2;
            int i4 = i3 + min;
            boolean l = c.l(this);
            int i5 = 0;
            while (true) {
                int i6 = i5;
                if (i6 < i2 - 1) {
                    View childAt = getChildAt(i6);
                    int e = c.e(childAt);
                    int j = c.j(childAt);
                    int i7 = l ? e - j : j + e;
                    this.p.setColor(b.b(i6));
                    canvas.drawLine(i7, i3, i7, i4, this.p);
                    i5 = i6 + 1;
                } else {
                    return;
                }
            }
        }
    }

    private void a(Canvas canvas, int i, int i2, int i3, float f, int i4) {
        float f2;
        float f3;
        if (this.j > 0 && this.k != 0) {
            switch (this.l) {
                case 1:
                    float f4 = this.j / 2.0f;
                    f2 = f4 - (f / 2.0f);
                    f3 = f4 + (f / 2.0f);
                    break;
                case 2:
                    float f5 = i3 / 2.0f;
                    f2 = f5 - (f / 2.0f);
                    f3 = f5 + (f / 2.0f);
                    break;
                default:
                    float f6 = i3 - (this.j / 2.0f);
                    f2 = f6 - (f / 2.0f);
                    f3 = f6 + (f / 2.0f);
                    break;
            }
            this.n.setColor(i4);
            if (this.k == -1) {
                this.f.set(i, f2, i2, f3);
            } else {
                float abs = (Math.abs(i - i2) - this.k) / 2.0f;
                this.f.set(i + abs, f2, i2 - abs, f3);
            }
            if (this.m > 0.0f) {
                canvas.drawRoundRect(this.f, this.m, this.m, this.n);
            } else {
                canvas.drawRect(this.f, this.n);
            }
        }
    }

    private void b(Canvas canvas, int i, int i2) {
        if (this.f742a > 0) {
            this.e.setColor(this.b);
            canvas.drawRect(i, 0.0f, i2, this.f742a, this.e);
        }
    }

    private void a(Canvas canvas, int i, int i2, int i3) {
        if (this.c > 0) {
            this.e.setColor(this.d);
            canvas.drawRect(i, i3 - this.c, i2, i3, this.e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SmartTabStrip.java */
    /* loaded from: classes.dex */
    public static class a implements SmartTabLayout.f {

        /* renamed from: a  reason: collision with root package name */
        private int[] f743a;
        private int[] b;

        private a() {
        }

        @Override // com.ogaclejapan.smarttablayout.SmartTabLayout.f
        public final int a(int i) {
            return this.f743a[i % this.f743a.length];
        }

        @Override // com.ogaclejapan.smarttablayout.SmartTabLayout.f
        public final int b(int i) {
            return this.b[i % this.b.length];
        }

        void a(int... iArr) {
            this.f743a = iArr;
        }

        void b(int... iArr) {
            this.b = iArr;
        }
    }
}