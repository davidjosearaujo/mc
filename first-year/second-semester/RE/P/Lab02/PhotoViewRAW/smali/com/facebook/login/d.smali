.class public Lcom/facebook/login/d;
.super Ljava/lang/Object;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/d$c;,
        Lcom/facebook/login/d$b;,
        Lcom/facebook/login/d$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile b:Lcom/facebook/login/d;


# instance fields
.field private c:Lcom/facebook/login/LoginBehavior;

.field private d:Lcom/facebook/login/DefaultAudience;

.field private final e:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/facebook/login/d;->a()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/login/d;->a:Ljava/util/Set;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v0, Lcom/facebook/login/LoginBehavior;->NATIVE_WITH_FALLBACK:Lcom/facebook/login/LoginBehavior;

    iput-object v0, p0, Lcom/facebook/login/d;->c:Lcom/facebook/login/LoginBehavior;

    .line 75
    sget-object v0, Lcom/facebook/login/DefaultAudience;->FRIENDS:Lcom/facebook/login/DefaultAudience;

    iput-object v0, p0, Lcom/facebook/login/d;->d:Lcom/facebook/login/DefaultAudience;

    .line 79
    invoke-static {}, Lcom/facebook/internal/ac;->a()V

    .line 80
    invoke-static {}, Lcom/facebook/d;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.facebook.loginManager"

    const/4 v2, 0x0

    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/d;->e:Landroid/content/SharedPreferences;

    .line 82
    return-void
.end method

.method private static a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 459
    new-instance v0, Lcom/facebook/login/LoginManager$2;

    invoke-direct {v0}, Lcom/facebook/login/LoginManager$2;-><init>()V

    .line 464
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V
    .locals 1

    .prologue
    .line 517
    invoke-static {p1}, Lcom/facebook/login/d$c;->a(Landroid/content/Context;)Lcom/facebook/login/c;

    move-result-object v0

    .line 518
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 519
    invoke-virtual {v0, p2}, Lcom/facebook/login/c;->a(Lcom/facebook/login/LoginClient$Request;)V

    .line 521
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/login/LoginClient$Result$Code;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            "Z",
            "Lcom/facebook/login/LoginClient$Request;",
            ")V"
        }
    .end annotation

    .prologue
    .line 530
    invoke-static {p1}, Lcom/facebook/login/d$c;->a(Landroid/content/Context;)Lcom/facebook/login/c;

    move-result-object v0

    .line 531
    if-nez v0, :cond_0

    .line 555
    :goto_0
    return-void

    .line 534
    :cond_0
    if-nez p6, :cond_1

    .line 536
    const-string v1, "fb_mobile_login_complete"

    const-string v2, "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest."

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 541
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 542
    const-string v3, "try_login_activity"

    if-eqz p5, :cond_2

    const-string v1, "1"

    :goto_1
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    invoke-virtual {p6}, Lcom/facebook/login/LoginClient$Request;->e()Ljava/lang/String;

    move-result-object v1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 548
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/login/c;->a(Ljava/lang/String;Ljava/util/Map;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;)V

    goto :goto_0

    .line 542
    :cond_2
    const-string v1, "0"

    goto :goto_1
.end method

