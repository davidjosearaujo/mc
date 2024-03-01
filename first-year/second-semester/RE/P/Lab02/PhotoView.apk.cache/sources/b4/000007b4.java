package com.facebook.internal;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class CallbackManagerImpl {

    /* renamed from: a  reason: collision with root package name */
    private static final String f148a = CallbackManagerImpl.class.getSimpleName();
    private static Map<Integer, a> b = new HashMap();
    private Map<Integer, a> c = new HashMap();

    /* loaded from: classes.dex */
    public interface a {
    }

    public static synchronized void a(int i, a aVar) {
        synchronized (CallbackManagerImpl.class) {
            ac.a(aVar, "callback");
            if (!b.containsKey(Integer.valueOf(i))) {
                b.put(Integer.valueOf(i), aVar);
            }
        }
    }

    /* loaded from: classes.dex */
    public enum RequestCodeOffset {
        Login(0),
        Share(1),
        Message(2),
        Like(3),
        GameRequest(4),
        AppGroupCreate(5),
        AppGroupJoin(6),
        AppInvite(7),
        DeviceShare(8),
        InAppPurchase(9);
        
        private final int offset;

        RequestCodeOffset(int i) {
            this.offset = i;
        }

        public int toRequestCode() {
            return com.facebook.d.o() + this.offset;
        }
    }
}