.class public Lcom/facebook/appevents/AppEventsLogger;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/AppEventsLogger$a;,
        Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static e:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

.field private static f:Ljava/lang/Object;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Z

.field private static j:Z

.field private static k:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/facebook/appevents/AccessTokenAppIdPair;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 167
    const-class v0, Lcom/facebook/appevents/AppEventsLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->a:Ljava/lang/String;

    .line 189
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;->AUTO:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->e:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    .line 190
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->f:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V
    .locals 1

    .prologue
    .line 940
    .line 941
    invoke-static {p1}, Lcom/facebook/internal/ab;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 940
    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/appevents/AppEventsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 944
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V
    .locals 2

    .prologue
    .line 949
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 950
    invoke-static {}, Lcom/facebook/internal/ac;->a()V

    .line 951
    iput-object p1, p0, Lcom/facebook/appevents/AppEventsLogger;->b:Ljava/lang/String;

    .line 953
    if-nez p3, :cond_0

    .line 954
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object p3

    .line 958
    :cond_0
    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    .line 959
    invoke-virtual {p3}, Lcom/facebook/AccessToken;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 961
    :cond_1
    new-instance v0, Lcom/facebook/appevents/AccessTokenAppIdPair;

    invoke-direct {v0, p3}, Lcom/facebook/appevents/AccessTokenAppIdPair;-><init>(Lcom/facebook/AccessToken;)V

    iput-object v0, p0, Lcom/facebook/appevents/AppEventsLogger;->c:Lcom/facebook/appevents/AccessTokenAppIdPair;

    .line 971
    :goto_0
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->k()V

    .line 972
    return-void

    .line 964
    :cond_2
    if-nez p2, :cond_3

    .line 966
    invoke-static {}, Lcom/facebook/d;->f()Landroid/content/Context;

    move-result-object v0

    .line 965
    invoke-static {v0}, Lcom/facebook/internal/ab;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 968
    :cond_3
    new-instance v0, Lcom/facebook/appevents/AccessTokenAppIdPair;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/facebook/appevents/AccessTokenAppIdPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/appevents/AppEventsLogger;->c:Lcom/facebook/appevents/AccessTokenAppIdPair;

    goto :goto_0
.end method

.method public static a()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;
    .locals 2

    .prologue
    .line 519
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 520
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->e:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    monitor-exit v1

    return-object v0

    .line 521
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(JLjava/lang/String;)V
    .locals 7

    .prologue
    .line 380
    invoke-static {}, Lcom/facebook/d;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/appevents/AppEventsLogger;->c:Lcom/facebook/appevents/AccessTokenAppIdPair;

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    .line 379
    invoke-static/range {v1 .. v6}, Lcom/facebook/appevents/AppEventsLogger$a;->a(Landroid/content/Context;Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEventsLogger;JLjava/lang/String;)V

    .line 385
    return-void
.end method

