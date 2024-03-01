package android.arch.lifecycle;

import android.arch.lifecycle.Lifecycle;
import android.support.annotation.RestrictTo;

/* compiled from: CompositeGeneratedAdaptersObserver.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class b implements f {

    /* renamed from: a  reason: collision with root package name */
    private final e[] f9a;

    @Override // android.arch.lifecycle.f
    public void a(g gVar, Lifecycle.Event event) {
        j jVar = new j();
        for (e eVar : this.f9a) {
            eVar.a(gVar, event, false, jVar);
        }
        for (e eVar2 : this.f9a) {
            eVar2.a(gVar, event, true, jVar);
        }
    }
}