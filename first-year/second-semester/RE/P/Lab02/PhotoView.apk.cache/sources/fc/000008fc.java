package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class AppGroupCreationContent implements ShareModel {
    public static final Parcelable.Creator<AppGroupCreationContent> CREATOR = new Parcelable.Creator<AppGroupCreationContent>() { // from class: com.facebook.share.model.AppGroupCreationContent.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public AppGroupCreationContent createFromParcel(Parcel parcel) {
            return new AppGroupCreationContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public AppGroupCreationContent[] newArray(int i) {
            return new AppGroupCreationContent[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final String f323a;
    private final String b;
    private AppGroupPrivacy c;

    /* loaded from: classes.dex */
    public enum AppGroupPrivacy {
        Open,
        Closed
    }

    AppGroupCreationContent(Parcel parcel) {
        this.f323a = parcel.readString();
        this.b = parcel.readString();
        this.c = (AppGroupPrivacy) parcel.readSerializable();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f323a);
        parcel.writeString(this.b);
        parcel.writeSerializable(this.c);
    }
}