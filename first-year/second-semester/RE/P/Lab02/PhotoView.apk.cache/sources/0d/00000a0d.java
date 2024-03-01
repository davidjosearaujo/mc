package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.List;

/* loaded from: classes.dex */
public final class WakeLockEvent extends StatsEvent {
    public static final Parcelable.Creator<WakeLockEvent> CREATOR = new e();

    /* renamed from: a  reason: collision with root package name */
    final int f464a;
    private final long b;
    private int c;
    private final String d;
    private final String e;
    private final String f;
    private final int g;
    private final List<String> h;
    private final String i;
    private final long j;
    private int k;
    private final String l;
    private final float m;
    private final long n;
    private long o = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WakeLockEvent(int i, long j, int i2, String str, int i3, List<String> list, String str2, long j2, int i4, String str3, String str4, float f, long j3, String str5) {
        this.f464a = i;
        this.b = j;
        this.c = i2;
        this.d = str;
        this.e = str3;
        this.f = str5;
        this.g = i3;
        this.h = list;
        this.i = str2;
        this.j = j2;
        this.k = i4;
        this.l = str4;
        this.m = f;
        this.n = j3;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public long a() {
        return this.b;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public int b() {
        return this.c;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public long c() {
        return this.o;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public String d() {
        String valueOf = String.valueOf("\t");
        String valueOf2 = String.valueOf(e());
        String valueOf3 = String.valueOf("\t");
        int h = h();
        String valueOf4 = String.valueOf("\t");
        String join = i() == null ? "" : TextUtils.join(",", i());
        String valueOf5 = String.valueOf("\t");
        int l = l();
        String valueOf6 = String.valueOf("\t");
        String f = f() == null ? "" : f();
        String valueOf7 = String.valueOf("\t");
        String m = m() == null ? "" : m();
        String valueOf8 = String.valueOf("\t");
        float n = n();
        String valueOf9 = String.valueOf("\t");
        String g = g() == null ? "" : g();
        return new StringBuilder(String.valueOf(valueOf).length() + 37 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length() + String.valueOf(valueOf4).length() + String.valueOf(join).length() + String.valueOf(valueOf5).length() + String.valueOf(valueOf6).length() + String.valueOf(f).length() + String.valueOf(valueOf7).length() + String.valueOf(m).length() + String.valueOf(valueOf8).length() + String.valueOf(valueOf9).length() + String.valueOf(g).length()).append(valueOf).append(valueOf2).append(valueOf3).append(h).append(valueOf4).append(join).append(valueOf5).append(l).append(valueOf6).append(f).append(valueOf7).append(m).append(valueOf8).append(n).append(valueOf9).append(g).toString();
    }

    public String e() {
        return this.d;
    }

    public String f() {
        return this.e;
    }

    public String g() {
        return this.f;
    }

    public int h() {
        return this.g;
    }

    public List<String> i() {
        return this.h;
    }

    public String j() {
        return this.i;
    }

    public long k() {
        return this.j;
    }

    public int l() {
        return this.k;
    }

    public String m() {
        return this.l;
    }

    public float n() {
        return this.m;
    }

    public long o() {
        return this.n;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        e.a(this, parcel, i);
    }
}