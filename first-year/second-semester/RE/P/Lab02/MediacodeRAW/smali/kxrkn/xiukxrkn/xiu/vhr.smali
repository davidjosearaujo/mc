.class public Lkxrkn/xiukxrkn/xiu/vhr;
.super Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public TTy([Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lkxrkn/xiukxrkn/xiu/vhr;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lkxrkn/xiukxrkn/xiu/cmbutd/lglx;->a(Landroid/content/Context;)V

    const-string v1, "init"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public inAp([Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lkxrkn/xiukxrkn/xiu/vhr;->TTy([Ljava/lang/String;)V

    return-void
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "3"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lkxrkn/xiukxrkn/xiu/vhr;->inAp([Ljava/lang/String;)V

    return-void
.end method
