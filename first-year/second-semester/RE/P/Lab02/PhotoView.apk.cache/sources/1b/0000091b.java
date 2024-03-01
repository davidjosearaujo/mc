package com.facebook.share.model;

import android.os.Parcel;

/* loaded from: classes.dex */
public abstract class ShareMessengerActionButton implements ShareModel {

    /* renamed from: a  reason: collision with root package name */
    private final String f344a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ShareMessengerActionButton(Parcel parcel) {
        this.f344a = parcel.readString();
    }

    public String a() {
        return this.f344a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f344a);
    }
}