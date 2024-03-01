.class public Lcom/mbv/a/sdklibrary/b/f;
.super Ljava/lang/Object;
.source "HeaderUtil.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const-string v0, "52005"

    sput-object v0, Lcom/mbv/a/sdklibrary/b/f;->b:Ljava/lang/String;

    .line 41
    const-string v0, "52003"

    sput-object v0, Lcom/mbv/a/sdklibrary/b/f;->c:Ljava/lang/String;

    .line 42
    const-string v0, "46002"

    sput-object v0, Lcom/mbv/a/sdklibrary/b/f;->d:Ljava/lang/String;

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/mbv/a/sdklibrary/b/f;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/mbv/a/sdklibrary/b/f;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/mbv/a/sdklibrary/b/f;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mbv/a/sdklibrary/b/f;->e:[Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/mbv/a/sdklibrary/b/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/mbv/a/sdklibrary/b/f;->a:Ljava/lang/String;

    .line 57
    :goto_0
    return-object v0

    .line 51
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/a/a/a;->b(Landroid/content/Context;)Lcom/google/android/gms/a/a/a$a;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/a/a/a$a;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mbv/a/sdklibrary/b/f;->a:Ljava/lang/String;

    .line 53
    sget-object v0, Lcom/mbv/a/sdklibrary/b/f;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 57
    :goto_1
    const-string v0, ""

    goto :goto_0

    .line 54
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static a(Landroid/net/wifi/WifiManager;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/net/wlan0/address"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 152
    invoke-static {v1}, Lcom/mbv/a/sdklibrary/b/f;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 155
    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 159
    if-eqz p0, :cond_1

    .line 160
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 162
    const/16 v1, 0x800

    new-array v1, v1, [C

    .line 164
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, p0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 166
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/Reader;->read([C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 167
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 172
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    :goto_1
    return-object v0

    :cond_1
    const-string v0, "No Contents"

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 350
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "REFERRER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 351
    const-string v1, "value"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "value"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 354
    :cond_0
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    :try_start_0
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 82
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 83
    if-nez v0, :cond_0

    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_0
    :goto_0
    return-object v0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    const-string v0, ""

    goto :goto_0
.end method

.method public static d()Ljava/lang/String;
    .locals 4

    .prologue
    .line 94
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 95
    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 96
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 98
    if-eqz v1, :cond_1

    const-string v2, "02:00:00:00:00:00"

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    :try_start_0
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->u()Ljava/lang/String;

    move-result-object v1

    .line 102
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 117
    :goto_0
    return-object v0

    .line 105
    :cond_0
    invoke-static {v0}, Lcom/mbv/a/sdklibrary/b/f;->a(Landroid/net/wifi/WifiManager;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 112
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 117
    const-string v0, "02:00:00:00:00:00"

    goto :goto_0
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/c;->a()Landroid/content/Context;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    .line 180
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 190
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "OC_SDK_NAME"

    invoke-static {v0, v1}, Lcom/mbv/a/sdklibrary/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->f()Ljava/lang/String;

    move-result-object v0

    .line 194
    :cond_0
    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 3

    .prologue
    .line 199
    :try_start_0
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 201
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 200
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 205
    :goto_0
    return-object v0

    .line 203
    :catch_0
    move-exception v0

    .line 205
    const-string v0, ""

    goto :goto_0
.end method

.method public static i()Ljava/lang/String;
    .locals 3

    .prologue
    .line 210
    :try_start_0
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 212
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 211
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 213
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    return-object v0

    .line 214
    :catch_0
    move-exception v0

    .line 216
    const-string v0, ""

    goto :goto_0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .locals 3

    .prologue
    .line 224
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 225
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 226
    const-string v0, ""

    .line 227
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 228
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    .line 229
    const-string v2, "WIFI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    const-string v0, "WIFI"

    .line 237
    :cond_0
    :goto_0
    return-object v0

    .line 231
    :cond_1
    const-string v2, "MOBILE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->l()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 235
    :cond_2
    const-string v0, "INVALID"

    goto :goto_0
.end method

.method public static l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 241
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 242
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 262
    const-string v0, "3G"

    :goto_0
    return-object v0

    .line 248
    :pswitch_0
    const-string v0, "2G"

    goto :goto_0

    .line 258
    :pswitch_1
    const-string v0, "3G"

    goto :goto_0

    .line 260
    :pswitch_2
    const-string v0, "4G"

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static m()Z
    .locals 2

    .prologue
    .line 267
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    .line 268
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 270
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    :cond_0
    const/4 v0, 0x0

    .line 275
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static n()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 279
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->r()Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 280
    :goto_0
    sget-object v3, Lcom/mbv/a/sdklibrary/b/f;->e:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 281
    sget-object v3, Lcom/mbv/a/sdklibrary/b/f;->e:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 282
    const/4 v1, 0x1

    .line 285
    :cond_0
    return v1

    .line 280
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static o()Ljava/lang/String;
    .locals 2

    .prologue
    .line 290
    :try_start_0
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    .line 291
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 292
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 293
    if-nez v0, :cond_0

    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :cond_0
    :goto_0
    return-object v0

    .line 294
    :catch_0
    move-exception v0

    .line 296
    const-string v0, ""

    goto :goto_0
.end method

.method public static p()Ljava/lang/String;
    .locals 2

    .prologue
    .line 300
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    .line 301
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 302
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbv/a/sdklibrary/b/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static r()Ljava/lang/String;
    .locals 4

    .prologue
    .line 339
    const-string v1, ""

    .line 340
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    .line 341
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 342
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 343
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 344
    if-nez v0, :cond_0

    const-string v0, ""

    .line 346
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static s()Ljava/lang/String;
    .locals 3

    .prologue
    .line 357
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "REFERRER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 358
    const-string v1, "value"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static t()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 362
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    move v0, v2

    .line 365
    :goto_0
    if-eqz v0, :cond_2

    .line 366
    const-string v0, "http.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 367
    const-string v0, "http.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    if-eqz v0, :cond_1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 373
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    move v0, v2

    :goto_3
    return v0

    :cond_0
    move v0, v3

    .line 362
    goto :goto_0

    .line 368
    :cond_1
    const-string v0, "-1"

    goto :goto_1

    .line 370
    :cond_2
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 371
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v3

    .line 373
    goto :goto_3
.end method

.method private static u()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 122
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 123
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 124
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wlan0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    .line 126
    if-nez v2, :cond_1

    .line 127
    const-string v0, ""

    .line 144
    :goto_0
    return-object v0

    .line 130
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    array-length v4, v2

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_2

    aget-byte v1, v2, v0

    .line 132
    const-string v5, "%02X:"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 136
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 138
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 144
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
