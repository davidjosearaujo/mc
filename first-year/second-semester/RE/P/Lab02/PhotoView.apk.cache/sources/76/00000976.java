package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: classes.dex */
public final class ConnectionResult extends zza {
    final int b;
    private final int c;
    private final PendingIntent d;
    private final String e;

    /* renamed from: a  reason: collision with root package name */
    public static final ConnectionResult f393a = new ConnectionResult(0);
    public static final Parcelable.Creator<ConnectionResult> CREATOR = new e();

    public ConnectionResult(int i) {
        this(i, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConnectionResult(int i, int i2, PendingIntent pendingIntent, String str) {
        this.b = i;
        this.c = i2;
        this.d = pendingIntent;
        this.e = str;
    }

    public ConnectionResult(int i, PendingIntent pendingIntent) {
        this(i, pendingIntent, null);
    }

    public ConnectionResult(int i, PendingIntent pendingIntent, String str) {
        this(1, i, pendingIntent, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(int i) {
        switch (i) {
            case -1:
                return "UNKNOWN";
            case 0:
                return "SUCCESS";
            case 1:
                return "SERVICE_MISSING";
            case 2:
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            case 3:
                return "SERVICE_DISABLED";
            case 4:
                return "SIGN_IN_REQUIRED";
            case 5:
                return "INVALID_ACCOUNT";
            case 6:
                return "RESOLUTION_REQUIRED";
            case 7:
                return "NETWORK_ERROR";
            case 8:
                return "INTERNAL_ERROR";
            case 9:
                return "SERVICE_INVALID";
            case 10:
                return "DEVELOPER_ERROR";
            case 11:
                return "LICENSE_CHECK_FAILED";
            case 13:
                return "CANCELED";
            case 14:
                return "TIMEOUT";
            case 15:
                return "INTERRUPTED";
            case 16:
                return "API_UNAVAILABLE";
            case 17:
                return "SIGN_IN_FAILED";
            case 18:
                return "SERVICE_UPDATING";
            case 19:
                return "SERVICE_MISSING_PERMISSION";
            case 20:
                return "RESTRICTED_PROFILE";
            case 21:
                return "API_VERSION_UPDATE_REQUIRED";
            case 99:
                return "UNFINISHED";
            case 1500:
                return "DRIVE_EXTERNAL_STORAGE_REQUIRED";
            default:
                return new StringBuilder(31).append("UNKNOWN_ERROR_CODE(").append(i).append(")").toString();
        }
    }

    public boolean a() {
        return (this.c == 0 || this.d == null) ? false : true;
    }

    public boolean b() {
        return this.c == 0;
    }

    public int c() {
        return this.c;
    }

    @Nullable
    public PendingIntent d() {
        return this.d;
    }

    @Nullable
    public String e() {
        return this.e;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ConnectionResult) {
            ConnectionResult connectionResult = (ConnectionResult) obj;
            return this.c == connectionResult.c && com.google.android.gms.common.internal.b.a(this.d, connectionResult.d) && com.google.android.gms.common.internal.b.a(this.e, connectionResult.e);
        }
        return false;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.b.a(Integer.valueOf(this.c), this.d, this.e);
    }

    public String toString() {
        return com.google.android.gms.common.internal.b.a(this).a("statusCode", a(this.c)).a("resolution", this.d).a("message", this.e).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        e.a(this, parcel, i);
    }
}