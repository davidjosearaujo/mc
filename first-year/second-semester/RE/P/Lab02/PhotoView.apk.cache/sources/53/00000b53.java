package com.google.zxing;

/* loaded from: classes.dex */
public final class FormatException extends ReaderException {

    /* renamed from: a  reason: collision with root package name */
    private static final FormatException f621a;

    static {
        FormatException formatException = new FormatException();
        f621a = formatException;
        formatException.setStackTrace(NO_TRACE);
    }

    private FormatException() {
    }

    private FormatException(Throwable th) {
        super(th);
    }

    public static FormatException getFormatInstance() {
        return isStackTrace ? new FormatException() : f621a;
    }

    public static FormatException getFormatInstance(Throwable th) {
        return isStackTrace ? new FormatException(th) : f621a;
    }
}