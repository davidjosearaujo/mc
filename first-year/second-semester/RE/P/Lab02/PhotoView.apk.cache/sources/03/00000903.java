package com.facebook.share.model;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import java.util.Set;

/* loaded from: classes.dex */
public class CameraEffectArguments implements ShareModel {
    public static final Parcelable.Creator<CameraEffectArguments> CREATOR = new Parcelable.Creator<CameraEffectArguments>() { // from class: com.facebook.share.model.CameraEffectArguments.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public CameraEffectArguments createFromParcel(Parcel parcel) {
            return new CameraEffectArguments(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public CameraEffectArguments[] newArray(int i) {
            return new CameraEffectArguments[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final Bundle f327a;

    private CameraEffectArguments(a aVar) {
        this.f327a = aVar.f328a;
    }

    CameraEffectArguments(Parcel parcel) {
        this.f327a = parcel.readBundle(getClass().getClassLoader());
    }

    @Nullable
    public Object a(String str) {
        return this.f327a.get(str);
    }

    public Set<String> a() {
        return this.f327a.keySet();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.f327a);
    }

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private Bundle f328a = new Bundle();

        public a a(CameraEffectArguments cameraEffectArguments) {
            if (cameraEffectArguments != null) {
                this.f328a.putAll(cameraEffectArguments.f327a);
            }
            return this;
        }

        public a a(Parcel parcel) {
            return a((CameraEffectArguments) parcel.readParcelable(CameraEffectArguments.class.getClassLoader()));
        }

        public CameraEffectArguments a() {
            return new CameraEffectArguments(this);
        }
    }
}