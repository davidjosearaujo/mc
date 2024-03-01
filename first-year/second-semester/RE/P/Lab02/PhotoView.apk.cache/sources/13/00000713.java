package com.facebook;

/* loaded from: classes.dex */
public class FacebookGraphResponseException extends FacebookException {
    private final g graphResponse;

    public FacebookGraphResponseException(g gVar, String str) {
        super(str);
        this.graphResponse = gVar;
    }

    public final g getGraphResponse() {
        return this.graphResponse;
    }

    @Override // com.facebook.FacebookException, java.lang.Throwable
    public final String toString() {
        FacebookRequestError a2 = this.graphResponse != null ? this.graphResponse.a() : null;
        StringBuilder append = new StringBuilder().append("{FacebookGraphResponseException: ");
        String message = getMessage();
        if (message != null) {
            append.append(message);
            append.append(" ");
        }
        if (a2 != null) {
            append.append("httpResponseCode: ").append(a2.a()).append(", facebookErrorCode: ").append(a2.b()).append(", facebookErrorType: ").append(a2.d()).append(", message: ").append(a2.e()).append("}");
        }
        return append.toString();
    }
}