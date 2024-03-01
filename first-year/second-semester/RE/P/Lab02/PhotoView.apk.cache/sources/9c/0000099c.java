package com.google.android.gms.common.api;

import android.support.annotation.NonNull;

/* loaded from: classes.dex */
public class zza extends Exception {
    protected final Status zzahq;

    public zza(@NonNull Status status) {
        super(status.c());
        this.zzahq = status;
    }
}