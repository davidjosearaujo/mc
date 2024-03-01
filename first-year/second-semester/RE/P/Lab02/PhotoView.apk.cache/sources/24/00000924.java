package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class ShareMessengerOpenGraphMusicTemplateContent extends ShareContent<ShareMessengerOpenGraphMusicTemplateContent, Object> {
    public static final Parcelable.Creator<ShareMessengerOpenGraphMusicTemplateContent> CREATOR = new Parcelable.Creator<ShareMessengerOpenGraphMusicTemplateContent>() { // from class: com.facebook.share.model.ShareMessengerOpenGraphMusicTemplateContent.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareMessengerOpenGraphMusicTemplateContent createFromParcel(Parcel parcel) {
            return new ShareMessengerOpenGraphMusicTemplateContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareMessengerOpenGraphMusicTemplateContent[] newArray(int i) {
            return new ShareMessengerOpenGraphMusicTemplateContent[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final Uri f350a;
    private final ShareMessengerActionButton b;

    ShareMessengerOpenGraphMusicTemplateContent(Parcel parcel) {
        super(parcel);
        this.f350a = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.b = (ShareMessengerActionButton) parcel.readParcelable(ShareMessengerActionButton.class.getClassLoader());
    }

    public Uri a() {
        return this.f350a;
    }

    public ShareMessengerActionButton b() {
        return this.b;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f350a, i);
        parcel.writeParcelable(this.b, i);
    }
}