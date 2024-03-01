.class public Lcom/mbv/a/sdklibrary/b/c;
.super Ljava/lang/Object;
.source "ContextHolder.java"


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public static a()Landroid/content/Context;
    .locals 3

    .prologue
    .line 19
    sget-object v0, Lcom/mbv/a/sdklibrary/b/c;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 21
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "currentApplication"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 22
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 23
    if-eqz v0, :cond_0

    .line 24
    sput-object v0, Lcom/mbv/a/sdklibrary/b/c;->a:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-object v0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    :cond_0
    :try_start_1
    const-string v0, "android.app.AppGlobals"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInitialApplication"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 34
    if-eqz v0, :cond_1

    .line 35
    sput-object v0, Lcom/mbv/a/sdklibrary/b/c;->a:Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 38
    :catch_1
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ContextHolder is not initialed, it is recommend to init with application context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_2
    sget-object v0, Lcom/mbv/a/sdklibrary/b/c;->a:Landroid/content/Context;

    goto :goto_0
.end method
