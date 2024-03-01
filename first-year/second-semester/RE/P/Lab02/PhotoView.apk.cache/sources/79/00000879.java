package com.facebook.login.widget;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.facebook.login.R;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class ToolTipPopup {

    /* renamed from: a  reason: collision with root package name */
    private final String f271a;
    private final WeakReference<View> b;
    private final Context c;
    private a d;
    private PopupWindow e;
    private Style f = Style.BLUE;
    private long g = 6000;
    private final ViewTreeObserver.OnScrollChangedListener h = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.facebook.login.widget.ToolTipPopup.1
        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            if (ToolTipPopup.this.b.get() != null && ToolTipPopup.this.e != null && ToolTipPopup.this.e.isShowing()) {
                if (ToolTipPopup.this.e.isAboveAnchor()) {
                    ToolTipPopup.this.d.b();
                } else {
                    ToolTipPopup.this.d.a();
                }
            }
        }
    };

    /* loaded from: classes.dex */
    public enum Style {
        BLUE,
        BLACK
    }

    public ToolTipPopup(String str, View view) {
        this.f271a = str;
        this.b = new WeakReference<>(view);
        this.c = view.getContext();
    }

    public void a(Style style) {
        this.f = style;
    }

    public void a() {
        if (this.b.get() != null) {
            this.d = new a(this.c);
            ((TextView) this.d.findViewById(R.id.com_facebook_tooltip_bubble_view_text_body)).setText(this.f271a);
            if (this.f == Style.BLUE) {
                this.d.d.setBackgroundResource(R.drawable.com_facebook_tooltip_blue_background);
                this.d.c.setImageResource(R.drawable.com_facebook_tooltip_blue_bottomnub);
                this.d.b.setImageResource(R.drawable.com_facebook_tooltip_blue_topnub);
                this.d.e.setImageResource(R.drawable.com_facebook_tooltip_blue_xout);
            } else {
                this.d.d.setBackgroundResource(R.drawable.com_facebook_tooltip_black_background);
                this.d.c.setImageResource(R.drawable.com_facebook_tooltip_black_bottomnub);
                this.d.b.setImageResource(R.drawable.com_facebook_tooltip_black_topnub);
                this.d.e.setImageResource(R.drawable.com_facebook_tooltip_black_xout);
            }
            View decorView = ((Activity) this.c).getWindow().getDecorView();
            int width = decorView.getWidth();
            int height = decorView.getHeight();
            d();
            this.d.measure(View.MeasureSpec.makeMeasureSpec(width, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(height, Integer.MIN_VALUE));
            this.e = new PopupWindow(this.d, this.d.getMeasuredWidth(), this.d.getMeasuredHeight());
            this.e.showAsDropDown(this.b.get());
            c();
            if (this.g > 0) {
                this.d.postDelayed(new Runnable() { // from class: com.facebook.login.widget.ToolTipPopup.2
                    @Override // java.lang.Runnable
                    public void run() {
                        ToolTipPopup.this.b();
                    }
                }, this.g);
            }
            this.e.setTouchable(true);
            this.d.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.login.widget.ToolTipPopup.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ToolTipPopup.this.b();
                }
            });
        }
    }

    public void a(long j) {
        this.g = j;
    }

    private void c() {
        if (this.e != null && this.e.isShowing()) {
            if (this.e.isAboveAnchor()) {
                this.d.b();
            } else {
                this.d.a();
            }
        }
    }

    public void b() {
        e();
        if (this.e != null) {
            this.e.dismiss();
        }
    }

    private void d() {
        e();
        if (this.b.get() != null) {
            this.b.get().getViewTreeObserver().addOnScrollChangedListener(this.h);
        }
    }

    private void e() {
        if (this.b.get() != null) {
            this.b.get().getViewTreeObserver().removeOnScrollChangedListener(this.h);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a extends FrameLayout {
        private ImageView b;
        private ImageView c;
        private View d;
        private ImageView e;

        public a(Context context) {
            super(context);
            c();
        }

        private void c() {
            LayoutInflater.from(getContext()).inflate(R.layout.com_facebook_tooltip_bubble, this);
            this.b = (ImageView) findViewById(R.id.com_facebook_tooltip_bubble_view_top_pointer);
            this.c = (ImageView) findViewById(R.id.com_facebook_tooltip_bubble_view_bottom_pointer);
            this.d = findViewById(R.id.com_facebook_body_frame);
            this.e = (ImageView) findViewById(R.id.com_facebook_button_xout);
        }

        public void a() {
            this.b.setVisibility(0);
            this.c.setVisibility(4);
        }

        public void b() {
            this.b.setVisibility(4);
            this.c.setVisibility(0);
        }
    }
}