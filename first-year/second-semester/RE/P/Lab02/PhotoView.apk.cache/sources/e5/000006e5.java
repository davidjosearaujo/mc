package com.chanven.lib.cptr.loadmore;

import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.chanven.lib.cptr.R;
import com.chanven.lib.cptr.loadmore.c;

/* compiled from: DefaultLoadMoreViewFooter.java */
/* loaded from: classes.dex */
public class a implements c {
    @Override // com.chanven.lib.cptr.loadmore.c
    public c.b a() {
        return new C0009a();
    }

    /* compiled from: DefaultLoadMoreViewFooter.java */
    /* renamed from: com.chanven.lib.cptr.loadmore.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private class C0009a implements c.b {

        /* renamed from: a  reason: collision with root package name */
        protected View f53a;
        protected TextView b;
        protected ProgressBar c;
        protected View.OnClickListener d;

        private C0009a() {
        }

        @Override // com.chanven.lib.cptr.loadmore.c.b
        public void a(c.a aVar, View.OnClickListener onClickListener) {
            this.f53a = aVar.a(R.layout.loadmore_default_footer);
            this.b = (TextView) this.f53a.findViewById(R.id.loadmore_default_footer_tv);
            this.c = (ProgressBar) this.f53a.findViewById(R.id.loadmore_default_footer_progressbar);
            this.d = onClickListener;
            a();
        }

        @Override // com.chanven.lib.cptr.loadmore.c.b
        public void a() {
            this.b.setText("点击加载更多");
            this.c.setVisibility(8);
            this.f53a.setOnClickListener(this.d);
        }

        @Override // com.chanven.lib.cptr.loadmore.c.b
        public void b() {
            this.b.setText("正在加载中...");
            this.c.setVisibility(0);
            this.f53a.setOnClickListener(null);
        }

        @Override // com.chanven.lib.cptr.loadmore.c.b
        public void c() {
            this.b.setText("已经加载完毕");
            this.c.setVisibility(8);
            this.f53a.setOnClickListener(null);
        }
    }
}