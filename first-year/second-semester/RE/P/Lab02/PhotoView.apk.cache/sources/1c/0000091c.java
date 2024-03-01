package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class ShareMessengerGenericTemplateContent extends ShareContent<ShareMessengerGenericTemplateContent, Object> {
    public static final Parcelable.Creator<ShareMessengerGenericTemplateContent> CREATOR = new Parcelable.Creator<ShareMessengerGenericTemplateContent>() { // from class: com.facebook.share.model.ShareMessengerGenericTemplateContent.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareMessengerGenericTemplateContent createFromParcel(Parcel parcel) {
            return new ShareMessengerGenericTemplateContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareMessengerGenericTemplateContent[] newArray(int i) {
            return new ShareMessengerGenericTemplateContent[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final boolean f345a;
    private final ImageAspectRatio b;
    private final ShareMessengerGenericTemplateElement c;

    /* loaded from: classes.dex */
    public enum ImageAspectRatio {
        HORIZONTAL,
        SQUARE
    }

    ShareMessengerGenericTemplateContent(Parcel parcel) {
        super(parcel);
        this.f345a = parcel.readByte() != 0;
        this.b = (ImageAspectRatio) parcel.readSerializable();
        this.c = (ShareMessengerGenericTemplateElement) parcel.readParcelable(ShareMessengerGenericTemplateElement.class.getClassLoader());
    }

    public boolean a() {
        return this.f345a;
    }

    public ImageAspectRatio b() {
        return this.b;
    }

    public ShareMessengerGenericTemplateElement c() {
        return this.c;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeByte((byte) (this.f345a ? 1 : 0));
        parcel.writeSerializable(this.b);
        parcel.writeParcelable(this.c, i);
    }
}