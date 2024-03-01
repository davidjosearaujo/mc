package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class ShareMessengerMediaTemplateContent extends ShareContent<ShareMessengerMediaTemplateContent, Object> {
    public static final Parcelable.Creator<ShareMessengerMediaTemplateContent> CREATOR = new Parcelable.Creator<ShareMessengerMediaTemplateContent>() { // from class: com.facebook.share.model.ShareMessengerMediaTemplateContent.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareMessengerMediaTemplateContent createFromParcel(Parcel parcel) {
            return new ShareMessengerMediaTemplateContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareMessengerMediaTemplateContent[] newArray(int i) {
            return new ShareMessengerMediaTemplateContent[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final MediaType f348a;
    private final String b;
    private final Uri c;
    private final ShareMessengerActionButton d;

    /* loaded from: classes.dex */
    public enum MediaType {
        IMAGE,
        VIDEO
    }

    ShareMessengerMediaTemplateContent(Parcel parcel) {
        super(parcel);
        this.f348a = (MediaType) parcel.readSerializable();
        this.b = parcel.readString();
        this.c = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.d = (ShareMessengerActionButton) parcel.readParcelable(ShareMessengerActionButton.class.getClassLoader());
    }

    public MediaType a() {
        return this.f348a;
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

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeSerializable(this.f348a);
        parcel.writeString(this.b);
        parcel.writeParcelable(this.c, i);
        parcel.writeParcelable(this.d, i);
    }
}