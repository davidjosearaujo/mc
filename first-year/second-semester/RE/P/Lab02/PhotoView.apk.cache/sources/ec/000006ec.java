package com.chanven.lib.cptr.loadmore;

import android.view.View;

/* compiled from: ILoadMoreViewFactory.java */
/* loaded from: classes.dex */
public interface c {

    /* compiled from: ILoadMoreViewFactory.java */
    /* loaded from: classes.dex */
    public interface a {
        View a(int i);

        View a(View view);
    }

    /* compiled from: ILoadMoreViewFactory.java */
    /* loaded from: classes.dex */
    public interface b {
        void a();

        void a(a aVar, View.OnClickListener onClickListener);

        void b();

        void c();
    }

    b a();
}