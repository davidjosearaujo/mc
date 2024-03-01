package com.chanven.lib.cptr;

/* compiled from: PtrUIHandlerHook.java */
/* loaded from: classes.dex */
public abstract class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private Runnable f32a;
    private byte b = 0;

    public void a() {
        a(null);
    }

    public void a(Runnable runnable) {
        if (runnable != null) {
            this.f32a = runnable;
        }
        switch (this.b) {
            case 0:
                this.b = (byte) 1;
                run();
                return;
            case 1:
            default:
                return;
            case 2:
                b();
                return;
        }
    }

    public void b() {
        if (this.f32a != null) {
            this.f32a.run();
        }
        this.b = (byte) 2;
    }

    public void b(Runnable runnable) {
        this.f32a = runnable;
    }
}