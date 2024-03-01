.class public abstract Lcom/mbv/a/sdklibrary/net/BaseRequest;
.super Ljava/lang/Object;
.source "BaseRequest.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Runnable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected connectTimeout:I

.field protected httpCallback:Lcom/mbv/a/sdklibrary/net/b;

.field private httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field public parameter:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected readTimeout:I

.field request:Lorg/apache/http/client/methods/HttpUriRequest;

.field private retryCount:I

.field private tag:Ljava/lang/Object;

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const v0, 0xea60

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/mbv/a/sdklibrary/net/BaseRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 33
    iput-object v1, p0, Lcom/mbv/a/sdklibrary/net/BaseRequest;->url:Ljava/lang/String;

    .line 39
    iput v0, p0, Lcom/mbv/a/sdklibrary/net/BaseRequest;->connectTimeout:I

    .line 41
    iput v0, p0, Lcom/mbv/a/sdklibrary/net/BaseRequest;->readTimeout:I

    .line 53
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcom/mbv/a/sdklibrary/net/BaseRequest$1;

    invoke-direct {v1, p0}, Lcom/mbv/a/sdklibrary/net/BaseRequest$1;-><init>(Lcom/mbv/a/sdklibrary/net/BaseRequest;)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/mbv/a/sdklibrary/net/BaseRequest;->parameter:Ljava/util/TreeMap;

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/mbv/a/sdklibrary/net/BaseRequest;->retryCount:I

    return-void
.end method

.method private a()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/net/BaseRequest;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 70
    const/16 v1, 0x1388

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 72
    const/16 v1, 0x3a98

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 73
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lcom/mbv/a/sdklibrary/net/BaseRequest;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/net/BaseRequest;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method


# virtual methods
.method public addValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 61
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/net/BaseRequest;->parameter:Ljava/util/TreeMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_0
    return-void
.end method

