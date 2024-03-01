package com.google.gson;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: JsonArray.java */
/* loaded from: classes.dex */
public final class f extends i implements Iterable<i> {

    /* renamed from: a  reason: collision with root package name */
    private final List<i> f552a = new ArrayList();

    public void a(i iVar) {
        if (iVar == null) {
            iVar = j.f612a;
        }
        this.f552a.add(iVar);
    }

    @Override // java.lang.Iterable
    public Iterator<i> iterator() {
        return this.f552a.iterator();
    }

    @Override // com.google.gson.i
    public Number a() {
        if (this.f552a.size() == 1) {
            return this.f552a.get(0).a();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.i
    public String b() {
        if (this.f552a.size() == 1) {
            return this.f552a.get(0).b();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.i
    public double c() {
        if (this.f552a.size() == 1) {
            return this.f552a.get(0).c();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.i
    public long d() {
        if (this.f552a.size() == 1) {
            return this.f552a.get(0).d();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.i
    public int e() {
        if (this.f552a.size() == 1) {
            return this.f552a.get(0).e();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.i
    public boolean f() {
        if (this.f552a.size() == 1) {
            return this.f552a.get(0).f();
        }
        throw new IllegalStateException();
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof f) && ((f) obj).f552a.equals(this.f552a));
    }

    public int hashCode() {
        return this.f552a.hashCode();
    }
}