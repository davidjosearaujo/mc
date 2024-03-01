package com.chanven.lib.cptr.header;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import java.util.Random;

/* compiled from: StoreHouseBarItem.java */
/* loaded from: classes.dex */
public class b extends Animation {

    /* renamed from: a  reason: collision with root package name */
    public PointF f47a;
    public float b;
    private final Paint c;
    private float d;
    private float e;
    private PointF f;
    private PointF g;

    public void a(int i) {
        this.b = (-new Random().nextInt(i)) + i;
    }

    @Override // android.view.animation.Animation
    protected void applyTransformation(float f, Transformation transformation) {
        float f2 = this.d;
        a(f2 + ((this.e - f2) * f));
    }

    public void a(float f, float f2) {
        this.d = f;
        this.e = f2;
        super.start();
    }

    public void a(float f) {
        this.c.setAlpha((int) (255.0f * f));
    }

    public void a(Canvas canvas) {
        canvas.drawLine(this.f.x, this.f.y, this.g.x, this.g.y, this.c);
    }
}