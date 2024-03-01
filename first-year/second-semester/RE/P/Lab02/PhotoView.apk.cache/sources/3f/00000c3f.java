package com.ogaclejapan.smarttablayout.utils.v4;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;

/* compiled from: FragmentPagerItem.java */
/* loaded from: classes.dex */
public class a extends com.ogaclejapan.smarttablayout.utils.a {

    /* renamed from: a  reason: collision with root package name */
    private final String f751a;
    private final Bundle b;

    protected a(CharSequence charSequence, float f, String str, Bundle bundle) {
        super(charSequence, f);
        this.f751a = str;
        this.b = bundle;
    }

    public static a a(CharSequence charSequence, Class<? extends Fragment> cls, Bundle bundle) {
        return a(charSequence, 1.0f, cls, bundle);
    }

    public static a a(CharSequence charSequence, float f, Class<? extends Fragment> cls, Bundle bundle) {
        return new a(charSequence, f, cls.getName(), bundle);
    }

    static void a(Bundle bundle, int i) {
        bundle.putInt("FragmentPagerItem:Position", i);
    }

    public Fragment a(Context context, int i) {
        a(this.b, i);
        return Fragment.instantiate(context, this.f751a, this.b);
    }
}