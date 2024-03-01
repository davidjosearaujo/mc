.class Lcom/mbv/a/sdklibrary/b$6;
.super Lcom/mbv/a/sdklibrary/net/b;
.source "Tracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbv/a/sdklibrary/b;->h()V
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
    .line 247
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/b$6;->a:Lcom/mbv/a/sdklibrary/b;

    invoke-direct {p0}, Lcom/mbv/a/sdklibrary/net/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mbv/a/sdklibrary/net/BaseRequest;Ljava/lang/Exception;[B)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 249
    if-nez p2, :cond_0

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/b$6;->a:Lcom/mbv/a/sdklibrary/b;

    const-string v1, "is_request_install"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mbv/a/sdklibrary/b;->a(Lcom/mbv/a/sdklibrary/b;Ljava/lang/String;Z)V

    .line 252
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 253
    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 254
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/b$6;->a:Lcom/mbv/a/sdklibrary/b;

    invoke-static {v0}, Lcom/mbv/a/sdklibrary/b;->b(Lcom/mbv/a/sdklibrary/b;)V

    .line 255
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/b$6;->a:Lcom/mbv/a/sdklibrary/b;

    invoke-virtual {v0}, Lcom/mbv/a/sdklibrary/b;->f()V

    .line 256
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/b$6;->a:Lcom/mbv/a/sdklibrary/b;

    invoke-virtual {v0}, Lcom/mbv/a/sdklibrary/b;->d()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0

    .line 260
    :catch_1
    move-exception v0

    .line 261
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
