.class public Lcom/ksjhgd/xx/e/h;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field protected static final b:Ljava/lang/String;

.field protected static c:I

.field protected static d:Z

.field protected static e:Ljava/lang/String;

.field private static f:Ljava/text/SimpleDateFormat;

.field private static g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ksjhgd/xx/e/h;->a:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/eslog.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/e/h;->b:Ljava/lang/String;

    sget-boolean v0, Lcom/ksjhgd/xx/e/h;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    sput v0, Lcom/ksjhgd/xx/e/h;->c:I

    sput-boolean v2, Lcom/ksjhgd/xx/e/h;->d:Z

    invoke-static {}, Lcom/ksjhgd/xx/e/d;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/e/h;->e:Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ksjhgd/xx/e/h;->f:Ljava/text/SimpleDateFormat;

    sput-boolean v2, Lcom/ksjhgd/xx/e/h;->g:Z

    return-void

    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public static a(ILjava/lang/String;)V
    .locals 1

    const-string v0, "Debug> > "

    invoke-static {p0, v0, p1}, Lcom/ksjhgd/xx/e/h;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget v0, Lcom/ksjhgd/xx/e/h;->c:I

    if-gt v0, p0, :cond_0

    const-string v0, ""

    packed-switch p0, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknow level:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-boolean v1, Lcom/ksjhgd/xx/e/h;->d:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[L]"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-[V]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/h;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-[T]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/h;->f:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-[M]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->c(Ljava/lang/String;)V

    :cond_0
    return-void

    :pswitch_0
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "V"

    goto :goto_0

    :pswitch_1
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "D"

    goto :goto_0

    :pswitch_2
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "I"

    goto :goto_0

    :pswitch_3
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "W"

    goto :goto_0

    :pswitch_4
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "E"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Ljava/lang/Exception;)V
    .locals 1

    sget-boolean v0, Lcom/ksjhgd/xx/e/h;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/ksjhgd/xx/e/h;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public static a(ZLjava/lang/String;)V
    .locals 2

    const/4 v1, 0x4

    sget-boolean v0, Lcom/ksjhgd/xx/e/h;->a:Z

    if-eqz v0, :cond_1

    invoke-static {v1, p1}, Lcom/ksjhgd/xx/e/h;->a(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p0, :cond_0

    invoke-static {v1, p1}, Lcom/ksjhgd/xx/e/h;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/ksjhgd/xx/e/h;->b(ZLjava/lang/String;)V

    return-void
.end method

.method public static b(ZLjava/lang/String;)V
    .locals 2

    const/4 v1, 0x6

    sget-boolean v0, Lcom/ksjhgd/xx/e/h;->a:Z

    if-eqz v0, :cond_1

    invoke-static {v1, p1}, Lcom/ksjhgd/xx/e/h;->a(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p0, :cond_0

    invoke-static {v1, p1}, Lcom/ksjhgd/xx/e/h;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    sget-boolean v0, Lcom/ksjhgd/xx/e/h;->g:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    sget-object v4, Lcom/ksjhgd/xx/e/h;->b:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_3
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/ksjhgd/xx/e/h;->b:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_6
    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ksjhgd/xx/e/h;->g:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    :goto_4
    throw v0

    :catch_4
    move-exception v0

    move-object v1, v2

    :goto_5
    :try_start_8
    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ksjhgd/xx/e/h;->g:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_0

    :catch_5
    move-exception v0

    goto :goto_0

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v0

    goto :goto_1

    :catch_8
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3
.end method
