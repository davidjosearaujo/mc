package com.squareup.picasso;

import android.net.NetworkInfo;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.y;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PicassoExecutorService.java */
/* loaded from: classes.dex */
public class p extends ThreadPoolExecutor {
    /* JADX INFO: Access modifiers changed from: package-private */
    public p() {
        super(3, 3, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new y.e());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(NetworkInfo networkInfo) {
        if (networkInfo == null || !networkInfo.isConnectedOrConnecting()) {
            a(3);
            return;
        }
        switch (networkInfo.getType()) {
            case 0:
                switch (networkInfo.getSubtype()) {
                    case 1:
                    case 2:
                        a(1);
                        return;
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 12:
                        a(2);
                        return;
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    default:
                        a(3);
                        return;
                    case 13:
                    case 14:
                    case 15:
                        a(3);
                        return;
                }
            case 1:
            case 6:
            case 9:
                a(4);
                return;
            default:
                a(3);
                return;
        }
    }

    private void a(int i) {
        setCorePoolSize(i);
        setMaximumPoolSize(i);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public Future<?> submit(Runnable runnable) {
        a aVar = new a((c) runnable);
        execute(aVar);
        return aVar;
    }

    /* compiled from: PicassoExecutorService.java */
    /* loaded from: classes.dex */
    private static final class a extends FutureTask<c> implements Comparable<a> {

        /* renamed from: a  reason: collision with root package name */
        private final c f783a;

        public a(c cVar) {
            super(cVar, null);
            this.f783a = cVar;
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(a aVar) {
            Picasso.Priority n = this.f783a.n();
            Picasso.Priority n2 = aVar.f783a.n();
            return n == n2 ? this.f783a.f767a - aVar.f783a.f767a : n2.ordinal() - n.ordinal();
        }
    }
}