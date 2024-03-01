package com.facebook.appevents;

import com.facebook.AccessToken;
import com.facebook.internal.ab;
import java.io.Serializable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AccessTokenAppIdPair implements Serializable {
    private static final long serialVersionUID = 1;
    private final String accessTokenString;
    private final String applicationId;

    public AccessTokenAppIdPair(AccessToken accessToken) {
        this(accessToken.b(), com.facebook.d.j());
    }

    public AccessTokenAppIdPair(String str, String str2) {
        this.accessTokenString = ab.a(str) ? null : str;
        this.applicationId = str2;
    }

    public String getAccessTokenString() {
        return this.accessTokenString;
    }

    public String getApplicationId() {
        return this.applicationId;
    }

    public int hashCode() {
        return (this.accessTokenString == null ? 0 : this.accessTokenString.hashCode()) ^ (this.applicationId != null ? this.applicationId.hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (obj instanceof AccessTokenAppIdPair) {
            AccessTokenAppIdPair accessTokenAppIdPair = (AccessTokenAppIdPair) obj;
            return ab.a(accessTokenAppIdPair.accessTokenString, this.accessTokenString) && ab.a(accessTokenAppIdPair.applicationId, this.applicationId);
        }
        return false;
    }

    /* loaded from: classes.dex */
    static class SerializationProxyV1 implements Serializable {
        private static final long serialVersionUID = -2488473066578201069L;
        private final String accessTokenString;
        private final String appId;

        private SerializationProxyV1(String str, String str2) {
            this.accessTokenString = str;
            this.appId = str2;
        }

        private Object readResolve() {
            return new AccessTokenAppIdPair(this.accessTokenString, this.appId);
        }
    }

    private Object writeReplace() {
        return new SerializationProxyV1(this.accessTokenString, this.applicationId);
    }
}