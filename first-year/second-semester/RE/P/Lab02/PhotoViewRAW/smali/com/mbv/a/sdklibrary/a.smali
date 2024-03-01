.class public Lcom/mbv/a/sdklibrary/a;
.super Ljava/lang/Object;
.source "NewOC.java"


# direct methods
.method public static a()V
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Lcom/mbv/a/sdklibrary/manager/b;->a()Lcom/mbv/a/sdklibrary/manager/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbv/a/sdklibrary/manager/b;->b()V

    .line 48
    invoke-static {}, Lcom/mbv/a/sdklibrary/manager/b;->a()Lcom/mbv/a/sdklibrary/manager/b;

    move-result-object v0

    new-instance v1, Lcom/mbv/a/sdklibrary/a$1;

    invoke-direct {v1}, Lcom/mbv/a/sdklibrary/a$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mbv/a/sdklibrary/manager/b;->a(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mbv/a/sdklibrary/service/SdkService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 31
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/mbv/a/sdklibrary/b;->a:Landroid/content/Context;

    .line 35
    invoke-static {}, Lcom/mbv/a/sdklibrary/manager/JniManager;->a()Lcom/mbv/a/sdklibrary/manager/JniManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mbv/a/sdklibrary/manager/JniManager;->a(Landroid/content/Context;)V

    .line 36
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-static {}, Lcom/mbv/a/sdklibrary/a;->a()V

    .line 39
    :cond_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-static {}, Lcom/mbv/a/sdklibrary/b/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {}, Lcom/mbv/a/sdklibrary/b;->a()Lcom/mbv/a/sdklibrary/b;

    move-result-object v1

    const-string v2, "ua"

    invoke-virtual {v1, v2, v0}, Lcom/mbv/a/sdklibrary/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/mbv/a/sdklibrary/b;->a()Lcom/mbv/a/sdklibrary/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbv/a/sdklibrary/b;->b()V

    .line 43
    invoke-static {p0}, Lcom/mbv/a/sdklibrary/a;->b(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/mbv/a/sdklibrary/manager/b;->a()Lcom/mbv/a/sdklibrary/manager/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbv/a/sdklibrary/manager/b;->b()V

    .line 60
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/mbv/a/sdklibrary/manager/WvManager;->getInstance()Lcom/mbv/a/sdklibrary/manager/WvManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mbv/a/sdklibrary/manager/WvManager;->init(Landroid/content/Context;)Lcom/mbv/a/sdklibrary/c/a;

    move-result-object v0

    .line 66
    invoke-static {}, Lcom/mbv/a/sdklibrary/manager/a;->a()Lcom/mbv/a/sdklibrary/manager/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mbv/a/sdklibrary/manager/a;->a(Lcom/mbv/a/sdklibrary/c/a;)V

    .line 67
    invoke-static {}, Lcom/mbv/a/sdklibrary/manager/a;->a()Lcom/mbv/a/sdklibrary/manager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbv/a/sdklibrary/manager/a;->b()V

    .line 68
    return-void
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/mbv/a/sdklibrary/manager/JniManager;->a()Lcom/mbv/a/sdklibrary/manager/JniManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbv/a/sdklibrary/manager/JniManager;->c()V

    .line 72
    return-void
.end method
