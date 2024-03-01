package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.facebook.share.model.ShareMedia;

/* loaded from: classes.dex */
public final class ShareVideo extends ShareMedia {
    public static final Parcelable.Creator<ShareVideo> CREATOR = new Parcelable.Creator<ShareVideo>() { // from class: com.facebook.share.model.ShareVideo.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareVideo createFromParcel(Parcel parcel) {
            return new ShareVideo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareVideo[] newArray(int i) {
            return new ShareVideo[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final Uri f360a;

    private ShareVideo(a aVar) {
        super(aVar);
        this.f360a = aVar.f361a;
    }

    ShareVideo(Parcel parcel) {
        super(parcel);
        this.f360a = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
    }

    @Nullable
    public Uri c() {
        return this.f360a;
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.f360a, 0);
    }

    @Override // com.facebook.share.model.ShareMedia
    public ShareMedia.Type b() {
        return ShareMedia.Type.VIDEO;
    }

    /* loaded from: classes.dex */
    public static final class a extends ShareMedia.a<ShareVideo, a> {

        /* renamed from: a  reason: collision with root package name */
        private Uri f361a;

        public a a(@Nullable Uri uri) {
            this.f361a = uri;
            return this;
        }

        public ShareVideo a() {
            return new ShareVideo(this);
        }

        @Override // com.facebook.share.model.ShareMedia.a
        public a a(ShareVideo shareVideo) {
            if (shareVideo == null) {
                return this;
            }
            return ((a) super.a((a) shareVideo)).a(shareVideo.c());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a b(Parcel parcel) {
            return a((ShareVideo) parcel.readParcelable(ShareVideo.class.getClassLoader()));
        }
    }
}