package com.google.android.gms.internal;

import android.os.Binder;

/* loaded from: classes.dex */
public abstract class l<T> {
    private static final Object c = new Object();
    private static a d = null;
    private static int e = 0;
    private static String f = "com.google.android.providers.gsf.permission.READ_GSERVICES";

    /* renamed from: a  reason: collision with root package name */
    protected final String f520a;
    protected final T b;
    private T g = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface a {
        Integer a(String str, Integer num);

        Long a(String str, Long l);

        String a(String str, String str2);
    }

    protected l(String str, T t) {
        this.f520a = str;
        this.b = t;
    }

    public static l<Integer> a(String str, Integer num) {
        return new l<Integer>(str, num) { // from class: com.google.android.gms.internal.l.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.l
            /* renamed from: b */
            public Integer a(String str2) {
                a aVar = null;
                return aVar.a(this.f520a, (Integer) this.b);
            }
        };
    }

    public static l<Long> a(String str, Long l) {
        return new l<Long>(str, l) { // from class: com.google.android.gms.internal.l.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.l
            /* renamed from: b */
            public Long a(String str2) {
                a aVar = null;
                return aVar.a(this.f520a, (Long) this.b);
            }
        };
    }

    public static l<String> a(String str, String str2) {
        return new l<String>(str, str2) { // from class: com.google.android.gms.internal.l.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.l
            /* renamed from: b */
            public String a(String str3) {
                a aVar = null;
                return aVar.a(this.f520a, (String) this.b);
            }
        };
    }

    public final T a() {
        try {
            return a(this.f520a);
        } catch (SecurityException e2) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return a(this.f520a);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }

    protected abstract T a(String str);
}