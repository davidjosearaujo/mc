package com.google.android.gms.dynamic;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.h;
import com.google.android.gms.common.internal.c;

/* loaded from: classes.dex */
public abstract class zzg<T> {

    /* renamed from: a  reason: collision with root package name */
    private final String f477a;
    private T b;

    /* loaded from: classes.dex */
    public static class zza extends Exception {
        public zza(String str) {
            super(str);
        }

        public zza(String str, Throwable th) {
            super(str, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzg(String str) {
        this.f477a = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final T a(Context context) {
        if (this.b == null) {
            c.a(context);
            Context f = h.f(context);
            if (f == null) {
                throw new zza("Could not get remote context.");
            }
            try {
                this.b = b((IBinder) f.getClassLoader().loadClass(this.f477a).newInstance());
            } catch (ClassNotFoundException e) {
                throw new zza("Could not load creator class.", e);
            } catch (IllegalAccessException e2) {
                throw new zza("Could not access creator.", e2);
            } catch (InstantiationException e3) {
                throw new zza("Could not instantiate creator.", e3);
            }
        }
        return this.b;
    }

    protected abstract T b(IBinder iBinder);
}