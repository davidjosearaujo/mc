package com.chanven.lib.cptr;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.GridView;
import android.widget.Scroller;
import android.widget.TextView;
import com.chanven.lib.cptr.loadmore.c;
import com.chanven.lib.cptr.loadmore.e;
import com.chanven.lib.cptr.loadmore.f;
import com.chanven.lib.cptr.loadmore.g;
import com.chanven.lib.cptr.loadmore.h;

/* loaded from: classes.dex */
public class PtrFrameLayout extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f23a = false;
    private static int e = 1;
    private static byte f = 1;
    private static byte g = 2;
    private static byte h = 4;
    private static byte i = 8;
    private static byte j = 3;
    private MotionEvent A;
    private d B;
    private int C;
    private long D;
    private com.chanven.lib.cptr.a.a E;
    private boolean F;
    private boolean G;
    private boolean H;
    private boolean I;
    private boolean J;
    private com.chanven.lib.cptr.loadmore.c K;
    private c.b L;
    private e M;
    private View N;
    private g O;
    private View.OnClickListener P;
    protected final String b;
    protected View c;
    f d;
    private int k;
    private int l;
    private int m;
    private int n;
    private boolean o;
    private boolean p;
    private View q;
    private c r;
    private com.chanven.lib.cptr.a s;
    private b t;
    private int u;
    private int v;
    private byte w;
    private boolean x;
    private int y;
    private boolean z;

    public PtrFrameLayout(Context context) {
        this(context, null);
    }

    public PtrFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PtrFrameLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        StringBuilder append = new StringBuilder().append("ptr-frame-");
        int i3 = e + 1;
        e = i3;
        this.b = append.append(i3).toString();
        this.k = 0;
        this.l = 0;
        this.m = 200;
        this.n = 1000;
        this.o = true;
        this.p = false;
        this.r = c.b();
        this.w = (byte) 1;
        this.x = false;
        this.y = 0;
        this.z = false;
        this.C = 500;
        this.D = 0L;
        this.F = false;
        this.G = false;
        this.H = true;
        this.I = false;
        this.J = false;
        this.O = new g() { // from class: com.chanven.lib.cptr.PtrFrameLayout.2
            @Override // com.chanven.lib.cptr.loadmore.g
            public void a() {
                if (PtrFrameLayout.this.H && PtrFrameLayout.this.I && !PtrFrameLayout.this.h()) {
                    PtrFrameLayout.this.g();
                }
            }
        };
        this.P = new View.OnClickListener() { // from class: com.chanven.lib.cptr.PtrFrameLayout.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (PtrFrameLayout.this.I && !PtrFrameLayout.this.h()) {
                    PtrFrameLayout.this.g();
                }
            }
        };
        this.E = new com.chanven.lib.cptr.a.a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.PtrFrameLayout, 0, 0);
        if (obtainStyledAttributes != null) {
            this.k = obtainStyledAttributes.getResourceId(R.styleable.PtrFrameLayout_ptr_header, this.k);
            this.l = obtainStyledAttributes.getResourceId(R.styleable.PtrFrameLayout_ptr_content, this.l);
            this.E.a(obtainStyledAttributes.getFloat(R.styleable.PtrFrameLayout_ptr_resistance, this.E.b()));
            this.m = obtainStyledAttributes.getInt(R.styleable.PtrFrameLayout_ptr_duration_to_close, this.m);
            this.n = obtainStyledAttributes.getInt(R.styleable.PtrFrameLayout_ptr_duration_to_close_header, this.n);
            this.E.b(obtainStyledAttributes.getFloat(R.styleable.PtrFrameLayout_ptr_ratio_of_header_height_to_refresh, this.E.f()));
            this.o = obtainStyledAttributes.getBoolean(R.styleable.PtrFrameLayout_ptr_keep_header_when_refresh, this.o);
            this.p = obtainStyledAttributes.getBoolean(R.styleable.PtrFrameLayout_ptr_pull_to_fresh, this.p);
            obtainStyledAttributes.recycle();
        }
        this.t = new b();
        this.u = ViewConfiguration.get(getContext()).getScaledTouchSlop() * 2;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        int childCount = getChildCount();
        if (childCount > 2) {
            throw new IllegalStateException("PtrFrameLayout only can host 2 elements");
        }
        if (childCount == 2) {
            if (this.k != 0 && this.q == null) {
                this.q = findViewById(this.k);
            }
            if (this.l != 0 && this.c == null) {
                this.c = findViewById(this.l);
            }
            if (this.c == null || this.q == null) {
                View childAt = getChildAt(0);
                View childAt2 = getChildAt(1);
                if (childAt instanceof com.chanven.lib.cptr.b) {
                    this.q = childAt;
                    this.c = childAt2;
                } else if (childAt2 instanceof com.chanven.lib.cptr.b) {
                    this.q = childAt2;
                    this.c = childAt;
                } else if (this.c == null && this.q == null) {
                    this.q = childAt;
                    this.c = childAt2;
                } else if (this.q == null) {
                    if (this.c != childAt) {
                        childAt2 = childAt;
                    }
                    this.q = childAt2;
                } else {
                    if (this.q != childAt) {
                        childAt2 = childAt;
                    }
                    this.c = childAt2;
                }
            }
        } else if (childCount == 1) {
            this.c = getChildAt(0);
        } else {
            TextView textView = new TextView(getContext());
            textView.setClickable(true);
            textView.setTextColor(-39424);
            textView.setGravity(17);
            textView.setTextSize(20.0f);
            textView.setText("The content view in PtrFrameLayout is empty. Do you forget to specify its id in xml layout file?");
            this.c = textView;
            addView(this.c);
        }
        if (this.q != null) {
            this.q.bringToFront();
        }
        super.onFinishInflate();
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (f23a) {
            com.chanven.lib.cptr.b.a.b(this.b, "onMeasure frame: width: %s, height: %s, padding: %s %s %s %s", Integer.valueOf(getMeasuredHeight()), Integer.valueOf(getMeasuredWidth()), Integer.valueOf(getPaddingLeft()), Integer.valueOf(getPaddingRight()), Integer.valueOf(getPaddingTop()), Integer.valueOf(getPaddingBottom()));
        }
        if (this.q != null) {
            measureChildWithMargins(this.q, i2, 0, i3, 0);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.q.getLayoutParams();
            this.v = marginLayoutParams.bottomMargin + this.q.getMeasuredHeight() + marginLayoutParams.topMargin;
            this.E.c(this.v);
        }
        if (this.c != null) {
            a(this.c, i2, i3);
            if (f23a) {
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.c.getLayoutParams();
                com.chanven.lib.cptr.b.a.b(this.b, "onMeasure content, width: %s, height: %s, margin: %s %s %s %s", Integer.valueOf(getMeasuredWidth()), Integer.valueOf(getMeasuredHeight()), Integer.valueOf(marginLayoutParams2.leftMargin), Integer.valueOf(marginLayoutParams2.topMargin), Integer.valueOf(marginLayoutParams2.rightMargin), Integer.valueOf(marginLayoutParams2.bottomMargin));
                com.chanven.lib.cptr.b.a.b(this.b, "onMeasure, currentPos: %s, lastPos: %s, top: %s", Integer.valueOf(this.E.k()), Integer.valueOf(this.E.j()), Integer.valueOf(this.c.getTop()));
            }
        }
    }

    private void a(View view, int i2, int i3) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(getChildMeasureSpec(i2, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin, marginLayoutParams.width), getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin, marginLayoutParams.height));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        i();
    }

    private void i() {
        int k = this.E.k();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        if (this.q != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.q.getLayoutParams();
            int i2 = marginLayoutParams.leftMargin + paddingLeft;
            int i3 = ((marginLayoutParams.topMargin + paddingTop) + k) - this.v;
            int measuredWidth = this.q.getMeasuredWidth() + i2;
            int measuredHeight = this.q.getMeasuredHeight() + i3;
            this.q.layout(i2, i3, measuredWidth, measuredHeight);
            if (f23a) {
                com.chanven.lib.cptr.b.a.b(this.b, "onLayout header: %s %s %s %s", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(measuredWidth), Integer.valueOf(measuredHeight));
            }
        }
        if (this.c != null) {
            if (e()) {
                k = 0;
            }
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.c.getLayoutParams();
            int i4 = paddingLeft + marginLayoutParams2.leftMargin;
            int i5 = marginLayoutParams2.topMargin + paddingTop + k;
            int measuredWidth2 = this.c.getMeasuredWidth() + i4;
            int measuredHeight2 = this.c.getMeasuredHeight() + i5;
            if (f23a) {
                com.chanven.lib.cptr.b.a.b(this.b, "onLayout content: %s %s %s %s", Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(measuredWidth2), Integer.valueOf(measuredHeight2));
            }
            this.c.layout(i4, i5, measuredWidth2, measuredHeight2);
        }
    }

    public boolean a(MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled() || this.c == null || this.q == null) {
            return a(motionEvent);
        }
        switch (motionEvent.getAction()) {
            case 0:
                this.F = false;
                this.E.a(motionEvent.getX(), motionEvent.getY());
                this.t.a();
                this.z = false;
                a(motionEvent);
                return true;
            case 1:
            case 3:
                this.E.c();
                if (this.E.m()) {
                    if (f23a) {
                        com.chanven.lib.cptr.b.a.a(this.b, "call onRelease when user release");
                    }
                    a(false);
                    if (this.E.q()) {
                        s();
                        return true;
                    }
                    return a(motionEvent);
                }
                return a(motionEvent);
            case 2:
                this.A = motionEvent;
                this.E.b(motionEvent.getX(), motionEvent.getY());
                float h2 = this.E.h();
                float i2 = this.E.i();
                if (this.x && !this.z && Math.abs(h2) > this.u && Math.abs(h2) > Math.abs(i2) && this.E.r()) {
                    this.z = true;
                }
                if (this.z) {
                    return a(motionEvent);
                }
                boolean z = i2 > 0.0f;
                boolean z2 = !z;
                boolean m = this.E.m();
                if (f23a) {
                    com.chanven.lib.cptr.b.a.a(this.b, "ACTION_MOVE: offsetY:%s, currentPos: %s, moveUp: %s, canMoveUp: %s, moveDown: %s: canMoveDown: %s", Float.valueOf(i2), Integer.valueOf(this.E.k()), Boolean.valueOf(z2), Boolean.valueOf(m), Boolean.valueOf(z), Boolean.valueOf(this.s != null && this.s.a(this, this.c, this.q)));
                }
                if (z && this.s != null && !this.s.a(this, this.c, this.q)) {
                    return a(motionEvent);
                }
                if ((z2 && m) || z) {
                    a(i2);
                    return true;
                }
                break;
        }
        return a(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(float f2) {
        int i2 = 0;
        if (f2 < 0.0f && this.E.r()) {
            if (f23a) {
                com.chanven.lib.cptr.b.a.c(this.b, String.format("has reached the top", new Object[0]));
                return;
            }
            return;
        }
        int k = this.E.k() + ((int) f2);
        if (!this.E.f(k)) {
            i2 = k;
        } else if (f23a) {
            com.chanven.lib.cptr.b.a.c(this.b, String.format("over top", new Object[0]));
        }
        this.E.b(i2);
        a(i2 - this.E.j());
    }

    private void a(int i2) {
        if (i2 != 0) {
            boolean a2 = this.E.a();
            if (a2 && !this.F && this.E.q()) {
                this.F = true;
                s();
            }
            if ((this.E.n() && this.w == 1) || (this.E.e() && this.w == 4 && d())) {
                this.w = (byte) 2;
                this.r.b(this);
                if (f23a) {
                    com.chanven.lib.cptr.b.a.c(this.b, "PtrUIHandler: onUIRefreshPrepare, mFlag %s", Integer.valueOf(this.y));
                }
            }
            if (this.E.o()) {
                p();
                if (a2) {
                    t();
                }
            }
            if (this.w == 2) {
                if (a2 && !c() && this.p && this.E.s()) {
                    n();
                }
                if (r() && this.E.t()) {
                    n();
                }
            }
            if (f23a) {
                com.chanven.lib.cptr.b.a.a(this.b, "updatePos: change: %s, current: %s last: %s, top: %s, headerHeight: %s", Integer.valueOf(i2), Integer.valueOf(this.E.k()), Integer.valueOf(this.E.j()), Integer.valueOf(this.c.getTop()), Integer.valueOf(this.v));
            }
            this.q.offsetTopAndBottom(i2);
            if (!e()) {
                this.c.offsetTopAndBottom(i2);
            }
            invalidate();
            if (this.r.a()) {
                this.r.a(this, a2, this.w, this.E);
            }
            a(a2, this.w, this.E);
        }
    }

    protected void a(boolean z, byte b2, com.chanven.lib.cptr.a.a aVar) {
    }

    public int getHeaderHeight() {
        return this.v;
    }

    private void a(boolean z) {
        n();
        if (this.w == 3) {
            if (this.o) {
                if (this.E.u() && !z) {
                    this.t.a(this.E.v(), this.m);
                    return;
                }
                return;
            }
            k();
        } else if (this.w == 4) {
            b(false);
        } else {
            m();
        }
    }

    public void setRefreshCompleteHook(d dVar) {
        this.B = dVar;
        dVar.b(new Runnable() { // from class: com.chanven.lib.cptr.PtrFrameLayout.1
            @Override // java.lang.Runnable
            public void run() {
                if (PtrFrameLayout.f23a) {
                    com.chanven.lib.cptr.b.a.a(PtrFrameLayout.this.b, "mRefreshCompleteHook resume.");
                }
                PtrFrameLayout.this.b(true);
            }
        });
    }

    private void j() {
        if (!this.E.a()) {
            this.t.a(0, this.n);
        }
    }

    private void k() {
        j();
    }

    private void l() {
        j();
    }

    private void m() {
        j();
    }

    private boolean n() {
        if (this.w == 2 && ((this.E.u() && c()) || this.E.p())) {
            this.w = (byte) 3;
            o();
        }
        return false;
    }

    private void o() {
        this.D = System.currentTimeMillis();
        if (this.r.a()) {
            this.r.c(this);
            if (f23a) {
                com.chanven.lib.cptr.b.a.b(this.b, "PtrUIHandler: onUIRefreshBegin");
            }
        }
        if (this.s != null) {
            this.s.a(this);
        }
    }

    private boolean p() {
        if ((this.w == 4 || this.w == 2) && this.E.r()) {
            if (this.r.a()) {
                this.r.a(this);
                if (f23a) {
                    com.chanven.lib.cptr.b.a.b(this.b, "PtrUIHandler: onUIReset");
                }
            }
            this.w = (byte) 1;
            q();
            return true;
        }
        return false;
    }

    protected void a() {
        if (this.E.m() && c()) {
            if (f23a) {
                com.chanven.lib.cptr.b.a.a(this.b, "call onRelease after scroll abort");
            }
            a(true);
        }
    }

    protected void b() {
        if (this.E.m() && c()) {
            if (f23a) {
                com.chanven.lib.cptr.b.a.a(this.b, "call onRelease after scroll finish");
            }
            a(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z) {
        if (this.E.m() && !z && this.B != null) {
            if (f23a) {
                com.chanven.lib.cptr.b.a.a(this.b, "notifyUIRefreshComplete mRefreshCompleteHook run.");
            }
            this.B.a();
            return;
        }
        if (this.r.a()) {
            if (f23a) {
                com.chanven.lib.cptr.b.a.b(this.b, "PtrUIHandler: onUIRefreshComplete");
            }
            this.r.d(this);
        }
        this.E.d();
        l();
        p();
    }

    private void q() {
        this.y &= j ^ (-1);
    }

    public boolean c() {
        return (this.y & j) > 0;
    }

    private boolean r() {
        return (this.y & j) == g;
    }

    public void setEnabledNextPtrAtOnce(boolean z) {
        if (z) {
            this.y |= h;
        } else {
            this.y &= h ^ (-1);
        }
    }

    public boolean d() {
        return (this.y & h) > 0;
    }

    public void setPinContent(boolean z) {
        if (z) {
            this.y |= i;
        } else {
            this.y &= i ^ (-1);
        }
    }

    public boolean e() {
        return (this.y & i) > 0;
    }

    public void setLoadingMinTime(int i2) {
        this.C = i2;
    }

    @Deprecated
    public void setInterceptEventWhileWorking(boolean z) {
    }

    public View getContentView() {
        return this.c;
    }

    public void setPtrHandler(com.chanven.lib.cptr.a aVar) {
        this.s = aVar;
    }

    public void a(com.chanven.lib.cptr.b bVar) {
        c.a(this.r, bVar);
    }

    public void setPtrIndicator(com.chanven.lib.cptr.a.a aVar) {
        if (this.E != null && this.E != aVar) {
            aVar.a(this.E);
        }
        this.E = aVar;
    }

    public float getResistance() {
        return this.E.b();
    }

    public void setResistance(float f2) {
        this.E.a(f2);
    }

    public float getDurationToClose() {
        return this.m;
    }

    public void setDurationToClose(int i2) {
        this.m = i2;
    }

    public long getDurationToCloseHeader() {
        return this.n;
    }

    public void setDurationToCloseHeader(int i2) {
        this.n = i2;
    }

    public void setRatioOfHeaderHeightToRefresh(float f2) {
        this.E.b(f2);
    }

    public int getOffsetToRefresh() {
        return this.E.g();
    }

    public void setOffsetToRefresh(int i2) {
        this.E.a(i2);
    }

    public float getRatioOfHeaderToHeightRefresh() {
        return this.E.f();
    }

    public void setOffsetToKeepHeaderWhileLoading(int i2) {
        this.E.d(i2);
    }

    public int getOffsetToKeepHeaderWhileLoading() {
        return this.E.v();
    }

    public void setKeepHeaderWhenRefresh(boolean z) {
        this.o = z;
    }

    public boolean f() {
        return this.p;
    }

    public void setPullToRefresh(boolean z) {
        this.p = z;
    }

    public View getHeaderView() {
        return this.q;
    }

    public void setHeaderView(View view) {
        if (this.q != null && view != null && this.q != view) {
            removeView(this.q);
        }
        if (view.getLayoutParams() == null) {
            view.setLayoutParams(new a(-1, -2));
        }
        this.q = view;
        addView(view);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams != null && (layoutParams instanceof a);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new a(-1, -1);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new a(layoutParams);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    private void s() {
        if (f23a) {
            com.chanven.lib.cptr.b.a.a(this.b, "send cancel event");
        }
        if (this.A != null) {
            MotionEvent motionEvent = this.A;
            a(MotionEvent.obtain(motionEvent.getDownTime(), motionEvent.getEventTime() + ViewConfiguration.getLongPressTimeout(), 3, motionEvent.getX(), motionEvent.getY(), motionEvent.getMetaState()));
        }
    }

    private void t() {
        if (f23a) {
            com.chanven.lib.cptr.b.a.a(this.b, "send down event");
        }
        MotionEvent motionEvent = this.A;
        a(MotionEvent.obtain(motionEvent.getDownTime(), motionEvent.getEventTime(), 0, motionEvent.getX(), motionEvent.getY(), motionEvent.getMetaState()));
    }

    /* loaded from: classes.dex */
    public static class a extends ViewGroup.MarginLayoutParams {
        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public a(int i, int i2) {
            super(i, i2);
        }

        public a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements Runnable {
        private int b;
        private Scroller c;
        private boolean d = false;
        private int e;
        private int f;

        public b() {
            this.c = new Scroller(PtrFrameLayout.this.getContext());
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z = !this.c.computeScrollOffset() || this.c.isFinished();
            int currY = this.c.getCurrY();
            int i = currY - this.b;
            if (PtrFrameLayout.f23a && i != 0) {
                com.chanven.lib.cptr.b.a.a(PtrFrameLayout.this.b, "scroll: %s, start: %s, to: %s, currentPos: %s, current :%s, last: %s, delta: %s", Boolean.valueOf(z), Integer.valueOf(this.e), Integer.valueOf(this.f), Integer.valueOf(PtrFrameLayout.this.E.k()), Integer.valueOf(currY), Integer.valueOf(this.b), Integer.valueOf(i));
            }
            if (!z) {
                this.b = currY;
                PtrFrameLayout.this.a(i);
                PtrFrameLayout.this.post(this);
                return;
            }
            b();
        }

        private void b() {
            if (PtrFrameLayout.f23a) {
                com.chanven.lib.cptr.b.a.a(PtrFrameLayout.this.b, "finish, currentPos:%s", Integer.valueOf(PtrFrameLayout.this.E.k()));
            }
            c();
            PtrFrameLayout.this.b();
        }

        private void c() {
            this.d = false;
            this.b = 0;
            PtrFrameLayout.this.removeCallbacks(this);
        }

        public void a() {
            if (this.d) {
                if (!this.c.isFinished()) {
                    this.c.forceFinished(true);
                }
                PtrFrameLayout.this.a();
                c();
            }
        }

        public void a(int i, int i2) {
            if (!PtrFrameLayout.this.E.e(i)) {
                this.e = PtrFrameLayout.this.E.k();
                this.f = i;
                int i3 = i - this.e;
                if (PtrFrameLayout.f23a) {
                    com.chanven.lib.cptr.b.a.b(PtrFrameLayout.this.b, "tryToScrollTo: start: %s, distance:%s, to:%s", Integer.valueOf(this.e), Integer.valueOf(i3), Integer.valueOf(i));
                }
                PtrFrameLayout.this.removeCallbacks(this);
                this.b = 0;
                if (!this.c.isFinished()) {
                    this.c.forceFinished(true);
                }
                this.c.startScroll(0, 0, 0, i3, i2);
                PtrFrameLayout.this.post(this);
                this.d = true;
            }
        }
    }

    public void setAutoLoadMoreEnable(boolean z) {
        this.H = z;
    }

    public void setFooterView(com.chanven.lib.cptr.loadmore.c cVar) {
        if (cVar != null) {
            if (this.K == null || this.K != cVar) {
                this.K = cVar;
                if (this.J) {
                    this.M.b();
                    this.L = this.K.a();
                    this.J = this.M.a(this.N, this.L, this.P);
                    if (!this.I) {
                        this.M.b();
                    }
                }
            }
        }
    }

    public void setLoadMoreEnable(boolean z) {
        if (this.I != z) {
            this.I = z;
            if (!this.J && this.I) {
                this.N = getContentView();
                if (this.K == null) {
                    this.K = new com.chanven.lib.cptr.loadmore.a();
                }
                this.L = this.K.a();
                if (this.M == null) {
                    if (this.N instanceof GridView) {
                        this.M = new com.chanven.lib.cptr.loadmore.b();
                    } else if (this.N instanceof AbsListView) {
                        this.M = new com.chanven.lib.cptr.loadmore.d();
                    } else if (this.N instanceof RecyclerView) {
                        this.M = new h();
                    }
                }
                if (this.M == null) {
                    throw new IllegalStateException("unSupported contentView !");
                }
                this.J = this.M.a(this.N, this.L, this.P);
                this.M.a(this.N, this.O);
            } else if (this.J) {
                if (this.I) {
                    this.M.a();
                } else {
                    this.M.b();
                }
            }
        }
    }

    void g() {
        this.G = true;
        this.L.b();
        this.d.a();
    }

    public boolean h() {
        return this.G;
    }

    public void setOnLoadMoreListener(f fVar) {
        this.d = fVar;
    }
}