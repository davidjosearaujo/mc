.class public Lcom/mbv/a/sdklibrary/b/j;
.super Ljava/lang/Object;
.source "PermissionUtil.java"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 17
    const-string v0, "android.permission.WRITE_SMS"

    .line 18
    const-string v1, "android.permission.READ_SMS"

    invoke-static {p0, v1}, Lcom/mbv/a/sdklibrary/b/j;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, v0}, Lcom/mbv/a/sdklibrary/b/j;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/16 v3, 0x17

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 22
    .line 23
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_0

    .line 24
    invoke-static {p0}, Lcom/mbv/a/sdklibrary/b/j;->b(Landroid/content/Context;)I

    move-result v2

    .line 25
    if-lt v2, v3, :cond_2

    .line 26
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 33
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 26
    goto :goto_0

    .line 29
    :cond_2
    invoke-static {p0, p1}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 39
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 39
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 41
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return v0

    .line 42
    :catch_0
    move-exception v1

    .line 43
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
