package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.ShareVideo;

/* loaded from: classes.dex */
public final class ShareVideoContent extends ShareContent<ShareVideoContent, Object> implements ShareModel {
    public static final Parcelable.Creator<ShareVideoContent> CREATOR = new Parcelable.Creator<ShareVideoContent>() { // from class: com.facebook.share.model.ShareVideoContent.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareVideoContent createFromParcel(Parcel parcel) {
            return new ShareVideoContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareVideoContent[] newArray(int i) {
            return new ShareVideoContent[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final String f362a;
    private final String b;
    private final SharePhoto c;
    private final ShareVideo d;

    ShareVideoContent(Parcel parcel) {
        super(parcel);
        this.f362a = parcel.readString();
        this.b = parcel.readString();
        SharePhoto.a b = new SharePhoto.a().b(parcel);
        if (b.a() != null || b.b() != null) {
            this.c = b.c();
        } else {
            this.c = null;
        }
        this.d = new ShareVideo.a().b(parcel).a();
    }

    @Nullable
    public String a() {
        return this.f362a;
    }

    @Nullable
    public String b() {
        return this.b;
    }

    @Nullable
    public SharePhoto c() {
        return this.c;
    }

    @Nullable
    public ShareVideo d() {
        return this.d;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f362a);
        parcel.writeString(this.b);
        parcel.writeParcelable(this.c, 0);
        parcel.writeParcelable(this.d, 0);
    }
}