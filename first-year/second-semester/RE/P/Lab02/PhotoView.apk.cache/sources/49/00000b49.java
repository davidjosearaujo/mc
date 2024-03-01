package com.google.gson;

import com.google.gson.stream.JsonToken;
import java.io.IOException;

/* compiled from: TypeAdapter.java */
/* loaded from: classes.dex */
public abstract class o<T> {
    public abstract void a(com.google.gson.stream.b bVar, T t);

    public abstract T b(com.google.gson.stream.a aVar);

    public final o<T> a() {
        return new o<T>() { // from class: com.google.gson.o.1
            @Override // com.google.gson.o
            public void a(com.google.gson.stream.b bVar, T t) {
                if (t == null) {
                    bVar.f();
                } else {
                    o.this.a(bVar, t);
                }
            }

            @Override // com.google.gson.o
            public T b(com.google.gson.stream.a aVar) {
                if (aVar.f() == JsonToken.NULL) {
                    aVar.j();
                    return null;
                }
                return (T) o.this.b(aVar);
            }
        };
    }

    public final i a(T t) {
        try {
            com.google.gson.internal.a.f fVar = new com.google.gson.internal.a.f();
            a(fVar, t);
            return fVar.a();
        } catch (IOException e) {
            throw new JsonIOException(e);
        }
    }
}