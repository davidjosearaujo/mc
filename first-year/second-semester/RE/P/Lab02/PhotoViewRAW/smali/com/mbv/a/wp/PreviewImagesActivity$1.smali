.class Lcom/mbv/a/wp/PreviewImagesActivity$1;
.super Ljava/lang/Object;
.source "PreviewImagesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbv/a/wp/PreviewImagesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbv/a/wp/PreviewImagesActivity;


# direct methods
.method constructor <init>(Lcom/mbv/a/wp/PreviewImagesActivity;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/mbv/a/wp/PreviewImagesActivity$1;->a:Lcom/mbv/a/wp/PreviewImagesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity$1;->a:Lcom/mbv/a/wp/PreviewImagesActivity;

    invoke-virtual {v0}, Lcom/mbv/a/wp/PreviewImagesActivity;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 165
    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/mbv/a/wp/PreviewImagesActivity$1;->a:Lcom/mbv/a/wp/PreviewImagesActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/mbv/a/wp/PreviewImagesActivity;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity$1;->a:Lcom/mbv/a/wp/PreviewImagesActivity;

    iget-object v1, p0, Lcom/mbv/a/wp/PreviewImagesActivity$1;->a:Lcom/mbv/a/wp/PreviewImagesActivity;

    invoke-virtual {v1}, Lcom/mbv/a/wp/PreviewImagesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbv/a/wp/PreviewImagesActivity;->a(Lcom/mbv/a/wp/PreviewImagesActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_1
    iget-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity$1;->a:Lcom/mbv/a/wp/PreviewImagesActivity;

    invoke-static {v0}, Lcom/mbv/a/wp/PreviewImagesActivity;->a(Lcom/mbv/a/wp/PreviewImagesActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mbv/a/wp/PreviewImagesActivity$1;->a:Lcom/mbv/a/wp/PreviewImagesActivity;

    invoke-static {v1}, Lcom/mbv/a/wp/PreviewImagesActivity;->a(Lcom/mbv/a/wp/PreviewImagesActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    iget-object v1, p0, Lcom/mbv/a/wp/PreviewImagesActivity$1;->a:Lcom/mbv/a/wp/PreviewImagesActivity;

    const-string v2, "save fail"

    invoke-static {v1, v2}, Lcom/mbv/a/wp/PreviewImagesActivity;->a(Lcom/mbv/a/wp/PreviewImagesActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
