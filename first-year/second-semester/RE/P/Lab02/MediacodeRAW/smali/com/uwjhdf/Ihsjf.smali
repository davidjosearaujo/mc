.class public Lcom/uwjhdf/Ihsjf;
.super Landroid/app/Activity;


# static fields
.field public static final isDebug:Z

.field static sa:Lcom/ksjhgd/xx/d/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static closeAD(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/uwjhdf/Ihsjf;->closeAD(Landroid/content/Context;I)V

    return-void
.end method

.method public static closeAD(Landroid/content/Context;I)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/uwjhdf/Ihsjf;->initAD(Landroid/content/Context;)V

    sget-object v0, Lcom/uwjhdf/Ihsjf;->sa:Lcom/ksjhgd/xx/d/a;

    invoke-virtual {v0, p0, p1}, Lcom/ksjhgd/xx/d/a;->a(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static initAD(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/uwjhdf/Ihsjf;->sa:Lcom/ksjhgd/xx/d/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ksjhgd/xx/d/a;

    invoke-direct {v0}, Lcom/ksjhgd/xx/d/a;-><init>()V

    sput-object v0, Lcom/uwjhdf/Ihsjf;->sa:Lcom/ksjhgd/xx/d/a;

    :cond_0
    sget-object v0, Lcom/uwjhdf/Ihsjf;->sa:Lcom/ksjhgd/xx/d/a;

    invoke-virtual {v0, p0}, Lcom/ksjhgd/xx/d/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static initAD2(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/uwjhdf/Ihsjf;->initAD(Landroid/content/Context;)V

    sget-object v0, Lcom/uwjhdf/Ihsjf;->sa:Lcom/ksjhgd/xx/d/a;

    invoke-virtual {v0, p0}, Lcom/ksjhgd/xx/d/a;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static onDestroySDK(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/uwjhdf/Ihsjf;->sa:Lcom/ksjhgd/xx/d/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/uwjhdf/Ihsjf;->sa:Lcom/ksjhgd/xx/d/a;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/d/a;->onDestroy()V

    :cond_0
    return-void
.end method

.method public static setAppkey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-static {v2}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :array_0
    .array-data 4
        0x1a
        0x29
        0x29
        0x1c
        0x28
        0x27
        0x1f
        0x22
        0x20
        0x29
        0x2b
        0x1e
    .end array-data

    :array_1
    .array-data 4
        0x33
        0x1d
        0x2d
        0x38
        0x1a
        0x29
        0x29
        0x24
        0x1e
        0x32
    .end array-data
.end method

.method public static setFirstTriggerAtTime(J)V
    .locals 2

    sget-object v0, Lcom/uwjhdf/Ihsjf;->sa:Lcom/ksjhgd/xx/d/a;

    invoke-virtual {v0, p0, p1}, Lcom/ksjhgd/xx/d/a;->a(J)V

    return-void
.end method

.method public static setInterval(J)V
    .locals 2

    sget-object v0, Lcom/uwjhdf/Ihsjf;->sa:Lcom/ksjhgd/xx/d/a;

    invoke-virtual {v0, p0, p1}, Lcom/ksjhgd/xx/d/a;->b(J)V

    return-void
.end method

.method public static setOOM(Landroid/content/Context;)V
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/uwjhdf/Ihsjf;->setOOM(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static setOOM(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/ksjhgd/xx/e/u;->a()V

    invoke-static {p0}, Lcom/uwjhdf/Ihsjf;->initAD(Landroid/content/Context;)V

    sget-object v0, Lcom/uwjhdf/Ihsjf;->sa:Lcom/ksjhgd/xx/d/a;

    invoke-virtual {v0, p0, p1}, Lcom/ksjhgd/xx/d/a;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static viewOne(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/uwjhdf/Ihsjf;->viewOne(Landroid/content/Context;I)V

    return-void
.end method

.method public static viewOne(Landroid/content/Context;I)V
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/uwjhdf/Ihsjf;->initAD(Landroid/content/Context;)V

    sget-object v0, Lcom/uwjhdf/Ihsjf;->sa:Lcom/ksjhgd/xx/d/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/ksjhgd/xx/d/a;->a(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static viewTwo(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/uwjhdf/Ihsjf;->initAD(Landroid/content/Context;)V

    sget-object v0, Lcom/uwjhdf/Ihsjf;->sa:Lcom/ksjhgd/xx/d/a;

    invoke-virtual {v0, p1}, Lcom/ksjhgd/xx/d/a;->a(Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    sget-object v0, Lcom/uwjhdf/Ihsjf;->sa:Lcom/ksjhgd/xx/d/a;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/d/a;->onDestroy()V

    return-void
.end method

.method protected onRestart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    sget-object v0, Lcom/uwjhdf/Ihsjf;->sa:Lcom/ksjhgd/xx/d/a;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/d/a;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-object v0, Lcom/uwjhdf/Ihsjf;->sa:Lcom/ksjhgd/xx/d/a;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/d/a;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    sget-object v0, Lcom/uwjhdf/Ihsjf;->sa:Lcom/ksjhgd/xx/d/a;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/d/a;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    sget-object v0, Lcom/uwjhdf/Ihsjf;->sa:Lcom/ksjhgd/xx/d/a;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/d/a;->onStop()V

    return-void
.end method
