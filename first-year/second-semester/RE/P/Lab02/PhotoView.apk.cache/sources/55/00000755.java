package com.facebook.appevents;

import android.preference.PreferenceManager;
import android.util.Log;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AnalyticsUserIDStore.java */
/* loaded from: classes.dex */
public class a {
    private static String c;

    /* renamed from: a  reason: collision with root package name */
    private static final String f109a = a.class.getSimpleName();
    private static ReentrantReadWriteLock b = new ReentrantReadWriteLock();
    private static volatile boolean d = false;

    a() {
    }

    public static void a() {
        if (!d) {
            AppEventsLogger.h().execute(new Runnable() { // from class: com.facebook.appevents.a.1
                @Override // java.lang.Runnable
                public void run() {
                    a.d();
                }
            });
        }
    }

    public static String b() {
        if (!d) {
            Log.w(f109a, "initStore should have been called before calling setUserID");
            d();
        }
        b.readLock().lock();
        try {
            return c;
        } finally {
            b.readLock().unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d() {
        if (!d) {
            b.writeLock().lock();
            try {
                if (!d) {
                    c = PreferenceManager.getDefaultSharedPreferences(com.facebook.d.f()).getString("com.facebook.appevents.AnalyticsUserIDStore.userID", null);
                    d = true;
                }
            } finally {
                b.writeLock().unlock();
            }
        }
    }
}