package com.facebook.internal;

import android.content.Intent;
import java.util.UUID;

/* compiled from: AppCall.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static a f156a;
    private UUID b;
    private Intent c;
    private int d;

    public static a a() {
        return f156a;
    }

    private static synchronized boolean a(a aVar) {
        boolean z;
        synchronized (a.class) {
            a a2 = a();
            f156a = aVar;
            z = a2 != null;
        }
        return z;
    }

    public a(int i) {
        this(i, UUID.randomUUID());
    }

    public a(int i, UUID uuid) {
        this.b = uuid;
        this.d = i;
    }

    public Intent b() {
        return this.c;
    }

    public UUID c() {
        return this.b;
    }

    public int d() {
        return this.d;
    }

    public void a(Intent intent) {
        this.c = intent;
    }

    public boolean e() {
        return a(this);
    }
}