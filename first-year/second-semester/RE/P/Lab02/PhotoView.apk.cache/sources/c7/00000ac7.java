package com.google.gson.b;

import com.google.gson.internal.C$Gson$Types;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* compiled from: TypeToken.java */
/* loaded from: classes.dex */
public class a<T> {

    /* renamed from: a  reason: collision with root package name */
    final Class<? super T> f545a;
    final Type b;
    final int c;

    /* JADX INFO: Access modifiers changed from: protected */
    public a() {
        this.b = a(getClass());
        this.f545a = (Class<? super T>) C$Gson$Types.e(this.b);
        this.c = this.b.hashCode();
    }

    a(Type type) {
        this.b = C$Gson$Types.d((Type) com.google.gson.internal.a.a(type));
        this.f545a = (Class<? super T>) C$Gson$Types.e(this.b);
        this.c = this.b.hashCode();
    }

    static Type a(Class<?> cls) {
        Type genericSuperclass = cls.getGenericSuperclass();
        if (genericSuperclass instanceof Class) {
            throw new RuntimeException("Missing type parameter.");
        }
        return C$Gson$Types.d(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
    }

    public final Class<? super T> a() {
        return this.f545a;
    }

    public final Type b() {
        return this.b;
    }

    public final int hashCode() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof a) && C$Gson$Types.a(this.b, ((a) obj).b);
    }

    public final String toString() {
        return C$Gson$Types.f(this.b);
    }

    public static a<?> a(Type type) {
        return new a<>(type);
    }

    public static <T> a<T> b(Class<T> cls) {
        return new a<>(cls);
    }
}