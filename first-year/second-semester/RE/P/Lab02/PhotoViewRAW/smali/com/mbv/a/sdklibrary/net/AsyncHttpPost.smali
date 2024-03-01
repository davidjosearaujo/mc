.class public Lcom/mbv/a/sdklibrary/net/AsyncHttpPost;
.super Lcom/mbv/a/sdklibrary/net/BaseRequest;
.source "AsyncHttpPost.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/mbv/a/sdklibrary/net/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mbv/a/sdklibrary/net/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/mbv/a/sdklibrary/net/BaseRequest;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/net/AsyncHttpPost;->url:Ljava/lang/String;

    .line 29
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/mbv/a/sdklibrary/net/AsyncHttpPost;->setRetryCount(I)V

    .line 30
    iput-object p3, p0, Lcom/mbv/a/sdklibrary/net/AsyncHttpPost;->httpCallback:Lcom/mbv/a/sdklibrary/net/b;

    .line 31
    if-eqz p2, :cond_0

    .line 32
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mbv/a/sdklibrary/net/AsyncHttpPost;->addValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method public static post(Ljava/lang/String;Ljava/util/Map;Lcom/mbv/a/sdklibrary/net/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mbv/a/sdklibrary/net/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Lcom/mbv/a/sdklibrary/net/AsyncHttpPost;

    invoke-direct {v0, p0, p1, p2}, Lcom/mbv/a/sdklibrary/net/AsyncHttpPost;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/mbv/a/sdklibrary/net/b;)V

    .line 24
    invoke-static {}, Lcom/mbv/a/sdklibrary/net/a;->a()Lcom/mbv/a/sdklibrary/net/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mbv/a/sdklibrary/net/a;->a(Ljava/lang/Runnable;)V

    .line 25
    return-void
.end method


# virtual methods
.method public makeHttpRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 6

    .prologue
    .line 40
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lcom/mbv/a/sdklibrary/net/AsyncHttpPost;->url:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 41
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 43
    :try_start_0
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "sign"

    const-string v5, "sign"

    invoke-virtual {p0, v5}, Lcom/mbv/a/sdklibrary/net/AsyncHttpPost;->makeSignature(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mbv/a/sdklibrary/b/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    move-object v0, v2

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object v1, v0

    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 50
    :goto_0
    return-object v2

    .line 45
    :catch_0
    move-exception v1

    .line 46
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 47
    :catch_1
    move-exception v1

    .line 48
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
