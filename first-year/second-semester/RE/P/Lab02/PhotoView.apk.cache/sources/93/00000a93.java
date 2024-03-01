package com.google.android.gms.internal;

import android.content.Context;

/* loaded from: classes.dex */
public class v {
    private static v b = new v();

    /* renamed from: a  reason: collision with root package name */
    private u f522a = null;

    public static u b(Context context) {
        return b.a(context);
    }

    public synchronized u a(Context context) {
        if (this.f522a == null) {
            if (context.getApplicationContext() != null) {
                context = context.getApplicationContext();
            }
            this.f522a = new u(context);
        }
        return this.f522a;
    }
}