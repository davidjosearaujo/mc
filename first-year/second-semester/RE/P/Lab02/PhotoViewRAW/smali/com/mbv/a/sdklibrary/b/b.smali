.class public Lcom/mbv/a/sdklibrary/b/b;
.super Ljava/lang/Object;
.source "ConfigUtil.java"


# direct methods
.method private static a(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 20
    if-nez p0, :cond_1

    .line 33
    :cond_0
    :goto_0
    return-object v0

    .line 24
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 26
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 29
    :catch_0
    move-exception v1

    .line 30
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    invoke-static {p0}, Lcom/mbv/a/sdklibrary/b/b;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 16
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method
