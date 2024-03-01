package com.chanven.lib.cptr;

import android.content.Context;
import android.util.AttributeSet;

/* loaded from: classes.dex */
public class PtrClassicFrameLayout extends PtrFrameLayout {
    private PtrClassicDefaultHeader e;

    public PtrClassicFrameLayout(Context context) {
        super(context);
        i();
    }

    public PtrClassicFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        i();
    }

    public PtrClassicFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        i();
    }

    private void i() {
        this.e = new PtrClassicDefaultHeader(getContext());
        setHeaderView(this.e);
        a(this.e);
        setFooterView(new com.chanven.lib.cptr.loadmore.a());
    }

    public PtrClassicDefaultHeader getHeader() {
        return this.e;
    }

    public void setLastUpdateTimeKey(String str) {
        if (this.e != null) {
            this.e.setLastUpdateTimeKey(str);
        }
    }

    public void setLastUpdateTimeRelateObject(Object obj) {
        if (this.e != null) {
            this.e.setLastUpdateTimeRelateObject(obj);
        }
    }
}