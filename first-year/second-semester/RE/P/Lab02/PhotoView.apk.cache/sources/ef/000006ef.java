package com.chanven.lib.cptr.loadmore;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListView;
import com.chanven.lib.cptr.loadmore.c;

/* compiled from: ListViewHandler.java */
/* loaded from: classes.dex */
public class d implements e {

    /* renamed from: a  reason: collision with root package name */
    private ListView f58a;
    private View b;

    @Override // com.chanven.lib.cptr.loadmore.e
    public boolean a(View view, c.b bVar, View.OnClickListener onClickListener) {
        final ListView listView = (ListView) view;
        this.f58a = listView;
        if (bVar == null) {
            return false;
        }
        final Context applicationContext = listView.getContext().getApplicationContext();
        bVar.a(new c.a() { // from class: com.chanven.lib.cptr.loadmore.d.1
            @Override // com.chanven.lib.cptr.loadmore.c.a
            public View a(int i) {
                View inflate = LayoutInflater.from(applicationContext).inflate(i, (ViewGroup) listView, false);
                d.this.b = inflate;
                return a(inflate);
            }

            @Override // com.chanven.lib.cptr.loadmore.c.a
            public View a(View view2) {
                listView.addFooterView(view2);
                return view2;
            }
        }, onClickListener);
        return true;
    }

    @Override // com.chanven.lib.cptr.loadmore.e
    public void a(View view, g gVar) {
        ListView listView = (ListView) view;
        listView.setOnScrollListener(new b(gVar));
        listView.setOnItemSelectedListener(new a(gVar));
    }

    @Override // com.chanven.lib.cptr.loadmore.e
    public void b() {
        if (this.f58a.getFooterViewsCount() > 0 && this.b != null) {
            this.f58a.removeFooterView(this.b);
        }
    }

    @Override // com.chanven.lib.cptr.loadmore.e
    public void a() {
        if (this.f58a.getFooterViewsCount() <= 0 && this.b != null) {
            this.f58a.addFooterView(this.b);
        }
    }

    /* compiled from: ListViewHandler.java */
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

    /* compiled from: ListViewHandler.java */
    /* loaded from: classes.dex */
    private static class b implements AbsListView.OnScrollListener {

        /* renamed from: a  reason: collision with root package name */
        private g f61a;

        public b(g gVar) {
            this.f61a = gVar;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
            if (i == 0 && absListView.getLastVisiblePosition() + 1 == absListView.getCount() && this.f61a != null) {
                this.f61a.a();
            }
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }
    }
}