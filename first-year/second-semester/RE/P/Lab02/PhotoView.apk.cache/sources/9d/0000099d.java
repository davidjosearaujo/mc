package com.google.android.gms.common.api;

import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.internal.ao;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class zzb extends Exception {
    private final ArrayMap<ao<?>, ConnectionResult> zzaxy;

    public zzb(ArrayMap<ao<?>, ConnectionResult> arrayMap) {
        this.zzaxy = arrayMap;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        ArrayList arrayList = new ArrayList();
        boolean z = true;
        for (ao<?> aoVar : this.zzaxy.keySet()) {
            ConnectionResult connectionResult = this.zzaxy.get(aoVar);
            if (connectionResult.b()) {
                z = false;
            }
            String valueOf = String.valueOf(aoVar.a());
            String valueOf2 = String.valueOf(connectionResult);
            arrayList.add(new StringBuilder(String.valueOf(valueOf).length() + 2 + String.valueOf(valueOf2).length()).append(valueOf).append(": ").append(valueOf2).toString());
        }
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append("None of the queried APIs are available. ");
        } else {
            sb.append("Some of the queried APIs are unavailable. ");
        }
        sb.append(TextUtils.join("; ", arrayList));
        return sb.toString();
    }

    public ArrayMap<ao<?>, ConnectionResult> zzuK() {
        return this.zzaxy;
    }
}