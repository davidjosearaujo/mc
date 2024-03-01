package com.ogaclejapan.smarttablayout.utils.v4;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.util.SparseArrayCompat;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class FragmentPagerItemAdapter extends FragmentPagerAdapter {

    /* renamed from: a  reason: collision with root package name */
    private final FragmentPagerItems f748a;
    private final SparseArrayCompat<WeakReference<Fragment>> b;

    public FragmentPagerItemAdapter(FragmentManager fragmentManager, FragmentPagerItems fragmentPagerItems) {
        super(fragmentManager);
        this.f748a = fragmentPagerItems;
        this.b = new SparseArrayCompat<>(fragmentPagerItems.size());
    }

    @Override // android.support.v4.view.PagerAdapter
    public int getCount() {
        return this.f748a.size();
    }

    @Override // android.support.v4.app.FragmentPagerAdapter
    public Fragment getItem(int i) {
        return b(i).a(this.f748a.getContext(), i);
    }

    @Override // android.support.v4.app.FragmentPagerAdapter, android.support.v4.view.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        Object instantiateItem = super.instantiateItem(viewGroup, i);
        if (instantiateItem instanceof Fragment) {
            this.b.put(i, new WeakReference<>((Fragment) instantiateItem));
        }
        return instantiateItem;
    }

    @Override // android.support.v4.app.FragmentPagerAdapter, android.support.v4.view.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        this.b.remove(i);
        super.destroyItem(viewGroup, i, obj);
    }

    @Override // android.support.v4.view.PagerAdapter
    public CharSequence getPageTitle(int i) {
        return b(i).a();
    }

    @Override // android.support.v4.view.PagerAdapter
    public float getPageWidth(int i) {
        return super.getPageWidth(i);
    }

    public Fragment a(int i) {
        WeakReference<Fragment> weakReference = this.b.get(i);
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    protected a b(int i) {
        return (a) this.f748a.get(i);
    }
}