package com.chanven.lib.cptr.b;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.WindowManager;

/* compiled from: PtrLocalDisplay.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static int f30a;
    public static int b;
    public static float c;
    public static int d;
    public static int e;

    public static void a(Context context) {
        if (context != null) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            f30a = displayMetrics.widthPixels;
            b = displayMetrics.heightPixels;
            c = displayMetrics.density;
            d = (int) (f30a / displayMetrics.density);
            e = (int) (b / displayMetrics.density);
        }
    }

    public static int a(float f) {
        return (int) ((c * f) + 0.5f);
    }
}