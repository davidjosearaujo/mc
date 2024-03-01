package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import android.view.View;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.internal.aa;
import com.google.android.gms.internal.ab;
import com.google.android.gms.internal.ac;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    private static final Set<c> f401a = Collections.newSetFromMap(new WeakHashMap());

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private Account f402a;
        private int d;
        private View e;
        private String f;
        private String g;
        private final Context i;
        private Looper l;
        private final Set<Scope> b = new HashSet();
        private final Set<Scope> c = new HashSet();
        private final Map<com.google.android.gms.common.api.a<?>, m.a> h = new ArrayMap();
        private final Map<com.google.android.gms.common.api.a<?>, a.InterfaceC0018a> j = new ArrayMap();
        private int k = -1;
        private com.google.android.gms.common.b m = com.google.android.gms.common.b.a();
        private a.b<? extends ab, ac> n = aa.c;
        private final ArrayList<b> o = new ArrayList<>();
        private final ArrayList<InterfaceC0020c> p = new ArrayList<>();
        private boolean q = false;

        public a(@NonNull Context context) {
            this.i = context;
            this.l = context.getMainLooper();
            this.f = context.getPackageName();
            this.g = context.getClass().getName();
        }

        public m a() {
            ac acVar = ac.f494a;
            if (this.j.containsKey(aa.g)) {
                acVar = (ac) this.j.get(aa.g);
            }
            return new m(this.f402a, this.b, this.h, this.d, this.e, this.f, this.g, acVar);
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        void a(int i);

        void a(@Nullable Bundle bundle);
    }

    /* renamed from: com.google.android.gms.common.api.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0020c {
        void a(@NonNull ConnectionResult connectionResult);
    }

    public abstract void registerConnectionFailedListener(@NonNull InterfaceC0020c interfaceC0020c);

    public abstract void unregisterConnectionFailedListener(@NonNull InterfaceC0020c interfaceC0020c);
}