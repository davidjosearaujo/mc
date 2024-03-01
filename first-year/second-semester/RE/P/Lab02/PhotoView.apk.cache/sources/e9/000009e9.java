package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.ServiceConnection;

/* loaded from: classes.dex */
public abstract class r {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f447a = new Object();
    private static r b;

    public static r a(Context context) {
        synchronized (f447a) {
            if (b == null) {
                b = new s(context.getApplicationContext());
            }
        }
        return b;
    }

    public abstract boolean a(String str, String str2, ServiceConnection serviceConnection, String str3);

    public abstract void b(String str, String str2, ServiceConnection serviceConnection, String str3);
}