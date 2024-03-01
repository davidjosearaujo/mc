package com.facebook;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Log;
import java.net.HttpURLConnection;
import java.util.List;

/* compiled from: GraphRequestAsyncTask.java */
/* loaded from: classes.dex */
public class e extends AsyncTask<Void, Void, List<g>> {

    /* renamed from: a  reason: collision with root package name */
    private static final String f142a = e.class.getCanonicalName();
    private final HttpURLConnection b;
    private final f c;
    private Exception d;

    public e(f fVar) {
        this(null, fVar);
    }

    public e(HttpURLConnection httpURLConnection, f fVar) {
        this.c = fVar;
        this.b = httpURLConnection;
    }

    public String toString() {
        return "{RequestAsyncTask:  connection: " + this.b + ", requests: " + this.c + "}";
    }

    @Override // android.os.AsyncTask
    protected void onPreExecute() {
        Handler handler;
        super.onPreExecute();
        if (d.b()) {
            Log.d(f142a, String.format("execute async task: %s", this));
        }
        if (this.c.c() == null) {
            if (Thread.currentThread() instanceof HandlerThread) {
                handler = new Handler();
            } else {
                handler = new Handler(Looper.getMainLooper());
            }
            this.c.a(handler);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a */
    public void onPostExecute(List<g> list) {
        super.onPostExecute(list);
        if (this.d != null) {
            Log.d(f142a, String.format("onPostExecute: exception encountered during request: %s", this.d.getMessage()));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a */
    public List<g> doInBackground(Void... voidArr) {
        List<g> a2;
        try {
            if (this.b == null) {
                a2 = this.c.g();
            } else {
                a2 = GraphRequest.a(this.b, this.c);
            }
            return a2;
        } catch (Exception e) {
            this.d = e;
            return null;
        }
    }
}