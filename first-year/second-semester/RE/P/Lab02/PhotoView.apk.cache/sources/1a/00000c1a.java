package com.mbv.a.wp.view;

import android.content.Context;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.widget.ImageView;

/* loaded from: classes.dex */
public class PaperListImageView extends ImageView {
    public PaperListImageView(Context context) {
        super(context);
    }

    public PaperListImageView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public PaperListImageView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        setMeasuredDimension(measuredWidth, (measuredWidth * 3) / 2);
    }
}