package com.google.android.gms.common;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.t;
import com.google.android.gms.internal.v;

/* loaded from: classes.dex */
public class f {
    public static final int b = h.b;

    /* renamed from: a  reason: collision with root package name */
    private static final f f411a = new f();

    public static f b() {
        return f411a;
    }

    static String b(@Nullable Context context, @Nullable String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("gcore_");
        sb.append(b);
        sb.append("-");
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
        }
        sb.append("-");
        if (context != null) {
            sb.append(context.getPackageName());
        }
        sb.append("-");
        if (context != null) {
            try {
                sb.append(v.b(context).b(context.getPackageName(), 0).versionCode);
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        return sb.toString();
    }

    public int a(Context context) {
        int b2 = h.b(context);
        if (h.b(context, b2)) {
            return 18;
        }
        return b2;
    }

    @Nullable
    public PendingIntent a(Context context, int i, int i2) {
        return a(context, i, i2, null);
    }

    @Nullable
    public PendingIntent a(Context context, int i, int i2, @Nullable String str) {
        Intent b2 = b(context, i, str);
        if (b2 == null) {
            return null;
        }
        return PendingIntent.getActivity(context, i2, b2, 268435456);
    }

    public boolean a(int i) {
        return h.b(i);
    }

    public boolean a(Context context, String str) {
        return h.a(context, str);
    }

    @Nullable
    public Intent b(Context context, int i, @Nullable String str) {
        switch (i) {
            case 1:
            case 2:
                return (context == null || !com.google.android.gms.common.util.g.b(context)) ? t.a("com.google.android.gms", b(context, str)) : t.a();
            case 3:
                return t.a("com.google.android.gms");
            default:
                return null;
        }
    }

    public String b(int i) {
        return h.a(i);
    }
}