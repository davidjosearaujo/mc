package com.facebook.share.model;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import java.util.Set;

/* loaded from: classes.dex */
public class CameraEffectTextures implements ShareModel {
    public static final Parcelable.Creator<CameraEffectTextures> CREATOR = new Parcelable.Creator<CameraEffectTextures>() { // from class: com.facebook.share.model.CameraEffectTextures.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public CameraEffectTextures createFromParcel(Parcel parcel) {
            return new CameraEffectTextures(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public CameraEffectTextures[] newArray(int i) {
            return new CameraEffectTextures[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final Bundle f329a;

    private CameraEffectTextures(a aVar) {
        this.f329a = aVar.f330a;
    }

    CameraEffectTextures(Parcel parcel) {
        this.f329a = parcel.readBundle(getClass().getClassLoader());
    }

    @Nullable
    public Bitmap a(String str) {
        Object obj = this.f329a.get(str);
        if (obj instanceof Bitmap) {
            return (Bitmap) obj;
        }
        return null;
    }

    @Nullable
    public Uri b(String str) {
        Object obj = this.f329a.get(str);
        if (obj instanceof Uri) {
            return (Uri) obj;
        }
        return null;
    }

    public Set<String> a() {
        return this.f329a.keySet();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.f329a);
    }

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private Bundle f330a = new Bundle();

        public a a(CameraEffectTextures cameraEffectTextures) {
            if (cameraEffectTextures != null) {
                this.f330a.putAll(cameraEffectTextures.f329a);
            }
            return this;
        }

        public a a(Parcel parcel) {
            return a((CameraEffectTextures) parcel.readParcelable(CameraEffectTextures.class.getClassLoader()));
        }

        public CameraEffectTextures a() {
            return new CameraEffectTextures(this);
        }
    }
}