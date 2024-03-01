package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import com.google.android.gms.internal.x;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public abstract class a<T> {

    /* renamed from: com.google.android.gms.flags.impl.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0030a extends a<Boolean> {
        public static Boolean a(final SharedPreferences sharedPreferences, final String str, final Boolean bool) {
            return (Boolean) x.a(new Callable<Boolean>() { // from class: com.google.android.gms.flags.impl.a.a.1
                @Override // java.util.concurrent.Callable
                /* renamed from: a */
                public Boolean call() {
                    return Boolean.valueOf(sharedPreferences.getBoolean(str, bool.booleanValue()));
                }
            });
        }
    }

    /* loaded from: classes.dex */
    public static class b extends a<Integer> {
        public static Integer a(final SharedPreferences sharedPreferences, final String str, final Integer num) {
            return (Integer) x.a(new Callable<Integer>() { // from class: com.google.android.gms.flags.impl.a.b.1
                @Override // java.util.concurrent.Callable
                /* renamed from: a */
                public Integer call() {
                    return Integer.valueOf(sharedPreferences.getInt(str, num.intValue()));
                }
            });
        }
    }

    /* loaded from: classes.dex */
    public static class c extends a<Long> {
        public static Long a(final SharedPreferences sharedPreferences, final String str, final Long l) {
            return (Long) x.a(new Callable<Long>() { // from class: com.google.android.gms.flags.impl.a.c.1
                @Override // java.util.concurrent.Callable
                /* renamed from: a */
                public Long call() {
                    return Long.valueOf(sharedPreferences.getLong(str, l.longValue()));
                }
            });
        }
    }

    /* loaded from: classes.dex */
    public static class d extends a<String> {
        public static String a(final SharedPreferences sharedPreferences, final String str, final String str2) {
            return (String) x.a(new Callable<String>() { // from class: com.google.android.gms.flags.impl.a.d.1
                @Override // java.util.concurrent.Callable
                /* renamed from: a */
                public String call() {
                    return sharedPreferences.getString(str, str2);
                }
            });
        }
    }
}