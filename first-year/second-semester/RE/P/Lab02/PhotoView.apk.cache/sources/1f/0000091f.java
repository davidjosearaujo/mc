package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class ShareMessengerGenericTemplateElement implements ShareModel {
    public static final Parcelable.Creator<ShareMessengerGenericTemplateElement> CREATOR = new Parcelable.Creator<ShareMessengerGenericTemplateElement>() { // from class: com.facebook.share.model.ShareMessengerGenericTemplateElement.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareMessengerGenericTemplateElement createFromParcel(Parcel parcel) {
            return new ShareMessengerGenericTemplateElement(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareMessengerGenericTemplateElement[] newArray(int i) {
            return new ShareMessengerGenericTemplateElement[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final String f347a;
    private final String b;
    private final Uri c;
    private final ShareMessengerActionButton d;
    private final ShareMessengerActionButton e;

    ShareMessengerGenericTemplateElement(Parcel parcel) {
        this.f347a = parcel.readString();
        this.b = parcel.readString();
        this.c = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.d = (ShareMessengerActionButton) parcel.readParcelable(ShareMessengerActionButton.class.getClassLoader());
        this.e = (ShareMessengerActionButton) parcel.readParcelable(ShareMessengerActionButton.class.getClassLoader());
    }

    public String a() {
        return this.f347a;
    }

    public String b() {
        return this.b;
    }

    public Uri c() {
        return this.c;
    }

    public ShareMessengerActionButton d() {
        return this.d;
    }

    public ShareMessengerActionButton e() {
        return this.e;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f347a);
        parcel.writeString(this.b);
        parcel.writeParcelable(this.c, i);
        parcel.writeParcelable(this.d, i);
        parcel.writeParcelable(this.e, i);
    }
}