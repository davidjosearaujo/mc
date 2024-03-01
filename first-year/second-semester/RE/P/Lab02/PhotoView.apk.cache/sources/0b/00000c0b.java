package com.mbv.a.wp.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import com.mbv.a.wp.R;
import com.mbv.a.wp.view.PaperListImageView;
import com.squareup.picasso.Picasso;

/* compiled from: WallPaperListAdapter.java */
/* loaded from: classes.dex */
public class a extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f721a;
    private String b;

    public a(Context context, String str) {
        this.b = str;
        this.f721a = context;
    }

    public void a(String str) {
        this.b = str;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return com.mbv.a.wp.b.a.a().a(this.b).size();
    }

    @Override // android.widget.Adapter
    /* renamed from: a */
    public com.mbv.a.wp.a.a getItem(int i) {
        return com.mbv.a.wp.b.a.a().a(this.b).get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        PaperListImageView paperListImageView;
        if (view == null) {
            paperListImageView = new PaperListImageView(this.f721a);
            paperListImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        } else {
            paperListImageView = (PaperListImageView) view;
        }
        Picasso.a(this.f721a).a(getItem(i).a()).a(R.color.bg_no_pic).a(paperListImageView);
        return paperListImageView;
    }
}