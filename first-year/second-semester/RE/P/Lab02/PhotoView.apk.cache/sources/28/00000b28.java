package com.google.gson.internal;

import com.google.gson.JsonIOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;

/* compiled from: ConstructorConstructor.java */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final Map<Type, com.google.gson.e<?>> f588a;

    public b(Map<Type, com.google.gson.e<?>> map) {
        this.f588a = map;
    }

    public <T> e<T> a(com.google.gson.b.a<T> aVar) {
        final Type b = aVar.b();
        Class<? super T> a2 = aVar.a();
        final com.google.gson.e<?> eVar = this.f588a.get(b);
        if (eVar != null) {
            return new e<T>() { // from class: com.google.gson.internal.b.1
                @Override // com.google.gson.internal.e
                public T a() {
                    return (T) eVar.a(b);
                }
            };
        }
        final com.google.gson.e<?> eVar2 = this.f588a.get(a2);
        if (eVar2 != null) {
            return new e<T>() { // from class: com.google.gson.internal.b.7
                @Override // com.google.gson.internal.e
                public T a() {
                    return (T) eVar2.a(b);
                }
            };
        }
        e<T> a3 = a(a2);
        if (a3 == null) {
            e<T> a4 = a(b, a2);
            return a4 == null ? b(b, a2) : a4;
        }
        return a3;
    }

    private <T> e<T> a(Class<? super T> cls) {
        try {
            final Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            return new e<T>() { // from class: com.google.gson.internal.b.8
                @Override // com.google.gson.internal.e
                public T a() {
                    try {
                        return (T) declaredConstructor.newInstance(null);
                    } catch (IllegalAccessException e) {
                        throw new AssertionError(e);
                    } catch (InstantiationException e2) {
                        throw new RuntimeException("Failed to invoke " + declaredConstructor + " with no args", e2);
                    } catch (InvocationTargetException e3) {
                        throw new RuntimeException("Failed to invoke " + declaredConstructor + " with no args", e3.getTargetException());
                    }
                }
            };
        } catch (NoSuchMethodException e) {
            return null;
        }
    }

    private <T> e<T> a(final Type type, Class<? super T> cls) {
        if (Collection.class.isAssignableFrom(cls)) {
            if (SortedSet.class.isAssignableFrom(cls)) {
                return new e<T>() { // from class: com.google.gson.internal.b.9
                    @Override // com.google.gson.internal.e
                    public T a() {
                        return (T) new TreeSet();
                    }
                };
            }
            if (EnumSet.class.isAssignableFrom(cls)) {
                return new e<T>() { // from class: com.google.gson.internal.b.10
                    @Override // com.google.gson.internal.e
                    public T a() {
                        if (type instanceof ParameterizedType) {
                            Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
                            if (type2 instanceof Class) {
                                return (T) EnumSet.noneOf((Class) type2);
                            }
                            throw new JsonIOException("Invalid EnumSet type: " + type.toString());
                        }
                        throw new JsonIOException("Invalid EnumSet type: " + type.toString());
                    }
                };
            }
            if (Set.class.isAssignableFrom(cls)) {
                return new e<T>() { // from class: com.google.gson.internal.b.11
                    @Override // com.google.gson.internal.e
                    public T a() {
                        return (T) new LinkedHashSet();
                    }
                };
            }
            if (Queue.class.isAssignableFrom(cls)) {
                return new e<T>() { // from class: com.google.gson.internal.b.12
                    @Override // com.google.gson.internal.e
                    public T a() {
                        return (T) new ArrayDeque();
                    }
                };
            }
            return new e<T>() { // from class: com.google.gson.internal.b.13
                @Override // com.google.gson.internal.e
                public T a() {
                    return (T) new ArrayList();
                }
            };
        } else if (Map.class.isAssignableFrom(cls)) {
            if (ConcurrentNavigableMap.class.isAssignableFrom(cls)) {
                return new e<T>() { // from class: com.google.gson.internal.b.14
                    @Override // com.google.gson.internal.e
                    public T a() {
                        return (T) new ConcurrentSkipListMap();
                    }
                };
            }
            if (ConcurrentMap.class.isAssignableFrom(cls)) {
                return new e<T>() { // from class: com.google.gson.internal.b.2
                    @Override // com.google.gson.internal.e
                    public T a() {
                        return (T) new ConcurrentHashMap();
                    }
                };
            }
            if (SortedMap.class.isAssignableFrom(cls)) {
                return new e<T>() { // from class: com.google.gson.internal.b.3
                    @Override // com.google.gson.internal.e
                    public T a() {
                        return (T) new TreeMap();
                    }
                };
            }
            if ((type instanceof ParameterizedType) && !String.class.isAssignableFrom(com.google.gson.b.a.a(((ParameterizedType) type).getActualTypeArguments()[0]).a())) {
                return new e<T>() { // from class: com.google.gson.internal.b.4
                    @Override // com.google.gson.internal.e
                    public T a() {
                        return (T) new LinkedHashMap();
                    }
                };
            }
            return new e<T>() { // from class: com.google.gson.internal.b.5
                @Override // com.google.gson.internal.e
                public T a() {
                    return (T) new LinkedTreeMap();
                }
            };
        } else {
            return null;
        }
    }

    private <T> e<T> b(final Type type, final Class<? super T> cls) {
        return new e<T>() { // from class: com.google.gson.internal.b.6
            private final h d = h.a();

            @Override // com.google.gson.internal.e
            public T a() {
                try {
                    return (T) this.d.a(cls);
                } catch (Exception e) {
                    throw new RuntimeException("Unable to invoke no-args constructor for " + type + ". Register an InstanceCreator with Gson for this type may fix this problem.", e);
                }
            }
        };
    }

    public String toString() {
        return this.f588a.toString();
    }
}