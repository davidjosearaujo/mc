package com.facebook;

import android.content.Intent;
import android.support.v4.content.LocalBroadcastManager;
import com.facebook.internal.ab;
import com.facebook.internal.ac;

/* compiled from: ProfileManager.java */
/* loaded from: classes.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private static volatile j f225a;
    private final LocalBroadcastManager b;
    private final i c;
    private Profile d;

    j(LocalBroadcastManager localBroadcastManager, i iVar) {
        ac.a(localBroadcastManager, "localBroadcastManager");
        ac.a(iVar, "profileCache");
        this.b = localBroadcastManager;
        this.c = iVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j a() {
        if (f225a == null) {
            synchronized (j.class) {
                if (f225a == null) {
                    f225a = new j(LocalBroadcastManager.getInstance(d.f()), new i());
                }
            }
        }
        return f225a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Profile b() {
        return this.d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c() {
        Profile a2 = this.c.a();
        if (a2 != null) {
            a(a2, false);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Profile profile) {
        a(profile, true);
    }

    private void a(Profile profile, boolean z) {
        Profile profile2 = this.d;
        this.d = profile;
        if (z) {
            if (profile != null) {
                this.c.a(profile);
            } else {
                this.c.b();
            }
        }
        if (!ab.a(profile2, profile)) {
            a(profile2, profile);
        }
    }

    private void a(Profile profile, Profile profile2) {
        Intent intent = new Intent("com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED");
        intent.putExtra("com.facebook.sdk.EXTRA_OLD_PROFILE", profile);
        intent.putExtra("com.facebook.sdk.EXTRA_NEW_PROFILE", profile2);
        this.b.sendBroadcast(intent);
    }
}