.class public Lcom/ksjhgd/xx/e/q;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/e/q;->a:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/ksjhgd/xx/e/q;->b:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/ksjhgd/xx/e/q;->c:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x33
        0x1d
        0x2d
        0x38
        0x1a
        0x29
        0x29
        0x24
        0x1e
        0x32
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static a([Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v5, -0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/ProcessBuilder;

    invoke-direct {v0, p0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v5, :cond_3

    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v5, :cond_6

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_2
    :goto_3
    return-object v0

    :cond_3
    :try_start_5
    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v2

    move-object v2, v3

    move-object v3, v1

    move-object v1, v6

    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v2, :cond_4

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_5
    :goto_5
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    const-string v0, ""

    goto :goto_3

    :cond_6
    :try_start_8
    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v6, v2

    move-object v2, v3

    move-object v3, v1

    move-object v1, v6

    :goto_6
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v2, :cond_7

    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :cond_8
    :goto_7
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    const-string v0, ""

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_8
    if-eqz v0, :cond_9

    :try_start_b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_9
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    :cond_a
    :goto_9
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_b
    throw v1

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v3, v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v6, v2

    move-object v2, v3

    move-object v3, v1

    move-object v1, v6

    :goto_a
    move-object v6, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_8

    :catch_6
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_6

    :catch_7
    move-exception v0

    move-object v3, v1

    move-object v6, v1

    move-object v1, v2

    move-object v2, v6

    goto :goto_6

    :catch_8
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_4

    :catch_9
    move-exception v0

    move-object v3, v1

    move-object v6, v1

    move-object v1, v2

    move-object v2, v6

    goto :goto_4

    :cond_c
    const-string v0, ""

    goto/16 :goto_3

    :catchall_3
    move-exception v0

    move-object v6, v2

    move-object v2, v3

    move-object v3, v1

    move-object v1, v6

    goto :goto_a

    :catchall_4
    move-exception v0

    goto :goto_a
.end method

.method public static a(Landroid/content/Context;Z)Ljava/util/ArrayList;
    .locals 5

    const/4 v4, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    if-nez p1, :cond_2

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eq v3, v4, :cond_0

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eq v3, v4, :cond_0

    :cond_2
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p0, p2}, Lcom/ksjhgd/xx/e/m;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    const-class v0, Lcom/ksjhgd/xx/e/q;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/assets/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0, p2}, Lcom/ksjhgd/xx/e/q;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {p0}, Lcom/ksjhgd/xx/e/q;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_0

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v4, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v3, :cond_2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10

    const v4, 0x3f333333    # 0.7f

    :try_start_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-static {p0, p1}, Lcom/ksjhgd/xx/e/q;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v2

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    cmpg-double v2, v2, v8

    if-gtz v2, :cond_1

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v4

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v4

    invoke-virtual {v5, v2, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v5, v2, v1}, Landroid/graphics/Matrix;->postScale(FF)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    sget-object v0, Lcom/ksjhgd/xx/e/q;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/e/q;->b:Ljava/lang/String;

    sget-object v0, Lcom/ksjhgd/xx/e/q;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ksjhgd/xx/e/q;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ksjhgd/xx/e/q;->b:Ljava/lang/String;

    const-string v1, "0+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "000000000000000"

    sput-object v0, Lcom/ksjhgd/xx/e/q;->b:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/ksjhgd/xx/e/q;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {p0, p1}, Lcom/ksjhgd/xx/e/q;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    sget-object v0, Lcom/ksjhgd/xx/e/q;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {p0}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/q;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/e/q;->c:Ljava/lang/String;

    :goto_0
    sget-object v0, Lcom/ksjhgd/xx/e/q;->c:Ljava/lang/String;

    const-string v1, "[0-9]+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "00000"

    sput-object v0, Lcom/ksjhgd/xx/e/q;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "00000"

    :goto_1
    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_2

    const-string v0, "00000"

    sput-object v0, Lcom/ksjhgd/xx/e/q;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, "00000"

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    sget-object v0, Lcom/ksjhgd/xx/e/q;->c:Ljava/lang/String;

    goto :goto_1

    :cond_2
    :try_start_2
    sget-object v1, Lcom/ksjhgd/xx/e/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/e/q;->c:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/ksjhgd/xx/e/q;->a(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0
.end method
