.class public Lcom/ksjhgd/xx/b/a;
.super Ljava/lang/Object;


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field private c:Ljava/util/concurrent/ConcurrentHashMap;

.field private d:Ljava/util/concurrent/PriorityBlockingQueue;

.field private e:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ksjhgd/xx/b/a;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/ksjhgd/xx/b/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v2, p0, Lcom/ksjhgd/xx/b/a;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ksjhgd/xx/b/a;->e:I

    iput p1, p0, Lcom/ksjhgd/xx/b/a;->e:I

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/ksjhgd/xx/b/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v1, Lcom/ksjhgd/xx/b/b;

    invoke-direct {v1, p0, v2}, Lcom/ksjhgd/xx/b/b;-><init>(Lcom/ksjhgd/xx/b/a;Lcom/ksjhgd/xx/b/b;)V

    invoke-direct {v0, p1, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/b/a;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/b/a;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ksjhgd/xx/b/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/b/a;->b:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ksjhgd/xx/b/a;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/frame/cache/pics/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ksjhgd/xx/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {p1, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private b()J
    .locals 4

    new-instance v0, Landroid/os/StatFs;

    sget-object v1, Lcom/ksjhgd/xx/b/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private b(Lcom/ksjhgd/xx/b/d;Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v0, p0, Lcom/ksjhgd/xx/b/a;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v0

    iget v1, p0, Lcom/ksjhgd/xx/b/a;->e:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/b/a;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksjhgd/xx/b/d;

    iget-object v1, p0, Lcom/ksjhgd/xx/b/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/ksjhgd/xx/b/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ksjhgd/xx/b/a;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ksjhgd/xx/b/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/ksjhgd/xx/b/a;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksjhgd/xx/b/d;

    invoke-virtual {v0, p1}, Lcom/ksjhgd/xx/b/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ksjhgd/xx/b/a;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/ksjhgd/xx/b/d;->a(J)V

    iget-object v0, p0, Lcom/ksjhgd/xx/b/a;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/ksjhgd/xx/b/d;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/ksjhgd/xx/b/d;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ksjhgd/xx/b/a;->a:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_pic"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v1}, Lcom/ksjhgd/xx/e/p;->a(Ljava/io/InputStream;)[B

    move-result-object v2

    const/4 v3, 0x0

    array-length v4, v2

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/ksjhgd/xx/b/a;->b(Lcom/ksjhgd/xx/b/d;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_2
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_3
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v1, :cond_0

    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_0

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_4
    if-eqz v0, :cond_3

    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :cond_3
    :goto_5
    throw v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_8
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    :goto_6
    move-object v5, v0

    move-object v0, v2

    move-object v2, v5

    goto :goto_3

    :catch_9
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    :goto_7
    move-object v5, v0

    move-object v0, v2

    move-object v2, v5

    goto :goto_2

    :catch_a
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    :goto_8
    move-object v5, v0

    move-object v0, v2

    move-object v2, v5

    goto :goto_1

    :catch_b
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_8

    :catch_c
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_7

    :catch_d
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_6

    :catchall_1
    move-exception v1

    goto :goto_4
.end method

.method public a(Lcom/ksjhgd/xx/b/d;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/ksjhgd/xx/b/a;->b()J

    move-result-wide v2

    invoke-direct {p0, p2}, Lcom/ksjhgd/xx/b/a;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    const-string v0, "Not enough memory"

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/ksjhgd/xx/b/a;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-virtual {p1}, Lcom/ksjhgd/xx/b/d;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_pic"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x5a

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    if-eqz v2, :cond_3

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_3
    const-string v0, "Save successfully"

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    const-string v0, "Save failed"

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "Save failed"

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v1, v2

    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_5

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_5
    const-string v0, "Save failed"

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "Save failed"

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_6

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_6
    throw v0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "Save failed"

    goto/16 :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "Save failed"

    goto/16 :goto_0

    :cond_7
    move-object v2, v1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method public a()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/ksjhgd/xx/b/d;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/ksjhgd/xx/b/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    const/16 v2, 0x3a98

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Lcom/ksjhgd/xx/e/p;->a(Ljava/io/InputStream;)[B

    move-result-object v2

    const/4 v3, 0x0

    array-length v4, v2

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/ksjhgd/xx/b/a;->b(Lcom/ksjhgd/xx/b/d;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p1, v0}, Lcom/ksjhgd/xx/b/a;->a(Lcom/ksjhgd/xx/b/d;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "storeImageToSdCard request="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ksjhgd/xx/e/h;->b(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_1
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "com.zdt.exitpop.cache.CacheManager.loadImageWithUrl(ImageInfo)"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ksjhgd/xx/e/h;->b(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ksjhgd/xx/e/h;->b(Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_2
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "com.zdt.exitpop.cache.CacheManager.loadImageWithUrl(ImageInfo)"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ksjhgd/xx/e/h;->b(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ksjhgd/xx/e/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_5
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_3
    :try_start_8
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "com.zdt.exitpop.cache.CacheManager.loadImageWithUrl(ImageInfo)"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ksjhgd/xx/e/h;->b(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v1, :cond_0

    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ksjhgd/xx/e/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_4
    if-eqz v0, :cond_3

    :try_start_a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :cond_3
    :goto_5
    throw v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->b(Ljava/lang/String;)V

    goto :goto_5

    :catch_8
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    :goto_6
    move-object v5, v0

    move-object v0, v2

    move-object v2, v5

    goto :goto_3

    :catch_9
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    :goto_7
    move-object v5, v0

    move-object v0, v2

    move-object v2, v5

    goto :goto_2

    :catch_a
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    :goto_8
    move-object v5, v0

    move-object v0, v2

    move-object v2, v5

    goto/16 :goto_1

    :catch_b
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_8

    :catch_c
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_7

    :catch_d
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_6

    :catchall_1
    move-exception v1

    goto :goto_4
.end method

.method public c(Lcom/ksjhgd/xx/b/d;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/b/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/ksjhgd/xx/b/a;->b(Lcom/ksjhgd/xx/b/d;Landroid/graphics/Bitmap;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ksjhgd/xx/b/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ksjhgd/xx/b/a;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