.method public getRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/net/BaseRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/net/BaseRequest;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public initHeaders(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 3

    .prologue
    .line 147
    if-nez p1, :cond_0

    .line 181
    :goto_0
    return-void

    .line 149
    :cond_0
    const-string v0, "games-model"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v0, "games-imei"

    .line 151
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->c()Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-interface {p1, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v0, "games-mac"

    .line 153
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->d()Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-interface {p1, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v0, "games-androidId"

    .line 155
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->e()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-interface {p1, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v0, "games-appVersionCode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-interface {p1, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v0, "games-appVersionName"

    .line 159
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->i()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-interface {p1, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v0, "games-sysVersionCode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v0, "games-sysVersionName"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "games-language"

    .line 164
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->j()Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-interface {p1, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v0, "games-netType"

    .line 166
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->k()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-interface {p1, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, "games-packageName"

    .line 168
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->f()Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-interface {p1, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v0, "games-phoneNumber"

    .line 170
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->o()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-interface {p1, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v0, "games-countryCode"

    .line 172
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->p()Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-interface {p1, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v0, "games-customerId"

    .line 174
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->q()Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-interface {p1, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v0, "games-phoneMNC"

    .line 176
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->r()Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-interface {p1, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v0, "games-platform"

    const-string v1, "android"

    invoke-interface {p1, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v0, "games-api_version"

    const-string v1, "2"

    invoke-interface {p1, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 180
    const-string v1, "referrer"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->s()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-interface {p1, v1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public abstract makeHttpRequest()Lorg/apache/http/client/methods/HttpUriRequest;
.end method

.method public makeSignature(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/net/BaseRequest;->parameter:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbv/a/sdklibrary/net/BaseRequest;->parameter:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 187
    :goto_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 188
    const-string v2, ""

    .line 189
    if-lez v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/net/BaseRequest;->parameter:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 191
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 192
    iget-object v1, p0, Lcom/mbv/a/sdklibrary/net/BaseRequest;->parameter:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v0, v1

    :goto_2
    move-object v2, v0

    .line 197
    goto :goto_1

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/net/BaseRequest;->parameter:Ljava/util/TreeMap;

    .line 186
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    goto :goto_0

    .line 198
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mbv/a/sdklibrary/manager/JniManager;->nativeEncrytionkeyhash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbv/a/sdklibrary/b/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 204
    :goto_3
    return-object v0

    .line 202
    :catch_0
    move-exception v0

    .line 204
    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    move-object v0, v2

    goto :goto_2
.end method

.method public run()V
    .locals 8

    .prologue
    const/16 v0, 0x3e8

    const/4 v7, 0x0

    .line 87
    :try_start_0
    invoke-virtual {p0}, Lcom/mbv/a/sdklibrary/net/BaseRequest;->makeHttpRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    .line 88
    invoke-virtual {p0, v1}, Lcom/mbv/a/sdklibrary/net/BaseRequest;->initHeaders(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 89
    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.connection.timeout"

    iget v4, p0, Lcom/mbv/a/sdklibrary/net/BaseRequest;->connectTimeout:I

    .line 90
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 89
    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 91
    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.socket.timeout"

    iget v4, p0, Lcom/mbv/a/sdklibrary/net/BaseRequest;->readTimeout:I

    .line 92
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 91
    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 93
    invoke-direct {p0}, Lcom/mbv/a/sdklibrary/net/BaseRequest;->a()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 94
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 95
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 96
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1, v3}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 97
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 98
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 99
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 101
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/net/BaseRequest;->httpCallback:Lcom/mbv/a/sdklibrary/net/b;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcom/mbv/a/sdklibrary/net/b;->a(Lcom/mbv/a/sdklibrary/net/BaseRequest;Ljava/lang/Exception;[B)V

    .line 132
    :goto_0
    return-void

    .line 102
    :cond_0
    iget v3, p0, Lcom/mbv/a/sdklibrary/net/BaseRequest;->retryCount:I

    if-nez v3, :cond_2

    .line 103
    iget-object v3, p0, Lcom/mbv/a/sdklibrary/net/BaseRequest;->httpCallback:Lcom/mbv/a/sdklibrary/net/b;

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "statusCode == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    array-length v6, v1

    if-le v6, v0, :cond_1

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v3, p0, v4, v0}, Lcom/mbv/a/sdklibrary/net/b;->a(Lcom/mbv/a/sdklibrary/net/BaseRequest;Ljava/lang/Exception;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    iget v1, p0, Lcom/mbv/a/sdklibrary/net/BaseRequest;->retryCount:I

    if-nez v1, :cond_4

    .line 119
    iget-object v1, p0, Lcom/mbv/a/sdklibrary/net/BaseRequest;->httpCallback:Lcom/mbv/a/sdklibrary/net/b;

    invoke-virtual {v1, p0, v0, v7}, Lcom/mbv/a/sdklibrary/net/b;->a(Lcom/mbv/a/sdklibrary/net/BaseRequest;Ljava/lang/Exception;[B)V

    goto :goto_0

    .line 103
    :cond_1
    :try_start_1
    array-length v0, v1

    goto :goto_1

    .line 105
    :cond_2
    iget v0, p0, Lcom/mbv/a/sdklibrary/net/BaseRequest;->retryCount:I

    if-lez v0, :cond_3

    .line 106
    iget v0, p0, Lcom/mbv/a/sdklibrary/net/BaseRequest;->retryCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mbv/a/sdklibrary/net/BaseRequest;->retryCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    :cond_3
    const-wide/16 v0, 0xbb8

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 113
    :goto_2
    :try_start_3
    invoke-static {}, Lcom/mbv/a/sdklibrary/net/a;->a()Lcom/mbv/a/sdklibrary/net/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mbv/a/sdklibrary/net/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 110
    :catch_1
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 121
    :cond_4
    iget v0, p0, Lcom/mbv/a/sdklibrary/net/BaseRequest;->retryCount:I

    if-lez v0, :cond_5

    .line 122
    iget v0, p0, Lcom/mbv/a/sdklibrary/net/BaseRequest;->retryCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mbv/a/sdklibrary/net/BaseRequest;->retryCount:I

    .line 125
    :cond_5
    const-wide/16 v0, 0xbb8

    :try_start_4
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 129
    :goto_3
    invoke-static {}, Lcom/mbv/a/sdklibrary/net/a;->a()Lcom/mbv/a/sdklibrary/net/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mbv/a/sdklibrary/net/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 126
    :catch_2
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3
.end method

.method protected setConnectTimeout(I)V
    .locals 0

    .prologue
    .line 135
    iput p1, p0, Lcom/mbv/a/sdklibrary/net/BaseRequest;->connectTimeout:I

    .line 136
    return-void
.end method

.method protected setReadTimeout(I)V
    .locals 0

    .prologue
    .line 139
    iput p1, p0, Lcom/mbv/a/sdklibrary/net/BaseRequest;->readTimeout:I

    .line 140
    return-void
.end method

.method public setRetryCount(I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/mbv/a/sdklibrary/net/BaseRequest;->retryCount:I

    .line 82
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/net/BaseRequest;->tag:Ljava/lang/Object;

    .line 51
    return-void
.end method
