package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.support.v4.app.NotificationCompat;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.c;

/* loaded from: classes.dex */
public final class aa {

    /* renamed from: a  reason: collision with root package name */
    public static final a.g<aj> f492a = new a.g<>();
    public static final a.g<aj> b = new a.g<>();
    public static final a.b<aj, ac> c = new a.b<aj, ac>() { // from class: com.google.android.gms.internal.aa.1
        @Override // com.google.android.gms.common.api.a.b
        public aj a(Context context, Looper looper, com.google.android.gms.common.internal.m mVar, ac acVar, c.b bVar, c.InterfaceC0020c interfaceC0020c) {
            return new aj(context, looper, true, mVar, acVar == null ? ac.f494a : acVar, bVar, interfaceC0020c);
        }
    };
    static final a.b<aj, a> d = new a.b<aj, a>() { // from class: com.google.android.gms.internal.aa.2
        @Override // com.google.android.gms.common.api.a.b
        public aj a(Context context, Looper looper, com.google.android.gms.common.internal.m mVar, a aVar, c.b bVar, c.InterfaceC0020c interfaceC0020c) {
            return new aj(context, looper, false, mVar, aVar.a(), bVar, interfaceC0020c);
        }
    };
    public static final Scope e = new Scope("profile");
    public static final Scope f = new Scope(NotificationCompat.CATEGORY_EMAIL);
    public static final com.google.android.gms.common.api.a<ac> g = new com.google.android.gms.common.api.a<>("SignIn.API", c, f492a);
    public static final com.google.android.gms.common.api.a<a> h = new com.google.android.gms.common.api.a<>("SignIn.INTERNAL_API", d, b);

    /* loaded from: classes.dex */
    public static class a implements a.InterfaceC0018a.InterfaceC0019a {

        /* renamed from: a  reason: collision with root package name */
        private final Bundle f493a;

        public Bundle a() {
            return this.f493a;
        }
    }
}