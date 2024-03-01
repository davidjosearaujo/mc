package com.google.zxing.common.a;

import java.util.ArrayList;
import java.util.List;

/* compiled from: ReedSolomonEncoder.java */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final a f635a;
    private final List<b> b = new ArrayList();

    public c(a aVar) {
        this.f635a = aVar;
        this.b.add(new b(aVar, new int[]{1}));
    }

    private b a(int i) {
        if (i >= this.b.size()) {
            int size = this.b.size();
            b bVar = this.b.get(this.b.size() - 1);
            for (int i2 = size; i2 <= i; i2++) {
                bVar = bVar.b(new b(this.f635a, new int[]{1, this.f635a.a((i2 - 1) + this.f635a.b())}));
                this.b.add(bVar);
            }
        }
        return this.b.get(i);
    }

    public void a(int[] iArr, int i) {
        if (i == 0) {
            throw new IllegalArgumentException("No error correction bytes");
        }
        int length = iArr.length - i;
        if (length <= 0) {
            throw new IllegalArgumentException("No data bytes provided");
        }
        b a2 = a(i);
        int[] iArr2 = new int[length];
        System.arraycopy(iArr, 0, iArr2, 0, length);
        int[] a3 = new b(this.f635a, iArr2).a(i, 1).c(a2)[1].a();
        int length2 = i - a3.length;
        for (int i2 = 0; i2 < length2; i2++) {
            iArr[length + i2] = 0;
        }
        System.arraycopy(a3, 0, iArr, length + length2, a3.length);
    }
}