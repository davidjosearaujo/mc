package com.squareup.picasso;

/* loaded from: classes.dex */
public enum MemoryPolicy {
    NO_CACHE(1),
    NO_STORE(2);
    
    final int index;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean shouldReadFromMemoryCache(int i) {
        return (NO_CACHE.index & i) == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean shouldWriteToMemoryCache(int i) {
        return (NO_STORE.index & i) == 0;
    }

    MemoryPolicy(int i) {
        this.index = i;
    }
}