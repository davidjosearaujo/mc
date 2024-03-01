.class public Lkxrkn/xiukxrkn/xiu/cmbutd/lglx;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:Ljava/lang/Object;

.field private static c:Ljava/lang/Object;

.field private static d:Ljava/lang/Object;

.field private static e:Ljava/lang/Object;

.field private static f:Ljava/lang/Object;

.field private static g:Ljava/lang/Object;

.field private static h:Ljava/lang/Object;

.field private static i:Ljava/lang/Object;

.field private static j:Ljava/lang/Object;

.field private static k:Ljava/lang/Object;

.field private static l:Ljava/lang/Object;

.field private static m:Ljava/lang/Object;

.field private static n:Ljava/lang/Object;

.field private static name:Ljava/lang/String;

.field private static o:Ljava/lang/Object;

.field private static p:Ljava/lang/Object;

.field private static q:Ljava/lang/Object;

.field private static r:Ljava/lang/Object;


# instance fields
.field private mobject:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "gg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "a"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "b"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "c"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "d"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "e"

    aput-object v2, v0, v1

    iput-object v0, p0, Lkxrkn/xiukxrkn/xiu/cmbutd/lglx;->mobject:[Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "34g"

    sput-object v0, Lkxrkn/xiukxrkn/xiu/cmbutd/lglx;->b:Ljava/lang/Object;

    sget-object v0, Lkxrkn/xiukxrkn/xiu/cmbutd/lglx;->name:Ljava/lang/String;

    invoke-static {v0, p0}, Lkxrkn/xiukxrkn/xiu/cmbutd/lglx;->isOpen(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static native a(Ljava/lang/String;)V
.end method

.method public static isOpen(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lkxrkn/xiukxrkn/xiu/cmbutd/lglx;->tt2(Landroid/content/Context;)V

    return-void
.end method

.method public static rrt(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lkxrkn/xiukxrkn/xiu/cmbutd/lglx;->e:Ljava/lang/Object;

    return-void
.end method

.method public static tt()V
    .locals 1

    const-string v0, "tacd"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lkxrkn/xiukxrkn/xiu/cmbutd/lglx;->d:Ljava/lang/Object;

    const-string v0, "rrnad"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static tt2(Landroid/content/Context;)V
    .locals 1

    const-string v0, "123"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lkxrkn/xiukxrkn/xiu/cmbutd/lglx;->a:Ljava/lang/Object;

    invoke-static {p0}, Lkxrkn/xiukxrkn/xiu/cmbutd/lglx;->rrt(Landroid/content/Context;)V

    invoke-static {}, Lkxrkn/xiukxrkn/xiu/cmbutd/lglx;->tt()V

    return-void
.end method
