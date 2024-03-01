package com.chanven.lib.cptr.recyclerview;

import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.StaggeredGridLayoutManager;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import java.util.List;

/* loaded from: classes.dex */
public class RecyclerAdapterWithHF extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private List<View> f69a;
    private List<View> b;
    private int c;
    private c d;
    private d e;
    private RecyclerView.Adapter<RecyclerView.ViewHolder> f;

    /* loaded from: classes.dex */
    public interface c {
        void a(RecyclerAdapterWithHF recyclerAdapterWithHF, RecyclerView.ViewHolder viewHolder, int i);
    }

    /* loaded from: classes.dex */
    public interface d {
        void a(RecyclerAdapterWithHF recyclerAdapterWithHF, RecyclerView.ViewHolder viewHolder, int i);
    }

    public int a() {
        return this.b.size();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public final long getItemId(int i) {
        return a(b(i));
    }

    public long a(int i) {
        return this.f.getItemId(i);
    }

    public RecyclerView.ViewHolder a(ViewGroup viewGroup, int i) {
        return this.f.onCreateViewHolder(viewGroup, i);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i != 7898 && i != 7899) {
            return a(viewGroup, i);
        }
        FrameLayout frameLayout = new FrameLayout(viewGroup.getContext());
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        return new HeaderFooterViewHolder(frameLayout);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        if (d(i)) {
            a((HeaderFooterViewHolder) viewHolder, this.f69a.get(i));
        } else if (e(i)) {
            a((HeaderFooterViewHolder) viewHolder, this.b.get((i - b()) - this.f69a.size()));
        } else {
            viewHolder.itemView.setOnClickListener(new a(viewHolder));
            viewHolder.itemView.setOnLongClickListener(new b(viewHolder));
            a(viewHolder, b(i));
        }
    }

    public int b(int i) {
        return i - this.f69a.size();
    }

    public void a(RecyclerView.ViewHolder viewHolder, int i) {
        this.f.onBindViewHolder(viewHolder, i);
    }

    private void a(HeaderFooterViewHolder headerFooterViewHolder, View view) {
        if (this.c == 3) {
            StaggeredGridLayoutManager.LayoutParams layoutParams = new StaggeredGridLayoutManager.LayoutParams(-1, -1);
            layoutParams.setFullSpan(true);
            headerFooterViewHolder.itemView.setLayoutParams(layoutParams);
        }
        if (view.getParent() != null) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
        headerFooterViewHolder.f70a.removeAllViews();
        headerFooterViewHolder.f70a.addView(view);
    }

    private boolean d(int i) {
        return i < this.f69a.size();
    }

    private boolean e(int i) {
        return i >= this.f69a.size() + b();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.f69a.size() + b() + this.b.size();
    }

    public int b() {
        return this.f.getItemCount();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public final int getItemViewType(int i) {
        if (d(i)) {
            return 7898;
        }
        if (e(i)) {
            return 7899;
        }
        int c2 = c(b(i));
        if (c2 == 7898 || c2 == 7899) {
            throw new IllegalArgumentException("Item type cannot equal 7898 or 7899");
        }
        return c2;
    }

    public int c(int i) {
        return this.f.getItemViewType(i);
    }

    public void a(View view) {
        if (!this.b.contains(view)) {
            this.b.add(view);
            notifyItemInserted(((this.f69a.size() + b()) + this.b.size()) - 1);
        }
    }

    public void b(View view) {
        if (this.b.contains(view)) {
            notifyItemRemoved(this.f69a.size() + b() + this.b.indexOf(view));
            this.b.remove(view);
        }
    }

    /* loaded from: classes.dex */
    public static class HeaderFooterViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        FrameLayout f70a;

        public HeaderFooterViewHolder(View view) {
            super(view);
            this.f70a = (FrameLayout) view;
        }
    }

    public void setOnItemClickListener(c cVar) {
        this.d = cVar;
        Log.d("eeee", "setOnItemClickListener " + this.d);
    }

    public void setOnItemLongClickListener(d dVar) {
        this.e = dVar;
    }

    /* loaded from: classes.dex */
    private class a implements View.OnClickListener {
        private RecyclerView.ViewHolder b;

        public a(RecyclerView.ViewHolder viewHolder) {
            this.b = viewHolder;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int b = RecyclerAdapterWithHF.this.b(this.b.getLayoutPosition());
            if (RecyclerAdapterWithHF.this.d != null) {
                RecyclerAdapterWithHF.this.d.a(RecyclerAdapterWithHF.this, this.b, b);
            }
            RecyclerAdapterWithHF.this.b(this.b, b);
        }
    }

    /* loaded from: classes.dex */
    private class b implements View.OnLongClickListener {
        private RecyclerView.ViewHolder b;

        public b(RecyclerView.ViewHolder viewHolder) {
            this.b = viewHolder;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            int b = RecyclerAdapterWithHF.this.b(this.b.getLayoutPosition());
            if (RecyclerAdapterWithHF.this.e != null) {
                RecyclerAdapterWithHF.this.e.a(RecyclerAdapterWithHF.this, this.b, b);
            }
            RecyclerAdapterWithHF.this.c(this.b, b);
            return true;
        }
    }

    protected void b(RecyclerView.ViewHolder viewHolder, int i) {
    }

    protected void c(RecyclerView.ViewHolder viewHolder, int i) {
    }
}