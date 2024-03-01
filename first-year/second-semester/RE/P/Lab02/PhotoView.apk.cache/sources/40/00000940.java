package com.facebook.share.widget;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.content.LocalBroadcastManager;
import android.support.v4.os.EnvironmentCompat;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.FacebookException;
import com.facebook.common.R;
import com.facebook.internal.ab;
import com.facebook.internal.n;
import com.facebook.internal.w;
import com.facebook.share.internal.LikeBoxCountView;
import com.facebook.share.internal.LikeButton;
import com.facebook.share.internal.c;

@Deprecated
/* loaded from: classes.dex */
public class LikeView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private String f365a;
    private ObjectType b;
    private LinearLayout c;
    private LikeButton d;
    private LikeBoxCountView e;
    private TextView f;
    private com.facebook.share.internal.c g;
    private c h;
    private BroadcastReceiver i;
    private a j;
    private Style k;
    private HorizontalAlignment l;
    private AuxiliaryViewPosition m;
    private int n;
    private int o;
    private int p;
    private n q;
    private boolean r;

    /* loaded from: classes.dex */
    public interface c {
        void a(FacebookException facebookException);
    }

    @Deprecated
    /* loaded from: classes.dex */
    public enum ObjectType {
        UNKNOWN(EnvironmentCompat.MEDIA_UNKNOWN, 0),
        OPEN_GRAPH("open_graph", 1),
        PAGE("page", 2);
        
        private int intValue;
        private String stringValue;
        public static ObjectType DEFAULT = UNKNOWN;

        public static ObjectType fromInt(int i) {
            ObjectType[] values;
            for (ObjectType objectType : values()) {
                if (objectType.getValue() == i) {
                    return objectType;
                }
            }
            return null;
        }

        ObjectType(String str, int i) {
            this.stringValue = str;
            this.intValue = i;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.stringValue;
        }

        public int getValue() {
            return this.intValue;
        }
    }

    @Deprecated
    /* loaded from: classes.dex */
    public enum Style {
        STANDARD("standard", 0),
        BUTTON("button", 1),
        BOX_COUNT("box_count", 2);
        
        private int intValue;
        private String stringValue;
        static Style DEFAULT = STANDARD;

        static Style fromInt(int i) {
            Style[] values;
            for (Style style : values()) {
                if (style.a() == i) {
                    return style;
                }
            }
            return null;
        }

        Style(String str, int i) {
            this.stringValue = str;
            this.intValue = i;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.stringValue;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int a() {
            return this.intValue;
        }
    }

    @Deprecated
    /* loaded from: classes.dex */
    public enum HorizontalAlignment {
        CENTER("center", 0),
        LEFT("left", 1),
        RIGHT("right", 2);
        
        static HorizontalAlignment DEFAULT = CENTER;
        private int intValue;
        private String stringValue;

        static HorizontalAlignment fromInt(int i) {
            HorizontalAlignment[] values;
            for (HorizontalAlignment horizontalAlignment : values()) {
                if (horizontalAlignment.a() == i) {
                    return horizontalAlignment;
                }
            }
            return null;
        }

        HorizontalAlignment(String str, int i) {
            this.stringValue = str;
            this.intValue = i;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.stringValue;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int a() {
            return this.intValue;
        }
    }

    @Deprecated
    /* loaded from: classes.dex */
    public enum AuxiliaryViewPosition {
        BOTTOM("bottom", 0),
        INLINE("inline", 1),
        TOP("top", 2);
        
        static AuxiliaryViewPosition DEFAULT = BOTTOM;
        private int intValue;
        private String stringValue;

        static AuxiliaryViewPosition fromInt(int i) {
            AuxiliaryViewPosition[] values;
            for (AuxiliaryViewPosition auxiliaryViewPosition : values()) {
                if (auxiliaryViewPosition.a() == i) {
                    return auxiliaryViewPosition;
                }
            }
            return null;
        }

        AuxiliaryViewPosition(String str, int i) {
            this.stringValue = str;
            this.intValue = i;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.stringValue;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int a() {
            return this.intValue;
        }
    }

    @Deprecated
    public LikeView(Context context) {
        super(context);
        this.k = Style.DEFAULT;
        this.l = HorizontalAlignment.DEFAULT;
        this.m = AuxiliaryViewPosition.DEFAULT;
        this.n = -1;
        this.r = true;
        a(context);
    }

    @Deprecated
    public LikeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.k = Style.DEFAULT;
        this.l = HorizontalAlignment.DEFAULT;
        this.m = AuxiliaryViewPosition.DEFAULT;
        this.n = -1;
        this.r = true;
        a(attributeSet);
        a(context);
    }

    @Deprecated
    public void a(String str, ObjectType objectType) {
        String a2 = ab.a(str, (String) null);
        if (objectType == null) {
            objectType = ObjectType.DEFAULT;
        }
        if (!ab.a(a2, this.f365a) || objectType != this.b) {
            b(a2, objectType);
            c();
        }
    }

    @Deprecated
    public void setLikeViewStyle(Style style) {
        if (style == null) {
            style = Style.DEFAULT;
        }
        if (this.k != style) {
            this.k = style;
            d();
        }
    }

    @Deprecated
    public void setAuxiliaryViewPosition(AuxiliaryViewPosition auxiliaryViewPosition) {
        if (auxiliaryViewPosition == null) {
            auxiliaryViewPosition = AuxiliaryViewPosition.DEFAULT;
        }
        if (this.m != auxiliaryViewPosition) {
            this.m = auxiliaryViewPosition;
            d();
        }
    }

    @Deprecated
    public void setHorizontalAlignment(HorizontalAlignment horizontalAlignment) {
        if (horizontalAlignment == null) {
            horizontalAlignment = HorizontalAlignment.DEFAULT;
        }
        if (this.l != horizontalAlignment) {
            this.l = horizontalAlignment;
            d();
        }
    }

    @Deprecated
    public void setForegroundColor(int i) {
        if (this.n != i) {
            this.f.setTextColor(i);
        }
    }

    @Deprecated
    public void setOnErrorListener(c cVar) {
        this.h = cVar;
    }

    @Deprecated
    public c getOnErrorListener() {
        return this.h;
    }

    @Deprecated
    public void setFragment(Fragment fragment) {
        this.q = new n(fragment);
    }

    @Deprecated
    public void setFragment(android.app.Fragment fragment) {
        this.q = new n(fragment);
    }

    @Override // android.view.View
    @Deprecated
    public void setEnabled(boolean z) {
        this.r = true;
        c();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        a((String) null, ObjectType.UNKNOWN);
        super.onDetachedFromWindow();
    }

    private void a(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes;
        if (attributeSet != null && getContext() != null && (obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.com_facebook_like_view)) != null) {
            this.f365a = ab.a(obtainStyledAttributes.getString(R.styleable.com_facebook_like_view_com_facebook_object_id), (String) null);
            this.b = ObjectType.fromInt(obtainStyledAttributes.getInt(R.styleable.com_facebook_like_view_com_facebook_object_type, ObjectType.DEFAULT.getValue()));
            this.k = Style.fromInt(obtainStyledAttributes.getInt(R.styleable.com_facebook_like_view_com_facebook_style, Style.DEFAULT.a()));
            if (this.k == null) {
                throw new IllegalArgumentException("Unsupported value for LikeView 'style'");
            }
            this.m = AuxiliaryViewPosition.fromInt(obtainStyledAttributes.getInt(R.styleable.com_facebook_like_view_com_facebook_auxiliary_view_position, AuxiliaryViewPosition.DEFAULT.a()));
            if (this.m == null) {
                throw new IllegalArgumentException("Unsupported value for LikeView 'auxiliary_view_position'");
            }
            this.l = HorizontalAlignment.fromInt(obtainStyledAttributes.getInt(R.styleable.com_facebook_like_view_com_facebook_horizontal_alignment, HorizontalAlignment.DEFAULT.a()));
            if (this.l == null) {
                throw new IllegalArgumentException("Unsupported value for LikeView 'horizontal_alignment'");
            }
            this.n = obtainStyledAttributes.getColor(R.styleable.com_facebook_like_view_com_facebook_foreground_color, -1);
            obtainStyledAttributes.recycle();
        }
    }

    private void a(Context context) {
        this.o = getResources().getDimensionPixelSize(R.dimen.com_facebook_likeview_edge_padding);
        this.p = getResources().getDimensionPixelSize(R.dimen.com_facebook_likeview_internal_padding);
        if (this.n == -1) {
            this.n = getResources().getColor(R.color.com_facebook_likeview_text_color);
        }
        setBackgroundColor(0);
        this.c = new LinearLayout(context);
        this.c.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        b(context);
        c(context);
        d(context);
        this.c.addView(this.d);
        this.c.addView(this.f);
        this.c.addView(this.e);
        addView(this.c);
        b(this.f365a, this.b);
        c();
    }

    private void b(Context context) {
        this.d = new LikeButton(context, this.g != null && this.g.d());
        this.d.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.share.widget.LikeView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LikeView.this.a();
            }
        });
        this.d.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
    }

    private void c(Context context) {
        this.f = new TextView(context);
        this.f.setTextSize(0, getResources().getDimension(R.dimen.com_facebook_likeview_text_size));
        this.f.setMaxLines(2);
        this.f.setTextColor(this.n);
        this.f.setGravity(17);
        this.f.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
    }

    private void d(Context context) {
        this.e = new LikeBoxCountView(context);
        this.e.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (this.g != null) {
            Activity activity = null;
            if (this.q == null) {
                activity = getActivity();
            }
            this.g.a(activity, this.q, getAnalyticsParameters());
        }
    }

    private Activity getActivity() {
        Context context = getContext();
        while (!(context instanceof Activity) && (context instanceof ContextWrapper)) {
            context = ((ContextWrapper) context).getBaseContext();
        }
        if (context instanceof Activity) {
            return (Activity) context;
        }
        throw new FacebookException("Unable to get Activity.");
    }

    private Bundle getAnalyticsParameters() {
        Bundle bundle = new Bundle();
        bundle.putString("style", this.k.toString());
        bundle.putString("auxiliary_position", this.m.toString());
        bundle.putString("horizontal_alignment", this.l.toString());
        bundle.putString("object_id", ab.a(this.f365a, ""));
        bundle.putString("object_type", this.b.toString());
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str, ObjectType objectType) {
        b();
        this.f365a = str;
        this.b = objectType;
        if (!ab.a(str)) {
            this.j = new a();
            if (!isInEditMode()) {
                com.facebook.share.internal.c.a(str, objectType, this.j);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.facebook.share.internal.c cVar) {
        this.g = cVar;
        this.i = new b();
        LocalBroadcastManager localBroadcastManager = LocalBroadcastManager.getInstance(getContext());
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.facebook.sdk.LikeActionController.UPDATED");
        intentFilter.addAction("com.facebook.sdk.LikeActionController.DID_ERROR");
        intentFilter.addAction("com.facebook.sdk.LikeActionController.DID_RESET");
        localBroadcastManager.registerReceiver(this.i, intentFilter);
    }

    private void b() {
        if (this.i != null) {
            LocalBroadcastManager.getInstance(getContext()).unregisterReceiver(this.i);
            this.i = null;
        }
        if (this.j != null) {
            this.j.a();
            this.j = null;
        }
        this.g = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        boolean z = !this.r;
        if (this.g == null) {
            this.d.setSelected(false);
            this.f.setText((CharSequence) null);
            this.e.setText(null);
        } else {
            this.d.setSelected(this.g.d());
            this.f.setText(this.g.c());
            this.e.setText(this.g.b());
            z &= this.g.e();
        }
        super.setEnabled(z);
        this.d.setEnabled(z);
        d();
    }

    private void d() {
        int i;
        View view;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.c.getLayoutParams();
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.d.getLayoutParams();
        if (this.l == HorizontalAlignment.LEFT) {
            i = 3;
        } else {
            i = this.l == HorizontalAlignment.CENTER ? 1 : 5;
        }
        layoutParams.gravity = i | 48;
        layoutParams2.gravity = i;
        this.f.setVisibility(8);
        this.e.setVisibility(8);
        if (this.k == Style.STANDARD && this.g != null && !ab.a(this.g.c())) {
            view = this.f;
        } else if (this.k == Style.BOX_COUNT && this.g != null && !ab.a(this.g.b())) {
            e();
            view = this.e;
        } else {
            return;
        }
        view.setVisibility(0);
        ((LinearLayout.LayoutParams) view.getLayoutParams()).gravity = i;
        this.c.setOrientation(this.m == AuxiliaryViewPosition.INLINE ? 0 : 1);
        if (this.m == AuxiliaryViewPosition.TOP || (this.m == AuxiliaryViewPosition.INLINE && this.l == HorizontalAlignment.RIGHT)) {
            this.c.removeView(this.d);
            this.c.addView(this.d);
        } else {
            this.c.removeView(view);
            this.c.addView(view);
        }
        switch (this.m) {
            case TOP:
                view.setPadding(this.o, this.o, this.o, this.p);
                return;
            case BOTTOM:
                view.setPadding(this.o, this.p, this.o, this.o);
                return;
            case INLINE:
                if (this.l == HorizontalAlignment.RIGHT) {
                    view.setPadding(this.o, this.o, this.p, this.o);
                    return;
                } else {
                    view.setPadding(this.p, this.o, this.o, this.o);
                    return;
                }
            default:
                return;
        }
    }

    private void e() {
        switch (this.m) {
            case TOP:
                this.e.setCaretPosition(LikeBoxCountView.LikeBoxCountViewCaretPosition.BOTTOM);
                return;
            case BOTTOM:
                this.e.setCaretPosition(LikeBoxCountView.LikeBoxCountViewCaretPosition.TOP);
                return;
            case INLINE:
                this.e.setCaretPosition(this.l == HorizontalAlignment.RIGHT ? LikeBoxCountView.LikeBoxCountViewCaretPosition.RIGHT : LikeBoxCountView.LikeBoxCountViewCaretPosition.LEFT);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b extends BroadcastReceiver {
        private b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            boolean z = true;
            String action = intent.getAction();
            Bundle extras = intent.getExtras();
            if (extras != null) {
                String string = extras.getString("com.facebook.sdk.LikeActionController.OBJECT_ID");
                if (!ab.a(string) && !ab.a(LikeView.this.f365a, string)) {
                    z = false;
                }
            }
            if (z) {
                if ("com.facebook.sdk.LikeActionController.UPDATED".equals(action)) {
                    LikeView.this.c();
                } else if ("com.facebook.sdk.LikeActionController.DID_ERROR".equals(action)) {
                    if (LikeView.this.h != null) {
                        LikeView.this.h.a(w.a(extras));
                    }
                } else if ("com.facebook.sdk.LikeActionController.DID_RESET".equals(action)) {
                    LikeView.this.b(LikeView.this.f365a, LikeView.this.b);
                    LikeView.this.c();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a implements c.InterfaceC0015c {
        private boolean b;

        private a() {
        }

        public void a() {
            this.b = true;
        }

        @Override // com.facebook.share.internal.c.InterfaceC0015c
        public void a(com.facebook.share.internal.c cVar, FacebookException facebookException) {
            if (!this.b) {
                if (cVar != null) {
                    if (!cVar.e()) {
                        facebookException = new FacebookException("Cannot use LikeView. The device may not be supported.");
                    }
                    LikeView.this.a(cVar);
                    LikeView.this.c();
                }
                if (facebookException != null && LikeView.this.h != null) {
                    LikeView.this.h.a(facebookException);
                }
                LikeView.this.j = null;
            }
        }
    }
}