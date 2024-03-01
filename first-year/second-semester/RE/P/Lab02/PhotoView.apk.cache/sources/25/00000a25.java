package com.google.android.gms.dynamic;

import android.os.IBinder;
import com.google.android.gms.dynamic.a;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public final class b<T> extends a.AbstractBinderC0027a {

    /* renamed from: a  reason: collision with root package name */
    private final T f476a;

    private b(T t) {
        this.f476a = t;
    }

    public static <T> a a(T t) {
        return new b(t);
    }

    public static <T> T a(a aVar) {
        int i = 0;
        if (aVar instanceof b) {
            return ((b) aVar).f476a;
        }
        IBinder asBinder = aVar.asBinder();
        Field[] declaredFields = asBinder.getClass().getDeclaredFields();
        Field field = null;
        int length = declaredFields.length;
        int i2 = 0;
        while (i2 < length) {
            Field field2 = declaredFields[i2];
            if (field2.isSynthetic()) {
                field2 = field;
            } else {
                i++;
            }
            i2++;
            field = field2;
        }
        if (i != 1) {
            throw new IllegalArgumentException(new StringBuilder(64).append("Unexpected number of IObjectWrapper declared fields: ").append(declaredFields.length).toString());
        } else if (field.isAccessible()) {
            throw new IllegalArgumentException("IObjectWrapper declared field not private!");
        } else {
            field.setAccessible(true);
            try {
                return (T) field.get(asBinder);
            } catch (IllegalAccessException e) {
                throw new IllegalArgumentException("Could not access the field in remoteBinder.", e);
            } catch (NullPointerException e2) {
                throw new IllegalArgumentException("Binder object is null.", e2);
            }
        }
    }
}