package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class ShareHashtag implements ShareModel {
    public static final Parcelable.Creator<ShareHashtag> CREATOR = new Parcelable.Creator<ShareHashtag>() { // from class: com.facebook.share.model.ShareHashtag.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareHashtag createFromParcel(Parcel parcel) {
            return new ShareHashtag(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareHashtag[] newArray(int i) {
            return new ShareHashtag[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final String f337a;

    private ShareHashtag(a aVar) {
        this.f337a = aVar.f338a;
    }

    ShareHashtag(Parcel parcel) {
        this.f337a = parcel.readString();
    }

    public String a() {
        return this.f337a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f337a);
    }

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private String f338a;

        public a a(String str) {
            this.f338a = str;
            return this;
        }

        public a a(ShareHashtag shareHashtag) {
            return shareHashtag == null ? this : a(shareHashtag.a());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a a(Parcel parcel) {
            return a((ShareHashtag) parcel.readParcelable(ShareHashtag.class.getClassLoader()));
        }

        public ShareHashtag a() {
            return new ShareHashtag(this);
        }
    }
}