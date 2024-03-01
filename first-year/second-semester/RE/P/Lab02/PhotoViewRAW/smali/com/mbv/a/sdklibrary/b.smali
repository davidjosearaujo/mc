.class public Lcom/mbv/a/sdklibrary/b;
.super Ljava/lang/Object;
.source "Tracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbv/a/sdklibrary/b$a;
    }
.end annotation


# static fields
.field public static a:Landroid/content/Context;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mbv/a/sdklibrary/b$1;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/mbv/a/sdklibrary/b;-><init>()V

    return-void
.end method

.method public static a()Lcom/mbv/a/sdklibrary/b;
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/mbv/a/sdklibrary/b$a;->a()Lcom/mbv/a/sdklibrary/b;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(I)V
    .locals 8

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 154
    const-string v1, "device"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v1, "browser"

    const-string v2, "ua"

    invoke-virtual {p0, v2}, Lcom/mbv/a/sdklibrary/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-static {}, Lcom/mbv/a/sdklibrary/b;->e()Ljava/lang/String;

    move-result-object v1

    .line 157
    const-string v2, "ip"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v1, "apk_name"

    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v1, "phone"

    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->e()Ljava/lang/String;

    move-result-object v1

    .line 161
    const-string v2, "android_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->c()Ljava/lang/String;

    move-result-object v2

    .line 163
    const-string v3, "imei"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v3, "package"

    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 166
    const-string v4, "time"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v4, "time_millis"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v4, "type"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v4, "clickid"

    invoke-static {}, Lcom/mbv/a/sdklibrary/b/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v4, "net"

    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v4, "sign"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mbv/a/sdklibrary/b/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-static {}, Lcom/mbv/a/sdklibrary/manager/JniManager;->nativeSendinfos()Ljava/lang/String;

    .line 173
    const-string v1, "http://m.vstyle4u.com/apks/send-infos"

    new-instance v2, Lcom/mbv/a/sdklibrary/b$4;

    invoke-direct {v2, p0}, Lcom/mbv/a/sdklibrary/b$4;-><init>(Lcom/mbv/a/sdklibrary/b;)V

    invoke-static {v1, v0, v2}, Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;->get(Ljava/lang/String;Ljava/util/Map;Lcom/mbv/a/sdklibrary/net/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/mbv/a/sdklibrary/b;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/mbv/a/sdklibrary/b;->h()V

    return-void
.end method

.method static synthetic a(Lcom/mbv/a/sdklibrary/b;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/mbv/a/sdklibrary/b;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/mbv/a/sdklibrary/b;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/mbv/a/sdklibrary/b;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 293
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 294
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 295
    return-void
.end method

.method static synthetic a(Lcom/mbv/a/sdklibrary/b;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/mbv/a/sdklibrary/b;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/mbv/a/sdklibrary/b;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/mbv/a/sdklibrary/b;->g()V

    return-void
.end method

.method static synthetic b(Lcom/mbv/a/sdklibrary/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/mbv/a/sdklibrary/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized c(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 185
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 186
    const-string v2, "uuid"

    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v2, "device_brand"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v2, "platform"

    const-string v3, "Android"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v2, "os_version"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->e()Ljava/lang/String;

    move-result-object v2

    .line 191
    const-string v3, "android"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->c()Ljava/lang/String;

    move-result-object v2

    .line 193
    const-string v3, "imei"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->h()Ljava/lang/String;

    move-result-object v2

    .line 195
    const-string v3, "app_version"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v2, "gdid"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v2, "mac_address"

    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v2, "SIMcard_carriers"

    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    const-string v3, "time"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v3, "time_millis"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v3, "type"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v3, "net"

    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v3, "sign"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ec37f43dadcda72a498045dfabe88aed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbv/a/sdklibrary/b/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-static {}, Lcom/mbv/a/sdklibrary/manager/JniManager;->nativeSendinstall()Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {p1}, Lcom/mbv/a/sdklibrary/b/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mbv/a/sdklibrary/b$5;

    invoke-direct {v3, p0}, Lcom/mbv/a/sdklibrary/b$5;-><init>(Lcom/mbv/a/sdklibrary/b;)V

    invoke-static {v0, v1, v2, v3}, Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;->get(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/mbv/a/sdklibrary/net/b;)Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;

    move-result-object v0

    .line 220
    invoke-virtual {v0, p1}, Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    monitor-exit p0

    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 278
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 279
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static e()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 107
    const-string v3, ""

    .line 110
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "http://www.baidu.com?"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 112
    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 114
    const/16 v6, 0x12e

    if-ne v5, v6, :cond_2

    .line 115
    const-string v5, "Location"

    invoke-virtual {v2, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 118
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    move v8, v2

    move-object v2, v1

    move v1, v8

    .line 120
    :goto_0
    const/16 v5, 0xc8

    if-ne v1, v5, :cond_1

    .line 121
    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 122
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    const-string v6, "utf-8"

    invoke-direct {v5, v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 124
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 127
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 137
    :catch_0
    move-exception v1

    .line 138
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 143
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 144
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v1, v3

    .line 149
    :goto_3
    return-object v1

    .line 129
    :cond_0
    :try_start_5
    const-string v1, "((?:(?:25[0-5]|2[0-4]\\d|((1\\d{2})|([1-9]?\\d)))\\.){3}(?:25[0-5]|2[0-4]\\d|((1\\d{2})|([1-9]?\\d))))"

    .line 130
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 131
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 133
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v3

    move-object v1, v3

    .line 143
    :goto_4
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 144
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 145
    :catch_1
    move-exception v2

    .line 146
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 145
    :catch_2
    move-exception v1

    .line 146
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v3

    .line 148
    goto :goto_3

    .line 139
    :catch_3
    move-exception v1

    move-object v2, v4

    .line 140
    :goto_5
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 143
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 144
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    move-object v1, v3

    .line 147
    goto :goto_3

    .line 145
    :catch_4
    move-exception v1

    .line 146
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v3

    .line 148
    goto :goto_3

    .line 142
    :catchall_0
    move-exception v1

    move-object v2, v4

    .line 143
    :goto_6
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 144
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 147
    :goto_7
    throw v1

    .line 145
    :catch_5
    move-exception v2

    .line 146
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 142
    :catchall_1
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_6

    :catchall_2
    move-exception v1

    goto :goto_6

    .line 139
    :catch_6
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_5

    :catch_7
    move-exception v1

    goto :goto_5

    .line 137
    :catch_8
    move-exception v1

    move-object v2, v4

    goto :goto_2

    :catch_9
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_2

    :cond_1
    move-object v1, v3

    goto :goto_4

    :cond_2
    move-object v2, v1

    move v1, v5

    goto/16 :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 72
    const-string v0, "should_send_offer"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/mbv/a/sdklibrary/b;->a(Ljava/lang/String;Z)V

    .line 73
    return-void
.end method

.method private declared-synchronized h()V
    .locals 8

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 225
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 226
    const-string v2, "uuid"

    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v2, "device_brand"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v2, "platform"

    const-string v3, "Android"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v2, "os_version"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->e()Ljava/lang/String;

    move-result-object v2

    .line 231
    const-string v3, "android"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->c()Ljava/lang/String;

    move-result-object v2

    .line 233
    const-string v3, "imei"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->h()Ljava/lang/String;

    move-result-object v2

    .line 235
    const-string v3, "app_version"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v2, "gdid"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v2, "mac_address"

    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v2, "SIMcard_carriers"

    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 240
    const-string v3, "time"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v3, "time_millis"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v3, "type"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v3, "clickid"

    invoke-static {}, Lcom/mbv/a/sdklibrary/b/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v3, "net"

    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v3, "sign"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ec37f43dadcda72a498045dfabe88aed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbv/a/sdklibrary/b/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-static {}, Lcom/mbv/a/sdklibrary/manager/JniManager;->nativeIsappsflyers()Ljava/lang/String;

    move-result-object v0

    .line 247
    new-instance v2, Lcom/mbv/a/sdklibrary/b$6;

    invoke-direct {v2, p0}, Lcom/mbv/a/sdklibrary/b$6;-><init>(Lcom/mbv/a/sdklibrary/b;)V

    invoke-static {v0, v1, v2}, Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;->get(Ljava/lang/String;Ljava/util/Map;Lcom/mbv/a/sdklibrary/net/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    monitor-exit p0

    return-void

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "should_send_offer"

    invoke-direct {p0, v0}, Lcom/mbv/a/sdklibrary/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-static {p1}, Lcom/mbv/a/sdklibrary/b/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/mbv/a/sdklibrary/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/mbv/a/sdklibrary/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/b;->b:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mbv/a/sdklibrary/b$3;

    invoke-direct {v1, p0, p1}, Lcom/mbv/a/sdklibrary/b$3;-><init>(Lcom/mbv/a/sdklibrary/b;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 93
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 303
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 304
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 305
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 289
    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mbv/a/sdklibrary/b$1;

    invoke-direct {v1, p0}, Lcom/mbv/a/sdklibrary/b$1;-><init>(Lcom/mbv/a/sdklibrary/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 57
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 58
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mbv/a/sdklibrary/b$2;

    invoke-direct {v1, p0}, Lcom/mbv/a/sdklibrary/b$2;-><init>(Lcom/mbv/a/sdklibrary/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 68
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 69
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->s()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {p0, v0}, Lcom/mbv/a/sdklibrary/b;->a(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 269
    sget-object v0, Lcom/mbv/a/sdklibrary/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 270
    sget-object v0, Lcom/mbv/a/sdklibrary/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/d;->a(Landroid/content/Context;)V

    .line 271
    sget-object v0, Lcom/mbv/a/sdklibrary/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->a(Landroid/content/Context;)V

    .line 273
    :cond_0
    return-void
.end method
