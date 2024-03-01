package com.mbv.a.sdklibrary.net;

import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: DefaultThreadPool.java */
/* loaded from: classes.dex */
public class a {
    private static a c = null;

    /* renamed from: a  reason: collision with root package name */
    private ArrayBlockingQueue<Runnable> f708a = new ArrayBlockingQueue<>(15);
    private AbstractExecutorService b = new ThreadPoolExecutor(10, 100, 15, TimeUnit.SECONDS, this.f708a, new ThreadPoolExecutor.DiscardOldestPolicy());

    public static a a() {
        if (c == null) {
            c = new a();
        }
        return c;
    }

    public void a(Runnable runnable) {
        this.b.execute(runnable);
    }
}