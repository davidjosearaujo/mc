package com.mbv.a.wp.fragment;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import com.mbv.a.wp.R;
import com.mbv.a.wp.base.fragment.BaseFragment;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.e;
import uk.co.senab.photoview.PhotoView;

/* loaded from: classes.dex */
public class PreviewImagesFragment extends BaseFragment {

    /* renamed from: a  reason: collision with root package name */
    PhotoView f725a;
    private String b;
    private ProgressBar c;

    public static PreviewImagesFragment a(String str) {
        PreviewImagesFragment previewImagesFragment = new PreviewImagesFragment();
        Bundle bundle = new Bundle();
        bundle.putString("param_url", str);
        previewImagesFragment.setArguments(bundle);
        return previewImagesFragment;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.b = getArguments().getString("param_url");
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.fragment_image, viewGroup, false);
        this.f725a = (PhotoView) inflate.findViewById(R.id.img_bigPic);
        this.c = (ProgressBar) inflate.findViewById(R.id.progress_bar);
        return inflate;
    }

    @Override // android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (!TextUtils.isEmpty(this.b)) {
            Picasso.a((Context) getActivity()).a(this.b).a(Bitmap.Config.ARGB_8888).b(R.mipmap.ic_launcher).a(this.f725a, new e() { // from class: com.mbv.a.wp.fragment.PreviewImagesFragment.1
                @Override // com.squareup.picasso.e
                public void a() {
                    PreviewImagesFragment.this.c.setVisibility(8);
                }

                @Override // com.squareup.picasso.e
                public void b() {
                    PreviewImagesFragment.this.c.setVisibility(8);
                }
            });
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
    }
}