package com.google.zxing;

/* compiled from: Dimension.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final int f622a;
    private final int b;

    public int a() {
        return this.f622a;
    }

    public int b() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            return this.f622a == aVar.f622a && this.b == aVar.b;
        }
        return false;
    }

    public int hashCode() {
        return (this.f622a * 32713) + this.b;
    }

    public String toString() {
        return this.f622a + "x" + this.b;
    }
}