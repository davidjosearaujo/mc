package com.squareup.picasso;

import android.graphics.Bitmap;
import android.net.Uri;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public interface Downloader {
    a a(Uri uri, int i);

    /* loaded from: classes.dex */
    public static class ResponseException extends IOException {
        final boolean localCacheOnly;
        final int responseCode;

        public ResponseException(String str, int i, int i2) {
            super(str);
            this.localCacheOnly = NetworkPolicy.isOfflineOnly(i);
            this.responseCode = i2;
        }
    }

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final InputStream f752a;
        final Bitmap b;
        final boolean c;
        final long d;

        public a(InputStream inputStream, boolean z, long j) {
            if (inputStream == null) {
                throw new IllegalArgumentException("Stream may not be null.");
            }
            this.f752a = inputStream;
            this.b = null;
            this.c = z;
            this.d = j;
        }

        public InputStream a() {
            return this.f752a;
        }

        @Deprecated
        public Bitmap b() {
            return this.b;
        }

        public long c() {
            return this.d;
        }
    }
}