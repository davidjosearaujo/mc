package com.ogaclejapan.smarttablayout.utils;

import android.support.v4.util.SparseArrayCompat;
import android.support.v4.view.PagerAdapter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class ViewPagerItemAdapter extends PagerAdapter {

    /* renamed from: a  reason: collision with root package name */
    private final ViewPagerItems f744a;
    private final SparseArrayCompat<WeakReference<View>> b;
    private final LayoutInflater c;

    @Override // android.support.v4.view.PagerAdapter
    public int getCount() {
        return this.f744a.size();
    }

    @Override // android.support.v4.view.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        View a2 = a(i).a(this.c, viewGroup);
        viewGroup.addView(a2);
        this.b.put(i, new WeakReference<>(a2));
        return a2;
    }

    @Override // android.support.v4.view.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        this.b.remove(i);
        viewGroup.removeView((View) obj);
    }

    @Override // android.support.v4.view.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return obj == view;
    }

    @Override // android.support.v4.view.PagerAdapter
    public CharSequence getPageTitle(int i) {
        return a(i).a();
    }

    @Override // android.support.v4.view.PagerAdapter
    public float getPageWidth(int i) {
        return a(i).b();
    }

    protected b a(int i) {
        return (b) this.f744a.get(i);
    }
}