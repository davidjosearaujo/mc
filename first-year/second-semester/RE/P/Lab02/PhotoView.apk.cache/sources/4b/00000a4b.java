package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.zza;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final Map<ar<?>, Boolean> f491a = Collections.synchronizedMap(new WeakHashMap());
    private final Map<com.google.android.gms.b.b<?>, Boolean> b = Collections.synchronizedMap(new WeakHashMap());

    private void a(boolean z, Status status) {
        HashMap hashMap;
        HashMap hashMap2;
        synchronized (this.f491a) {
            hashMap = new HashMap(this.f491a);
        }
        synchronized (this.b) {
            hashMap2 = new HashMap(this.b);
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            if (z || ((Boolean) entry.getValue()).booleanValue()) {
                ((ar) entry.getKey()).a(status);
            }
        }
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            if (z || ((Boolean) entry2.getValue()).booleanValue()) {
                ((com.google.android.gms.b.b) entry2.getKey()).b(new zza(status));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        return (this.f491a.isEmpty() && this.b.isEmpty()) ? false : true;
    }

    public void b() {
        a(false, c.f505a);
    }

    public void c() {
        a(true, k.f519a);
    }
}