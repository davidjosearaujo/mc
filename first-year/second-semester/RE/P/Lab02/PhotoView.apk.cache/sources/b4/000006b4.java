package com.chanven.lib.cptr;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.FrameLayout;
import android.widget.TextView;
import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes.dex */
public class PtrClassicDefaultHeader extends FrameLayout implements b {

    /* renamed from: a  reason: collision with root package name */
    private static SimpleDateFormat f21a = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    private int b;
    private RotateAnimation c;
    private RotateAnimation d;
    private TextView e;
    private View f;
    private View g;
    private long h;
    private TextView i;
    private String j;
    private boolean k;
    private a l;

    public PtrClassicDefaultHeader(Context context) {
        super(context);
        this.b = 150;
        this.h = -1L;
        this.l = new a();
        a((AttributeSet) null);
    }

    public PtrClassicDefaultHeader(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = 150;
        this.h = -1L;
        this.l = new a();
        a(attributeSet);
    }

    public PtrClassicDefaultHeader(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = 150;
        this.h = -1L;
        this.l = new a();
        a(attributeSet);
    }

    protected void a(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.PtrClassicHeader, 0, 0);
        if (obtainStyledAttributes != null) {
            this.b = obtainStyledAttributes.getInt(R.styleable.PtrClassicHeader_ptr_rotate_ani_time, this.b);
        }
        a();
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.cube_ptr_classic_default_header, this);
        this.f = inflate.findViewById(R.id.ptr_classic_header_rotate_view);
        this.e = (TextView) inflate.findViewById(R.id.ptr_classic_header_rotate_view_header_title);
        this.i = (TextView) inflate.findViewById(R.id.ptr_classic_header_rotate_view_header_last_update);
        this.g = inflate.findViewById(R.id.ptr_classic_header_rotate_view_progressbar);
        b();
    }

    public void setRotateAniTime(int i) {
        if (i != this.b && i != 0) {
            this.b = i;
            a();
        }
    }

    public void setLastUpdateTimeKey(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.j = str;
        }
    }

    public void setLastUpdateTimeRelateObject(Object obj) {
        setLastUpdateTimeKey(obj.getClass().getName());
    }

    private void a() {
        this.c = new RotateAnimation(0.0f, -180.0f, 1, 0.5f, 1, 0.5f);
        this.c.setInterpolator(new LinearInterpolator());
        this.c.setDuration(this.b);
        this.c.setFillAfter(true);
        this.d = new RotateAnimation(-180.0f, 0.0f, 1, 0.5f, 1, 0.5f);
        this.d.setInterpolator(new LinearInterpolator());
        this.d.setDuration(this.b);
        this.d.setFillAfter(true);
    }

    private void b() {
        c();
        this.g.setVisibility(4);
    }

    private void c() {
        this.f.clearAnimation();
        this.f.setVisibility(4);
    }

    @Override // com.chanven.lib.cptr.b
    public void a(PtrFrameLayout ptrFrameLayout) {
        b();
        this.k = true;
        d();
    }

    @Override // com.chanven.lib.cptr.b
    public void b(PtrFrameLayout ptrFrameLayout) {
        this.k = true;
        d();
        this.l.a();
        this.g.setVisibility(4);
        this.f.setVisibility(0);
        this.e.setVisibility(0);
        if (ptrFrameLayout.f()) {
            this.e.setText(getResources().getString(R.string.cube_ptr_pull_down_to_refresh));
        } else {
            this.e.setText(getResources().getString(R.string.cube_ptr_pull_down));
        }
    }

    @Override // com.chanven.lib.cptr.b
    public void c(PtrFrameLayout ptrFrameLayout) {
        this.k = false;
        c();
        this.g.setVisibility(0);
        this.e.setVisibility(0);
        this.e.setText(R.string.cube_ptr_refreshing);
        d();
        this.l.b();
    }

    @Override // com.chanven.lib.cptr.b
    public void d(PtrFrameLayout ptrFrameLayout) {
        c();
        this.g.setVisibility(4);
        this.e.setVisibility(0);
        this.e.setText(getResources().getString(R.string.cube_ptr_refresh_complete));
        SharedPreferences sharedPreferences = getContext().getSharedPreferences("cube_ptr_classic_last_update", 0);
        if (!TextUtils.isEmpty(this.j)) {
            this.h = new Date().getTime();
            sharedPreferences.edit().putLong(this.j, this.h).commit();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (TextUtils.isEmpty(this.j) || !this.k) {
            this.i.setVisibility(8);
            return;
        }
        String lastUpdateTime = getLastUpdateTime();
        if (TextUtils.isEmpty(lastUpdateTime)) {
            this.i.setVisibility(8);
            return;
        }
        this.i.setVisibility(0);
        this.i.setText(lastUpdateTime);
    }

    private String getLastUpdateTime() {
        if (this.h == -1 && !TextUtils.isEmpty(this.j)) {
            this.h = getContext().getSharedPreferences("cube_ptr_classic_last_update", 0).getLong(this.j, -1L);
        }
        if (this.h == -1) {
            return null;
        }
        long time = new Date().getTime() - this.h;
        int i = (int) (time / 1000);
        if (time < 0 || i <= 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(getContext().getString(R.string.cube_ptr_last_update));
        if (i < 60) {
            sb.append(i + getContext().getString(R.string.cube_ptr_seconds_ago));
        } else {
            int i2 = i / 60;
            if (i2 > 60) {
                int i3 = i2 / 60;
                if (i3 > 24) {
                    sb.append(f21a.format(new Date(this.h)));
                } else {
                    sb.append(i3 + getContext().getString(R.string.cube_ptr_hours_ago));
                }
            } else {
                sb.append(i2 + getContext().getString(R.string.cube_ptr_minutes_ago));
            }
        }
        return sb.toString();
    }

    @Override // com.chanven.lib.cptr.b
    public void a(PtrFrameLayout ptrFrameLayout, boolean z, byte b, com.chanven.lib.cptr.a.a aVar) {
        int offsetToRefresh = ptrFrameLayout.getOffsetToRefresh();
        int k = aVar.k();
        int j = aVar.j();
        if (k < offsetToRefresh && j >= offsetToRefresh) {
            if (z && b == 2) {
                f(ptrFrameLayout);
                if (this.f != null) {
                    this.f.clearAnimation();
                    this.f.startAnimation(this.d);
                }
            }
        } else if (k > offsetToRefresh && j <= offsetToRefresh && z && b == 2) {
            e(ptrFrameLayout);
            if (this.f != null) {
                this.f.clearAnimation();
                this.f.startAnimation(this.c);
            }
        }
    }

    private void e(PtrFrameLayout ptrFrameLayout) {
        if (!ptrFrameLayout.f()) {
            this.e.setVisibility(0);
            this.e.setText(R.string.cube_ptr_release_to_refresh);
        }
    }

    private void f(PtrFrameLayout ptrFrameLayout) {
        this.e.setVisibility(0);
        if (ptrFrameLayout.f()) {
            this.e.setText(getResources().getString(R.string.cube_ptr_pull_down_to_refresh));
        } else {
            this.e.setText(getResources().getString(R.string.cube_ptr_pull_down));
        }
    }

    /* loaded from: classes.dex */
    private class a implements Runnable {
        private boolean b;

        private a() {
            this.b = false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            if (!TextUtils.isEmpty(PtrClassicDefaultHeader.this.j)) {
                this.b = true;
                run();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b() {
            this.b = false;
            PtrClassicDefaultHeader.this.removeCallbacks(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            PtrClassicDefaultHeader.this.d();
            if (this.b) {
                PtrClassicDefaultHeader.this.postDelayed(this, 1000L);
            }
        }
    }
}