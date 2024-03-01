package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import com.google.android.gms.common.api.a;

/* loaded from: classes.dex */
public final class ac implements a.InterfaceC0018a.c {

    /* renamed from: a  reason: collision with root package name */
    public static final ac f494a = new a().a();
    private final boolean b;
    private final boolean c;
    private final String d;
    private final boolean e;
    private final String f;
    private final boolean g;
    private final Long h;
    private final Long i;

    /* loaded from: classes.dex */
    public static final class a {
        public ac a() {
            return new ac(false, false, null, false, null, false, null, null);
        }
    }

    private ac(boolean z, boolean z2, String str, boolean z3, String str2, boolean z4, Long l, Long l2) {
        this.b = z;
        this.c = z2;
        this.d = str;
        this.e = z3;
        this.g = z4;
        this.f = str2;
        this.h = l;
        this.i = l2;
    }

    public boolean a() {
        return this.b;
    }

    public boolean b() {
        return this.c;
    }

    public String c() {
        return this.d;
    }

    public boolean d() {
        return this.e;
    }

    @Nullable
    public String e() {
        return this.f;
    }

    public boolean f() {
        return this.g;
    }

    @Nullable
    public Long g() {
        return this.h;
    }

    @Nullable
    public Long h() {
        return this.i;
    }
}