package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;

/* loaded from: classes.dex */
public final class ShareLinkContent extends ShareContent<ShareLinkContent, Object> {
    public static final Parcelable.Creator<ShareLinkContent> CREATOR = new Parcelable.Creator<ShareLinkContent>() { // from class: com.facebook.share.model.ShareLinkContent.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareLinkContent createFromParcel(Parcel parcel) {
            return new ShareLinkContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareLinkContent[] newArray(int i) {
            return new ShareLinkContent[i];
        }
    };
    @Deprecated

    /* renamed from: a  reason: collision with root package name */
    private final String f339a;
    @Deprecated
    private final String b;
    @Deprecated
    private final Uri c;
    private final String d;

    ShareLinkContent(Parcel parcel) {
        super(parcel);
        this.f339a = parcel.readString();
        this.b = parcel.readString();
        this.c = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.d = parcel.readString();
    }

    @Deprecated
    public String a() {
        return this.f339a;
    }

    @Nullable
    @Deprecated
    public String b() {
        return this.b;
    }

    @Nullable
    @Deprecated
    public Uri c() {
        return this.c;
    }

    @Nullable
    public String d() {
        return this.d;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f339a);
        parcel.writeString(this.b);
        parcel.writeParcelable(this.c, 0);
        parcel.writeString(this.d);
    }
}