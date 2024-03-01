package com.chanven.lib.cptr.loadmore;

import android.content.Context;
import android.os.Build;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.chanven.lib.cptr.loadmore.c;
import com.chanven.lib.cptr.recyclerview.RecyclerAdapterWithHF;

/* compiled from: RecyclerViewHandler.java */
/* loaded from: classes.dex */
public class h implements e {

    /* renamed from: a  reason: collision with root package name */
    private RecyclerAdapterWithHF f62a;
    private View b;

    @Override // com.chanven.lib.cptr.loadmore.e
    public boolean a(View view, c.b bVar, View.OnClickListener onClickListener) {
        final RecyclerView recyclerView = (RecyclerView) view;
        this.f62a = (RecyclerAdapterWithHF) recyclerView.getAdapter();
        if (bVar == null) {
            return false;
        }
        final Context applicationContext = recyclerView.getContext().getApplicationContext();
        bVar.a(new c.a() { // from class: com.chanven.lib.cptr.loadmore.h.1
            @Override // com.chanven.lib.cptr.loadmore.c.a
            public View a(int i) {
                View inflate = LayoutInflater.from(applicationContext).inflate(i, (ViewGroup) recyclerView, false);
                h.this.b = inflate;
                return a(inflate);
            }

            @Override // com.chanven.lib.cptr.loadmore.c.a
            public View a(View view2) {
                h.this.f62a.a(view2);
                return view2;
            }
        }, onClickListener);
        return true;
    }

    @Override // com.chanven.lib.cptr.loadmore.e
    public void a() {
        if (this.f62a.a() <= 0 && this.b != null) {
            this.f62a.a(this.b);
        }
    }

    @Override // com.chanven.lib.cptr.loadmore.e
    public void b() {
        if (this.f62a.a() > 0 && this.b != null) {
            this.f62a.b(this.b);
        }
    }

    @Override // com.chanven.lib.cptr.loadmore.e
    public void a(View view, g gVar) {
        ((RecyclerView) view).addOnScrollListener(new a(gVar));
    }

    /* compiled from: RecyclerViewHandler.java */
    /* loaded from: classes.dex */
    private static class a extends RecyclerView.OnScrollListener {

        /* renamed from: a  reason: collision with root package name */
        private g f64a;

        public a(g gVar) {
            this.f64a = gVar;
        }

        @Override // android.support.v7.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            if (i == 0 && a(recyclerView) && this.f64a != null) {
                this.f64a.a();
            }
        }

        private boolean a(RecyclerView recyclerView) {
            return !b(recyclerView);
        }

        private boolean b(RecyclerView recyclerView) {
            if (Build.VERSION.SDK_INT < 14) {
                return ViewCompat.canScrollVertically(recyclerView, 1) || recyclerView.getScrollY() < recyclerView.getHeight();
            }
            return ViewCompat.canScrollVertically(recyclerView, 1);
        }

        @Override // android.support.v7.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
        }
    }
}