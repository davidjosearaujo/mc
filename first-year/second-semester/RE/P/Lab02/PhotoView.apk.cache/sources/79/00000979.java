package com.google.android.gms.common;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import com.google.android.gms.R;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzak;
import com.google.android.gms.dynamic.zzg;

/* loaded from: classes.dex */
public final class SignInButton extends FrameLayout implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private int f394a;
    private int b;
    private View c;
    private View.OnClickListener d;

    public SignInButton(Context context) {
        this(context, null);
    }

    public SignInButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SignInButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.d = null;
        a(context, attributeSet);
        a(this.f394a, this.b);
    }

    private static Button a(Context context, int i, int i2) {
        zzak zzakVar = new zzak(context);
        zzakVar.a(context.getResources(), i, i2);
        return zzakVar;
    }

    private void a(Context context) {
        if (this.c != null) {
            removeView(this.c);
        }
        try {
            this.c = com.google.android.gms.common.internal.g.a(context, this.f394a, this.b);
        } catch (zzg.zza e) {
            Log.w("SignInButton", "Sign in button not found, using placeholder instead");
            this.c = a(context, this.f394a, this.b);
        }
        addView(this.c);
        this.c.setEnabled(isEnabled());
        this.c.setOnClickListener(this);
    }

    private void a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.SignInButton, 0, 0);
        try {
            this.f394a = obtainStyledAttributes.getInt(R.styleable.SignInButton_buttonSize, 0);
            this.b = obtainStyledAttributes.getInt(R.styleable.SignInButton_colorScheme, 2);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public void a(int i, int i2) {
        this.f394a = i;
        this.b = i2;
        a(getContext());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.d == null || view != this.c) {
            return;
        }
        this.d.onClick(this);
    }

    public void setColorScheme(int i) {
        a(this.f394a, i);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.c.setEnabled(z);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.d = onClickListener;
        if (this.c != null) {
            this.c.setOnClickListener(this);
        }
    }

    @Deprecated
    public void setScopes(Scope[] scopeArr) {
        a(this.f394a, this.b);
    }

    public void setSize(int i) {
        a(i, this.b);
    }
}