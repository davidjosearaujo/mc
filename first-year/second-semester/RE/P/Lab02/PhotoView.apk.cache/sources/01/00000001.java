package android.arch.a.a;

import android.arch.a.a.b;
import android.support.annotation.RestrictTo;
import java.util.HashMap;

/* compiled from: FastSafeIterableMap.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class a<K, V> extends b<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private HashMap<K, b.c<K, V>> f0a = new HashMap<>();

    public boolean a(K k) {
        return this.f0a.containsKey(k);
    }
}