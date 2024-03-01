package com.google.android.gms.common.api;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.a.InterfaceC0018a;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.u;
import java.util.Set;

/* loaded from: classes.dex */
public final class a<O extends InterfaceC0018a> {

    /* renamed from: a  reason: collision with root package name */
    private final b<?, O> f400a;
    private final i<?, O> b;
    private final g<?> c;
    private final j<?> d;
    private final String e;

    /* renamed from: com.google.android.gms.common.api.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0018a {

        /* renamed from: com.google.android.gms.common.api.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public interface InterfaceC0019a extends InterfaceC0018a {
        }

        /* renamed from: com.google.android.gms.common.api.a$a$b */
        /* loaded from: classes.dex */
        public interface b extends InterfaceC0018a {
        }

        /* renamed from: com.google.android.gms.common.api.a$a$c */
        /* loaded from: classes.dex */
        public interface c extends InterfaceC0019a, b {
        }
    }

    /* loaded from: classes.dex */
    public static abstract class b<T extends f, O> extends e<T, O> {
        public abstract T a(Context context, Looper looper, m mVar, O o, c.b bVar, c.InterfaceC0020c interfaceC0020c);
    }

    /* loaded from: classes.dex */
    public interface c {
    }

    /* loaded from: classes.dex */
    public static class d<C extends c> {
    }

    /* loaded from: classes.dex */
    public static abstract class e<T extends c, O> {
    }

    /* loaded from: classes.dex */
    public interface f extends c {
        void a();

        void a(l.f fVar);

        void a(u uVar, Set<Scope> set);

        boolean b();

        boolean c();

        boolean d();

        boolean e();
    }

    /* loaded from: classes.dex */
    public static final class g<C extends f> extends d<C> {
    }

    /* loaded from: classes.dex */
    public interface h<T extends IInterface> extends c {
        T a(IBinder iBinder);

        String a();

        String b();
    }

    /* loaded from: classes.dex */
    public static abstract class i<T extends h, O> extends e<T, O> {
    }

    /* loaded from: classes.dex */
    public static final class j<C extends h> extends d<C> {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <C extends f> a(String str, b<C, O> bVar, g<C> gVar) {
        com.google.android.gms.common.internal.c.a(bVar, "Cannot construct an Api with a null ClientBuilder");
        com.google.android.gms.common.internal.c.a(gVar, "Cannot construct an Api with a null ClientKey");
        this.e = str;
        this.f400a = bVar;
        this.b = null;
        this.c = gVar;
        this.d = null;
    }

    public b<?, O> a() {
        com.google.android.gms.common.internal.c.a(this.f400a != null, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder");
        return this.f400a;
    }

    public String b() {
        return this.e;
    }
}