.class public Lcom/ksjhgd/xx/n;
.super Landroid/os/AsyncTask;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Lcom/ksjhgd/xx/c/c;

.field final synthetic g:Lcom/ksjhgd/xx/m;

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/ksjhgd/xx/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/ksjhgd/xx/n;->g:Lcom/ksjhgd/xx/m;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-boolean v3, p0, Lcom/ksjhgd/xx/n;->e:Z

    iput-object p2, p0, Lcom/ksjhgd/xx/n;->b:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ksjhgd/xx/n;->a:I

    iput-object p4, p0, Lcom/ksjhgd/xx/n;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/ksjhgd/xx/n;->d:Ljava/lang/String;

    new-instance v0, Lcom/ksjhgd/xx/c/b;

    invoke-direct {v0}, Lcom/ksjhgd/xx/c/b;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/ksjhgd/xx/c/c;

    invoke-direct {v1, v0}, Lcom/ksjhgd/xx/c/c;-><init>(Lcom/ksjhgd/xx/c/b;)V

    iput-object v1, p0, Lcom/ksjhgd/xx/n;->f:Lcom/ksjhgd/xx/c/c;

    iget-object v0, p0, Lcom/ksjhgd/xx/n;->f:Lcom/ksjhgd/xx/c/c;

    iput-object p3, v0, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/ksjhgd/xx/n;->f:Lcom/ksjhgd/xx/c/c;

    iput-object p2, v0, Lcom/ksjhgd/xx/c/c;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/ksjhgd/xx/n;->f:Lcom/ksjhgd/xx/c/c;

    iput-object p4, v0, Lcom/ksjhgd/xx/c/c;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/ksjhgd/xx/n;->f:Lcom/ksjhgd/xx/c/c;

    iput-object p7, v0, Lcom/ksjhgd/xx/c/c;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/ksjhgd/xx/n;->f:Lcom/ksjhgd/xx/c/c;

    iput p5, v0, Lcom/ksjhgd/xx/c/c;->i:I

    iget-object v0, p0, Lcom/ksjhgd/xx/n;->f:Lcom/ksjhgd/xx/c/c;

    iget v1, v0, Lcom/ksjhgd/xx/c/c;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/ksjhgd/xx/c/c;->i:I

    iget-object v0, p1, Lcom/ksjhgd/xx/m;->f:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ksjhgd/xx/m;->q:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ksjhgd/xx/n;->f:Lcom/ksjhgd/xx/c/c;

    iget-object v2, v2, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/m;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/ksjhgd/xx/n;->f:Lcom/ksjhgd/xx/c/c;

    iget v2, v2, Lcom/ksjhgd/xx/c/c;->i:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p1, Lcom/ksjhgd/xx/m;->f:Landroid/content/Context;

    sget-object v1, Lcom/ksjhgd/xx/m;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/m;->o:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DownloadService.DownTask.DownTask(runid id)"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/ksjhgd/xx/n;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    if-eq v1, v4, :cond_1

    iget v0, p0, Lcom/ksjhgd/xx/n;->a:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/ksjhgd/xx/m;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/m;->o:Ljava/lang/String;

    iget v2, p0, Lcom/ksjhgd/xx/n;->a:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 24

    const-string v2, "DownloadService.DownTask.doInBackground(kaishi)"

    invoke-static {v2}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ksjhgd/xx/n;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ksjhgd/xx/n;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    if-ge v2, v4, :cond_1

    :cond_0
    const-string v2, "fail_url"

    :goto_0
    return-object v2

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ksjhgd/xx/n;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ksjhgd/xx/n;->b:Ljava/lang/String;

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/appdata"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_2
    new-instance v10, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "_tmp"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    :goto_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/ksjhgd/xx/c/h;->a:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/ksjhgd/xx/e/d;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/ksjhgd/xx/c/h;->b:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ksjhgd/xx/n;->g:Lcom/ksjhgd/xx/m;

    iget-object v5, v5, Lcom/ksjhgd/xx/m;->f:Landroid/content/Context;

    invoke-static {v5}, Lcom/ksjhgd/xx/e/q;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/ksjhgd/xx/c/h;->c:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ksjhgd/xx/n;->g:Lcom/ksjhgd/xx/m;

    iget-object v5, v5, Lcom/ksjhgd/xx/m;->f:Landroid/content/Context;

    invoke-static {v5}, Lcom/ksjhgd/xx/e/q;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ksjhgd/xx/n;->b:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/ksjhgd/xx/n;->b:Ljava/lang/String;

    :cond_3
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get app url = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ksjhgd/xx/n;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ksjhgd/xx/e/h;->b(ZLjava/lang/String;)V

    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ksjhgd/xx/n;->b:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    if-nez v2, :cond_a

    :try_start_1
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    :goto_3
    invoke-interface {v3, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v13

    if-eqz v13, :cond_e

    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rwd"

    invoke-direct {v3, v10, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v4, 0x2800

    new-array v14, v4, [B

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    int-to-long v6, v2

    add-long v16, v4, v6

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ksjhgd/xx/n;->g:Lcom/ksjhgd/xx/m;

    iget-object v4, v4, Lcom/ksjhgd/xx/m;->f:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/ksjhgd/xx/m;->q:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ksjhgd/xx/n;->f:Lcom/ksjhgd/xx/c/c;

    iget-object v6, v6, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    sget-object v5, Lcom/ksjhgd/xx/m;->l:Ljava/lang/String;

    move-wide/from16 v0, v16

    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v4, 0x0

    move/from16 v22, v4

    move v4, v2

    move/from16 v2, v22

    :goto_4
    invoke-virtual {v13, v14}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v8, -0x1

    if-ne v5, v8, :cond_b

    move-object v2, v3

    :goto_5
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->consumeContent()V

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    :cond_5
    invoke-virtual {v10, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ksjhgd/xx/n;->g:Lcom/ksjhgd/xx/m;

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ksjhgd/xx/m;->x:Ljava/lang/String;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    const-string v2, "ok"

    goto/16 :goto_0

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ksjhgd/xx/n;->g:Lcom/ksjhgd/xx/m;

    iget-object v5, v5, Lcom/ksjhgd/xx/m;->f:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/appdata"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v2, 0x0

    goto/16 :goto_2

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9

    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ksjhgd/xx/n;->g:Lcom/ksjhgd/xx/m;

    iget-object v2, v2, Lcom/ksjhgd/xx/m;->f:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/ksjhgd/xx/m;->q:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ksjhgd/xx/n;->f:Lcom/ksjhgd/xx/c/c;

    iget-object v5, v5, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    sget-object v5, Lcom/ksjhgd/xx/m;->k:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v4, Lcom/ksjhgd/xx/m;->l:Ljava/lang/String;

    const-wide/16 v6, -0x1

    invoke-interface {v2, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-wide v4

    move-wide/from16 v22, v4

    move v4, v3

    move-wide/from16 v2, v22

    :goto_6
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_8

    int-to-long v4, v4

    cmp-long v2, v4, v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ksjhgd/xx/n;->g:Lcom/ksjhgd/xx/m;

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ksjhgd/xx/m;->x:Ljava/lang/String;

    const-string v2, "ok_local"

    goto/16 :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const-wide/16 v4, 0x0

    move-wide/from16 v22, v4

    move v4, v3

    move-wide/from16 v2, v22

    goto :goto_6

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const-wide/16 v4, 0x0

    move-wide/from16 v22, v4

    move v4, v3

    move-wide/from16 v2, v22

    goto :goto_6

    :cond_8
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_9
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/ksjhgd/xx/n;->h:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ksjhgd/xx/n;->g:Lcom/ksjhgd/xx/m;

    iget-object v2, v2, Lcom/ksjhgd/xx/m;->f:Landroid/content/Context;

    sget-object v3, Lcom/ksjhgd/xx/m;->s:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ksjhgd/xx/n;->f:Lcom/ksjhgd/xx/c/c;

    iget-object v3, v3, Lcom/ksjhgd/xx/c/c;->e:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "======================@type1==================="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ksjhgd/xx/n;->g:Lcom/ksjhgd/xx/m;

    iget-object v3, v3, Lcom/ksjhgd/xx/m;->f:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/ksjhgd/xx/e/j;->a(Landroid/content/Context;I)Lcom/ksjhgd/xx/e/j;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ksjhgd/xx/n;->f:Lcom/ksjhgd/xx/c/c;

    iget-object v3, v3, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ksjhgd/xx/e/j;->b(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_a
    :try_start_3
    const-string v5, "Range"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bytes="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    goto/16 :goto_3

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ksjhgd/xx/n;->g:Lcom/ksjhgd/xx/m;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ksjhgd/xx/n;->a:I

    invoke-virtual {v2, v3}, Lcom/ksjhgd/xx/m;->a(I)V

    const-string v2, "fail"

    goto/16 :goto_0

    :cond_b
    const/4 v8, 0x0

    :try_start_4
    invoke-virtual {v3, v14, v8, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    add-int/2addr v5, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v18, v8, v6

    const-wide/16 v20, 0x12c

    cmp-long v4, v18, v20

    if-lez v4, :cond_d

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    int-to-double v0, v5

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    mul-double v6, v6, v18

    double-to-int v4, v6

    if-le v4, v2, :cond_c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "%"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ksjhgd/xx/n;->publishProgress([Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    move v2, v4

    move-wide v6, v8

    move v4, v5

    goto/16 :goto_4

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ksjhgd/xx/n;->g:Lcom/ksjhgd/xx/m;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ksjhgd/xx/n;->a:I

    invoke-virtual {v2, v3}, Lcom/ksjhgd/xx/m;->a(I)V

    const-string v2, "fail"

    goto/16 :goto_0

    :catch_6
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ksjhgd/xx/n;->g:Lcom/ksjhgd/xx/m;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ksjhgd/xx/n;->a:I

    invoke-virtual {v2, v3}, Lcom/ksjhgd/xx/m;->a(I)V

    const-string v2, "fail"

    goto/16 :goto_0

    :cond_c
    move v4, v5

    move-wide v6, v8

    goto/16 :goto_4

    :cond_d
    move v4, v5

    goto/16 :goto_4

    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_5
.end method

.method protected a(Ljava/lang/String;)V
    .locals 8

    const/high16 v7, 0x10000000

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    sget-object v0, Lcom/ksjhgd/xx/m;->t:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ksjhgd/xx/m;->t:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/ksjhgd/xx/n;->f:Lcom/ksjhgd/xx/c/c;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "ok"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ok_local"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    const-string v0, "\u4e0b\u8f7d\u5df2\u7ecf\u5b8c\u6210"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ksjhgd/xx/n;->g:Lcom/ksjhgd/xx/m;

    iget-object v0, v0, Lcom/ksjhgd/xx/m;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "chmod"

    aput-object v2, v1, v6

    const-string v2, "705"

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/appdata"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {v1}, Lcom/ksjhgd/xx/e/q;->a([Ljava/lang/String;)Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "chmod"

    aput-object v1, v0, v6

    const-string v1, "604"

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/ksjhgd/xx/n;->g:Lcom/ksjhgd/xx/m;

    iget-object v1, v1, Lcom/ksjhgd/xx/m;->x:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/ksjhgd/xx/e/q;->a([Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/ksjhgd/xx/n;->g:Lcom/ksjhgd/xx/m;

    iget-object v0, v0, Lcom/ksjhgd/xx/m;->f:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/ksjhgd/xx/n;->g:Lcom/ksjhgd/xx/m;

    iget-object v4, v4, Lcom/ksjhgd/xx/m;->x:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x1080082

    iput v3, v1, Landroid/app/Notification;->icon:I

    iget-object v3, p0, Lcom/ksjhgd/xx/n;->d:Ljava/lang/String;

    iput-object v3, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/16 v3, 0x22

    iput v3, v1, Landroid/app/Notification;->flags:I

    iget-object v3, p0, Lcom/ksjhgd/xx/n;->g:Lcom/ksjhgd/xx/m;

    iget-object v3, v3, Lcom/ksjhgd/xx/m;->f:Landroid/content/Context;

    const/4 v4, -0x2

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Lcom/ksjhgd/xx/n;->g:Lcom/ksjhgd/xx/m;

    iget-object v3, v3, Lcom/ksjhgd/xx/m;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/ksjhgd/xx/n;->c:Ljava/lang/String;

    const-string v5, "\u4e0b\u8f7d\u5b8c\u6210\uff0c\u70b9\u51fb\u5b89\u88c5"

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget v2, p0, Lcom/ksjhgd/xx/n;->a:I

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/ksjhgd/xx/n;->g:Lcom/ksjhgd/xx/m;

    iget-object v2, v2, Lcom/ksjhgd/xx/m;->x:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ksjhgd/xx/n;->g:Lcom/ksjhgd/xx/m;

    iget-object v1, v1, Lcom/ksjhgd/xx/m;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iput-boolean v6, p0, Lcom/ksjhgd/xx/n;->e:Z

    iget-object v0, p0, Lcom/ksjhgd/xx/n;->g:Lcom/ksjhgd/xx/m;

    iget-object v0, v0, Lcom/ksjhgd/xx/m;->f:Landroid/content/Context;

    sget-object v1, Lcom/ksjhgd/xx/e/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ksjhgd/xx/e/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/ksjhgd/xx/e/a;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "dowload_state"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ksjhgd/xx/n;->a:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/ksjhgd/xx/e/a;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/n;->g:Lcom/ksjhgd/xx/m;

    iget-object v0, v0, Lcom/ksjhgd/xx/m;->f:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ksjhgd/xx/m;->q:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ksjhgd/xx/n;->f:Lcom/ksjhgd/xx/c/c;

    iget-object v2, v2, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/m;->k:Ljava/lang/String;

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/ksjhgd/xx/n;->g:Lcom/ksjhgd/xx/m;

    iget-object v0, v0, Lcom/ksjhgd/xx/m;->f:Landroid/content/Context;

    sget-object v1, Lcom/ksjhgd/xx/m;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "ok"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/ksjhgd/xx/n;->h:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ksjhgd/xx/n;->g:Lcom/ksjhgd/xx/m;

    iget-object v0, v0, Lcom/ksjhgd/xx/m;->f:Landroid/content/Context;

    sget-object v1, Lcom/ksjhgd/xx/m;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/ksjhgd/xx/n;->f:Lcom/ksjhgd/xx/c/c;

    iget-object v1, v1, Lcom/ksjhgd/xx/c/c;->e:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ksjhgd/xx/n;->f:Lcom/ksjhgd/xx/c/c;

    iget-object v3, v3, Lcom/ksjhgd/xx/c/c;->e:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "======================@type2==================="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/n;->g:Lcom/ksjhgd/xx/m;

    iget-object v0, v0, Lcom/ksjhgd/xx/m;->f:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/ksjhgd/xx/e/j;->a(Landroid/content/Context;I)Lcom/ksjhgd/xx/e/j;

    move-result-object v0

    iget-object v2, p0, Lcom/ksjhgd/xx/n;->f:Lcom/ksjhgd/xx/c/c;

    iget-object v2, v2, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ksjhgd/xx/e/j;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "@DownloadService.DownTask.onPostExecute(run end)"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ksjhgd/xx/n;->f:Lcom/ksjhgd/xx/c/c;

    iget-object v2, v2, Lcom/ksjhgd/xx/c/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/ksjhgd/xx/n;->g:Lcom/ksjhgd/xx/m;

    iget-object v0, v0, Lcom/ksjhgd/xx/m;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/ksjhgd/xx/m;->a(Landroid/content/Context;)V

    return-void

    :cond_4
    const-string v0, "DownloadService.DownTask.onPostExecute(\u672c\u5730\u4e0b\u8f7d\u4e0d\u4e0a\u62a5)"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/ksjhgd/xx/n;->g:Lcom/ksjhgd/xx/m;

    iget-object v0, v0, Lcom/ksjhgd/xx/m;->f:Landroid/content/Context;

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "fail_url"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DownloadService.DownTask.onPostExecute(\u65e0\u6548\u7684\u4e0b\u8f7d\u5730\u5740 )url="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ksjhgd/xx/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DownloadService.DownTask.onPostExecute(\u91cd\u8bd5\u6b21\u6570)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ksjhgd/xx/n;->f:Lcom/ksjhgd/xx/c/c;

    iget v1, v1, Lcom/ksjhgd/xx/c/c;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/n;->f:Lcom/ksjhgd/xx/c/c;

    iget v0, v0, Lcom/ksjhgd/xx/c/c;->i:I

    if-ge v0, v4, :cond_3

    sget-object v0, Lcom/ksjhgd/xx/m;->t:Ljava/util/LinkedList;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/ksjhgd/xx/m;->t:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/ksjhgd/xx/n;->f:Lcom/ksjhgd/xx/c/c;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected varargs b([Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/ksjhgd/xx/n;->g:Lcom/ksjhgd/xx/m;

    iget v1, p0, Lcom/ksjhgd/xx/n;->a:I

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v3, p0, Lcom/ksjhgd/xx/n;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/ksjhgd/xx/n;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ksjhgd/xx/m;->a(Lcom/ksjhgd/xx/m;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ksjhgd/xx/n;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/n;->g:Lcom/ksjhgd/xx/m;

    iget-object v0, v0, Lcom/ksjhgd/xx/m;->f:Landroid/content/Context;

    check-cast v0, Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ksjhgd/xx/n;->e:Z

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ksjhgd/xx/n;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method

.method protected varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ksjhgd/xx/n;->b([Ljava/lang/String;)V

    return-void
.end method
