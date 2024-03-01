package com.squareup.picasso;

import android.graphics.Bitmap;
import android.net.NetworkInfo;
import com.squareup.picasso.Downloader;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.s;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class NetworkRequestHandler extends s {

    /* renamed from: a  reason: collision with root package name */
    private final Downloader f756a;
    private final u b;

    public NetworkRequestHandler(Downloader downloader, u uVar) {
        this.f756a = downloader;
        this.b = uVar;
    }

    @Override // com.squareup.picasso.s
    public boolean a(q qVar) {
        String scheme = qVar.d.getScheme();
        return "http".equals(scheme) || "https".equals(scheme);
    }

    @Override // com.squareup.picasso.s
    public s.a a(q qVar, int i) {
        Downloader.a a2 = this.f756a.a(qVar.d, qVar.c);
        if (a2 == null) {
            return null;
        }
        Picasso.LoadedFrom loadedFrom = a2.c ? Picasso.LoadedFrom.DISK : Picasso.LoadedFrom.NETWORK;
        Bitmap b = a2.b();
        if (b != null) {
            return new s.a(b, loadedFrom);
        }
        InputStream a3 = a2.a();
        if (a3 == null) {
            return null;
        }
        if (loadedFrom == Picasso.LoadedFrom.DISK && a2.c() == 0) {
            y.a(a3);
            throw new ContentLengthException("Received response with 0 content-length header.");
        }
        if (loadedFrom == Picasso.LoadedFrom.NETWORK && a2.c() > 0) {
            this.b.a(a2.c());
        }
        return new s.a(a3, loadedFrom);
    }

    @Override // com.squareup.picasso.s
    int a() {
        return 2;
    }

    @Override // com.squareup.picasso.s
    boolean a(boolean z, NetworkInfo networkInfo) {
        return networkInfo == null || networkInfo.isConnected();
    }

    @Override // com.squareup.picasso.s
    boolean b() {
        return true;
    }

    /* loaded from: classes.dex */
    static class ContentLengthException extends IOException {
        public ContentLengthException(String str) {
            super(str);
        }
    }
}