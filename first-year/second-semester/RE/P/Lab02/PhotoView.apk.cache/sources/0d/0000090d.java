package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.CameraEffectArguments;
import com.facebook.share.model.CameraEffectTextures;

/* loaded from: classes.dex */
public class ShareCameraEffectContent extends ShareContent<ShareCameraEffectContent, Object> {
    public static final Parcelable.Creator<ShareCameraEffectContent> CREATOR = new Parcelable.Creator<ShareCameraEffectContent>() { // from class: com.facebook.share.model.ShareCameraEffectContent.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareCameraEffectContent createFromParcel(Parcel parcel) {
            return new ShareCameraEffectContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareCameraEffectContent[] newArray(int i) {
            return new ShareCameraEffectContent[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private String f334a;
    private CameraEffectArguments b;
    private CameraEffectTextures c;

    ShareCameraEffectContent(Parcel parcel) {
        super(parcel);
        this.f334a = parcel.readString();
        this.b = new CameraEffectArguments.a().a(parcel).a();
        this.c = new CameraEffectTextures.a().a(parcel).a();
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f334a);
        parcel.writeParcelable(this.b, 0);
        parcel.writeParcelable(this.c, 0);
    }

    public String a() {
        return this.f334a;
    }

    public CameraEffectArguments b() {
        return this.b;
    }

    public CameraEffectTextures c() {
        return this.c;
    }
}