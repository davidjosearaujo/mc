package com.squareup.picasso;

import android.content.Context;
import android.net.Uri;
import com.squareup.okhttp.Cache;
import com.squareup.okhttp.CacheControl;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import com.squareup.picasso.Downloader;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* compiled from: OkHttpDownloader.java */
/* loaded from: classes.dex */
public class n implements Downloader {

    /* renamed from: a  reason: collision with root package name */
    private final OkHttpClient f781a;

    private static OkHttpClient a() {
        OkHttpClient okHttpClient = new OkHttpClient();
        okHttpClient.setConnectTimeout(15000L, TimeUnit.MILLISECONDS);
        okHttpClient.setReadTimeout(20000L, TimeUnit.MILLISECONDS);
        okHttpClient.setWriteTimeout(20000L, TimeUnit.MILLISECONDS);
        return okHttpClient;
    }

    public n(Context context) {
        this(y.b(context));
    }

    public n(File file) {
        this(file, y.a(file));
    }

    public n(File file, long j) {
        this(a());
        try {
            this.f781a.setCache(new Cache(file, j));
        } catch (IOException e) {
        }
    }

    public n(OkHttpClient okHttpClient) {
        this.f781a = okHttpClient;
    }

    @Override // com.squareup.picasso.Downloader
    public Downloader.a a(Uri uri, int i) {
        CacheControl cacheControl = null;
        if (i != 0) {
            if (NetworkPolicy.isOfflineOnly(i)) {
                cacheControl = CacheControl.FORCE_CACHE;
            } else {
                CacheControl.Builder builder = new CacheControl.Builder();
                if (!NetworkPolicy.shouldReadFromDiskCache(i)) {
                    builder.noCache();
                }
                if (!NetworkPolicy.shouldWriteToDiskCache(i)) {
                    builder.noStore();
                }
                cacheControl = builder.build();
            }
        }
        Request.Builder url = new Request.Builder().url(uri.toString());
        if (cacheControl != null) {
            url.cacheControl(cacheControl);
        }
        Response execute = this.f781a.newCall(url.build()).execute();
        int code = execute.code();
        if (code >= 300) {
            execute.body().close();
            throw new Downloader.ResponseException(code + " " + execute.message(), i, code);
        }
        boolean z = execute.cacheResponse() != null;
        ResponseBody body = execute.body();
        return new Downloader.a(body.byteStream(), z, body.contentLength());
    }
}