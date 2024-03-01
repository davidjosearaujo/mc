package com.ogaclejapan.smarttablayout;

import android.support.v4.view.MarginLayoutParamsCompat;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.ViewGroup;

/* compiled from: Utils.java */
/* loaded from: classes.dex */
final class c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(View view) {
        if (view == null) {
            return 0;
        }
        return view.getMeasuredWidth();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(View view) {
        if (view == null) {
            return 0;
        }
        return view.getWidth();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(View view) {
        return b(view) + k(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(View view) {
        return a(view, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(View view, boolean z) {
        if (view == null) {
            return 0;
        }
        return l(view) ? z ? view.getRight() - f(view) : view.getRight() : z ? view.getLeft() + f(view) : view.getLeft();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e(View view) {
        return b(view, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(View view, boolean z) {
        if (view == null) {
            return 0;
        }
        return l(view) ? z ? view.getLeft() + g(view) : view.getLeft() : z ? view.getRight() - g(view) : view.getRight();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int f(View view) {
        if (view == null) {
            return 0;
        }
        return ViewCompat.getPaddingStart(view);
    }

    static int g(View view) {
        if (view == null) {
            return 0;
        }
        return ViewCompat.getPaddingEnd(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int h(View view) {
        if (view == null) {
            return 0;
        }
        return view.getPaddingLeft() + view.getPaddingRight();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int i(View view) {
        if (view == null) {
            return 0;
        }
        return MarginLayoutParamsCompat.getMarginStart((ViewGroup.MarginLayoutParams) view.getLayoutParams());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int j(View view) {
        if (view == null) {
            return 0;
        }
        return MarginLayoutParamsCompat.getMarginEnd((ViewGroup.MarginLayoutParams) view.getLayoutParams());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int k(View view) {
        if (view == null) {
            return 0;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams) + MarginLayoutParamsCompat.getMarginStart(marginLayoutParams);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean l(View view) {
        return ViewCompat.getLayoutDirection(view) == 1;
    }
}