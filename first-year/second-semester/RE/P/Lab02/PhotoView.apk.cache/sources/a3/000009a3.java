package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.c;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;

@KeepName
/* loaded from: classes.dex */
public final class DataHolder extends zza implements Closeable {
    public static final Parcelable.Creator<DataHolder> CREATOR = new b();
    private static final a k = new a(new String[0], null) { // from class: com.google.android.gms.common.data.DataHolder.1
    };

    /* renamed from: a  reason: collision with root package name */
    final int f409a;
    Bundle b;
    int[] c;
    int d;
    private final String[] f;
    private final CursorWindow[] g;
    private final int h;
    private final Bundle i;
    boolean e = false;
    private boolean j = true;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final String[] f410a;
        private final ArrayList<HashMap<String, Object>> b;
        private final String c;
        private final HashMap<Object, Integer> d;
        private boolean e;
        private String f;

        private a(String[] strArr, String str) {
            this.f410a = (String[]) c.a(strArr);
            this.b = new ArrayList<>();
            this.c = str;
            this.d = new HashMap<>();
            this.e = false;
            this.f = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DataHolder(int i, String[] strArr, CursorWindow[] cursorWindowArr, int i2, Bundle bundle) {
        this.f409a = i;
        this.f = strArr;
        this.g = cursorWindowArr;
        this.h = i2;
        this.i = bundle;
    }

    public void a() {
        this.b = new Bundle();
        for (int i = 0; i < this.f.length; i++) {
            this.b.putInt(this.f[i], i);
        }
        this.c = new int[this.g.length];
        int i2 = 0;
        for (int i3 = 0; i3 < this.g.length; i3++) {
            this.c[i3] = i2;
            i2 += this.g[i3].getNumRows() - (i2 - this.g[i3].getStartPosition());
        }
        this.d = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String[] b() {
        return this.f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CursorWindow[] c() {
        return this.g;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            if (!this.e) {
                this.e = true;
                for (int i = 0; i < this.g.length; i++) {
                    this.g[i].close();
                }
            }
        }
    }

    public int d() {
        return this.h;
    }

    public Bundle e() {
        return this.i;
    }

    public boolean f() {
        boolean z;
        synchronized (this) {
            z = this.e;
        }
        return z;
    }

    protected void finalize() {
        try {
            if (this.j && this.g.length > 0 && !f()) {
                close();
                String valueOf = String.valueOf(toString());
                Log.e("DataBuffer", new StringBuilder(String.valueOf(valueOf).length() + 178).append("Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: ").append(valueOf).append(")").toString());
            }
        } finally {
            super.finalize();
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        b.a(this, parcel, i);
    }
}