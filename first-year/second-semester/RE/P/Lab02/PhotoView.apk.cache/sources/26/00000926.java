package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;

/* loaded from: classes.dex */
public final class ShareMessengerURLActionButton extends ShareMessengerActionButton {
    public static final Parcelable.Creator<ShareMessengerURLActionButton> CREATOR = new Parcelable.Creator<ShareMessengerURLActionButton>() { // from class: com.facebook.share.model.ShareMessengerURLActionButton.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareMessengerURLActionButton createFromParcel(Parcel parcel) {
            return new ShareMessengerURLActionButton(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareMessengerURLActionButton[] newArray(int i) {
            return new ShareMessengerURLActionButton[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final Uri f351a;
    private final Uri b;
    private final boolean c;
    private final boolean d;
    private final WebviewHeightRatio e;

    /* loaded from: classes.dex */
    public enum WebviewHeightRatio {
        WebviewHeightRatioFull,
        WebviewHeightRatioTall,
        WebviewHeightRatioCompact
    }

    ShareMessengerURLActionButton(Parcel parcel) {
        super(parcel);
        this.f351a = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.c = parcel.readByte() != 0;
        this.b = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.e = (WebviewHeightRatio) parcel.readSerializable();
        this.d = parcel.readByte() != 0;
    }

    public Uri b() {
        return this.f351a;
    }

    public boolean c() {
        return this.c;
    }

    @Nullable
    public Uri d() {
        return this.b;
    }

    @Nullable
    public WebviewHeightRatio e() {
        return this.e;
    }

    public boolean f() {
        return this.d;
    }
}