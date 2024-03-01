package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.view.View;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.c;
import com.google.android.gms.internal.ac;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    private final Account f440a;
    private final Set<Scope> b;
    private final Set<Scope> c;
    private final Map<com.google.android.gms.common.api.a<?>, a> d;
    private final int e;
    private final View f;
    private final String g;
    private final String h;
    private final ac i;
    private Integer j;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Set<Scope> f441a;
    }

    public m(Account account, Set<Scope> set, Map<com.google.android.gms.common.api.a<?>, a> map, int i, View view, String str, String str2, ac acVar) {
        this.f440a = account;
        this.b = set == null ? Collections.EMPTY_SET : Collections.unmodifiableSet(set);
        this.d = map == null ? Collections.EMPTY_MAP : map;
        this.f = view;
        this.e = i;
        this.g = str;
        this.h = str2;
        this.i = acVar;
        HashSet hashSet = new HashSet(this.b);
        for (a aVar : this.d.values()) {
            hashSet.addAll(aVar.f441a);
        }
        this.c = Collections.unmodifiableSet(hashSet);
    }

    public static m a(Context context) {
        return new c.a(context).a();
    }

    public Account a() {
        return this.f440a;
    }

    public Account b() {
        return this.f440a != null ? this.f440a : new Account("<<default account>>", "com.google");
    }

    public Set<Scope> c() {
        return this.c;
    }

    public String d() {
        return this.g;
    }

    public String e() {
        return this.h;
    }

    public ac f() {
        return this.i;
    }

    public Integer g() {
        return this.j;
    }
}