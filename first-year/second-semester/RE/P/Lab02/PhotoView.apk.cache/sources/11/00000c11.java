package com.mbv.a.wp.c;

import java.util.ArrayList;

/* compiled from: ImageUrlsUtil.java */
/* loaded from: classes.dex */
public class b {
    private static b b;

    /* renamed from: a  reason: collision with root package name */
    private ArrayList<String> f724a;

    public static b a() {
        if (b == null) {
            b = new b();
        }
        return b;
    }

    public ArrayList<String> b() {
        return this.f724a;
    }

    public void a(ArrayList<String> arrayList) {
        this.f724a = arrayList;
    }
}