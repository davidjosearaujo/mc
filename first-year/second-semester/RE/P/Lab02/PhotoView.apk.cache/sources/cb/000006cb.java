package com.chanven.lib.cptr;

/* compiled from: PtrUIHandlerHolder.java */
/* loaded from: classes.dex */
class c implements b {

    /* renamed from: a  reason: collision with root package name */
    private b f31a;
    private c b;

    private boolean a(b bVar) {
        return this.f31a != null && this.f31a == bVar;
    }

    private c() {
    }

    public boolean a() {
        return this.f31a != null;
    }

    private b c() {
        return this.f31a;
    }

    public static void a(c cVar, b bVar) {
        if (bVar != null && cVar != null) {
            if (cVar.f31a == null) {
                cVar.f31a = bVar;
                return;
            }
            while (!cVar.a(bVar)) {
                if (cVar.b != null) {
                    cVar = cVar.b;
                } else {
                    c cVar2 = new c();
                    cVar2.f31a = bVar;
                    cVar.b = cVar2;
                    return;
                }
            }
        }
    }

    public static c b() {
        return new c();
    }

    @Override // com.chanven.lib.cptr.b
    public void a(PtrFrameLayout ptrFrameLayout) {
        do {
            b c = this.c();
            if (c != null) {
                c.a(ptrFrameLayout);
            }
            this = this.b;
        } while (this != null);
    }

    @Override // com.chanven.lib.cptr.b
    public void b(PtrFrameLayout ptrFrameLayout) {
        if (!a()) {
            return;
        }
        do {
            b c = this.c();
            if (c != null) {
                c.b(ptrFrameLayout);
            }
            this = this.b;
        } while (this != null);
    }

    @Override // com.chanven.lib.cptr.b
    public void c(PtrFrameLayout ptrFrameLayout) {
        do {
            b c = this.c();
            if (c != null) {
                c.c(ptrFrameLayout);
            }
            this = this.b;
        } while (this != null);
    }

    @Override // com.chanven.lib.cptr.b
    public void d(PtrFrameLayout ptrFrameLayout) {
        do {
            b c = this.c();
            if (c != null) {
                c.d(ptrFrameLayout);
            }
            this = this.b;
        } while (this != null);
    }

    @Override // com.chanven.lib.cptr.b
    public void a(PtrFrameLayout ptrFrameLayout, boolean z, byte b, com.chanven.lib.cptr.a.a aVar) {
        do {
            b c = this.c();
            if (c != null) {
                c.a(ptrFrameLayout, z, b, aVar);
            }
            this = this.b;
        } while (this != null);
    }
}