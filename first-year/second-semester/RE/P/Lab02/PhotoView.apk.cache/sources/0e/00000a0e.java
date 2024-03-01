package com.google.android.gms.common.stats;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.util.Log;
import com.google.android.gms.common.stats.b;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f465a = new Object();
    private static a b;
    private static Integer h;
    private final List<String> c;
    private final List<String> d;
    private final List<String> e;
    private final List<String> f;
    private d g;
    private d i;

    private a() {
        if (b()) {
            this.c = Collections.EMPTY_LIST;
            this.d = Collections.EMPTY_LIST;
            this.e = Collections.EMPTY_LIST;
            this.f = Collections.EMPTY_LIST;
            return;
        }
        String a2 = b.a.b.a();
        this.c = a2 == null ? Collections.EMPTY_LIST : Arrays.asList(a2.split(","));
        String a3 = b.a.c.a();
        this.d = a3 == null ? Collections.EMPTY_LIST : Arrays.asList(a3.split(","));
        String a4 = b.a.d.a();
        this.e = a4 == null ? Collections.EMPTY_LIST : Arrays.asList(a4.split(","));
        String a5 = b.a.e.a();
        this.f = a5 == null ? Collections.EMPTY_LIST : Arrays.asList(a5.split(","));
        this.g = new d(1024, b.a.f.a().longValue());
        this.i = new d(1024, b.a.f.a().longValue());
    }

    public static a a() {
        synchronized (f465a) {
            if (b == null) {
                b = new a();
            }
        }
        return b;
    }

    private boolean a(Context context, Intent intent) {
        ComponentName component = intent.getComponent();
        if (component == null) {
            return false;
        }
        return com.google.android.gms.common.util.d.a(context, component.getPackageName());
    }

    private boolean b() {
        return c() == c.b;
    }

    private static int c() {
        if (h == null) {
            try {
                h = Integer.valueOf(c.b);
            } catch (SecurityException e) {
                h = Integer.valueOf(c.b);
            }
        }
        return h.intValue();
    }

    @SuppressLint({"UntrackedBindService"})
    public void a(Context context, ServiceConnection serviceConnection) {
        context.unbindService(serviceConnection);
    }

    public void a(Context context, ServiceConnection serviceConnection, String str, Intent intent) {
    }

    public boolean a(Context context, Intent intent, ServiceConnection serviceConnection, int i) {
        return a(context, context.getClass().getName(), intent, serviceConnection, i);
    }

    @SuppressLint({"UntrackedBindService"})
    public boolean a(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i) {
        if (a(context, intent)) {
            Log.w("ConnectionTracker", "Attempted to bind to a service in a STOPPED package.");
            return false;
        }
        return context.bindService(intent, serviceConnection, i);
    }

    public void b(Context context, ServiceConnection serviceConnection) {
    }
}