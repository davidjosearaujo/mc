.class Lcom/mbv/a/wp/PreviewImagesActivity$2;
.super Landroid/os/Handler;
.source "PreviewImagesActivity.java"


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
    .line 178
    iput-object p1, p0, Lcom/mbv/a/wp/PreviewImagesActivity$2;->a:Lcom/mbv/a/wp/PreviewImagesActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity$2;->a:Lcom/mbv/a/wp/PreviewImagesActivity;

    iget-object v1, p0, Lcom/mbv/a/wp/PreviewImagesActivity$2;->a:Lcom/mbv/a/wp/PreviewImagesActivity;

    invoke-static {v1}, Lcom/mbv/a/wp/PreviewImagesActivity;->b(Lcom/mbv/a/wp/PreviewImagesActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 182
    return-void
.end method
