package com.chanven.lib.cptr.loadmore;

import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.AbsListView;
import android.widget.GridView;
import com.chanven.lib.cptr.loadmore.c;
import java.lang.reflect.Field;

/* compiled from: SwipeRefreshHelper.java */
/* loaded from: classes.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private SwipeRefreshLayout f65a;
    private View b;
    private a c;
    private e d;
    private f j;
    private c.b k;
    private boolean e = false;
    private boolean f = true;
    private boolean g = false;
    private boolean h = false;
    private c i = new com.chanven.lib.cptr.loadmore.a();
    private SwipeRefreshLayout.OnRefreshListener l = new SwipeRefreshLayout.OnRefreshListener() { // from class: com.chanven.lib.cptr.loadmore.i.1
        @Override // android.support.v4.widget.SwipeRefreshLayout.OnRefreshListener
        public void onRefresh() {
            if (i.this.c != null) {
                i.this.c.b();
            }
        }
    };
    private g m = new g() { // from class: com.chanven.lib.cptr.loadmore.i.2
        @Override // com.chanven.lib.cptr.loadmore.g
        public void a() {
            if (i.this.f && i.this.g && !i.this.c()) {
                i.this.e();
            }
        }
    };
    private View.OnClickListener n = new View.OnClickListener() { // from class: com.chanven.lib.cptr.loadmore.i.3
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (i.this.g && !i.this.c()) {
                i.this.e();
            }
        }
    };

    /* compiled from: SwipeRefreshHelper.java */
    /* loaded from: classes.dex */
    public interface a {
        void b();
    }

    public i(SwipeRefreshLayout swipeRefreshLayout) {
        this.f65a = swipeRefreshLayout;
        d();
    }

    private void d() {
        if (this.f65a.getChildCount() <= 0) {
            throw new RuntimeException("SwipRefreshLayout has no child view");
        }
        try {
            Field declaredField = this.f65a.getClass().getDeclaredField("mTarget");
            declaredField.setAccessible(true);
            this.b = (View) declaredField.get(this.f65a);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setOnSwipeRefreshListener(a aVar) {
        this.c = aVar;
        this.f65a.setOnRefreshListener(this.l);
    }

    public void setOnLoadMoreListener(f fVar) {
        this.j = fVar;
    }

    public void a() {
        this.f65a.setRefreshing(false);
    }

    public void a(c cVar) {
        if (cVar != null) {
            if (this.i == null || this.i != cVar) {
                this.i = cVar;
                if (this.h) {
                    this.d.b();
                    this.k = this.i.a();
                    this.h = this.d.a(this.b, this.k, this.n);
                    if (!this.g) {
                        this.d.b();
                    }
                }
            }
        }
    }

    public void a(boolean z) {
        if (this.g != z) {
            this.g = z;
            if (!this.h && this.g) {
                this.k = this.i.a();
                if (this.d == null) {
                    if (this.b instanceof GridView) {
                        this.d = new b();
                    } else if (this.b instanceof AbsListView) {
                        this.d = new d();
                    } else if (this.b instanceof RecyclerView) {
                        this.d = new h();
                    }
                }
                if (this.d == null) {
                    throw new IllegalStateException("unSupported contentView !");
                }
                this.h = this.d.a(this.b, this.k, this.n);
                this.d.a(this.b, this.m);
            } else if (this.h) {
                if (this.g) {
                    this.d.a();
                } else {
                    this.d.b();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        this.e = true;
        this.k.b();
        if (this.j != null) {
            this.j.a();
        }
    }

    public void b(boolean z) {
        this.e = false;
        if (z) {
            this.k.a();
        } else {
            b();
        }
    }

    public void b() {
        this.e = false;
        this.k.c();
    }

    public boolean c() {
        return this.e;
    }
}