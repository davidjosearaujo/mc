package com.facebook.internal;

import android.app.Activity;
import android.content.Intent;
import android.support.v4.app.Fragment;

/* compiled from: FragmentWrapper.java */
/* loaded from: classes.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    private Fragment f200a;
    private android.app.Fragment b;

    public n(Fragment fragment) {
        ac.a(fragment, "fragment");
        this.f200a = fragment;
    }

    public n(android.app.Fragment fragment) {
        ac.a(fragment, "fragment");
        this.b = fragment;
    }

    public android.app.Fragment a() {
        return this.b;
    }

    public Fragment b() {
        return this.f200a;
    }

    public void a(Intent intent, int i) {
        if (this.f200a != null) {
            this.f200a.startActivityForResult(intent, i);
        } else {
            this.b.startActivityForResult(intent, i);
        }
    }

    public final Activity c() {
        return this.f200a != null ? this.f200a.getActivity() : this.b.getActivity();
    }
}