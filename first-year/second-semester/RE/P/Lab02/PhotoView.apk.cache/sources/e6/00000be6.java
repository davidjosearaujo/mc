package com.mbv.a.sdklibrary.manager;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* compiled from: ScheduleExecutorManage.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static volatile b f706a;
    private ScheduledExecutorService b;

    public static b a() {
        if (f706a == null) {
            synchronized (b.class) {
                if (f706a == null) {
                    f706a = new b();
                }
            }
        }
        return f706a;
    }

    public void a(Runnable runnable) {
        if (this.b == null) {
            this.b = Executors.newSingleThreadScheduledExecutor();
            this.b.scheduleAtFixedRate(runnable, 10000L, 180000L, TimeUnit.MILLISECONDS);
        }
    }

    public void b() {
        if (this.b != null) {
            this.b.shutdown();
            this.b = null;
        }
    }
}