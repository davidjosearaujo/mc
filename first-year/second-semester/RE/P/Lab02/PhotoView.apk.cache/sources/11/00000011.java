package android.arch.lifecycle;

import android.arch.lifecycle.Lifecycle;

/* compiled from: FullLifecycleObserverAdapter.java */
/* loaded from: classes.dex */
class d implements f {

    /* renamed from: a  reason: collision with root package name */
    private final c f10a;

    @Override // android.arch.lifecycle.f
    public void a(g gVar, Lifecycle.Event event) {
        switch (event) {
            case ON_CREATE:
                this.f10a.a(gVar);
                return;
            case ON_START:
                this.f10a.b(gVar);
                return;
            case ON_RESUME:
                this.f10a.c(gVar);
                return;
            case ON_PAUSE:
                this.f10a.d(gVar);
                return;
            case ON_STOP:
                this.f10a.e(gVar);
                return;
            case ON_DESTROY:
                this.f10a.f(gVar);
                return;
            case ON_ANY:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
            default:
                return;
        }
    }
}