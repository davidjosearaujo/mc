package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.internal.x;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static SharedPreferences f484a = null;

    public static SharedPreferences a(final Context context) {
        SharedPreferences sharedPreferences;
        synchronized (SharedPreferences.class) {
            if (f484a == null) {
                f484a = (SharedPreferences) x.a(new Callable<SharedPreferences>() { // from class: com.google.android.gms.flags.impl.b.1
                    @Override // java.util.concurrent.Callable
                    /* renamed from: a */
                    public SharedPreferences call() {
                        return context.getSharedPreferences("google_sdk_flags", 1);
                    }
                });
            }
            sharedPreferences = f484a;
        }
        return sharedPreferences;
    }
}