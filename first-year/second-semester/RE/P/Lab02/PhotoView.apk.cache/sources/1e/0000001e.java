package android.arch.lifecycle;

import android.arch.lifecycle.Lifecycle;
import android.support.annotation.RestrictTo;

/* compiled from: SingleGeneratedAdapterObserver.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class m implements f {

    /* renamed from: a  reason: collision with root package name */
    private final e f18a;

    @Override // android.arch.lifecycle.f
    public void a(g gVar, Lifecycle.Event event) {
        this.f18a.a(gVar, event, false, null);
        this.f18a.a(gVar, event, true, null);
    }
}