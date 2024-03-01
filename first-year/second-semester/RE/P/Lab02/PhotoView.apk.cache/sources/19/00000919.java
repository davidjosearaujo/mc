package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class ShareMediaContent extends ShareContent<ShareMediaContent, Object> {
    public static final Parcelable.Creator<ShareMediaContent> CREATOR = new Parcelable.Creator<ShareMediaContent>() { // from class: com.facebook.share.model.ShareMediaContent.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareMediaContent createFromParcel(Parcel parcel) {
            return new ShareMediaContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareMediaContent[] newArray(int i) {
            return new ShareMediaContent[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final List<ShareMedia> f343a;

    ShareMediaContent(Parcel parcel) {
        super(parcel);
        this.f343a = Arrays.asList((ShareMedia[]) parcel.readParcelableArray(ShareMedia.class.getClassLoader()));
    }

    @Nullable
    public List<ShareMedia> a() {
        return this.f343a;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelableArray((ShareMedia[]) this.f343a.toArray(), i);
    }
}