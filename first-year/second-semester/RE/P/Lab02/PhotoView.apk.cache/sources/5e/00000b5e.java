package com.google.zxing.a.a;

import java.util.LinkedList;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: State.java */
/* loaded from: classes.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    static final f f628a = new f(g.f629a, 0, 0, 0);
    private final int b;
    private final g c;
    private final int d;
    private final int e;

    private f(g gVar, int i, int i2, int i3) {
        this.c = gVar;
        this.b = i;
        this.d = i2;
        this.e = i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        return this.d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c() {
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f a(int i, int i2) {
        int i3;
        g gVar;
        int i4 = this.e;
        g gVar2 = this.c;
        if (i != this.b) {
            int i5 = d.b[this.b][i];
            i3 = i4 + (i5 >> 16);
            gVar = gVar2.a(65535 & i5, i5 >> 16);
        } else {
            i3 = i4;
            gVar = gVar2;
        }
        int i6 = i == 2 ? 4 : 5;
        return new f(gVar.a(i2, i6), i, 0, i6 + i3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f b(int i, int i2) {
        g gVar = this.c;
        int i3 = this.b == 2 ? 4 : 5;
        return new f(gVar.a(d.c[this.b][i], i3).a(i2, 5), this.b, 0, i3 + this.e + 5);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f a(int i) {
        g a2;
        int i2;
        g gVar = this.c;
        int i3 = this.b;
        int i4 = this.e;
        if (this.b == 4 || this.b == 2) {
            int i5 = d.b[i3][0];
            i4 += i5 >> 16;
            a2 = gVar.a(65535 & i5, i5 >> 16);
            i3 = 0;
        } else {
            a2 = gVar;
        }
        if (this.d == 0 || this.d == 31) {
            i2 = 18;
        } else {
            i2 = this.d == 62 ? 9 : 8;
        }
        f fVar = new f(a2, i3, this.d + 1, i4 + i2);
        return fVar.d == 2078 ? fVar.b(i + 1) : fVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f b(int i) {
        return this.d == 0 ? this : new f(this.c.b(i - this.d, this.d), this.b, 0, this.e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(f fVar) {
        int i = this.e + (d.b[this.b][fVar.b] >> 16);
        if (fVar.d > 0 && (this.d == 0 || this.d > fVar.d)) {
            i += 10;
        }
        return i <= fVar.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.google.zxing.common.a a(byte[] bArr) {
        LinkedList<g> linkedList = new LinkedList();
        for (g gVar = b(bArr.length).c; gVar != null; gVar = gVar.a()) {
            linkedList.addFirst(gVar);
        }
        com.google.zxing.common.a aVar = new com.google.zxing.common.a();
        for (g gVar2 : linkedList) {
            gVar2.a(aVar, bArr);
        }
        return aVar;
    }

    public String toString() {
        return String.format("%s bits=%d bytes=%d", d.f626a[this.b], Integer.valueOf(this.e), Integer.valueOf(this.d));
    }
}