package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.facebook.share.model.ShareOpenGraphAction;

/* loaded from: classes.dex */
public final class ShareOpenGraphContent extends ShareContent<ShareOpenGraphContent, Object> {
    public static final Parcelable.Creator<ShareOpenGraphContent> CREATOR = new Parcelable.Creator<ShareOpenGraphContent>() { // from class: com.facebook.share.model.ShareOpenGraphContent.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareOpenGraphContent createFromParcel(Parcel parcel) {
            return new ShareOpenGraphContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareOpenGraphContent[] newArray(int i) {
            return new ShareOpenGraphContent[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final ShareOpenGraphAction f353a;
    private final String b;

    ShareOpenGraphContent(Parcel parcel) {
        super(parcel);
        this.f353a = new ShareOpenGraphAction.a().a(parcel).a();
        this.b = parcel.readString();
    }

    @Nullable
    public ShareOpenGraphAction a() {
        return this.f353a;
    }

    @Nullable
    public String b() {
        return this.b;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.f353a, 0);
        parcel.writeString(this.b);
    }
}