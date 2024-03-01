package com.google.gson.internal.a;

import com.google.gson.o;
import com.google.gson.p;

/* compiled from: JsonAdapterAnnotationTypeAdapterFactory.java */
/* loaded from: classes.dex */
public final class d implements p {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.gson.internal.b f565a;

    public d(com.google.gson.internal.b bVar) {
        this.f565a = bVar;
    }

    @Override // com.google.gson.p
    public <T> o<T> a(com.google.gson.d dVar, com.google.gson.b.a<T> aVar) {
        com.google.gson.a.b bVar = (com.google.gson.a.b) aVar.a().getAnnotation(com.google.gson.a.b.class);
        if (bVar == null) {
            return null;
        }
        return (o<T>) a(this.f565a, dVar, aVar, bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o<?> a(com.google.gson.internal.b bVar, com.google.gson.d dVar, com.google.gson.b.a<?> aVar, com.google.gson.a.b bVar2) {
        o<?> lVar;
        Object a2 = bVar.a(com.google.gson.b.a.b(bVar2.a())).a();
        if (a2 instanceof o) {
            lVar = (o) a2;
        } else if (a2 instanceof p) {
            lVar = ((p) a2).a(dVar, aVar);
        } else if ((a2 instanceof com.google.gson.n) || (a2 instanceof com.google.gson.h)) {
            lVar = new l<>(a2 instanceof com.google.gson.n ? (com.google.gson.n) a2 : null, a2 instanceof com.google.gson.h ? (com.google.gson.h) a2 : null, dVar, aVar, null);
        } else {
            throw new IllegalArgumentException("@JsonAdapter value must be TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer reference.");
        }
        if (lVar != null && bVar2.b()) {
            return lVar.a();
        }
        return lVar;
    }
}