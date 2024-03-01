.class Lcom/mbv/a/sdklibrary/manager/WvManager$c;
.super Landroid/webkit/WebViewClient;
.source "WvManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbv/a/sdklibrary/manager/WvManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/mbv/a/sdklibrary/manager/WvManager;


# direct methods
.method private constructor <init>(Lcom/mbv/a/sdklibrary/manager/WvManager;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$c;->a:Lcom/mbv/a/sdklibrary/manager/WvManager;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mbv/a/sdklibrary/manager/WvManager;Lcom/mbv/a/sdklibrary/manager/WvManager$1;)V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/mbv/a/sdklibrary/manager/WvManager$c;-><init>(Lcom/mbv/a/sdklibrary/manager/WvManager;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:window.java_html.getSource(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", \'<html>\'+document.getElementsByTagName(\'html\')[0].innerHTML+\'</html>\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$c;->a:Lcom/mbv/a/sdklibrary/manager/WvManager;

    invoke-static {v0}, Lcom/mbv/a/sdklibrary/manager/WvManager;->access$600(Lcom/mbv/a/sdklibrary/manager/WvManager;)Lcom/mbv/a/sdklibrary/manager/WvManager$e;

    move-result-object v0

    iput-object p2, v0, Lcom/mbv/a/sdklibrary/manager/WvManager$e;->a:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$c;->a:Lcom/mbv/a/sdklibrary/manager/WvManager;

    invoke-static {v0}, Lcom/mbv/a/sdklibrary/manager/WvManager;->access$700(Lcom/mbv/a/sdklibrary/manager/WvManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$c;->a:Lcom/mbv/a/sdklibrary/manager/WvManager;

    invoke-static {v1}, Lcom/mbv/a/sdklibrary/manager/WvManager;->access$600(Lcom/mbv/a/sdklibrary/manager/WvManager;)Lcom/mbv/a/sdklibrary/manager/WvManager$e;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$c;->a:Lcom/mbv/a/sdklibrary/manager/WvManager;

    invoke-static {v0}, Lcom/mbv/a/sdklibrary/manager/WvManager;->access$700(Lcom/mbv/a/sdklibrary/manager/WvManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$c;->a:Lcom/mbv/a/sdklibrary/manager/WvManager;

    invoke-static {v1}, Lcom/mbv/a/sdklibrary/manager/WvManager;->access$600(Lcom/mbv/a/sdklibrary/manager/WvManager;)Lcom/mbv/a/sdklibrary/manager/WvManager$e;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 135
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$c;->a:Lcom/mbv/a/sdklibrary/manager/WvManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mbv/a/sdklibrary/manager/WvManager;->access$402(Lcom/mbv/a/sdklibrary/manager/WvManager;Z)Z

    .line 136
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$c;->a:Lcom/mbv/a/sdklibrary/manager/WvManager;

    invoke-virtual {v0}, Lcom/mbv/a/sdklibrary/manager/WvManager;->getPresenter()Lcom/mbv/a/sdklibrary/a/a;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/mbv/a/sdklibrary/a/a;->a(Ljava/lang/String;)V

    .line 137
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 138
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$c;->a:Lcom/mbv/a/sdklibrary/manager/WvManager;

    invoke-static {v0}, Lcom/mbv/a/sdklibrary/manager/WvManager;->access$700(Lcom/mbv/a/sdklibrary/manager/WvManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mbv/a/sdklibrary/manager/WvManager$c$1;

    invoke-direct {v1, p0, p4}, Lcom/mbv/a/sdklibrary/manager/WvManager$c$1;-><init>(Lcom/mbv/a/sdklibrary/manager/WvManager$c;Ljava/lang/String;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 160
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .prologue
    .line 164
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 165
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1

    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$c;->a:Lcom/mbv/a/sdklibrary/manager/WvManager;

    invoke-virtual {v0}, Lcom/mbv/a/sdklibrary/manager/WvManager;->getPresenter()Lcom/mbv/a/sdklibrary/a/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mbv/a/sdklibrary/a/a;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
