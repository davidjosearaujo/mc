package com.google.android.gms.common;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public class d implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    boolean f407a = false;
    private final BlockingQueue<IBinder> b = new LinkedBlockingQueue();

    public IBinder a(long j, TimeUnit timeUnit) {
        com.google.android.gms.common.internal.c.b("BlockingServiceConnection.getServiceWithTimeout() called on main thread");
        if (this.f407a) {
            throw new IllegalStateException("Cannot call get on this connection more than once");
        }
        this.f407a = true;
        IBinder poll = this.b.poll(j, timeUnit);
        if (poll == null) {
            throw new TimeoutException("Timed out waiting for the service connection");
        }
        return poll;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.b.add(iBinder);
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
    }
}