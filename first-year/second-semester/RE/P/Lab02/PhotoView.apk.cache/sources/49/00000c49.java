package com.squareup.picasso;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.support.v4.internal.view.SupportMenu;
import android.widget.ImageView;
import com.squareup.picasso.a;
import java.lang.ref.ReferenceQueue;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public class Picasso {

    /* renamed from: a  reason: collision with root package name */
    static final Handler f757a = new Handler(Looper.getMainLooper()) { // from class: com.squareup.picasso.Picasso.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 3:
                    com.squareup.picasso.a aVar = (com.squareup.picasso.a) message.obj;
                    if (aVar.j().l) {
                        y.a("Main", "canceled", aVar.b.a(), "target got garbage collected");
                    }
                    aVar.f764a.a(aVar.d());
                    return;
                case 8:
                    List list = (List) message.obj;
                    int size = list.size();
                    for (int i = 0; i < size; i++) {
                        com.squareup.picasso.c cVar = (com.squareup.picasso.c) list.get(i);
                        cVar.b.a(cVar);
                    }
                    return;
                case 13:
                    List list2 = (List) message.obj;
                    int size2 = list2.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        com.squareup.picasso.a aVar2 = (com.squareup.picasso.a) list2.get(i2);
                        aVar2.f764a.c(aVar2);
                    }
                    return;
                default:
                    throw new AssertionError("Unknown handler message received: " + message.what);
            }
        }
    };
    static volatile Picasso b = null;
    final Context c;
    final i d;
    final com.squareup.picasso.d e;
    final u f;
    final Map<Object, com.squareup.picasso.a> g;
    final Map<ImageView, h> h;
    final ReferenceQueue<Object> i;
    final Bitmap.Config j;
    boolean k;
    volatile boolean l;
    boolean m;
    private final c n;
    private final d o;
    private final b p;
    private final List<s> q;

    /* loaded from: classes.dex */
    public enum Priority {
        LOW,
        NORMAL,
        HIGH
    }

    /* loaded from: classes.dex */
    public interface c {
        void a(Picasso picasso, Uri uri, Exception exc);
    }

    /* loaded from: classes.dex */
    public interface d {

        /* renamed from: a  reason: collision with root package name */
        public static final d f763a = new d() { // from class: com.squareup.picasso.Picasso.d.1
            @Override // com.squareup.picasso.Picasso.d
            public q a(q qVar) {
                return qVar;
            }
        };

        q a(q qVar);
    }

    Picasso(Context context, i iVar, com.squareup.picasso.d dVar, c cVar, d dVar2, List<s> list, u uVar, Bitmap.Config config, boolean z, boolean z2) {
        this.c = context;
        this.d = iVar;
        this.e = dVar;
        this.n = cVar;
        this.o = dVar2;
        this.j = config;
        ArrayList arrayList = new ArrayList((list != null ? list.size() : 0) + 7);
        arrayList.add(new t(context));
        if (list != null) {
            arrayList.addAll(list);
        }
        arrayList.add(new f(context));
        arrayList.add(new MediaStoreRequestHandler(context));
        arrayList.add(new g(context));
        arrayList.add(new com.squareup.picasso.b(context));
        arrayList.add(new j(context));
        arrayList.add(new NetworkRequestHandler(iVar.d, uVar));
        this.q = Collections.unmodifiableList(arrayList);
        this.f = uVar;
        this.g = new WeakHashMap();
        this.h = new WeakHashMap();
        this.k = z;
        this.l = z2;
        this.i = new ReferenceQueue<>();
        this.p = new b(this.i, f757a);
        this.p.start();
    }

    public void a(ImageView imageView) {
        a((Object) imageView);
    }

    public r a(Uri uri) {
        return new r(this, uri, 0);
    }

    public r a(String str) {
        if (str == null) {
            return new r(this, null, 0);
        }
        if (str.trim().length() == 0) {
            throw new IllegalArgumentException("Path must not be empty.");
        }
        return a(Uri.parse(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<s> a() {
        return this.q;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public q a(q qVar) {
        q a2 = this.o.a(qVar);
        if (a2 == null) {
            throw new IllegalStateException("Request transformer " + this.o.getClass().getCanonicalName() + " returned null for " + qVar);
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ImageView imageView, h hVar) {
        this.h.put(imageView, hVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(com.squareup.picasso.a aVar) {
        Object d2 = aVar.d();
        if (d2 != null && this.g.get(d2) != aVar) {
            a(d2);
            this.g.put(d2, aVar);
        }
        b(aVar);
    }

    void b(com.squareup.picasso.a aVar) {
        this.d.a(aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bitmap b(String str) {
        Bitmap a2 = this.e.a(str);
        if (a2 != null) {
            this.f.a();
        } else {
            this.f.b();
        }
        return a2;
    }

    void a(com.squareup.picasso.c cVar) {
        boolean z = true;
        com.squareup.picasso.a i = cVar.i();
        List<com.squareup.picasso.a> k = cVar.k();
        boolean z2 = (k == null || k.isEmpty()) ? false : true;
        if (i == null && !z2) {
            z = false;
        }
        if (z) {
            Uri uri = cVar.h().d;
            Exception l = cVar.l();
            Bitmap e = cVar.e();
            LoadedFrom m = cVar.m();
            if (i != null) {
                a(e, m, i);
            }
            if (z2) {
                int size = k.size();
                for (int i2 = 0; i2 < size; i2++) {
                    a(e, m, k.get(i2));
                }
            }
            if (this.n != null && l != null) {
                this.n.a(this, uri, l);
            }
        }
    }

    void c(com.squareup.picasso.a aVar) {
        Bitmap bitmap = null;
        if (MemoryPolicy.shouldReadFromMemoryCache(aVar.e)) {
            bitmap = b(aVar.e());
        }
        if (bitmap != null) {
            a(bitmap, LoadedFrom.MEMORY, aVar);
            if (this.l) {
                y.a("Main", "completed", aVar.b.a(), "from " + LoadedFrom.MEMORY);
                return;
            }
            return;
        }
        a(aVar);
        if (this.l) {
            y.a("Main", "resumed", aVar.b.a());
        }
    }

    private void a(Bitmap bitmap, LoadedFrom loadedFrom, com.squareup.picasso.a aVar) {
        if (!aVar.f()) {
            if (!aVar.g()) {
                this.g.remove(aVar.d());
            }
            if (bitmap != null) {
                if (loadedFrom == null) {
                    throw new AssertionError("LoadedFrom cannot be null.");
                }
                aVar.a(bitmap, loadedFrom);
                if (this.l) {
                    y.a("Main", "completed", aVar.b.a(), "from " + loadedFrom);
                    return;
                }
                return;
            }
            aVar.a();
            if (this.l) {
                y.a("Main", "errored", aVar.b.a());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Object obj) {
        y.a();
        com.squareup.picasso.a remove = this.g.remove(obj);
        if (remove != null) {
            remove.b();
            this.d.b(remove);
        }
        if (obj instanceof ImageView) {
            h remove2 = this.h.remove((ImageView) obj);
            if (remove2 != null) {
                remove2.a();
            }
        }
    }

    /* loaded from: classes.dex */
    private static class b extends Thread {

        /* renamed from: a  reason: collision with root package name */
        private final ReferenceQueue<Object> f761a;
        private final Handler b;

        b(ReferenceQueue<Object> referenceQueue, Handler handler) {
            this.f761a = referenceQueue;
            this.b = handler;
            setDaemon(true);
            setName("Picasso-refQueue");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            while (true) {
                try {
                    a.C0044a c0044a = (a.C0044a) this.f761a.remove(1000L);
                    Message obtainMessage = this.b.obtainMessage();
                    if (c0044a != null) {
                        obtainMessage.what = 3;
                        obtainMessage.obj = c0044a.f765a;
                        this.b.sendMessage(obtainMessage);
                    } else {
                        obtainMessage.recycle();
                    }
                } catch (InterruptedException e) {
                    return;
                } catch (Exception e2) {
                    this.b.post(new Runnable() { // from class: com.squareup.picasso.Picasso.b.1
                        @Override // java.lang.Runnable
                        public void run() {
                            throw new RuntimeException(e2);
                        }
                    });
                    return;
                }
            }
        }
    }

    public static Picasso a(Context context) {
        if (b == null) {
            synchronized (Picasso.class) {
                if (b == null) {
                    b = new a(context).a();
                }
            }
        }
        return b;
    }

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final Context f760a;
        private Downloader b;
        private ExecutorService c;
        private com.squareup.picasso.d d;
        private c e;
        private d f;
        private List<s> g;
        private Bitmap.Config h;
        private boolean i;
        private boolean j;

        public a(Context context) {
            if (context == null) {
                throw new IllegalArgumentException("Context must not be null.");
            }
            this.f760a = context.getApplicationContext();
        }

        public Picasso a() {
            Context context = this.f760a;
            if (this.b == null) {
                this.b = y.a(context);
            }
            if (this.d == null) {
                this.d = new l(context);
            }
            if (this.c == null) {
                this.c = new p();
            }
            if (this.f == null) {
                this.f = d.f763a;
            }
            u uVar = new u(this.d);
            return new Picasso(context, new i(context, this.c, Picasso.f757a, this.b, this.d, uVar), this.d, this.e, this.f, this.g, uVar, this.h, this.i, this.j);
        }
    }

    /* loaded from: classes.dex */
    public enum LoadedFrom {
        MEMORY(-16711936),
        DISK(-16776961),
        NETWORK(SupportMenu.CATEGORY_MASK);
        
        final int debugColor;

        LoadedFrom(int i) {
            this.debugColor = i;
        }
    }
}