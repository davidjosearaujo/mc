package com.google.android.gms.auth.api.signin.a;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    static int f388a = 31;
    private int b = 1;

    public int a() {
        return this.b;
    }

    public a a(Object obj) {
        this.b = (obj == null ? 0 : obj.hashCode()) + (this.b * f388a);
        return this;
    }

    public a a(boolean z) {
        this.b = (z ? 1 : 0) + (this.b * f388a);
        return this;
    }
}