.method private static a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1071
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 1072
    if-eqz v0, :cond_1

    .line 1073
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1074
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1076
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->g()V

    .line 1114
    :goto_0
    return-void

    .line 1079
    :cond_0
    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->h:Ljava/lang/String;

    .line 1085
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1086
    if-eqz v0, :cond_2

    const-string v1, "_fbSourceApplicationHasBeenSet"

    const/4 v2, 0x0

    .line 1087
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1088
    :cond_2
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->g()V

    goto :goto_0

    .line 1092
    :cond_3
    invoke-static {v0}, La/a;->a(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v1

    .line 1094
    if-nez v1, :cond_4

    .line 1095
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->g()V

    goto :goto_0

    .line 1099
    :cond_4
    sput-boolean v3, Lcom/facebook/appevents/AppEventsLogger;->i:Z

    .line 1101
    const-string v2, "referer_app_link"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1103
    if-nez v1, :cond_5

    .line 1104
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->h:Ljava/lang/String;

    goto :goto_0

    .line 1108
    :cond_5
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1109
    sput-object v1, Lcom/facebook/appevents/AppEventsLogger;->h:Ljava/lang/String;

    .line 1112
    const-string v1, "_fbSourceApplicationHasBeenSet"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static a(Landroid/app/Application;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 224
    invoke-static {}, Lcom/facebook/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "The Facebook sdk must be initialized before calling activateApp"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    invoke-static {}, Lcom/facebook/appevents/a;->a()V

    .line 231
    if-nez p1, :cond_1

    .line 232
    invoke-static {}, Lcom/facebook/d;->j()Ljava/lang/String;

    move-result-object p1

    .line 238
    :cond_1
    invoke-static {p0, p1}, Lcom/facebook/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 242
    invoke-static {p0, p1}, Lcom/facebook/appevents/internal/a;->a(Landroid/app/Application;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 260
    invoke-static {}, Lcom/facebook/appevents/internal/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->a:Ljava/lang/String;

    const-string v1, "activateApp events are being logged automatically. There\'s no need to call activateApp explicitly, this is safe to remove."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-static {p0}, Lcom/facebook/d;->a(Landroid/content/Context;)V

    .line 267
    invoke-static {p0}, Lcom/facebook/internal/ab;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/appevents/AppEventsLogger;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lcom/facebook/appevents/AppEvent;Lcom/facebook/appevents/AccessTokenAppIdPair;)V
    .locals 3

    .prologue
    .line 1035
    invoke-static {p2, p1}, Lcom/facebook/appevents/c;->a(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V

    .line 1038
    invoke-virtual {p1}, Lcom/facebook/appevents/AppEvent;->getIsImplicit()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/facebook/appevents/AppEventsLogger;->j:Z

    if-nez v0, :cond_0

    .line 1039
    invoke-virtual {p1}, Lcom/facebook/appevents/AppEvent;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fb_mobile_activate_app"

    if-ne v0, v1, :cond_1

    .line 1040
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/appevents/AppEventsLogger;->j:Z

    .line 1049
    :cond_0
    :goto_0
    return-void

    .line 1042
    :cond_1
    sget-object v0, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    const-string v1, "AppEvents"

    const-string v2, "Warning: Please call AppEventsLogger.activateApp(...)from the long-lived activity\'s onResume() methodbefore logging other app events."

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/u;->a(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 281
    invoke-static {}, Lcom/facebook/appevents/internal/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->a:Ljava/lang/String;

    const-string v1, "activateApp events are being logged automatically. There\'s no need to call activateApp explicitly, this is safe to remove."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :goto_0
    return-void

    .line 287
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 288
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both context and applicationId must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_2
    invoke-static {}, Lcom/facebook/appevents/a;->a()V

    .line 293
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    move-object v0, p0

    .line 294
    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->a(Landroid/app/Activity;)V

    .line 306
    :goto_1
    invoke-static {p0, p1}, Lcom/facebook/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 308
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/appevents/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 310
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->f()Ljava/lang/String;

    move-result-object v1

    .line 311
    sget-object v4, Lcom/facebook/appevents/AppEventsLogger;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v5, Lcom/facebook/appevents/AppEventsLogger$1;

    invoke-direct {v5, v0, v2, v3, v1}, Lcom/facebook/appevents/AppEventsLogger$1;-><init>(Lcom/facebook/appevents/AppEventsLogger;JLjava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 297
    :cond_3
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->g()V

    .line 298
    const-class v0, Lcom/facebook/appevents/AppEventsLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "To set source application the context of activateApp must be an instance of Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic a(Lcom/facebook/appevents/AppEventsLogger;JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/appevents/AppEventsLogger;->a(JLjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V
    .locals 9
    .param p5    # Ljava/util/UUID;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1011
    :try_start_0
    new-instance v0, Lcom/facebook/appevents/AppEvent;

    iget-object v1, p0, Lcom/facebook/appevents/AppEventsLogger;->b:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/appevents/AppEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    .line 1018
    invoke-static {}, Lcom/facebook/d;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/appevents/AppEventsLogger;->c:Lcom/facebook/appevents/AccessTokenAppIdPair;

    invoke-static {v1, v0, v2}, Lcom/facebook/appevents/AppEventsLogger;->a(Landroid/content/Context;Lcom/facebook/appevents/AppEvent;Lcom/facebook/appevents/AccessTokenAppIdPair;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1030
    :goto_0
    return-void

    .line 1019
    :catch_0
    move-exception v0

    .line 1021
    sget-object v1, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    const-string v2, "AppEvents"

    const-string v3, "JSON encoding for app event failed: \'%s\'"

    new-array v4, v8, [Ljava/lang/Object;

    .line 1022
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    .line 1021
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/internal/u;->a(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1024
    :catch_1
    move-exception v0

    .line 1026
    sget-object v1, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    const-string v2, "AppEvents"

    const-string v3, "Invalid app event: %s"

    new-array v4, v8, [Ljava/lang/Object;

    .line 1027
    invoke-virtual {v0}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    .line 1026
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/internal/u;->a(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 452
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger;

    invoke-direct {v0, p0, v1, v1}, Lcom/facebook/appevents/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 403
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/appevents/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 404
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/facebook/appevents/AppEventsLogger$2;

    invoke-direct {v2, v0}, Lcom/facebook/appevents/AppEventsLogger$2;-><init>(Lcom/facebook/appevents/AppEventsLogger;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 440
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/appevents/AppEventsLogger;
    .locals 2

    .prologue
    .line 497
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/appevents/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1154
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->g:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1155
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 1156
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1158
    const-string v0, "com.facebook.sdk.appEventPreferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1161
    const-string v2, "anonymousAppDeviceGUID"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->g:Ljava/lang/String;

    .line 1162
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XZ"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->g:Ljava/lang/String;

    .line 1166
    const-string v0, "com.facebook.sdk.appEventPreferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1167
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "anonymousAppDeviceGUID"

    sget-object v3, Lcom/facebook/appevents/AppEventsLogger;->g:Ljava/lang/String;

    .line 1168
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1169
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1172
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1175
    :cond_1
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->g:Ljava/lang/String;

    return-object v0

    .line 1172
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static c()V
    .locals 0

    .prologue
    .line 781
    invoke-static {}, Lcom/facebook/appevents/c;->a()V

    .line 782
    return-void
.end method

.method static d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 817
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 818
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->k:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 819
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 838
    invoke-static {}, Lcom/facebook/appevents/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1123
    const-string v0, "Unclassified"

    .line 1124
    sget-boolean v1, Lcom/facebook/appevents/AppEventsLogger;->i:Z

    if-eqz v1, :cond_0

    .line 1125
    const-string v0, "Applink"

    .line 1127
    :cond_0
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->h:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1130
    :cond_1
    return-object v0
.end method

.method static g()V
    .locals 1

    .prologue
    .line 1134
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->h:Ljava/lang/String;

    .line 1135
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/appevents/AppEventsLogger;->i:Z

    .line 1136
    return-void
.end method

.method static h()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 1139
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 1140
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->k()V

    .line 1143
    :cond_0
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method private static k()V
    .locals 7

    .prologue
    .line 975
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 976
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 977
    monitor-exit v1

    .line 1002
    :goto_0
    return-void

    .line 979
    :cond_0
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 980
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 982
    new-instance v1, Lcom/facebook/appevents/AppEventsLogger$3;

    invoke-direct {v1}, Lcom/facebook/appevents/AppEventsLogger$3;-><init>()V

    .line 996
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x15180

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 980
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 617
    .line 619
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v4, 0x0

    .line 622
    invoke-static {}, Lcom/facebook/appevents/internal/a;->b()Ljava/util/UUID;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    .line 617
    invoke-direct/range {v0 .. v5}, Lcom/facebook/appevents/AppEventsLogger;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    .line 623
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 587
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 592
    invoke-static {}, Lcom/facebook/appevents/internal/a;->b()Ljava/util/UUID;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 587
    invoke-direct/range {v0 .. v5}, Lcom/facebook/appevents/AppEventsLogger;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    .line 593
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 915
    const/4 v4, 0x1

    .line 920
    invoke-static {}, Lcom/facebook/appevents/internal/a;->b()Ljava/util/UUID;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 915
    invoke-direct/range {v0 .. v5}, Lcom/facebook/appevents/AppEventsLogger;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    .line 921
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 769
    sget-object v0, Lcom/facebook/appevents/FlushReason;->EXPLICIT:Lcom/facebook/appevents/FlushReason;

    invoke-static {v0}, Lcom/facebook/appevents/c;->a(Lcom/facebook/appevents/FlushReason;)V

    .line 770
    return-void
.end method
