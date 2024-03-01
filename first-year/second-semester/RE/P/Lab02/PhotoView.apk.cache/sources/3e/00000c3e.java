package com.ogaclejapan.smarttablayout.utils.v4;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentStatePagerAdapter;
import android.support.v4.util.SparseArrayCompat;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class FragmentStatePagerItemAdapter extends FragmentStatePagerAdapter {

    /* renamed from: a  reason: collision with root package name */
    private final FragmentPagerItems f750a;
    private final SparseArrayCompat<WeakReference<Fragment>> b;

    @Override // android.support.v4.view.PagerAdapter
    public int getCount() {
        return this.f750a.size();
    }

    @Override // android.support.v4.app.FragmentStatePagerAdapter
    public Fragment getItem(int i) {
        return a(i).a(this.f750a.getContext(), i);
    }

    @Override // android.support.v4.app.FragmentStatePagerAdapter, android.support.v4.view.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        Object instantiateItem = super.instantiateItem(viewGroup, i);
        if (instantiateItem instanceof Fragment) {
            this.b.put(i, new WeakReference<>((Fragment) instantiateItem));
        }
        return instantiateItem;
    }

    @Override // android.support.v4.app.FragmentStatePagerAdapter, android.support.v4.view.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        this.b.remove(i);
        super.destroyItem(viewGroup, i, obj);
    }

    @Override // android.support.v4.view.PagerAdapter
    public CharSequence getPageTitle(int i) {
        return a(i).a();
    }

    @Override // android.support.v4.view.PagerAdapter
    public float getPageWidth(int i) {
        return a(i).b();
    }

    protected a a(int i) {
        return (a) this.f750a.get(i);
    }
}