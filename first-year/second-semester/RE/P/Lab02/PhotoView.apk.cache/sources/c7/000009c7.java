package com.google.android.gms.common.internal;

import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class b {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final List<String> f431a;
        private final Object b;

        private a(Object obj) {
            this.b = c.a(obj);
            this.f431a = new ArrayList();
        }

        public a a(String str, Object obj) {
            List<String> list = this.f431a;
            String str2 = (String) c.a(str);
            String valueOf = String.valueOf(String.valueOf(obj));
            list.add(new StringBuilder(String.valueOf(str2).length() + 1 + String.valueOf(valueOf).length()).append(str2).append("=").append(valueOf).toString());
            return this;
        }

        public String toString() {
            StringBuilder append = new StringBuilder(100).append(this.b.getClass().getSimpleName()).append('{');
            int size = this.f431a.size();
            for (int i = 0; i < size; i++) {
                append.append(this.f431a.get(i));
                if (i < size - 1) {
                    append.append(", ");
                }
            }
            return append.append('}').toString();
        }
    }

    public static int a(Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    public static a a(Object obj) {
        return new a(obj);
    }

    public static boolean a(@Nullable Object obj, @Nullable Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }
}