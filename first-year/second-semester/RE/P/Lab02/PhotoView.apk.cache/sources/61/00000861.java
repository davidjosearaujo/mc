package com.facebook.login;

import android.net.Uri;
import com.facebook.login.LoginClient;
import java.util.Collection;

/* compiled from: DeviceLoginManager.java */
/* loaded from: classes.dex */
public class a extends d {
    private static volatile a b;

    /* renamed from: a  reason: collision with root package name */
    private Uri f252a;

    public static a a() {
        if (b == null) {
            synchronized (a.class) {
                if (b == null) {
                    b = new a();
                }
            }
        }
        return b;
    }

    public void a(Uri uri) {
        this.f252a = uri;
    }

    public Uri b() {
        return this.f252a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.login.d
    public LoginClient.Request a(Collection<String> collection) {
        LoginClient.Request a2 = super.a(collection);
        Uri b2 = b();
        if (b2 != null) {
            a2.a(b2.toString());
        }
        return a2;
    }
}