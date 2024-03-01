package com.ogaclejapan.smarttablayout.utils.v4;

import android.content.Context;
import com.ogaclejapan.smarttablayout.utils.PagerItems;

/* loaded from: classes.dex */
public class FragmentPagerItems extends PagerItems<com.ogaclejapan.smarttablayout.utils.v4.a> {
    public FragmentPagerItems(Context context) {
        super(context);
    }

    public static a with(Context context) {
        return new a(context);
    }

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final FragmentPagerItems f749a;

        public a(Context context) {
            this.f749a = new FragmentPagerItems(context);
        }

        public a a(com.ogaclejapan.smarttablayout.utils.v4.a aVar) {
            this.f749a.add(aVar);
            return this;
        }

        public FragmentPagerItems a() {
            return this.f749a;
        }
    }
}