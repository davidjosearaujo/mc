.class public Lcom/ksjhgd/xx/e/p;
.super Ljava/lang/Object;


# static fields
.field public static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/ksjhgd/xx/e/p;->a:I

    return-void
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v1, 0x400

    :try_start_1
    new-array v1, v1, [B

    :goto_1
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_2
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v2, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v5, v1

    move-object v1, v2

    move-object v2, v5

    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_4
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_4
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_6
    throw v1

    :catch_1
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v1

    goto :goto_4
.end method
