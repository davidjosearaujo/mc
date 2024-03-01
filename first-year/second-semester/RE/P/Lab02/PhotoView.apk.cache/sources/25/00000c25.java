package com.ogaclejapan.smarttablayout;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.os.Build;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;

/* loaded from: classes.dex */
public class SmartTabLayout extends HorizontalScrollView {

    /* renamed from: a  reason: collision with root package name */
    protected final com.ogaclejapan.smarttablayout.b f737a;
    private int b;
    private int c;
    private boolean d;
    private ColorStateList e;
    private float f;
    private int g;
    private int h;
    private ViewPager i;
    private ViewPager.OnPageChangeListener j;
    private c k;
    private g l;
    private a m;
    private d n;
    private boolean o;

    /* loaded from: classes.dex */
    public interface c {
        void a(int i, int i2);
    }

    /* loaded from: classes.dex */
    public interface d {
        void a(int i);
    }

    /* loaded from: classes.dex */
    public interface f {
        int a(int i);

        int b(int i);
    }

    /* loaded from: classes.dex */
    public interface g {
        View a(ViewGroup viewGroup, int i, PagerAdapter pagerAdapter);
    }

    public SmartTabLayout(Context context) {
        this(context, null);
    }

    public SmartTabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SmartTabLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setHorizontalScrollBarEnabled(false);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        float f2 = displayMetrics.density;
        float applyDimension = TypedValue.applyDimension(2, 12.0f, displayMetrics);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.stl_SmartTabLayout, i, 0);
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.stl_SmartTabLayout_stl_defaultTabBackground, -1);
        boolean z = obtainStyledAttributes.getBoolean(R.styleable.stl_SmartTabLayout_stl_defaultTabTextAllCaps, true);
        ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(R.styleable.stl_SmartTabLayout_stl_defaultTabTextColor);
        float dimension = obtainStyledAttributes.getDimension(R.styleable.stl_SmartTabLayout_stl_defaultTabTextSize, applyDimension);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.stl_SmartTabLayout_stl_defaultTabTextHorizontalPadding, (int) (16.0f * f2));
        int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(R.styleable.stl_SmartTabLayout_stl_defaultTabTextMinWidth, (int) (0.0f * f2));
        int resourceId2 = obtainStyledAttributes.getResourceId(R.styleable.stl_SmartTabLayout_stl_customTabTextLayoutId, -1);
        int resourceId3 = obtainStyledAttributes.getResourceId(R.styleable.stl_SmartTabLayout_stl_customTabTextViewId, -1);
        boolean z2 = obtainStyledAttributes.getBoolean(R.styleable.stl_SmartTabLayout_stl_distributeEvenly, false);
        boolean z3 = obtainStyledAttributes.getBoolean(R.styleable.stl_SmartTabLayout_stl_clickable, true);
        int layoutDimension = obtainStyledAttributes.getLayoutDimension(R.styleable.stl_SmartTabLayout_stl_titleOffset, (int) (24.0f * f2));
        obtainStyledAttributes.recycle();
        this.b = layoutDimension;
        this.c = resourceId;
        this.d = z;
        this.e = colorStateList == null ? ColorStateList.valueOf(-67108864) : colorStateList;
        this.f = dimension;
        this.g = dimensionPixelSize;
        this.h = dimensionPixelSize2;
        this.m = z3 ? new a() : null;
        this.o = z2;
        if (resourceId2 != -1) {
            a(resourceId2, resourceId3);
        }
        this.f737a = new com.ogaclejapan.smarttablayout.b(context, attributeSet);
        if (z2 && this.f737a.a()) {
            throw new UnsupportedOperationException("'distributeEvenly' and 'indicatorAlwaysInCenter' both use does not support");
        }
        setFillViewport(!this.f737a.a());
        addView(this.f737a, -1, -1);
    }

    @Override // android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        if (this.k != null) {
            this.k.a(i, i3);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.f737a.a() && this.f737a.getChildCount() > 0) {
            View childAt = this.f737a.getChildAt(0);
            View childAt2 = this.f737a.getChildAt(this.f737a.getChildCount() - 1);
            int a2 = ((i - com.ogaclejapan.smarttablayout.c.a(childAt)) / 2) - com.ogaclejapan.smarttablayout.c.i(childAt);
            int a3 = ((i - com.ogaclejapan.smarttablayout.c.a(childAt2)) / 2) - com.ogaclejapan.smarttablayout.c.j(childAt2);
            this.f737a.setMinimumWidth(this.f737a.getMeasuredWidth());
            ViewCompat.setPaddingRelative(this, a2, getPaddingTop(), a3, getPaddingBottom());
            setClipToPadding(false);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z && this.i != null) {
            a(this.i.getCurrentItem(), 0.0f);
        }
    }

    public void setIndicationInterpolator(com.ogaclejapan.smarttablayout.a aVar) {
        this.f737a.a(aVar);
    }

    public void setCustomTabColorizer(f fVar) {
        this.f737a.a(fVar);
    }

    public void setDefaultTabTextColor(int i) {
        this.e = ColorStateList.valueOf(i);
    }

    public void setDefaultTabTextColor(ColorStateList colorStateList) {
        this.e = colorStateList;
    }

    public void setDistributeEvenly(boolean z) {
        this.o = z;
    }

    public void setSelectedIndicatorColors(int... iArr) {
        this.f737a.a(iArr);
    }

    public void setDividerColors(int... iArr) {
        this.f737a.b(iArr);
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.j = onPageChangeListener;
    }

    public void setOnScrollChangeListener(c cVar) {
        this.k = cVar;
    }

    public void setOnTabClickListener(d dVar) {
        this.n = dVar;
    }

    public void a(int i, int i2) {
        this.l = new e(getContext(), i, i2);
    }

    public void setCustomTabView(g gVar) {
        this.l = gVar;
    }

    public void setViewPager(ViewPager viewPager) {
        this.f737a.removeAllViews();
        this.i = viewPager;
        if (viewPager != null && viewPager.getAdapter() != null) {
            viewPager.addOnPageChangeListener(new b());
            a();
        }
    }

    protected TextView a(CharSequence charSequence) {
        TextView textView = new TextView(getContext());
        textView.setGravity(17);
        textView.setText(charSequence);
        textView.setTextColor(this.e);
        textView.setTextSize(0, this.f);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        if (this.c != -1) {
            textView.setBackgroundResource(this.c);
        } else if (Build.VERSION.SDK_INT >= 11) {
            TypedValue typedValue = new TypedValue();
            getContext().getTheme().resolveAttribute(16843534, typedValue, true);
            textView.setBackgroundResource(typedValue.resourceId);
        }
        if (Build.VERSION.SDK_INT >= 14) {
            textView.setAllCaps(this.d);
        }
        textView.setPadding(this.g, 0, this.g, 0);
        if (this.h > 0) {
            textView.setMinWidth(this.h);
        }
        return textView;
    }

    private void a() {
        TextView a2;
        PagerAdapter adapter = this.i.getAdapter();
        for (int i = 0; i < adapter.getCount(); i++) {
            if (this.l == null) {
                a2 = a(adapter.getPageTitle(i));
            } else {
                a2 = this.l.a(this.f737a, i, adapter);
            }
            if (a2 == null) {
                throw new IllegalStateException("tabView is null.");
            }
            if (this.o) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) a2.getLayoutParams();
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
            }
            if (this.m != null) {
                a2.setOnClickListener(this.m);
            }
            this.f737a.addView(a2);
            if (i == this.i.getCurrentItem()) {
                a2.setSelected(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, float f2) {
        int i2;
        int i3;
        int d2;
        int childCount = this.f737a.getChildCount();
        if (childCount != 0 && i >= 0 && i < childCount) {
            boolean l = com.ogaclejapan.smarttablayout.c.l(this);
            View childAt = this.f737a.getChildAt(i);
            int b2 = (int) ((com.ogaclejapan.smarttablayout.c.b(childAt) + com.ogaclejapan.smarttablayout.c.k(childAt)) * f2);
            if (this.f737a.a()) {
                if (0.0f < f2 && f2 < 1.0f) {
                    View childAt2 = this.f737a.getChildAt(i + 1);
                    b2 = Math.round((com.ogaclejapan.smarttablayout.c.i(childAt2) + (com.ogaclejapan.smarttablayout.c.b(childAt2) / 2) + (com.ogaclejapan.smarttablayout.c.b(childAt) / 2) + com.ogaclejapan.smarttablayout.c.j(childAt)) * f2);
                }
                View childAt3 = this.f737a.getChildAt(0);
                if (l) {
                    d2 = ((com.ogaclejapan.smarttablayout.c.e(childAt) - com.ogaclejapan.smarttablayout.c.j(childAt)) - b2) - (((com.ogaclejapan.smarttablayout.c.j(childAt3) + com.ogaclejapan.smarttablayout.c.b(childAt3)) - (com.ogaclejapan.smarttablayout.c.b(childAt) + com.ogaclejapan.smarttablayout.c.j(childAt))) / 2);
                } else {
                    d2 = (b2 + (com.ogaclejapan.smarttablayout.c.d(childAt) - com.ogaclejapan.smarttablayout.c.i(childAt))) - (((com.ogaclejapan.smarttablayout.c.i(childAt3) + com.ogaclejapan.smarttablayout.c.b(childAt3)) - (com.ogaclejapan.smarttablayout.c.b(childAt) + com.ogaclejapan.smarttablayout.c.i(childAt))) / 2);
                }
                scrollTo(d2, 0);
                return;
            }
            if (this.b == -1) {
                if (0.0f < f2 && f2 < 1.0f) {
                    View childAt4 = this.f737a.getChildAt(i + 1);
                    b2 = Math.round((com.ogaclejapan.smarttablayout.c.i(childAt4) + (com.ogaclejapan.smarttablayout.c.b(childAt4) / 2) + (com.ogaclejapan.smarttablayout.c.b(childAt) / 2) + com.ogaclejapan.smarttablayout.c.j(childAt)) * f2);
                }
                if (l) {
                    i2 = (((-com.ogaclejapan.smarttablayout.c.c(childAt)) / 2) + (getWidth() / 2)) - com.ogaclejapan.smarttablayout.c.f(this);
                } else {
                    i2 = ((com.ogaclejapan.smarttablayout.c.c(childAt) / 2) - (getWidth() / 2)) + com.ogaclejapan.smarttablayout.c.f(this);
                }
            } else if (l) {
                i2 = (i > 0 || f2 > 0.0f) ? this.b : 0;
            } else {
                i2 = (i > 0 || f2 > 0.0f) ? -this.b : 0;
            }
            int d3 = com.ogaclejapan.smarttablayout.c.d(childAt);
            int i4 = com.ogaclejapan.smarttablayout.c.i(childAt);
            if (l) {
                i3 = (((d3 + i4) - b2) - getWidth()) + com.ogaclejapan.smarttablayout.c.h(this) + i2;
            } else {
                i3 = b2 + (d3 - i4) + i2;
            }
            scrollTo(i3, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class e implements g {

        /* renamed from: a  reason: collision with root package name */
        private final LayoutInflater f740a;
        private final int b;
        private final int c;

        private e(Context context, int i, int i2) {
            this.f740a = LayoutInflater.from(context);
            this.b = i;
            this.c = i2;
        }

        @Override // com.ogaclejapan.smarttablayout.SmartTabLayout.g
        public View a(ViewGroup viewGroup, int i, PagerAdapter pagerAdapter) {
            TextView textView = null;
            View inflate = this.b != -1 ? this.f740a.inflate(this.b, viewGroup, false) : null;
            if (this.c != -1 && inflate != 0) {
                textView = (TextView) inflate.findViewById(this.c);
            }
            if (textView == null && TextView.class.isInstance(inflate)) {
                textView = inflate;
            }
            if (textView != null) {
                textView.setText(pagerAdapter.getPageTitle(i));
            }
            return inflate;
        }
    }

    /* loaded from: classes.dex */
    private class b implements ViewPager.OnPageChangeListener {
        private int b;

        private b() {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
            int childCount = SmartTabLayout.this.f737a.getChildCount();
            if (childCount != 0 && i >= 0 && i < childCount) {
                SmartTabLayout.this.f737a.a(i, f);
                SmartTabLayout.this.a(i, f);
                if (SmartTabLayout.this.j != null) {
                    SmartTabLayout.this.j.onPageScrolled(i, f, i2);
                }
            }
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
            this.b = i;
            if (SmartTabLayout.this.j != null) {
                SmartTabLayout.this.j.onPageScrollStateChanged(i);
            }
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            if (this.b == 0) {
                SmartTabLayout.this.f737a.a(i, 0.0f);
                SmartTabLayout.this.a(i, 0.0f);
            }
            int childCount = SmartTabLayout.this.f737a.getChildCount();
            int i2 = 0;
            while (i2 < childCount) {
                SmartTabLayout.this.f737a.getChildAt(i2).setSelected(i == i2);
                i2++;
            }
            if (SmartTabLayout.this.j != null) {
                SmartTabLayout.this.j.onPageSelected(i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        private a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            for (int i = 0; i < SmartTabLayout.this.f737a.getChildCount(); i++) {
                if (view == SmartTabLayout.this.f737a.getChildAt(i)) {
                    if (SmartTabLayout.this.n != null) {
                        SmartTabLayout.this.n.a(i);
                    }
                    SmartTabLayout.this.i.setCurrentItem(i);
                    return;
                }
            }
        }
    }
}