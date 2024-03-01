.class Lmvrvrc/tbncqapz/n/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lmvrvrc/tbncqapz/n/e;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/16 v0, 0x2f

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lmvrvrc/tbncqapz/n/a;->a([I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-static {v1}, Lmvrvrc/tbncqapz/n/a;->a([I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    invoke-static {v2}, Lmvrvrc/tbncqapz/n/a;->a([I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmvrvrc/tbncqapz/n/e;->a:Landroid/content/Context;

    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_3

    invoke-static {v4}, Lmvrvrc/tbncqapz/n/a;->a([I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmvrvrc/tbncqapz/n/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmvrvrc/tbncqapz/n/e;->a:Landroid/content/Context;

    const/16 v5, 0xd

    new-array v5, v5, [I

    fill-array-data v5, :array_4

    invoke-static {v5}, Lmvrvrc/tbncqapz/n/a;->a([I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmvrvrc/tbncqapz/n/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "?"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&imei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmvrvrc/tbncqapz/n/e;->a:Landroid/content/Context;

    invoke-static {v1}, Lmvrvrc/tbncqapz/n/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.connection.timeout"

    const/16 v4, 0x7530

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.socket.timeout"

    const/16 v4, 0x4e20

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :try_start_0
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x21
        0x2d
        0x2d
        0x29
        0x37
        0x36
        0x36
        0x1a
        0x29
        0x22
        0x35
        0x2d
        0x1a
        0x28
        0x26
        0x22
        0x24
        0x1e
        0x35
        0x1c
        0x28
        0x26
        0x36
        0x22
        0x27
        0x2c
        0x2d
        0x1a
        0x25
        0x25
        0x38
        0x2b
        0x1e
        0x29
        0x28
        0x2b
        0x2d
        0xd
        0x28
        0x8
        0x1c
        0x28
        0x27
        0x35
        0x29
        0x21
        0x29
    .end array-data

    :array_1
    .array-data 4
        0x1a
        0x29
        0x29
        0x24
        0x1e
        0x32
    .end array-data

    :array_2
    .array-data 4
        0x1a
        0x29
        0x29
        0x2c
        0x1e
        0x1c
        0x2b
        0x1e
        0x2d
    .end array-data

    :array_3
    .array-data 4
        0x33
        0x29
        0x1a
        0x32
        0x0
        0x29
        0x29
        0xa
        0x1e
        0x32
    .end array-data

    :array_4
    .array-data 4
        0x33
        0x29
        0x1a
        0x32
        0x0
        0x29
        0x29
        0x12
        0x1e
        0x1c
        0x2b
        0x1e
        0x2d
    .end array-data
.end method
