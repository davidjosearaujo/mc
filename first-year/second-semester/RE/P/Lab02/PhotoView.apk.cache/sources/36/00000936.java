package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.SharePhoto;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class SharePhotoContent extends ShareContent<SharePhotoContent, a> {
    public static final Parcelable.Creator<SharePhotoContent> CREATOR = new Parcelable.Creator<SharePhotoContent>() { // from class: com.facebook.share.model.SharePhotoContent.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public SharePhotoContent createFromParcel(Parcel parcel) {
            return new SharePhotoContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public SharePhotoContent[] newArray(int i) {
            return new SharePhotoContent[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final List<SharePhoto> f358a;

    private SharePhotoContent(a aVar) {
        super(aVar);
        this.f358a = Collections.unmodifiableList(aVar.f359a);
    }

    SharePhotoContent(Parcel parcel) {
        super(parcel);
        this.f358a = Collections.unmodifiableList(SharePhoto.a.c(parcel));
    }

    @Nullable
    public List<SharePhoto> a() {
        return this.f358a;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        SharePhoto.a.a(parcel, i, this.f358a);
    }

    /* loaded from: classes.dex */
    public static class a extends ShareContent.a<SharePhotoContent, a> {

        /* renamed from: a  reason: collision with root package name */
        private final List<SharePhoto> f359a = new ArrayList();

        public a a(@Nullable SharePhoto sharePhoto) {
            if (sharePhoto != null) {
                this.f359a.add(new SharePhoto.a().a(sharePhoto).c());
            }
            return this;
        }

        public a b(@Nullable List<SharePhoto> list) {
            if (list != null) {
                for (SharePhoto sharePhoto : list) {
                    a(sharePhoto);
                }
            }
            return this;
        }

        public SharePhotoContent a() {
            return new SharePhotoContent(this);
        }

        @Override // com.facebook.share.model.ShareContent.a
        public a a(SharePhotoContent sharePhotoContent) {
            if (sharePhotoContent == null) {
                return this;
            }
            return ((a) super.a((a) sharePhotoContent)).b(sharePhotoContent.a());
        }

        public a c(@Nullable List<SharePhoto> list) {
            this.f359a.clear();
            b(list);
            return this;
        }
    }
}