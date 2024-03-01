package com.mbv.a.wp.adapter;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import com.mbv.a.wp.fragment.PreviewImagesFragment;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class PreviewImagesAdapter extends FragmentPagerAdapter {

    /* renamed from: a  reason: collision with root package name */
    private List<String> f720a;

    public PreviewImagesAdapter(FragmentManager fragmentManager) {
        super(fragmentManager);
        this.f720a = new ArrayList();
    }

    public void a(List<String> list) {
        this.f720a.addAll(list);
    }

    @Override // android.support.v4.app.FragmentPagerAdapter
    public Fragment getItem(int i) {
        if (com.mbv.a.wp.c.a.a(this.f720a)) {
            return null;
        }
        return PreviewImagesFragment.a(this.f720a.get(i));
    }

    @Override // android.support.v4.view.PagerAdapter
    public int getCount() {
        if (this.f720a == null) {
            return 0;
        }
        return this.f720a.size();
    }
}