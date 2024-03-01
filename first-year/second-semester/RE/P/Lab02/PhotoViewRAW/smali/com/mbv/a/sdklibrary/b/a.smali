.class public Lcom/mbv/a/sdklibrary/b/a;
.super Ljava/lang/Object;
.source "ClickIdUtil.java"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 25
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    :goto_0
    return-object v0

    .line 29
    :cond_0
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/c;->a()Landroid/content/Context;

    move-result-object v0

    .line 30
    const-string v1, "click_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 32
    const-string v1, "click_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 18
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "click_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 19
    const-string v1, "click_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "click_id"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 22
    :cond_0
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 36
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/c;->a()Landroid/content/Context;

    move-result-object v0

    .line 37
    const-string v1, ""

    .line 39
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 41
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 43
    const-string v3, "META-INF/r_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 44
    const/16 v2, 0xb

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
