package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.util.ArrayMap;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class zzabm extends Fragment implements e {

    /* renamed from: a  reason: collision with root package name */
    private static WeakHashMap<FragmentActivity, WeakReference<zzabm>> f525a = new WeakHashMap<>();
    private Map<String, d> b = new ArrayMap();
    private int c = 0;
    private Bundle d;

    @Override // com.google.android.gms.internal.e
    /* renamed from: b */
    public FragmentActivity a() {
        return getActivity();
    }

    @Override // android.support.v4.app.Fragment
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        for (d dVar : this.b.values()) {
            dVar.a(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        for (d dVar : this.b.values()) {
            dVar.a(i, i2, intent);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.c = 1;
        this.d = bundle;
        for (Map.Entry<String, d> entry : this.b.entrySet()) {
            entry.getValue().a(bundle != null ? bundle.getBundle(entry.getKey()) : null);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.c = 4;
        for (d dVar : this.b.values()) {
            dVar.f();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle == null) {
            return;
        }
        for (Map.Entry<String, d> entry : this.b.entrySet()) {
            Bundle bundle2 = new Bundle();
            entry.getValue().b(bundle2);
            bundle.putBundle(entry.getKey(), bundle2);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        this.c = 2;
        for (d dVar : this.b.values()) {
            dVar.a();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        this.c = 3;
        for (d dVar : this.b.values()) {
            dVar.b();
        }
    }
}