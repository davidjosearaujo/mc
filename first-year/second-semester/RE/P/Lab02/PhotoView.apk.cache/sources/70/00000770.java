package com.facebook.appevents.internal;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.util.UUID;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SessionInfo.java */
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private Long f127a;
    private Long b;
    private int c;
    private Long d;
    private h e;
    private UUID f;

    public f(Long l, Long l2) {
        this(l, l2, UUID.randomUUID());
    }

    public f(Long l, Long l2, UUID uuid) {
        this.f127a = l;
        this.b = l2;
        this.f = uuid;
    }

    public static f a() {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(com.facebook.d.f());
        long j = defaultSharedPreferences.getLong("com.facebook.appevents.SessionInfo.sessionStartTime", 0L);
        long j2 = defaultSharedPreferences.getLong("com.facebook.appevents.SessionInfo.sessionEndTime", 0L);
        String string = defaultSharedPreferences.getString("com.facebook.appevents.SessionInfo.sessionId", null);
        if (j == 0 || j2 == 0 || string == null) {
            return null;
        }
        f fVar = new f(Long.valueOf(j), Long.valueOf(j2));
        fVar.c = defaultSharedPreferences.getInt("com.facebook.appevents.SessionInfo.interruptionCount", 0);
        fVar.e = h.a();
        fVar.d = Long.valueOf(System.currentTimeMillis());
        fVar.f = UUID.fromString(string);
        return fVar;
    }

    public static void b() {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(com.facebook.d.f()).edit();
        edit.remove("com.facebook.appevents.SessionInfo.sessionStartTime");
        edit.remove("com.facebook.appevents.SessionInfo.sessionEndTime");
        edit.remove("com.facebook.appevents.SessionInfo.interruptionCount");
        edit.remove("com.facebook.appevents.SessionInfo.sessionId");
        edit.apply();
        h.b();
    }

    public Long c() {
        return this.b;
    }

    public void a(Long l) {
        this.b = l;
    }

    public int d() {
        return this.c;
    }

    public void e() {
        this.c++;
    }

    public long f() {
        if (this.d == null) {
            return 0L;
        }
        return this.d.longValue();
    }

    public UUID g() {
        return this.f;
    }

    public long h() {
        if (this.f127a == null || this.b == null) {
            return 0L;
        }
        return this.b.longValue() - this.f127a.longValue();
    }

    public h i() {
        return this.e;
    }

    public void a(h hVar) {
        this.e = hVar;
    }

    public void j() {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(com.facebook.d.f()).edit();
        edit.putLong("com.facebook.appevents.SessionInfo.sessionStartTime", this.f127a.longValue());
        edit.putLong("com.facebook.appevents.SessionInfo.sessionEndTime", this.b.longValue());
        edit.putInt("com.facebook.appevents.SessionInfo.interruptionCount", this.c);
        edit.putString("com.facebook.appevents.SessionInfo.sessionId", this.f.toString());
        edit.apply();
        if (this.e != null) {
            this.e.c();
        }
    }
}