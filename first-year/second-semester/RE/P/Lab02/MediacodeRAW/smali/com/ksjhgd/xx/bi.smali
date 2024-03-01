.class Lcom/ksjhgd/xx/bi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/bg;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/bg;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/bi;->a:Lcom/ksjhgd/xx/bg;

    iput-object p2, p0, Lcom/ksjhgd/xx/bi;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v1, 0x0

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p0, Lcom/ksjhgd/xx/bi;->b:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/ksjhgd/xx/bi;->a:Lcom/ksjhgd/xx/bg;

    iget-object v2, v2, Lcom/ksjhgd/xx/bg;->q:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/ksjhgd/xx/bi;->a:Lcom/ksjhgd/xx/bg;

    iget-object v3, v3, Lcom/ksjhgd/xx/bg;->q:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v1, 0x400

    :try_start_1
    new-array v1, v1, [B

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    iget-object v0, p0, Lcom/ksjhgd/xx/bi;->a:Lcom/ksjhgd/xx/bg;

    iget-object v0, v0, Lcom/ksjhgd/xx/bg;->o:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v2, v1, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_4
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, v2

    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v1, :cond_0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_2

    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_2
    :goto_5
    throw v0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    goto :goto_3
.end method
