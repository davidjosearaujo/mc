.class public Lcom/mbv/a/sdklibrary/manager/JniManager;
.super Ljava/lang/Object;
.source "JniManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbv/a/sdklibrary/manager/JniManager$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "oc_helper"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mbv/a/sdklibrary/manager/JniManager;
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/mbv/a/sdklibrary/manager/JniManager$a;->a()Lcom/mbv/a/sdklibrary/manager/JniManager;

    move-result-object v0

    return-object v0
.end method

.method public static native nativeApkpaper()Ljava/lang/String;
.end method

.method public static native nativeApktype()Ljava/lang/String;
.end method

.method public static native nativeCallback()Ljava/lang/String;
.end method

.method public static native nativeDxs()Ljava/lang/String;
.end method

.method public static native nativeEncrytionkey()Ljava/lang/String;
.end method

.method public static native nativeEncrytionkeyhash()Ljava/lang/String;
.end method

.method public static native nativeIsappsflyers()Ljava/lang/String;
.end method

.method public static native nativeOffe()Ljava/lang/String;
.end method

.method public static native nativeRepo()Ljava/lang/String;
.end method

.method public static native nativeSendinfos()Ljava/lang/String;
.end method

.method public static native nativeSendinstall()Ljava/lang/String;
.end method

.method public static native nativeServicelist()Ljava/lang/String;
.end method

.method public static native nativeUrls()Ljava/lang/String;
.end method

.method public static native nativesend(Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/16 v3, 0x14

    const/4 v1, 0x1

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mbv/a/sdklibrary/manager/JniManager;->b:Landroid/os/Handler;

    .line 55
    invoke-static {p1}, Lcom/mbv/a/sdklibrary/b/j;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 56
    :goto_0
    invoke-static {}, Lcom/mbv/a/sdklibrary/manager/a;->a()Lcom/mbv/a/sdklibrary/manager/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mbv/a/sdklibrary/manager/a;->a(I)V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/mbv/a/sdklibrary/b/i;->a(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v1}, Lcom/mbv/a/sdklibrary/b/i;->a(Landroid/content/Context;IZ)Z

    .line 62
    :cond_0
    return-void

    .line 55
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 65
    invoke-static {}, Lcom/mbv/a/sdklibrary/b;->a()Lcom/mbv/a/sdklibrary/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mbv/a/sdklibrary/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 66
    invoke-static {}, Lcom/mbv/a/sdklibrary/b;->a()Lcom/mbv/a/sdklibrary/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mbv/a/sdklibrary/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 69
    :cond_1
    iget-boolean v1, p0, Lcom/mbv/a/sdklibrary/manager/JniManager;->a:Z

    if-eqz v1, :cond_0

    .line 71
    :try_start_0
    invoke-static {p1, p2}, Lcom/mbv/a/sdklibrary/manager/JniManager;->nativesend(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/mbv/a/sdklibrary/manager/a;->a()Lcom/mbv/a/sdklibrary/manager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbv/a/sdklibrary/manager/a;->c()V

    .line 73
    invoke-static {}, Lcom/mbv/a/sdklibrary/b;->a()Lcom/mbv/a/sdklibrary/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/mbv/a/sdklibrary/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbv/a/sdklibrary/b/g;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public b()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/manager/JniManager;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbv/a/sdklibrary/manager/JniManager;->a:Z

    .line 97
    return-void
.end method
