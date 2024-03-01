package com.google.gson.internal.a;

import com.google.gson.internal.C$Gson$Types;
import com.google.gson.o;
import com.google.gson.p;
import com.google.gson.stream.JsonToken;
import java.lang.reflect.Type;
import java.util.Collection;

/* compiled from: CollectionTypeAdapterFactory.java */
/* loaded from: classes.dex */
public final class b implements p {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.gson.internal.b f562a;

    public b(com.google.gson.internal.b bVar) {
        this.f562a = bVar;
    }

    @Override // com.google.gson.p
    public <T> o<T> a(com.google.gson.d dVar, com.google.gson.b.a<T> aVar) {
        Type b = aVar.b();
        Class<? super T> a2 = aVar.a();
        if (!Collection.class.isAssignableFrom(a2)) {
            return null;
        }
        Type a3 = C$Gson$Types.a(b, (Class<?>) a2);
        return new a(dVar, a3, dVar.a((com.google.gson.b.a) com.google.gson.b.a.a(a3)), this.f562a.a(aVar));
    }

    /* compiled from: CollectionTypeAdapterFactory.java */
    /* loaded from: classes.dex */
    private static final class a<E> extends o<Collection<E>> {

        /* renamed from: a  reason: collision with root package name */
        private final o<E> f563a;
        private final com.google.gson.internal.e<? extends Collection<E>> b;

        @Override // com.google.gson.o
        public /* bridge */ /* synthetic */ void a(com.google.gson.stream.b bVar, Object obj) {
            a(bVar, (Collection) ((Collection) obj));
        }

        public a(com.google.gson.d dVar, Type type, o<E> oVar, com.google.gson.internal.e<? extends Collection<E>> eVar) {
            this.f563a = new m(dVar, oVar, type);
            this.b = eVar;
        }

        @Override // com.google.gson.o
        /* renamed from: a */
        public Collection<E> b(com.google.gson.stream.a aVar) {
            if (aVar.f() == JsonToken.NULL) {
                aVar.j();
                return null;
            }
            Collection<E> a2 = this.b.a();
            aVar.a();
            while (aVar.e()) {
                a2.add(this.f563a.b(aVar));
            }
            aVar.b();
            return a2;
        }

        public void a(com.google.gson.stream.b bVar, Collection<E> collection) {
            if (collection == null) {
                bVar.f();
                return;
            }
            bVar.b();
            for (E e : collection) {
                this.f563a.a(bVar, e);
            }
            bVar.c();
        }
    }
}