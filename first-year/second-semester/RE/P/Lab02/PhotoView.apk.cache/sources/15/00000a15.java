package com.google.android.gms.common.util;

import android.support.v4.util.ArrayMap;
import android.support.v4.util.SimpleArrayMap;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes.dex */
public class a<E> extends AbstractSet<E> {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayMap<E, E> f470a = new ArrayMap<>();

    public boolean a(a<? extends E> aVar) {
        int size = size();
        this.f470a.putAll((SimpleArrayMap<? extends E, ? extends E>) aVar.f470a);
        return size() > size;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(E e) {
        if (this.f470a.containsKey(e)) {
            return false;
        }
        this.f470a.put(e, e);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends E> collection) {
        return collection instanceof a ? a((a) collection) : super.addAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.f470a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.f470a.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return this.f470a.keySet().iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        if (this.f470a.containsKey(obj)) {
            this.f470a.remove(obj);
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f470a.size();
    }
}