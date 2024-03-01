package com.chanven.lib.cptr.loadmore;

import android.annotation.TargetApi;
import android.content.Context;
import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.WrapperListAdapter;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class GridViewWithHeaderAndFooter extends GridView {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f48a = false;
    private AdapterView.OnItemClickListener b;
    private AdapterView.OnItemLongClickListener c;
    private int d;
    private View e;
    private int f;
    private ArrayList<a> g;
    private ArrayList<a> h;
    private ListAdapter i;
    private d j;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public View f49a;
        public ViewGroup b;
        public Object c;
        public boolean d;

        private a() {
        }
    }

    private void a() {
    }

    public GridViewWithHeaderAndFooter(Context context) {
        super(context);
        this.d = -1;
        this.e = null;
        this.f = -1;
        this.g = new ArrayList<>();
        this.h = new ArrayList<>();
        a();
    }

    public GridViewWithHeaderAndFooter(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = -1;
        this.e = null;
        this.f = -1;
        this.g = new ArrayList<>();
        this.h = new ArrayList<>();
        a();
    }

    public GridViewWithHeaderAndFooter(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.d = -1;
        this.e = null;
        this.f = -1;
        this.g = new ArrayList<>();
        this.h = new ArrayList<>();
        a();
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        ListAdapter adapter = getAdapter();
        if (adapter != null && (adapter instanceof c)) {
            ((c) adapter).a(getNumColumnsCompatible());
            ((c) adapter).b(getRowHeight());
        }
    }

    @Override // android.view.ViewGroup
    public void setClipChildren(boolean z) {
    }

    public void setClipChildrenSupper(boolean z) {
        super.setClipChildren(false);
    }

    public void a(View view) {
        a(view, null, true);
    }

    public void a(View view, Object obj, boolean z) {
        ListAdapter adapter = getAdapter();
        if (adapter == null || !(adapter instanceof c)) {
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        a aVar = new a();
        b bVar = new b(getContext());
        if (layoutParams != null) {
            view.setLayoutParams(new FrameLayout.LayoutParams(layoutParams.width, layoutParams.height));
            bVar.setLayoutParams(new AbsListView.LayoutParams(layoutParams.width, layoutParams.height));
        }
        if (view.getParent() != null) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
        bVar.addView(view);
        aVar.f49a = view;
        aVar.b = bVar;
        aVar.c = obj;
        aVar.d = z;
        this.h.add(aVar);
        if (adapter != null) {
        }
    }

    public int getHeaderViewCount() {
        return this.g.size();
    }

    public int getFooterViewCount() {
        return this.h.size();
    }

    public boolean b(View view) {
        if (this.h.size() > 0) {
            ListAdapter adapter = getAdapter();
            return adapter != null && ((c) adapter).a(view);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(11)
    public int getNumColumnsCompatible() {
        if (Build.VERSION.SDK_INT >= 11) {
            return super.getNumColumns();
        }
        try {
            Field declaredField = GridView.class.getDeclaredField("mNumColumns");
            declaredField.setAccessible(true);
            return declaredField.getInt(this);
        } catch (Exception e) {
            if (this.d != -1) {
                return this.d;
            }
            throw new RuntimeException("Can not determine the mNumColumns for this API platform, please call setNumColumns to set it.");
        }
    }

    @TargetApi(16)
    private int getColumnWidthCompatible() {
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getColumnWidth();
        }
        try {
            Field declaredField = GridView.class.getDeclaredField("mColumnWidth");
            declaredField.setAccessible(true);
            return declaredField.getInt(this);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (NoSuchFieldException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.e = null;
    }

    @Override // android.widget.GridView
    @TargetApi(16)
    public int getVerticalSpacing() {
        int i = 0;
        try {
            if (Build.VERSION.SDK_INT < 16) {
                Field declaredField = GridView.class.getDeclaredField("mVerticalSpacing");
                declaredField.setAccessible(true);
                i = declaredField.getInt(this);
            } else {
                i = super.getVerticalSpacing();
            }
        } catch (Exception e) {
        }
        return i;
    }

    @Override // android.widget.GridView
    @TargetApi(16)
    public int getHorizontalSpacing() {
        int i = 0;
        try {
            if (Build.VERSION.SDK_INT < 16) {
                Field declaredField = GridView.class.getDeclaredField("mHorizontalSpacing");
                declaredField.setAccessible(true);
                i = declaredField.getInt(this);
            } else {
                i = super.getHorizontalSpacing();
            }
        } catch (Exception e) {
        }
        return i;
    }

    public int getRowHeight() {
        if (this.f > 0) {
            return this.f;
        }
        ListAdapter adapter = getAdapter();
        int numColumnsCompatible = getNumColumnsCompatible();
        if (adapter == null || adapter.getCount() <= (this.g.size() + this.h.size()) * numColumnsCompatible) {
            return -1;
        }
        int columnWidthCompatible = getColumnWidthCompatible();
        View view = getAdapter().getView(numColumnsCompatible * this.g.size(), this.e, this);
        AbsListView.LayoutParams layoutParams = (AbsListView.LayoutParams) view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new AbsListView.LayoutParams(-1, -2, 0);
            view.setLayoutParams(layoutParams);
        }
        view.measure(getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(columnWidthCompatible, 1073741824), 0, layoutParams.width), getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(0, 0), 0, layoutParams.height));
        this.e = view;
        this.f = view.getMeasuredHeight();
        return this.f;
    }

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        this.i = listAdapter;
        if (this.g.size() > 0 || this.h.size() > 0) {
            c cVar = new c(this.g, this.h, listAdapter);
            int numColumnsCompatible = getNumColumnsCompatible();
            if (numColumnsCompatible > 1) {
                cVar.a(numColumnsCompatible);
            }
            cVar.b(getRowHeight());
            super.setAdapter((ListAdapter) cVar);
            return;
        }
        super.setAdapter(listAdapter);
    }

    public ListAdapter getOriginalAdapter() {
        return this.i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b extends FrameLayout {
        public b(Context context) {
            super(context);
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int paddingLeft = GridViewWithHeaderAndFooter.this.getPaddingLeft() + getPaddingLeft();
            if (paddingLeft != i) {
                offsetLeftAndRight(paddingLeft - i);
            }
            super.onLayout(z, i, i2, i3, i4);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec((GridViewWithHeaderAndFooter.this.getMeasuredWidth() - GridViewWithHeaderAndFooter.this.getPaddingLeft()) - GridViewWithHeaderAndFooter.this.getPaddingRight(), View.MeasureSpec.getMode(i)), i2);
        }
    }

    @Override // android.widget.GridView
    public void setNumColumns(int i) {
        super.setNumColumns(i);
        this.d = i;
        ListAdapter adapter = getAdapter();
        if (adapter != null && (adapter instanceof c)) {
            ((c) adapter).a(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class c implements Filterable, WrapperListAdapter {

        /* renamed from: a  reason: collision with root package name */
        static final ArrayList<a> f51a = new ArrayList<>();
        ArrayList<a> b;
        ArrayList<a> c;
        boolean d;
        private final ListAdapter f;
        private final boolean i;
        private final DataSetObservable e = new DataSetObservable();
        private int g = 1;
        private int h = -1;
        private boolean j = true;
        private boolean k = false;

        public c(ArrayList<a> arrayList, ArrayList<a> arrayList2, ListAdapter listAdapter) {
            boolean z = true;
            this.f = listAdapter;
            this.i = listAdapter instanceof Filterable;
            if (arrayList == null) {
                this.b = f51a;
            } else {
                this.b = arrayList;
            }
            if (arrayList2 == null) {
                this.c = f51a;
            } else {
                this.c = arrayList2;
            }
            this.d = (a(this.b) && a(this.c)) ? z : false;
        }

        public void a(int i) {
            if (i >= 1 && this.g != i) {
                this.g = i;
                c();
            }
        }

        public void b(int i) {
            this.h = i;
        }

        public int a() {
            return this.b.size();
        }

        public int b() {
            return this.c.size();
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            return this.f == null || this.f.isEmpty();
        }

        private boolean a(ArrayList<a> arrayList) {
            if (arrayList != null) {
                Iterator<a> it = arrayList.iterator();
                while (it.hasNext()) {
                    if (!it.next().d) {
                        return false;
                    }
                }
            }
            return true;
        }

        public boolean a(View view) {
            boolean z = false;
            for (int i = 0; i < this.c.size(); i++) {
                if (this.c.get(i).f49a == view) {
                    this.c.remove(i);
                    if (a(this.b) && a(this.c)) {
                        z = true;
                    }
                    this.d = z;
                    this.e.notifyChanged();
                    return true;
                }
            }
            return false;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f != null ? ((b() + a()) * this.g) + d() : (b() + a()) * this.g;
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return this.f == null || (this.d && this.f.areAllItemsEnabled());
        }

        private int d() {
            return (int) (Math.ceil((1.0f * this.f.getCount()) / this.g) * this.g);
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i) {
            int i2;
            int a2 = a() * this.g;
            if (i < a2) {
                return i % this.g == 0 && this.b.get(i / this.g).d;
            }
            int i3 = i - a2;
            if (this.f != null) {
                i2 = d();
                if (i3 < i2) {
                    return i3 < this.f.getCount() && this.f.isEnabled(i3);
                }
            } else {
                i2 = 0;
            }
            int i4 = i3 - i2;
            return i4 % this.g == 0 && this.c.get(i4 / this.g).d;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            int a2 = a() * this.g;
            if (i < a2) {
                if (i % this.g == 0) {
                    return this.b.get(i / this.g).c;
                }
                return null;
            }
            int i2 = i - a2;
            int i3 = 0;
            if (this.f != null && i2 < (i3 = d())) {
                if (i2 < this.f.getCount()) {
                    return this.f.getItem(i2);
                }
                return null;
            }
            int i4 = i2 - i3;
            if (i4 % this.g == 0) {
                return this.c.get(i4).c;
            }
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            int i2;
            int a2 = a() * this.g;
            if (this.f == null || i < a2 || (i2 = i - a2) >= this.f.getCount()) {
                return -1L;
            }
            return this.f.getItemId(i2);
        }

        @Override // android.widget.Adapter
        public boolean hasStableIds() {
            return this.f != null && this.f.hasStableIds();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            int i2 = 0;
            if (GridViewWithHeaderAndFooter.f48a) {
                Object[] objArr = new Object[2];
                objArr[0] = Integer.valueOf(i);
                objArr[1] = Boolean.valueOf(view == null);
                Log.d("GridViewHeaderAndFooter", String.format("getView: %s, reused: %s", objArr));
            }
            int a2 = a() * this.g;
            if (i < a2) {
                ViewGroup viewGroup2 = this.b.get(i / this.g).b;
                if (i % this.g == 0) {
                    return viewGroup2;
                }
                if (view == null) {
                    view = new View(viewGroup.getContext());
                }
                view.setVisibility(4);
                view.setMinimumHeight(viewGroup2.getHeight());
                return view;
            }
            int i3 = i - a2;
            if (this.f != null && i3 < (i2 = d())) {
                if (i3 < this.f.getCount()) {
                    return this.f.getView(i3, view, viewGroup);
                }
                if (view == null) {
                    view = new View(viewGroup.getContext());
                }
                view.setVisibility(4);
                view.setMinimumHeight(this.h);
                return view;
            }
            int i4 = i3 - i2;
            if (i4 < getCount()) {
                ViewGroup viewGroup3 = this.c.get(i4 / this.g).b;
                if (i % this.g == 0) {
                    return viewGroup3;
                }
                if (view == null) {
                    view = new View(viewGroup.getContext());
                }
                view.setVisibility(4);
                view.setMinimumHeight(viewGroup3.getHeight());
                return view;
            }
            throw new ArrayIndexOutOfBoundsException(i);
        }

        @Override // android.widget.Adapter
        public int getItemViewType(int i) {
            int i2;
            int i3;
            int i4;
            int a2 = a() * this.g;
            int viewTypeCount = this.f == null ? 0 : this.f.getViewTypeCount() - 1;
            int i5 = -2;
            if (this.j && i < a2) {
                if (i == 0 && this.k) {
                    i5 = this.b.size() + viewTypeCount + this.c.size() + 1 + 1;
                }
                if (i % this.g != 0) {
                    i5 = (i / this.g) + 1 + viewTypeCount;
                }
            }
            int i6 = i - a2;
            if (this.f != null) {
                int d = d();
                if (i6 >= 0 && i6 < d) {
                    if (i6 < this.f.getCount()) {
                        i2 = this.f.getItemViewType(i6);
                        i3 = d;
                    } else if (this.j) {
                        i2 = this.b.size() + viewTypeCount + 1;
                        i3 = d;
                    }
                }
                i2 = i5;
                i3 = d;
            } else {
                i2 = i5;
                i3 = 0;
            }
            if (this.j && (i4 = i6 - i3) >= 0 && i4 < getCount() && i4 % this.g != 0) {
                i2 = viewTypeCount + this.b.size() + 1 + (i4 / this.g) + 1;
            }
            if (GridViewWithHeaderAndFooter.f48a) {
                Log.d("GridViewHeaderAndFooter", String.format("getItemViewType: pos: %s, result: %s", Integer.valueOf(i), Integer.valueOf(i2), Boolean.valueOf(this.j), Boolean.valueOf(this.k)));
            }
            return i2;
        }

        @Override // android.widget.Adapter
        public int getViewTypeCount() {
            int viewTypeCount = this.f == null ? 1 : this.f.getViewTypeCount();
            if (this.j) {
                int size = this.b.size() + 1 + this.c.size();
                if (this.k) {
                    size++;
                }
                viewTypeCount += size;
            }
            if (GridViewWithHeaderAndFooter.f48a) {
                Log.d("GridViewHeaderAndFooter", String.format("getViewTypeCount: %s", Integer.valueOf(viewTypeCount)));
            }
            return viewTypeCount;
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            this.e.registerObserver(dataSetObserver);
            if (this.f != null) {
                this.f.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            this.e.unregisterObserver(dataSetObserver);
            if (this.f != null) {
                this.f.unregisterDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Filterable
        public Filter getFilter() {
            if (this.i) {
                return ((Filterable) this.f).getFilter();
            }
            return null;
        }

        @Override // android.widget.WrapperListAdapter
        public ListAdapter getWrappedAdapter() {
            return this.f;
        }

        public void c() {
            this.e.notifyChanged();
        }
    }

    @Override // android.widget.AdapterView
    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        this.b = onItemClickListener;
        super.setOnItemClickListener(getItemClickHandler());
    }

    @Override // android.widget.AdapterView
    public void setOnItemLongClickListener(AdapterView.OnItemLongClickListener onItemLongClickListener) {
        this.c = onItemLongClickListener;
        super.setOnItemLongClickListener(getItemClickHandler());
    }

    private d getItemClickHandler() {
        if (this.j == null) {
            this.j = new d();
        }
        return this.j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class d implements AdapterView.OnItemClickListener, AdapterView.OnItemLongClickListener {
        private d() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            int headerViewCount;
            if (GridViewWithHeaderAndFooter.this.b != null && (headerViewCount = i - (GridViewWithHeaderAndFooter.this.getHeaderViewCount() * GridViewWithHeaderAndFooter.this.getNumColumnsCompatible())) >= 0) {
                GridViewWithHeaderAndFooter.this.b.onItemClick(adapterView, view, headerViewCount, j);
            }
        }

        @Override // android.widget.AdapterView.OnItemLongClickListener
        public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
            int headerViewCount;
            if (GridViewWithHeaderAndFooter.this.c != null && (headerViewCount = i - (GridViewWithHeaderAndFooter.this.getHeaderViewCount() * GridViewWithHeaderAndFooter.this.getNumColumnsCompatible())) >= 0) {
                GridViewWithHeaderAndFooter.this.c.onItemLongClick(adapterView, view, headerViewCount, j);
                return true;
            }
            return true;
        }
    }
}