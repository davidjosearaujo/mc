package com.google.android.gms.auth.api.signin.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.c;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;

/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final Lock f389a = new ReentrantLock();
    private static b b;
    private final Lock c = new ReentrantLock();
    private final SharedPreferences d;

    b(Context context) {
        this.d = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    public static b a(Context context) {
        c.a(context);
        f389a.lock();
        try {
            if (b == null) {
                b = new b(context.getApplicationContext());
            }
            return b;
        } finally {
            f389a.unlock();
        }
    }

    private String a(String str, String str2) {
        String valueOf = String.valueOf(":");
        return new StringBuilder(String.valueOf(str).length() + 0 + String.valueOf(valueOf).length() + String.valueOf(str2).length()).append(str).append(valueOf).append(str2).toString();
    }

    public GoogleSignInAccount a() {
        return a(c("defaultGoogleSignInAccount"));
    }

    GoogleSignInAccount a(String str) {
        String c;
        if (TextUtils.isEmpty(str) || (c = c(a("googleSignInAccount", str))) == null) {
            return null;
        }
        try {
            return GoogleSignInAccount.a(c);
        } catch (JSONException e) {
            return null;
        }
    }

    public GoogleSignInOptions b() {
        return b(c("defaultGoogleSignInAccount"));
    }

    GoogleSignInOptions b(String str) {
        String c;
        if (TextUtils.isEmpty(str) || (c = c(a("googleSignInOptions", str))) == null) {
            return null;
        }
        try {
            return GoogleSignInOptions.a(c);
        } catch (JSONException e) {
            return null;
        }
    }

    protected String c(String str) {
        this.c.lock();
        try {
            return this.d.getString(str, null);
        } finally {
            this.c.unlock();
        }
    }
}