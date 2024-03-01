package com.google.android.gms.common.stats;

import android.support.v4.util.SimpleArrayMap;

/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private final long f469a;
    private final int b;
    private final SimpleArrayMap<String, Long> c;

    public d() {
        this.f469a = 60000L;
        this.b = 10;
        this.c = new SimpleArrayMap<>(10);
    }

    public d(int i, long j) {
        this.f469a = j;
        this.b = i;
        this.c = new SimpleArrayMap<>();
    }
}