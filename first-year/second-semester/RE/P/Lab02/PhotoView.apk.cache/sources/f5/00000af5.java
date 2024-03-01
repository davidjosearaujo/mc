package com.google.gson.internal.a;

import com.google.gson.JsonSyntaxException;
import com.google.gson.internal.C$Gson$Types;
import com.google.gson.o;
import com.google.gson.p;
import com.google.gson.stream.JsonToken;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* compiled from: ReflectiveTypeAdapterFactory.java */
/* loaded from: classes.dex */
public final class i implements p {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.gson.internal.b f571a;
    private final com.google.gson.c b;
    private final com.google.gson.internal.c c;
    private final d d;

    public i(com.google.gson.internal.b bVar, com.google.gson.c cVar, com.google.gson.internal.c cVar2, d dVar) {
        this.f571a = bVar;
        this.b = cVar;
        this.c = cVar2;
        this.d = dVar;
    }

    public boolean a(Field field, boolean z) {
        return a(field, z, this.c);
    }

    static boolean a(Field field, boolean z, com.google.gson.internal.c cVar) {
        return (cVar.a(field.getType(), z) || cVar.a(field, z)) ? false : true;
    }

    private List<String> a(Field field) {
        com.google.gson.a.c cVar = (com.google.gson.a.c) field.getAnnotation(com.google.gson.a.c.class);
        if (cVar == null) {
            return Collections.singletonList(this.b.translateName(field));
        }
        String a2 = cVar.a();
        String[] b2 = cVar.b();
        if (b2.length == 0) {
            return Collections.singletonList(a2);
        }
        ArrayList arrayList = new ArrayList(b2.length + 1);
        arrayList.add(a2);
        for (String str : b2) {
            arrayList.add(str);
        }
        return arrayList;
    }

    @Override // com.google.gson.p
    public <T> o<T> a(com.google.gson.d dVar, com.google.gson.b.a<T> aVar) {
        Class<? super T> a2 = aVar.a();
        if (!Object.class.isAssignableFrom(a2)) {
            return null;
        }
        return new a(this.f571a.a(aVar), a(dVar, (com.google.gson.b.a<?>) aVar, (Class<?>) a2));
    }

    private b a(final com.google.gson.d dVar, final Field field, String str, final com.google.gson.b.a<?> aVar, boolean z, boolean z2) {
        final boolean a2 = com.google.gson.internal.f.a(aVar.a());
        com.google.gson.a.b bVar = (com.google.gson.a.b) field.getAnnotation(com.google.gson.a.b.class);
        final o<?> oVar = null;
        if (bVar != null) {
            oVar = this.d.a(this.f571a, dVar, aVar, bVar);
        }
        final boolean z3 = oVar != null;
        if (oVar == null) {
            oVar = dVar.a((com.google.gson.b.a) aVar);
        }
        return new b(str, z, z2) { // from class: com.google.gson.internal.a.i.1
            @Override // com.google.gson.internal.a.i.b
            void a(com.google.gson.stream.b bVar2, Object obj) {
                (z3 ? oVar : new m(dVar, oVar, aVar.b())).a(bVar2, field.get(obj));
            }

            @Override // com.google.gson.internal.a.i.b
            void a(com.google.gson.stream.a aVar2, Object obj) {
                Object b2 = oVar.b(aVar2);
                if (b2 != null || !a2) {
                    field.set(obj, b2);
                }
            }

            @Override // com.google.gson.internal.a.i.b
            public boolean a(Object obj) {
                return this.i && field.get(obj) != obj;
            }
        };
    }

    private Map<String, b> a(com.google.gson.d dVar, com.google.gson.b.a<?> aVar, Class<?> cls) {
        Field[] declaredFields;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (cls.isInterface()) {
            return linkedHashMap;
        }
        Type b2 = aVar.b();
        while (cls != Object.class) {
            for (Field field : cls.getDeclaredFields()) {
                boolean a2 = a(field, true);
                boolean a3 = a(field, false);
                if (a2 || a3) {
                    field.setAccessible(true);
                    Type a4 = C$Gson$Types.a(aVar.b(), cls, field.getGenericType());
                    List<String> a5 = a(field);
                    b bVar = null;
                    int i = 0;
                    while (i < a5.size()) {
                        String str = a5.get(i);
                        if (i != 0) {
                            a2 = false;
                        }
                        b bVar2 = (b) linkedHashMap.put(str, a(dVar, field, str, com.google.gson.b.a.a(a4), a2, a3));
                        if (bVar != null) {
                            bVar2 = bVar;
                        }
                        i++;
                        bVar = bVar2;
                    }
                    if (bVar != null) {
                        throw new IllegalArgumentException(b2 + " declares multiple JSON fields named " + bVar.h);
                    }
                }
            }
            aVar = com.google.gson.b.a.a(C$Gson$Types.a(aVar.b(), cls, cls.getGenericSuperclass()));
            cls = aVar.a();
        }
        return linkedHashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ReflectiveTypeAdapterFactory.java */
    /* loaded from: classes.dex */
    public static abstract class b {
        final String h;
        final boolean i;
        final boolean j;

        abstract void a(com.google.gson.stream.a aVar, Object obj);

        abstract void a(com.google.gson.stream.b bVar, Object obj);

        abstract boolean a(Object obj);

        protected b(String str, boolean z, boolean z2) {
            this.h = str;
            this.i = z;
            this.j = z2;
        }
    }

    /* compiled from: ReflectiveTypeAdapterFactory.java */
    /* loaded from: classes.dex */
    public static final class a<T> extends o<T> {

        /* renamed from: a  reason: collision with root package name */
        private final com.google.gson.internal.e<T> f573a;
        private final Map<String, b> b;

        a(com.google.gson.internal.e<T> eVar, Map<String, b> map) {
            this.f573a = eVar;
            this.b = map;
        }

        @Override // com.google.gson.o
        public T b(com.google.gson.stream.a aVar) {
            if (aVar.f() == JsonToken.NULL) {
                aVar.j();
                return null;
            }
            T a2 = this.f573a.a();
            try {
                aVar.c();
                while (aVar.e()) {
                    b bVar = this.b.get(aVar.g());
                    if (bVar == null || !bVar.j) {
                        aVar.n();
                    } else {
                        bVar.a(aVar, a2);
                    }
                }
                aVar.d();
                return a2;
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (IllegalStateException e2) {
                throw new JsonSyntaxException(e2);
            }
        }

        @Override // com.google.gson.o
        public void a(com.google.gson.stream.b bVar, T t) {
            if (t == null) {
                bVar.f();
                return;
            }
            bVar.d();
            try {
                for (b bVar2 : this.b.values()) {
                    if (bVar2.a(t)) {
                        bVar.a(bVar2.h);
                        bVar2.a(bVar, t);
                    }
                }
                bVar.e();
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            }
        }
    }
}