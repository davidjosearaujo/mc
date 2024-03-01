package com.ogaclejapan.smarttablayout.utils;

import android.content.Context;

/* loaded from: classes.dex */
public class ViewPagerItems extends PagerItems<b> {
    public ViewPagerItems(Context context) {
        super(context);
    }

    public static a with(Context context) {
        return new a(context);
    }

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final ViewPagerItems f745a;

        public a(Context context) {
            this.f745a = new ViewPagerItems(context);
        }
    }
}