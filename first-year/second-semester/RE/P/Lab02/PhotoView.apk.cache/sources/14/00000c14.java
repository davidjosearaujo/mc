package com.mbv.a.wp.fragment;

import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.widget.SwipeRefreshLayout;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.chanven.lib.cptr.loadmore.c;
import com.chanven.lib.cptr.loadmore.f;
import com.chanven.lib.cptr.loadmore.i;
import com.mbv.a.sdklibrary.manager.JniManager;
import com.mbv.a.sdklibrary.net.AsyncHttpGet;
import com.mbv.a.wp.PreviewImagesActivity;
import com.mbv.a.wp.R;
import com.mbv.a.wp.base.fragment.BaseFragment;
import com.mbv.a.wp.c.b;
import java.util.HashMap;
import java.util.LinkedList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class TabWallPaperListFragment extends BaseFragment implements f, i.a {

    /* renamed from: a  reason: collision with root package name */
    private SwipeRefreshLayout f727a;
    private i b;
    private GridView c;
    private com.mbv.a.wp.adapter.a d;
    private String e;
    private boolean f;
    private int g = 1;

    @Override // android.support.v4.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_paper_list, viewGroup, false);
    }

    @Override // android.support.v4.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f727a = (SwipeRefreshLayout) view;
        this.f727a.setColorSchemeColors(Color.parseColor("#e1352f"));
        this.b = new i(this.f727a);
        this.b.setOnSwipeRefreshListener(this);
        this.b.setOnLoadMoreListener(this);
        this.b.a(new a());
        this.b.a(true);
        this.e = getArguments().getString("type_id");
        this.c = (GridView) view.findViewById(R.id.gridView);
        this.d = new com.mbv.a.wp.adapter.a(getContext(), this.e);
        this.c.setAdapter((ListAdapter) this.d);
        this.c.setSelector(new ColorDrawable(0));
        this.c.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.mbv.a.wp.fragment.TabWallPaperListFragment.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view2, int i, long j) {
                b.a().a(com.mbv.a.wp.b.a.a().b(TabWallPaperListFragment.this.e));
                Intent intent = new Intent(TabWallPaperListFragment.this.getContext(), PreviewImagesActivity.class);
                intent.putExtra("param_current_position", i);
                TabWallPaperListFragment.this.startActivity(intent);
            }
        });
    }

    public void c() {
        if (!this.f) {
            this.f = true;
            d();
        }
    }

    private void d() {
        HashMap hashMap = new HashMap();
        hashMap.put("pageindex", this.g + "");
        hashMap.put("sc", "1860001");
        hashMap.put("kw", "01");
        hashMap.put("type", this.e);
        AsyncHttpGet.get(JniManager.nativeApkpaper(), hashMap, new com.mbv.a.sdklibrary.net.b() { // from class: com.mbv.a.wp.fragment.TabWallPaperListFragment.2
            @Override // com.mbv.a.sdklibrary.net.b
            public void a(Exception exc, byte[] bArr) {
                if (exc == null && bArr != null) {
                    final String str = new String(bArr);
                    if (str.length() > 0) {
                        TabWallPaperListFragment.this.getActivity().runOnUiThread(new Runnable() { // from class: com.mbv.a.wp.fragment.TabWallPaperListFragment.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    JSONArray jSONArray = new JSONArray(str);
                                    LinkedList linkedList = new LinkedList();
                                    for (int i = 1; i < jSONArray.length() + 1; i++) {
                                        JSONObject jSONObject = jSONArray.getJSONObject(i - 1);
                                        com.mbv.a.wp.a.a aVar = new com.mbv.a.wp.a.a();
                                        aVar.a(jSONObject.getString("pic_url"));
                                        aVar.b(jSONObject.getString("products_pic"));
                                        linkedList.add(aVar);
                                    }
                                    if (TabWallPaperListFragment.this.g == 1) {
                                        com.mbv.a.wp.b.a.a().a(TabWallPaperListFragment.this.e, linkedList);
                                        TabWallPaperListFragment.this.b.a();
                                        TabWallPaperListFragment.this.b.a(true);
                                    } else {
                                        com.mbv.a.wp.b.a.a().b(TabWallPaperListFragment.this.e, linkedList);
                                        boolean z = linkedList.size() == 20;
                                        TabWallPaperListFragment.this.b.b(z);
                                        if (!z) {
                                            TabWallPaperListFragment.this.b.a(false);
                                        }
                                    }
                                    TabWallPaperListFragment.this.d.a(TabWallPaperListFragment.this.e);
                                    TabWallPaperListFragment.this.d.notifyDataSetChanged();
                                } catch (JSONException e) {
                                    e.printStackTrace();
                                }
                            }
                        });
                    }
                }
            }
        });
    }

    @Override // com.chanven.lib.cptr.loadmore.f
    public void a() {
        this.g++;
        d();
    }

    @Override // com.chanven.lib.cptr.loadmore.i.a
    public void b() {
        this.g = 1;
        d();
    }

    /* loaded from: classes.dex */
    public class a implements c {
        public a() {
        }

        @Override // com.chanven.lib.cptr.loadmore.c
        public c.b a() {
            return new C0042a();
        }

        /* renamed from: com.mbv.a.wp.fragment.TabWallPaperListFragment$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        private class C0042a implements c.b {

            /* renamed from: a  reason: collision with root package name */
            protected TextView f732a;

            private C0042a() {
            }

            @Override // com.chanven.lib.cptr.loadmore.c.b
            public void a(c.a aVar, View.OnClickListener onClickListener) {
                this.f732a = new TextView(TabWallPaperListFragment.this.getContext());
                this.f732a.setGravity(17);
                aVar.a(this.f732a);
                a();
            }

            @Override // com.chanven.lib.cptr.loadmore.c.b
            public void a() {
                this.f732a.setText(TabWallPaperListFragment.this.getResources().getString(R.string.text_save_success));
            }

            @Override // com.chanven.lib.cptr.loadmore.c.b
            public void b() {
                this.f732a.setText(TabWallPaperListFragment.this.getResources().getString(R.string.text_save_success));
            }

            @Override // com.chanven.lib.cptr.loadmore.c.b
            public void c() {
                this.f732a.setText("");
            }
        }
    }
}