package com.chanven.lib.cptr.loadmore;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import com.chanven.lib.cptr.loadmore.c;

/* compiled from: GridViewHandler.java */
/* loaded from: classes.dex */
public class b implements e {

    /* renamed from: a  reason: collision with root package name */
    private GridViewWithHeaderAndFooter f54a;
    private View b;

    @Override // com.chanven.lib.cptr.loadmore.e
    public boolean a(View view, c.b bVar, View.OnClickListener onClickListener) {
        this.f54a = (GridViewWithHeaderAndFooter) view;
        ListAdapter adapter = this.f54a.getAdapter();
        boolean z = false;
        if (bVar != null) {
            final Context applicationContext = this.f54a.getContext().getApplicationContext();
            bVar.a(new c.a() { // from class: com.chanven.lib.cptr.loadmore.b.1
                @Override // com.chanven.lib.cptr.loadmore.c.a
                public View a(int i) {
                    View inflate = LayoutInflater.from(applicationContext).inflate(i, (ViewGroup) b.this.f54a, false);
                    b.this.b = inflate;
                    return a(inflate);
                }

                @Override // com.chanven.lib.cptr.loadmore.c.a
                public View a(View view2) {
                    b.this.f54a.a(view2);
                    return view2;
                }
            }, onClickListener);
            z = true;
            if (adapter != null) {
                this.f54a.setAdapter(adapter);
            }
        }
        return z;
    }

    @Override // com.chanven.lib.cptr.loadmore.e
    public void a() {
        if (this.f54a.getFooterViewCount() <= 0 && this.b != null) {
            this.f54a.a(this.b);
        }
    }

    @Override // com.chanven.lib.cptr.loadmore.e
    public void b() {
        if (this.f54a.getFooterViewCount() > 0 && this.b != null) {
            this.f54a.b(this.b);
        }
    }

    @Override // com.chanven.lib.cptr.loadmore.e
    public void a(View view, g gVar) {
        GridViewWithHeaderAndFooter gridViewWithHeaderAndFooter = (GridViewWithHeaderAndFooter) view;
        gridViewWithHeaderAndFooter.setOnScrollListener(new C0010b(gVar));
        gridViewWithHeaderAndFooter.setOnItemSelectedListener(new a(gVar));
    }

    /* compiled from: GridViewHandler.java */
    /* loaded from: classes.dex */
    private class a implements AdapterView.OnItemSelectedListener {
        private g b;

        public a(g gVar) {
            this.b = gVar;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            if (adapterView.getLastVisiblePosition() + 1 == adapterView.getCount() && this.b != null) {
                this.b.a();
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* compiled from: GridViewHandler.java */
    /* renamed from: com.chanven.lib.cptr.loadmore.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static class C0010b implements AbsListView.OnScrollListener {

        /* renamed from: a  reason: collision with root package name */
        private g f57a;

        public C0010b(g gVar) {
            this.f57a = gVar;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
            if (i == 0 && absListView.getLastVisiblePosition() + 1 == absListView.getCount() && this.f57a != null) {
                this.f57a.a();
            }
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }
    }
}