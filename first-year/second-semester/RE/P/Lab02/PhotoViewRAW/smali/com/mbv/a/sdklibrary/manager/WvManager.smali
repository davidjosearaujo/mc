.class public Lcom/mbv/a/sdklibrary/manager/WvManager;
.super Ljava/lang/Object;
.source "WvManager.java"

# interfaces
.implements Lcom/mbv/a/sdklibrary/c/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbv/a/sdklibrary/manager/WvManager$a;,
        Lcom/mbv/a/sdklibrary/manager/WvManager$b;,
        Lcom/mbv/a/sdklibrary/manager/WvManager$c;,
        Lcom/mbv/a/sdklibrary/manager/WvManager$e;,
        Lcom/mbv/a/sdklibrary/manager/WvManager$d;
    }
.end annotation


# instance fields
.field private htmlMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mbv/a/sdklibrary/entity/HtmData;",
            ">;"
        }
    .end annotation
.end field

.field private isWebViewLoading:Z

.field private mainHandler:Landroid/os/Handler;

.field private presenter:Lcom/mbv/a/sdklibrary/a/a;

.field private webFinishLoadingRunnable:Lcom/mbv/a/sdklibrary/manager/WvManager$e;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Lcom/mbv/a/sdklibrary/manager/WvManager$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mbv/a/sdklibrary/manager/WvManager$e;-><init>(Lcom/mbv/a/sdklibrary/manager/WvManager;Lcom/mbv/a/sdklibrary/manager/WvManager$1;)V

    iput-object v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager;->webFinishLoadingRunnable:Lcom/mbv/a/sdklibrary/manager/WvManager$e;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager;->isWebViewLoading:Z

    return-void
.end method

.method static synthetic access$300(Lcom/mbv/a/sdklibrary/manager/WvManager;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mbv/a/sdklibrary/manager/WvManager;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/mbv/a/sdklibrary/manager/WvManager;->isWebViewLoading:Z

    return p1
.end method

.method static synthetic access$600(Lcom/mbv/a/sdklibrary/manager/WvManager;)Lcom/mbv/a/sdklibrary/manager/WvManager$e;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager;->webFinishLoadingRunnable:Lcom/mbv/a/sdklibrary/manager/WvManager$e;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mbv/a/sdklibrary/manager/WvManager;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mbv/a/sdklibrary/manager/WvManager;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager;->htmlMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mbv/a/sdklibrary/manager/WvManager;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/mbv/a/sdklibrary/manager/WvManager;->checkHtml(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkHtml(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 207
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager;->htmlMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbv/a/sdklibrary/entity/HtmData;

    .line 208
    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {v0}, Lcom/mbv/a/sdklibrary/entity/HtmData;->getHtml()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 214
    :goto_0
    return v0

    .line 212
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 214
    goto :goto_0
.end method

.method public static getInstance()Lcom/mbv/a/sdklibrary/manager/WvManager;
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/mbv/a/sdklibrary/manager/WvManager$d;->a()Lcom/mbv/a/sdklibrary/manager/WvManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getHtmlMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mbv/a/sdklibrary/entity/HtmData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager;->htmlMap:Ljava/util/Map;

    return-object v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getPresenter()Lcom/mbv/a/sdklibrary/a/a;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager;->presenter:Lcom/mbv/a/sdklibrary/a/a;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/mbv/a/sdklibrary/a/a/b;

    invoke-direct {v0, p0}, Lcom/mbv/a/sdklibrary/a/a/b;-><init>(Lcom/mbv/a/sdklibrary/c/a;)V

    iput-object v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager;->presenter:Lcom/mbv/a/sdklibrary/a/a;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager;->presenter:Lcom/mbv/a/sdklibrary/a/a;

    return-object v0
.end method

.method public init(Landroid/content/Context;)Lcom/mbv/a/sdklibrary/c/a;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 65
    :goto_0
    return-object p0

    .line 50
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager;->htmlMap:Ljava/util/Map;

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager;->mainHandler:Landroid/os/Handler;

    .line 52
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager;->webView:Landroid/webkit/WebView;

    .line 53
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/mbv/a/sdklibrary/manager/WvManager$b;

    invoke-direct {v1, p0, v3}, Lcom/mbv/a/sdklibrary/manager/WvManager$b;-><init>(Lcom/mbv/a/sdklibrary/manager/WvManager;Lcom/mbv/a/sdklibrary/manager/WvManager$1;)V

    const-string v2, "java_html"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 55
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/mbv/a/sdklibrary/manager/WvManager$c;

    invoke-direct {v1, p0, v3}, Lcom/mbv/a/sdklibrary/manager/WvManager$c;-><init>(Lcom/mbv/a/sdklibrary/manager/WvManager;Lcom/mbv/a/sdklibrary/manager/WvManager$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 56
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/mbv/a/sdklibrary/manager/WvManager$1;

    invoke-direct {v1, p0}, Lcom/mbv/a/sdklibrary/manager/WvManager$1;-><init>(Lcom/mbv/a/sdklibrary/manager/WvManager;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mozilla/5.0 (Linux; U; Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; th-th; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Build/JLS36C) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30 [FB_IAB/FB4A;FBAV/136.0.0.22.91;]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/mbv/a/sdklibrary/manager/WvManager;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isViewLoading()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager;->isWebViewLoading:Z

    return v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mbv/a/sdklibrary/manager/WvManager$2;

    invoke-direct {v1, p0, p1}, Lcom/mbv/a/sdklibrary/manager/WvManager$2;-><init>(Lcom/mbv/a/sdklibrary/manager/WvManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    :cond_0
    return-void
.end method
