.class public Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;
.super Lcom/mbv/a/sdklibrary/net/BaseRequest;
.source "AsyncHttpGet.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private extraString:Ljava/lang/String;

.field private request:Lorg/apache/http/client/methods/HttpUriRequest;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/mbv/a/sdklibrary/net/b;)V
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
            "Ljava/lang/String;",
            "Lcom/mbv/a/sdklibrary/net/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/mbv/a/sdklibrary/net/BaseRequest;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;->url:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;->httpCallback:Lcom/mbv/a/sdklibrary/net/b;

    .line 36
    iput-object p3, p0, Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;->extraString:Ljava/lang/String;

    .line 37
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;->setRetryCount(I)V

    .line 38
    if-eqz p2, :cond_0

    .line 39
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

    .line 40
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;->addValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method public static get(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/mbv/a/sdklibrary/net/b;)Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;
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
            "Ljava/lang/String;",
            "Lcom/mbv/a/sdklibrary/net/b;",
            ")",
            "Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/mbv/a/sdklibrary/net/b;)V

    .line 27
    invoke-static {}, Lcom/mbv/a/sdklibrary/net/a;->a()Lcom/mbv/a/sdklibrary/net/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mbv/a/sdklibrary/net/a;->a(Ljava/lang/Runnable;)V

    .line 28
    return-object v0
.end method

.method public static get(Ljava/lang/String;Ljava/util/Map;Lcom/mbv/a/sdklibrary/net/b;)V
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
    .line 20
    new-instance v0, Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/mbv/a/sdklibrary/net/b;)V

    .line 21
    invoke-static {}, Lcom/mbv/a/sdklibrary/net/a;->a()Lcom/mbv/a/sdklibrary/net/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mbv/a/sdklibrary/net/a;->a(Ljava/lang/Runnable;)V

    .line 22
    return-void
.end method


# virtual methods
.method public makeHttpRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 4

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    if-nez v0, :cond_3

    .line 50
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;->parameter:Ljava/util/TreeMap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;->parameter:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;->parameter:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 53
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_0
    invoke-static {v0}, Lcom/mbv/a/sdklibrary/b/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v3, p0, Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;->parameter:Ljava/util/TreeMap;

    invoke-virtual {v3, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mbv/a/sdklibrary/b/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 62
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;->url:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;->extraString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;->extraString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;->url:Ljava/lang/String;

    .line 71
    :cond_2
    :goto_1
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 73
    :cond_3
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object v0

    .line 67
    :cond_4
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;->extraString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;->extraString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;->url:Ljava/lang/String;

    goto :goto_1
.end method
