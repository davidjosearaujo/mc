package com.facebook.appevents;

import android.content.Context;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AppEventCollection.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<AccessTokenAppIdPair, f> f110a = new HashMap<>();

    public synchronized void a(PersistedEvents persistedEvents) {
        if (persistedEvents != null) {
            for (AccessTokenAppIdPair accessTokenAppIdPair : persistedEvents.keySet()) {
                f b = b(accessTokenAppIdPair);
                for (AppEvent appEvent : persistedEvents.get(accessTokenAppIdPair)) {
                    b.a(appEvent);
                }
            }
        }
    }

    public synchronized void a(AccessTokenAppIdPair accessTokenAppIdPair, AppEvent appEvent) {
        b(accessTokenAppIdPair).a(appEvent);
    }

    public synchronized Set<AccessTokenAppIdPair> a() {
        return this.f110a.keySet();
    }

    public synchronized f a(AccessTokenAppIdPair accessTokenAppIdPair) {
        return this.f110a.get(accessTokenAppIdPair);
    }

    public synchronized int b() {
        int i;
        int i2 = 0;
        Iterator<f> it = this.f110a.values().iterator();
        while (true) {
            i = i2;
            if (it.hasNext()) {
                i2 = it.next().a() + i;
            }
        }
        return i;
    }

    private synchronized f b(AccessTokenAppIdPair accessTokenAppIdPair) {
        f fVar;
        fVar = this.f110a.get(accessTokenAppIdPair);
        if (fVar == null) {
            Context f = com.facebook.d.f();
            fVar = new f(com.facebook.internal.b.a(f), AppEventsLogger.c(f));
        }
        this.f110a.put(accessTokenAppIdPair, fVar);
        return fVar;
    }
}