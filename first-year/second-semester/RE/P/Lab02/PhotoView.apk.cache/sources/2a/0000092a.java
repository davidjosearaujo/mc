package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.facebook.share.model.ShareOpenGraphValueContainer;

/* loaded from: classes.dex */
public final class ShareOpenGraphAction extends ShareOpenGraphValueContainer<ShareOpenGraphAction, a> {
    public static final Parcelable.Creator<ShareOpenGraphAction> CREATOR = new Parcelable.Creator<ShareOpenGraphAction>() { // from class: com.facebook.share.model.ShareOpenGraphAction.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareOpenGraphAction createFromParcel(Parcel parcel) {
            return new ShareOpenGraphAction(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareOpenGraphAction[] newArray(int i) {
            return new ShareOpenGraphAction[i];
        }
    };

    private ShareOpenGraphAction(a aVar) {
        super(aVar);
    }

    ShareOpenGraphAction(Parcel parcel) {
        super(parcel);
    }

    @Nullable
    public String a() {
        return b("og:type");
    }

    /* loaded from: classes.dex */
    public static final class a extends ShareOpenGraphValueContainer.a<ShareOpenGraphAction, a> {
        public a a(String str) {
            a("og:type", str);
            return this;
        }

        public ShareOpenGraphAction a() {
            return new ShareOpenGraphAction(this);
        }

        @Override // com.facebook.share.model.ShareOpenGraphValueContainer.a
        public a a(ShareOpenGraphAction shareOpenGraphAction) {
            if (shareOpenGraphAction == null) {
                return this;
            }
            return ((a) super.a((a) shareOpenGraphAction)).a(shareOpenGraphAction.a());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a a(Parcel parcel) {
            return a((ShareOpenGraphAction) parcel.readParcelable(ShareOpenGraphAction.class.getClassLoader()));
        }
    }
}