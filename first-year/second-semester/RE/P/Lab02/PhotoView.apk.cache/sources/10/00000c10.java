package com.mbv.a.wp.c;

import java.util.Collection;

/* compiled from: CollectionUtil.java */
/* loaded from: classes.dex */
public final class a {
    public static boolean a(Collection<?> collection) {
        if (collection == null) {
            return true;
        }
        return collection.isEmpty();
    }
}