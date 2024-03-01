package android.arch.a.a;

import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* compiled from: SafeIterableMap.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class b<K, V> implements Iterable<Map.Entry<K, V>> {

    /* renamed from: a  reason: collision with root package name */
    private c<K, V> f1a;
    private c<K, V> b;
    private WeakHashMap<Object<K, V>, Boolean> c = new WeakHashMap<>();
    private int d = 0;

    public int a() {
        return this.d;
    }

    @Override // java.lang.Iterable
    @NonNull
    public Iterator<Map.Entry<K, V>> iterator() {
        a aVar = new a(this.f1a, this.b);
        this.c.put(aVar, false);
        return aVar;
    }

    public Iterator<Map.Entry<K, V>> b() {
        C0000b c0000b = new C0000b(this.b, this.f1a);
        this.c.put(c0000b, false);
        return c0000b;
    }

    public b<K, V>.d c() {
        b<K, V>.d dVar = new d();
        this.c.put(dVar, false);
        return dVar;
    }

    public Map.Entry<K, V> d() {
        return this.f1a;
    }

    public Map.Entry<K, V> e() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof b) {
            b bVar = (b) obj;
            if (a() == bVar.a()) {
                Iterator<Map.Entry<K, V>> it = iterator();
                Iterator<Map.Entry<K, V>> it2 = bVar.iterator();
                while (it.hasNext() && it2.hasNext()) {
                    Map.Entry<K, V> next = it.next();
                    Map.Entry<K, V> next2 = it2.next();
                    if (next == null && next2 != null) {
                        return false;
                    }
                    if (next != null && !next.equals(next2)) {
                        return false;
                    }
                }
                return (it.hasNext() || it2.hasNext()) ? false : true;
            }
            return false;
        }
        return false;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        Iterator<Map.Entry<K, V>> it = iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* compiled from: SafeIterableMap.java */
    /* loaded from: classes.dex */
    private static abstract class e<K, V> implements Iterator<Map.Entry<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        c<K, V> f4a;
        c<K, V> b;

        abstract c<K, V> a(c<K, V> cVar);

        e(c<K, V> cVar, c<K, V> cVar2) {
            this.f4a = cVar2;
            this.b = cVar;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.b != null;
        }

        private c<K, V> b() {
            if (this.b == this.f4a || this.f4a == null) {
                return null;
            }
            return a(this.b);
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public Map.Entry<K, V> next() {
            c<K, V> cVar = this.b;
            this.b = b();
            return cVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SafeIterableMap.java */
    /* loaded from: classes.dex */
    public static class a<K, V> extends e<K, V> {
        a(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // android.arch.a.a.b.e
        c<K, V> a(c<K, V> cVar) {
            return cVar.c;
        }
    }

    /* compiled from: SafeIterableMap.java */
    /* renamed from: android.arch.a.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static class C0000b<K, V> extends e<K, V> {
        C0000b(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // android.arch.a.a.b.e
        c<K, V> a(c<K, V> cVar) {
            return cVar.d;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SafeIterableMap.java */
    /* loaded from: classes.dex */
    public class d implements Iterator<Map.Entry<K, V>> {
        private c<K, V> b;
        private boolean c;

        private d() {
            this.c = true;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.c ? b.this.f1a != null : (this.b == null || this.b.c == null) ? false : true;
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public Map.Entry<K, V> next() {
            if (this.c) {
                this.c = false;
                this.b = b.this.f1a;
            } else {
                this.b = this.b != null ? this.b.c : null;
            }
            return this.b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SafeIterableMap.java */
    /* loaded from: classes.dex */
    public static class c<K, V> implements Map.Entry<K, V> {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        final K f2a;
        @NonNull
        final V b;
        c<K, V> c;
        c<K, V> d;

        @Override // java.util.Map.Entry
        @NonNull
        public K getKey() {
            return this.f2a;
        }

        @Override // java.util.Map.Entry
        @NonNull
        public V getValue() {
            return this.b;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public String toString() {
            return this.f2a + "=" + this.b;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof c) {
                c cVar = (c) obj;
                return this.f2a.equals(cVar.f2a) && this.b.equals(cVar.b);
            }
            return false;
        }
    }
}