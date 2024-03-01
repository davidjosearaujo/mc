.class public Lcom/mbv/a/sdklibrary/b/i;
.super Ljava/lang/Object;
.source "OpsUtil.java"


# direct methods
.method private static a(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 110
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    .line 110
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 116
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;II)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 57
    :try_start_0
    const-string v0, "appops"

    .line 58
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 61
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    .line 62
    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 63
    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 64
    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 65
    const-string v3, "checkOp"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 68
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 69
    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 70
    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 71
    const/4 v3, 0x2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 72
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    .line 80
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 77
    :catch_1
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;I)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-static {p0}, Lcom/mbv/a/sdklibrary/b/i;->a(Landroid/content/Context;)I

    move-result v0

    .line 39
    invoke-static {p0, p1, v0}, Lcom/mbv/a/sdklibrary/b/i;->a(Landroid/content/Context;II)Ljava/lang/Object;

    move-result-object v0

    .line 41
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 42
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 44
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 42
    goto :goto_0

    :cond_1
    move v0, v1

    .line 44
    goto :goto_0
.end method

.method private static a(Landroid/content/Context;III)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    :try_start_0
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 86
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 87
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    .line 88
    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    .line 89
    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    .line 90
    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    .line 91
    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    .line 92
    const-string v5, "setMode"

    invoke-virtual {v3, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 93
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 94
    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 95
    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 96
    const/4 v5, 0x2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 97
    const/4 v5, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 98
    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 105
    :goto_0
    return v0

    .line 103
    :catch_0
    move-exception v0

    :goto_1
    move v0, v2

    .line 105
    goto :goto_0

    .line 102
    :catch_1
    move-exception v0

    goto :goto_1

    .line 101
    :catch_2
    move-exception v0

    goto :goto_1

    .line 100
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;IZ)Z
    .locals 2

    .prologue
    .line 48
    invoke-static {p0}, Lcom/mbv/a/sdklibrary/b/i;->a(Landroid/content/Context;)I

    move-result v1

    .line 49
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 52
    :goto_0
    invoke-static {p0, p1, v1, v0}, Lcom/mbv/a/sdklibrary/b/i;->a(Landroid/content/Context;III)Z

    move-result v0

    return v0

    .line 49
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
