package com.google.android.gms.b;

import android.support.annotation.NonNull;

/* loaded from: classes.dex */
public class b<TResult> {

    /* renamed from: a  reason: collision with root package name */
    private final e<TResult> f390a = new e<>();

    public void a(@NonNull Exception exc) {
        this.f390a.a(exc);
    }

    public void a(TResult tresult) {
        this.f390a.a((e<TResult>) tresult);
    }

    public boolean b(@NonNull Exception exc) {
        return this.f390a.b(exc);
    }
}