.method private a(Lcom/facebook/internal/n;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/n;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 356
    invoke-direct {p0, p2}, Lcom/facebook/login/d;->b(Ljava/util/Collection;)V

    .line 358
    invoke-virtual {p0, p2}, Lcom/facebook/login/d;->a(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 359
    new-instance v1, Lcom/facebook/login/d$b;

    invoke-direct {v1, p1}, Lcom/facebook/login/d$b;-><init>(Lcom/facebook/internal/n;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/login/d;->a(Lcom/facebook/login/e;Lcom/facebook/login/LoginClient$Request;)V

    .line 360
    return-void
.end method

.method private a(Lcom/facebook/login/e;Lcom/facebook/login/LoginClient$Request;)V
    .locals 7

    .prologue
    .line 485
    invoke-interface {p1}, Lcom/facebook/login/e;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/d;->a(Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V

    .line 488
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Login:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 489
    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    new-instance v1, Lcom/facebook/login/d$1;

    invoke-direct {v1, p0}, Lcom/facebook/login/d$1;-><init>(Lcom/facebook/login/d;)V

    .line 488
    invoke-static {v0, v1}, Lcom/facebook/internal/CallbackManagerImpl;->a(ILcom/facebook/internal/CallbackManagerImpl$a;)V

    .line 498
    invoke-direct {p0, p1, p2}, Lcom/facebook/login/d;->b(Lcom/facebook/login/e;Lcom/facebook/login/LoginClient$Request;)Z

    move-result v0

    .line 500
    if-nez v0, :cond_0

    .line 501
    new-instance v4, Lcom/facebook/FacebookException;

    const-string v0, "Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest."

    invoke-direct {v4, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 504
    const/4 v5, 0x0

    .line 506
    invoke-interface {p1}, Lcom/facebook/login/e;->a()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/facebook/login/LoginClient$Result$Code;->ERROR:Lcom/facebook/login/LoginClient$Result$Code;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v6, p2

    .line 505
    invoke-direct/range {v0 .. v6}, Lcom/facebook/login/d;->a(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V

    .line 512
    throw v4

    .line 514
    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 744
    iget-object v0, p0, Lcom/facebook/login/d;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 745
    const-string v1, "express_login_allowed"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 746
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 747
    return-void
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 579
    invoke-static {}, Lcom/facebook/d;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 580
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 581
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 452
    if-eqz p0, :cond_1

    const-string v0, "publish"

    .line 453
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "manage"

    .line 454
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/login/d;->a:Ljava/util/Set;

    .line 455
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 452
    :goto_0
    return v0

    .line 455
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/facebook/internal/n;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/n;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 404
    invoke-direct {p0, p2}, Lcom/facebook/login/d;->c(Ljava/util/Collection;)V

    .line 406
    invoke-virtual {p0, p2}, Lcom/facebook/login/d;->a(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 407
    new-instance v1, Lcom/facebook/login/d$b;

    invoke-direct {v1, p1}, Lcom/facebook/login/d$b;-><init>(Lcom/facebook/internal/n;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/login/d;->a(Lcom/facebook/login/e;Lcom/facebook/login/LoginClient$Request;)V

    .line 408
    return-void
.end method

.method private b(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 423
    if-nez p1, :cond_1

    .line 435
    :cond_0
    return-void

    .line 426
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 427
    invoke-static {v0}, Lcom/facebook/login/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 428
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Cannot pass a publish or manage permission (%s) to a request for read authorization"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 429
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private b(Lcom/facebook/login/e;Lcom/facebook/login/LoginClient$Request;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 561
    invoke-virtual {p0, p2}, Lcom/facebook/login/d;->a(Lcom/facebook/login/LoginClient$Request;)Landroid/content/Intent;

    move-result-object v1

    .line 563
    invoke-direct {p0, v1}, Lcom/facebook/login/d;->a(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 575
    :goto_0
    return v0

    .line 570
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/login/LoginClient;->d()I

    move-result v2

    .line 568
    invoke-interface {p1, v1, v2}, Lcom/facebook/login/e;->a(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    const/4 v0, 0x1

    goto :goto_0

    .line 571
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static c()Lcom/facebook/login/d;
    .locals 2

    .prologue
    .line 89
    sget-object v0, Lcom/facebook/login/d;->b:Lcom/facebook/login/d;

    if-nez v0, :cond_1

    .line 90
    const-class v1, Lcom/facebook/login/d;

    monitor-enter v1

    .line 91
    :try_start_0
    sget-object v0, Lcom/facebook/login/d;->b:Lcom/facebook/login/d;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/facebook/login/d;

    invoke-direct {v0}, Lcom/facebook/login/d;-><init>()V

    sput-object v0, Lcom/facebook/login/d;->b:Lcom/facebook/login/d;

    .line 94
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_1
    sget-object v0, Lcom/facebook/login/d;->b:Lcom/facebook/login/d;

    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 438
    if-nez p1, :cond_1

    .line 449
    :cond_0
    return-void

    .line 441
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 442
    invoke-static {v0}, Lcom/facebook/login/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 443
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Cannot pass a read permission (%s) to a request for publish authorization"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 444
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected a(Lcom/facebook/login/LoginClient$Request;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 585
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 586
    invoke-static {}, Lcom/facebook/d;->f()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/FacebookActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 587
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->b()Lcom/facebook/login/LoginBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/login/LoginBehavior;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 591
    const-string v2, "request"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 592
    const-string v2, "com.facebook.LoginFragment:Request"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 594
    return-object v0
.end method

.method protected a(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/login/LoginClient$Request;"
        }
    .end annotation

    .prologue
    .line 468
    new-instance v0, Lcom/facebook/login/LoginClient$Request;

    iget-object v1, p0, Lcom/facebook/login/d;->c:Lcom/facebook/login/LoginBehavior;

    if-eqz p1, :cond_0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 470
    :goto_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/login/d;->d:Lcom/facebook/login/DefaultAudience;

    .line 473
    invoke-static {}, Lcom/facebook/d;->j()Ljava/lang/String;

    move-result-object v4

    .line 474
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/login/LoginClient$Request;-><init>(Lcom/facebook/login/LoginBehavior;Ljava/util/Set;Lcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/facebook/login/LoginClient$Request;->a(Z)V

    .line 477
    return-object v0

    .line 468
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    .line 476
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public a(Lcom/facebook/login/DefaultAudience;)Lcom/facebook/login/d;
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/facebook/login/d;->d:Lcom/facebook/login/DefaultAudience;

    .line 282
    return-object p0
.end method

.method public a(Lcom/facebook/login/LoginBehavior;)Lcom/facebook/login/d;
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/facebook/login/d;->c:Lcom/facebook/login/LoginBehavior;

    .line 264
    return-object p0
.end method

.method public a(Landroid/app/Activity;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 368
    invoke-direct {p0, p2}, Lcom/facebook/login/d;->b(Ljava/util/Collection;)V

    .line 370
    invoke-virtual {p0, p2}, Lcom/facebook/login/d;->a(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 371
    new-instance v1, Lcom/facebook/login/d$a;

    invoke-direct {v1, p1}, Lcom/facebook/login/d$a;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/login/d;->a(Lcom/facebook/login/e;Lcom/facebook/login/LoginClient$Request;)V

    .line 372
    return-void
.end method

.method public a(Landroid/app/Fragment;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 345
    new-instance v0, Lcom/facebook/internal/n;

    invoke-direct {v0, p1}, Lcom/facebook/internal/n;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/d;->a(Lcom/facebook/internal/n;Ljava/util/Collection;)V

    .line 346
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 334
    new-instance v0, Lcom/facebook/internal/n;

    invoke-direct {v0, p1}, Lcom/facebook/internal/n;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/d;->a(Lcom/facebook/internal/n;Ljava/util/Collection;)V

    .line 335
    return-void
.end method

.method public b(Landroid/app/Activity;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 416
    invoke-direct {p0, p2}, Lcom/facebook/login/d;->c(Ljava/util/Collection;)V

    .line 418
    invoke-virtual {p0, p2}, Lcom/facebook/login/d;->a(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 419
    new-instance v1, Lcom/facebook/login/d$a;

    invoke-direct {v1, p1}, Lcom/facebook/login/d$a;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/login/d;->a(Lcom/facebook/login/e;Lcom/facebook/login/LoginClient$Request;)V

    .line 420
    return-void
.end method

.method public b(Landroid/app/Fragment;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 393
    new-instance v0, Lcom/facebook/internal/n;

    invoke-direct {v0, p1}, Lcom/facebook/internal/n;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/d;->b(Lcom/facebook/internal/n;Ljava/util/Collection;)V

    .line 394
    return-void
.end method

.method public b(Landroid/support/v4/app/Fragment;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 382
    new-instance v0, Lcom/facebook/internal/n;

    invoke-direct {v0, p1}, Lcom/facebook/internal/n;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/d;->b(Lcom/facebook/internal/n;Ljava/util/Collection;)V

    .line 383
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 289
    invoke-static {v0}, Lcom/facebook/AccessToken;->a(Lcom/facebook/AccessToken;)V

    .line 290
    invoke-static {v0}, Lcom/facebook/Profile;->a(Lcom/facebook/Profile;)V

    .line 291
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/login/d;->a(Z)V

    .line 292
    return-void
.end method
