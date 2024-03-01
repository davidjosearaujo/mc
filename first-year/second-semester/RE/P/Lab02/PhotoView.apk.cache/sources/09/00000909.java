package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* loaded from: classes.dex */
public final class GameRequestContent implements ShareModel {
    public static final Parcelable.Creator<GameRequestContent> CREATOR = new Parcelable.Creator<GameRequestContent>() { // from class: com.facebook.share.model.GameRequestContent.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public GameRequestContent createFromParcel(Parcel parcel) {
            return new GameRequestContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public GameRequestContent[] newArray(int i) {
            return new GameRequestContent[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final String f331a;
    private final List<String> b;
    private final String c;
    private final String d;
    private final ActionType e;
    private final String f;
    private final Filters g;
    private final List<String> h;

    /* loaded from: classes.dex */
    public enum ActionType {
        SEND,
        ASKFOR,
        TURN
    }

    /* loaded from: classes.dex */
    public enum Filters {
        APP_USERS,
        APP_NON_USERS
    }

    GameRequestContent(Parcel parcel) {
        this.f331a = parcel.readString();
        this.b = parcel.createStringArrayList();
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = (ActionType) parcel.readSerializable();
        this.f = parcel.readString();
        this.g = (Filters) parcel.readSerializable();
        this.h = parcel.createStringArrayList();
        parcel.readStringList(this.h);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f331a);
        parcel.writeStringList(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeSerializable(this.e);
        parcel.writeString(this.f);
        parcel.writeSerializable(this.g);
        parcel.writeStringList(this.h);
    }
}