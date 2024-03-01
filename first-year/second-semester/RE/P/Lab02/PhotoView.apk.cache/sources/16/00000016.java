package android.arch.lifecycle;

import android.arch.lifecycle.Lifecycle;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* compiled from: LifecycleRegistry.java */
/* loaded from: classes.dex */
public class h extends Lifecycle {
    private final WeakReference<g> c;

    /* renamed from: a  reason: collision with root package name */
    private android.arch.a.a.a<Object, a> f12a = new android.arch.a.a.a<>();
    private int d = 0;
    private boolean e = false;
    private boolean f = false;
    private ArrayList<Lifecycle.State> g = new ArrayList<>();
    private Lifecycle.State b = Lifecycle.State.INITIALIZED;

    public h(@NonNull g gVar) {
        this.c = new WeakReference<>(gVar);
    }

    @MainThread
    public void a(@NonNull Lifecycle.State state) {
        b(state);
    }

    public void a(@NonNull Lifecycle.Event event) {
        b(b(event));
    }

    private void b(Lifecycle.State state) {
        if (this.b != state) {
            this.b = state;
            if (this.e || this.d != 0) {
                this.f = true;
                return;
            }
            this.e = true;
            d();
            this.e = false;
        }
    }

    private boolean b() {
        if (this.f12a.a() == 0) {
            return true;
        }
        Lifecycle.State state = this.f12a.d().getValue().f14a;
        Lifecycle.State state2 = this.f12a.e().getValue().f14a;
        return state == state2 && this.b == state2;
    }

    private void c() {
        this.g.remove(this.g.size() - 1);
    }

    private void c(Lifecycle.State state) {
        this.g.add(state);
    }

    @Override // android.arch.lifecycle.Lifecycle
    public Lifecycle.State a() {
        return this.b;
    }

    static Lifecycle.State b(Lifecycle.Event event) {
        switch (event) {
            case ON_CREATE:
            case ON_STOP:
                return Lifecycle.State.CREATED;
            case ON_START:
            case ON_PAUSE:
                return Lifecycle.State.STARTED;
            case ON_RESUME:
                return Lifecycle.State.RESUMED;
            case ON_DESTROY:
                return Lifecycle.State.DESTROYED;
            default:
                throw new IllegalArgumentException("Unexpected event value " + event);
        }
    }

    private static Lifecycle.Event d(Lifecycle.State state) {
        switch (state) {
            case INITIALIZED:
                throw new IllegalArgumentException();
            case CREATED:
                return Lifecycle.Event.ON_DESTROY;
            case STARTED:
                return Lifecycle.Event.ON_STOP;
            case RESUMED:
                return Lifecycle.Event.ON_PAUSE;
            case DESTROYED:
                throw new IllegalArgumentException();
            default:
                throw new IllegalArgumentException("Unexpected state value " + state);
        }
    }

    private static Lifecycle.Event e(Lifecycle.State state) {
        switch (state) {
            case INITIALIZED:
            case DESTROYED:
                return Lifecycle.Event.ON_CREATE;
            case CREATED:
                return Lifecycle.Event.ON_START;
            case STARTED:
                return Lifecycle.Event.ON_RESUME;
            case RESUMED:
                throw new IllegalArgumentException();
            default:
                throw new IllegalArgumentException("Unexpected state value " + state);
        }
    }

    private void a(g gVar) {
        android.arch.a.a.b<Object, a>.d c = this.f12a.c();
        while (c.hasNext() && !this.f) {
            Map.Entry next = c.next();
            a aVar = (a) next.getValue();
            while (aVar.f14a.compareTo(this.b) < 0 && !this.f && this.f12a.a((android.arch.a.a.a<Object, a>) next.getKey())) {
                c(aVar.f14a);
                aVar.a(gVar, e(aVar.f14a));
                c();
            }
        }
    }

    private void b(g gVar) {
        Iterator<Map.Entry<Object, a>> b = this.f12a.b();
        while (b.hasNext() && !this.f) {
            Map.Entry<Object, a> next = b.next();
            a value = next.getValue();
            while (value.f14a.compareTo(this.b) > 0 && !this.f && this.f12a.a((android.arch.a.a.a<Object, a>) next.getKey())) {
                Lifecycle.Event d = d(value.f14a);
                c(b(d));
                value.a(gVar, d);
                c();
            }
        }
    }

    private void d() {
        g gVar = this.c.get();
        if (gVar == null) {
            Log.w("LifecycleRegistry", "LifecycleOwner is garbage collected, you shouldn't try dispatch new events from it.");
            return;
        }
        while (!b()) {
            this.f = false;
            if (this.b.compareTo(this.f12a.d().getValue().f14a) < 0) {
                b(gVar);
            }
            Map.Entry<Object, a> e = this.f12a.e();
            if (!this.f && e != null && this.b.compareTo(e.getValue().f14a) > 0) {
                a(gVar);
            }
        }
        this.f = false;
    }

    static Lifecycle.State a(@NonNull Lifecycle.State state, @Nullable Lifecycle.State state2) {
        return (state2 == null || state2.compareTo(state) >= 0) ? state : state2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LifecycleRegistry.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        Lifecycle.State f14a;
        f b;

        void a(g gVar, Lifecycle.Event event) {
            Lifecycle.State b = h.b(event);
            this.f14a = h.a(this.f14a, b);
            this.b.a(gVar, event);
            this.f14a = b;
        }
    }
}