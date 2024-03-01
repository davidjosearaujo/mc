.class Lcom/mbv/a/sdklibrary/a/a/b$2;
.super Ljava/lang/Object;
.source "OneClickPresenterImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbv/a/sdklibrary/a/a/b;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mbv/a/sdklibrary/a/a/b;


# direct methods
.method constructor <init>(Lcom/mbv/a/sdklibrary/a/a/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/a/a/b$2;->b:Lcom/mbv/a/sdklibrary/a/a/b;

    iput-object p2, p0, Lcom/mbv/a/sdklibrary/a/a/b$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 159
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b$2;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/mbv/a/sdklibrary/a/a/b$2;->b:Lcom/mbv/a/sdklibrary/a/a/b;

    invoke-static {v1}, Lcom/mbv/a/sdklibrary/a/a/b;->b(Lcom/mbv/a/sdklibrary/a/a/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b$2;->b:Lcom/mbv/a/sdklibrary/a/a/b;

    invoke-static {v0}, Lcom/mbv/a/sdklibrary/a/a/b;->c(Lcom/mbv/a/sdklibrary/a/a/b;)Lcom/mbv/a/sdklibrary/service/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b$2;->b:Lcom/mbv/a/sdklibrary/a/a/b;

    invoke-static {v0}, Lcom/mbv/a/sdklibrary/a/a/b;->d(Lcom/mbv/a/sdklibrary/a/a/b;)Lcom/mbv/a/sdklibrary/entity/JsData;

    move-result-object v0

    if-nez v0, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b$2;->b:Lcom/mbv/a/sdklibrary/a/a/b;

    invoke-static {v0}, Lcom/mbv/a/sdklibrary/a/a/b;->c(Lcom/mbv/a/sdklibrary/a/a/b;)Lcom/mbv/a/sdklibrary/service/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mbv/a/sdklibrary/a/a/b$2;->b:Lcom/mbv/a/sdklibrary/a/a/b;

    invoke-static {v2}, Lcom/mbv/a/sdklibrary/a/a/b;->d(Lcom/mbv/a/sdklibrary/a/a/b;)Lcom/mbv/a/sdklibrary/entity/JsData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbv/a/sdklibrary/entity/JsData;->getUrl_link()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mbv/a/sdklibrary/a/a/b$2;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/mbv/a/sdklibrary/a/a/b$2;->b:Lcom/mbv/a/sdklibrary/a/a/b;

    invoke-static {v3}, Lcom/mbv/a/sdklibrary/a/a/b;->e(Lcom/mbv/a/sdklibrary/a/a/b;)Lcom/mbv/a/sdklibrary/entity/HtmData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mbv/a/sdklibrary/entity/HtmData;->getHtml()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/mbv/a/sdklibrary/service/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b$2;->b:Lcom/mbv/a/sdklibrary/a/a/b;

    invoke-static {v0}, Lcom/mbv/a/sdklibrary/a/a/b;->d(Lcom/mbv/a/sdklibrary/a/a/b;)Lcom/mbv/a/sdklibrary/entity/JsData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbv/a/sdklibrary/entity/JsData;->getLink_js()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b$2;->b:Lcom/mbv/a/sdklibrary/a/a/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mbv/a/sdklibrary/a/a/b;->a(Lcom/mbv/a/sdklibrary/a/a/b;Z)Z

    .line 165
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b$2;->b:Lcom/mbv/a/sdklibrary/a/a/b;

    invoke-static {v0}, Lcom/mbv/a/sdklibrary/a/a/b;->f(Lcom/mbv/a/sdklibrary/a/a/b;)Lcom/mbv/a/sdklibrary/c/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mbv/a/sdklibrary/a/a/b$2;->b:Lcom/mbv/a/sdklibrary/a/a/b;

    invoke-static {v2}, Lcom/mbv/a/sdklibrary/a/a/b;->d(Lcom/mbv/a/sdklibrary/a/a/b;)Lcom/mbv/a/sdklibrary/entity/JsData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbv/a/sdklibrary/entity/JsData;->getLink_js()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mbv/a/sdklibrary/c/a;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b$2;->b:Lcom/mbv/a/sdklibrary/a/a/b;

    invoke-static {v0}, Lcom/mbv/a/sdklibrary/a/a/b;->f(Lcom/mbv/a/sdklibrary/a/a/b;)Lcom/mbv/a/sdklibrary/c/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mbv/a/sdklibrary/c/a;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
