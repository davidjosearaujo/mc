.class Lcom/mbv/a/sdklibrary/b$5;
.super Lcom/mbv/a/sdklibrary/net/b;
.source "Tracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbv/a/sdklibrary/b;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbv/a/sdklibrary/b;


# direct methods
.method constructor <init>(Lcom/mbv/a/sdklibrary/b;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/b$5;->a:Lcom/mbv/a/sdklibrary/b;

    invoke-direct {p0}, Lcom/mbv/a/sdklibrary/net/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mbv/a/sdklibrary/net/BaseRequest;Ljava/lang/Exception;[B)V
    .locals 3

    .prologue
    .line 209
    if-nez p2, :cond_0

    .line 211
    :try_start_0
    invoke-virtual {p1}, Lcom/mbv/a/sdklibrary/net/BaseRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    .line 212
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/mbv/a/sdklibrary/b$5;->a:Lcom/mbv/a/sdklibrary/b;

    invoke-static {v0}, Lcom/mbv/a/sdklibrary/b/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/mbv/a/sdklibrary/b;->a(Lcom/mbv/a/sdklibrary/b;Ljava/lang/String;Z)V

    .line 219
    :cond_0
    :goto_1
    return-void

    .line 211
    :cond_1
    invoke-virtual {p1}, Lcom/mbv/a/sdklibrary/net/BaseRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
