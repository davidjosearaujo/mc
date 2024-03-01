package com.google.gson;

import com.google.gson.internal.LinkedTreeMap;
import java.util.Map;
import java.util.Set;

/* compiled from: JsonObject.java */
/* loaded from: classes.dex */
public final class k extends i {

    /* renamed from: a  reason: collision with root package name */
    private final LinkedTreeMap<String, i> f613a = new LinkedTreeMap<>();

    public void a(String str, i iVar) {
        if (iVar == null) {
            iVar = j.f612a;
        }
        this.f613a.put(str, iVar);
    }

    public Set<Map.Entry<String, i>> o() {
        return this.f613a.entrySet();
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof k) && ((k) obj).f613a.equals(this.f613a));
    }

    public int hashCode() {
        return this.f613a.hashCode();
    }
}