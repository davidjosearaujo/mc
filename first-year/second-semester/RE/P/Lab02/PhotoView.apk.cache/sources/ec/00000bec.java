package com.mbv.a.sdklibrary.net;

/* compiled from: HttpCallback.java */
/* loaded from: classes.dex */
public abstract class b {
    public void a(BaseRequest baseRequest, Exception exc, byte[] bArr) {
        a(exc, bArr);
    }

    public void a(Exception exc, byte[] bArr) {
        if (exc != null) {
            exc.printStackTrace();
        }
    }
}