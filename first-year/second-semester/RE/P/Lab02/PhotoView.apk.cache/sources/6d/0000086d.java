package com.facebook.login.widget;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v7.content.res.AppCompatResources;
import android.util.AttributeSet;
import android.view.View;
import com.facebook.AccessToken;
import com.facebook.FacebookButtonBase;
import com.facebook.Profile;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.c;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.LoginAuthorizationType;
import com.facebook.internal.ab;
import com.facebook.internal.k;
import com.facebook.internal.l;
import com.facebook.login.DefaultAudience;
import com.facebook.login.LoginBehavior;
import com.facebook.login.R;
import com.facebook.login.d;
import com.facebook.login.widget.ToolTipPopup;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class LoginButton extends FacebookButtonBase {

    /* renamed from: a  reason: collision with root package name */
    private static final String f261a = LoginButton.class.getName();
    private boolean b;
    private String c;
    private String d;
    private a e;
    private String f;
    private boolean g;
    private ToolTipPopup.Style h;
    private ToolTipMode i;
    private long j;
    private ToolTipPopup k;
    private c l;
    private d m;

    /* loaded from: classes.dex */
    public enum ToolTipMode {
        AUTOMATIC("automatic", 0),
        DISPLAY_ALWAYS("display_always", 1),
        NEVER_DISPLAY("never_display", 2);
        
        public static ToolTipMode DEFAULT = AUTOMATIC;
        private int intValue;
        private String stringValue;

        public static ToolTipMode fromInt(int i) {
            ToolTipMode[] values;
            for (ToolTipMode toolTipMode : values()) {
                if (toolTipMode.getValue() == i) {
                    return toolTipMode;
                }
            }
            return null;
        }

        ToolTipMode(String str, int i) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private DefaultAudience f267a = DefaultAudience.FRIENDS;
        private List<String> b = Collections.emptyList();
        private LoginAuthorizationType c = null;
        private LoginBehavior d = LoginBehavior.NATIVE_WITH_FALLBACK;

        a() {
        }

        public void a(DefaultAudience defaultAudience) {
            this.f267a = defaultAudience;
        }

        public DefaultAudience a() {
            return this.f267a;
        }

        public void a(List<String> list) {
            if (LoginAuthorizationType.PUBLISH.equals(this.c)) {
                throw new UnsupportedOperationException("Cannot call setReadPermissions after setPublishPermissions has been called.");
            }
            this.b = list;
            this.c = LoginAuthorizationType.READ;
        }

        public void b(List<String> list) {
            if (LoginAuthorizationType.READ.equals(this.c)) {
                throw new UnsupportedOperationException("Cannot call setPublishPermissions after setReadPermissions has been called.");
            }
            if (ab.a(list)) {
                throw new IllegalArgumentException("Permissions for publish actions cannot be null or empty.");
            }
            this.b = list;
            this.c = LoginAuthorizationType.PUBLISH;
        }

        List<String> b() {
            return this.b;
        }

        public void a(LoginBehavior loginBehavior) {
            this.d = loginBehavior;
        }

        public LoginBehavior c() {
            return this.d;
        }
    }

    public LoginButton(Context context) {
        super(context, null, 0, 0, "fb_login_button_create", "fb_login_button_did_tap");
        this.e = new a();
        this.f = "fb_login_view_usage";
        this.h = ToolTipPopup.Style.BLUE;
        this.j = 6000L;
    }

    public LoginButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0, 0, "fb_login_button_create", "fb_login_button_did_tap");
        this.e = new a();
        this.f = "fb_login_view_usage";
        this.h = ToolTipPopup.Style.BLUE;
        this.j = 6000L;
    }

    public LoginButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 0, "fb_login_button_create", "fb_login_button_did_tap");
        this.e = new a();
        this.f = "fb_login_view_usage";
        this.h = ToolTipPopup.Style.BLUE;
        this.j = 6000L;
    }

    public void setDefaultAudience(DefaultAudience defaultAudience) {
        this.e.a(defaultAudience);
    }

    public DefaultAudience getDefaultAudience() {
        return this.e.a();
    }

    public void setReadPermissions(List<String> list) {
        this.e.a(list);
    }

    public void setReadPermissions(String... strArr) {
        this.e.a(Arrays.asList(strArr));
    }

    public void setPublishPermissions(List<String> list) {
        this.e.b(list);
    }

    public void setPublishPermissions(String... strArr) {
        this.e.b(Arrays.asList(strArr));
    }

    public void setLoginBehavior(LoginBehavior loginBehavior) {
        this.e.a(loginBehavior);
    }

    public LoginBehavior getLoginBehavior() {
        return this.e.c();
    }

    public void setToolTipStyle(ToolTipPopup.Style style) {
        this.h = style;
    }

    public void setToolTipMode(ToolTipMode toolTipMode) {
        this.i = toolTipMode;
    }

    public ToolTipMode getToolTipMode() {
        return this.i;
    }

    public void setToolTipDisplayTime(long j) {
        this.j = j;
    }

    public long getToolTipDisplayTime() {
        return this.j;
    }

    public void a() {
        if (this.k != null) {
            this.k.b();
            this.k = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.FacebookButtonBase, android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.l != null && !this.l.c()) {
            this.l.a();
            c();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.FacebookButtonBase, android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.g && !isInEditMode()) {
            this.g = true;
            b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(k kVar) {
        if (kVar != null && kVar.c() && getVisibility() == 0) {
            b(kVar.b());
        }
    }

    private void b(String str) {
        this.k = new ToolTipPopup(str, this);
        this.k.a(this.h);
        this.k.a(this.j);
        this.k.a();
    }

    private void b() {
        switch (this.i) {
            case AUTOMATIC:
                final String a2 = ab.a(getContext());
                com.facebook.d.d().execute(new Runnable() { // from class: com.facebook.login.widget.LoginButton.1
                    @Override // java.lang.Runnable
                    public void run() {
                        final k a3 = l.a(a2, false);
                        LoginButton.this.getActivity().runOnUiThread(new Runnable() { // from class: com.facebook.login.widget.LoginButton.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                LoginButton.this.a(a3);
                            }
                        });
                    }
                });
                return;
            case DISPLAY_ALWAYS:
                b(getResources().getString(R.string.com_facebook_tooltip_default));
                return;
            default:
                return;
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        c();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.l != null) {
            this.l.b();
        }
        a();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i != 0) {
            a();
        }
    }

    List<String> getPermissions() {
        return this.e.b();
    }

    void setProperties(a aVar) {
        this.e = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.FacebookButtonBase
    public void a(Context context, AttributeSet attributeSet, int i, int i2) {
        super.a(context, attributeSet, i, i2);
        setInternalOnClickListener(getNewLoginClickListener());
        b(context, attributeSet, i, i2);
        if (isInEditMode()) {
            setBackgroundColor(getResources().getColor(com.facebook.common.R.color.com_facebook_blue));
            this.c = "Continue with Facebook";
        } else {
            this.l = new c() { // from class: com.facebook.login.widget.LoginButton.2
                @Override // com.facebook.c
                protected void a(AccessToken accessToken, AccessToken accessToken2) {
                    LoginButton.this.c();
                }
            };
        }
        c();
        setCompoundDrawablesWithIntrinsicBounds(AppCompatResources.getDrawable(getContext(), R.drawable.com_facebook_button_login_logo), (Drawable) null, (Drawable) null, (Drawable) null);
    }

    protected b getNewLoginClickListener() {
        return new b();
    }

    @Override // com.facebook.FacebookButtonBase
    protected int getDefaultStyleResource() {
        return R.style.com_facebook_loginview_default_style;
    }

    private void b(Context context, AttributeSet attributeSet, int i, int i2) {
        this.i = ToolTipMode.DEFAULT;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.com_facebook_login_view, i, i2);
        try {
            this.b = obtainStyledAttributes.getBoolean(R.styleable.com_facebook_login_view_com_facebook_confirm_logout, true);
            this.c = obtainStyledAttributes.getString(R.styleable.com_facebook_login_view_com_facebook_login_text);
            this.d = obtainStyledAttributes.getString(R.styleable.com_facebook_login_view_com_facebook_logout_text);
            this.i = ToolTipMode.fromInt(obtainStyledAttributes.getInt(R.styleable.com_facebook_login_view_com_facebook_tooltip_mode, ToolTipMode.DEFAULT.getValue()));
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        Paint.FontMetrics fontMetrics = getPaint().getFontMetrics();
        int compoundPaddingBottom = getCompoundPaddingBottom() + ((int) Math.ceil(Math.abs(fontMetrics.bottom) + Math.abs(fontMetrics.top))) + getCompoundPaddingTop();
        Resources resources = getResources();
        String str = this.c;
        if (str == null) {
            str = resources.getString(R.string.com_facebook_loginview_log_in_button_continue);
            int c = c(str);
            if (resolveSize(c, i) < c) {
                str = resources.getString(R.string.com_facebook_loginview_log_in_button);
            }
        }
        int c2 = c(str);
        String str2 = this.d;
        if (str2 == null) {
            str2 = resources.getString(R.string.com_facebook_loginview_log_out_button);
        }
        setMeasuredDimension(resolveSize(Math.max(c2, c(str2)), i), compoundPaddingBottom);
    }

    private int c(String str) {
        return a(str) + getCompoundPaddingLeft() + getCompoundDrawablePadding() + getCompoundPaddingRight();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        Resources resources = getResources();
        if (!isInEditMode() && AccessToken.a() != null) {
            setText(this.d != null ? this.d : resources.getString(R.string.com_facebook_loginview_log_out_button));
        } else if (this.c != null) {
            setText(this.c);
        } else {
            String string = resources.getString(R.string.com_facebook_loginview_log_in_button_continue);
            int width = getWidth();
            if (width != 0 && c(string) > width) {
                string = resources.getString(R.string.com_facebook_loginview_log_in_button);
            }
            setText(string);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.FacebookButtonBase
    public int getDefaultRequestCode() {
        return CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode();
    }

    d getLoginManager() {
        if (this.m == null) {
            this.m = d.c();
        }
        return this.m;
    }

    void setLoginManager(d dVar) {
        this.m = dVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public class b implements View.OnClickListener {
        /* JADX INFO: Access modifiers changed from: protected */
        public b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LoginButton.this.a(view);
            AccessToken a2 = AccessToken.a();
            if (a2 != null) {
                a(LoginButton.this.getContext());
            } else {
                b();
            }
            AppEventsLogger b = AppEventsLogger.b(LoginButton.this.getContext());
            Bundle bundle = new Bundle();
            bundle.putInt("logging_in", a2 != null ? 0 : 1);
            b.a(LoginButton.this.f, (Double) null, bundle);
        }

        protected void b() {
            d a2 = a();
            if (LoginAuthorizationType.PUBLISH.equals(LoginButton.this.e.c)) {
                if (LoginButton.this.getFragment() != null) {
                    a2.b(LoginButton.this.getFragment(), LoginButton.this.e.b);
                } else if (LoginButton.this.getNativeFragment() != null) {
                    a2.b(LoginButton.this.getNativeFragment(), LoginButton.this.e.b);
                } else {
                    a2.b(LoginButton.this.getActivity(), LoginButton.this.e.b);
                }
            } else if (LoginButton.this.getFragment() != null) {
                a2.a(LoginButton.this.getFragment(), LoginButton.this.e.b);
            } else if (LoginButton.this.getNativeFragment() != null) {
                a2.a(LoginButton.this.getNativeFragment(), LoginButton.this.e.b);
            } else {
                a2.a(LoginButton.this.getActivity(), LoginButton.this.e.b);
            }
        }

        protected void a(Context context) {
            String string;
            final d a2 = a();
            if (LoginButton.this.b) {
                String string2 = LoginButton.this.getResources().getString(R.string.com_facebook_loginview_log_out_action);
                String string3 = LoginButton.this.getResources().getString(R.string.com_facebook_loginview_cancel_action);
                Profile a3 = Profile.a();
                if (a3 != null && a3.c() != null) {
                    string = String.format(LoginButton.this.getResources().getString(R.string.com_facebook_loginview_logged_in_as), a3.c());
                } else {
                    string = LoginButton.this.getResources().getString(R.string.com_facebook_loginview_logged_in_using_facebook);
                }
                AlertDialog.Builder builder = new AlertDialog.Builder(context);
                builder.setMessage(string).setCancelable(true).setPositiveButton(string2, new DialogInterface.OnClickListener() { // from class: com.facebook.login.widget.LoginButton.b.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        a2.d();
                    }
                }).setNegativeButton(string3, (DialogInterface.OnClickListener) null);
                builder.create().show();
                return;
            }
            a2.d();
        }

        protected d a() {
            d c = d.c();
            c.a(LoginButton.this.getDefaultAudience());
            c.a(LoginButton.this.getLoginBehavior());
            return c;
        }
    }
}