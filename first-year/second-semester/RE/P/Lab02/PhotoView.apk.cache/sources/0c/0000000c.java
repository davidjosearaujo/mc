package android.arch.lifecycle;

import android.arch.lifecycle.Lifecycle;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: ClassesInfoCache.java */
/* loaded from: classes.dex */
class a {

    /* renamed from: a  reason: collision with root package name */
    static a f6a = new a();
    private final Map<Class, C0001a> b = new HashMap();
    private final Map<Class, Boolean> c = new HashMap();

    a() {
    }

    /* compiled from: ClassesInfoCache.java */
    /* renamed from: android.arch.lifecycle.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static class C0001a {

        /* renamed from: a  reason: collision with root package name */
        final Map<Lifecycle.Event, List<b>> f7a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a(g gVar, Lifecycle.Event event, Object obj) {
            a(this.f7a.get(event), gVar, event, obj);
            a(this.f7a.get(Lifecycle.Event.ON_ANY), gVar, event, obj);
        }

        private static void a(List<b> list, g gVar, Lifecycle.Event event, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    list.get(size).a(gVar, event, obj);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ClassesInfoCache.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        final int f8a;
        final Method b;

        void a(g gVar, Lifecycle.Event event, Object obj) {
            try {
                switch (this.f8a) {
                    case 0:
                        this.b.invoke(obj, new Object[0]);
                        return;
                    case 1:
                        this.b.invoke(obj, gVar);
                        return;
                    case 2:
                        this.b.invoke(obj, gVar, event);
                        return;
                    default:
                        return;
                }
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            } catch (InvocationTargetException e2) {
                throw new RuntimeException("Failed to call observer method", e2.getCause());
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            return this.f8a == bVar.f8a && this.b.getName().equals(bVar.b.getName());
        }

        public int hashCode() {
            return (this.f8a * 31) + this.b.getName().hashCode();
        }
    }
}