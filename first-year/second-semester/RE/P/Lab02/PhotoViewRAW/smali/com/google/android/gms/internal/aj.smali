.class public Lcom/google/android/gms/internal/aj;
.super Lcom/google/android/gms/common/internal/q;

# interfaces
.implements Lcom/google/android/gms/internal/ab;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/q",
        "<",
        "Lcom/google/android/gms/internal/ah;",
        ">;",
        "Lcom/google/android/gms/internal/ab;"
    }
.end annotation


# instance fields
.field private final e:Z

.field private final f:Lcom/google/android/gms/common/internal/m;

.field private final g:Landroid/os/Bundle;

.field private h:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/m;Landroid/os/Bundle;Lcom/google/android/gms/common/api/c$b;Lcom/google/android/gms/common/api/c$c;)V
    .locals 7

    const/16 v3, 0x2c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/q;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/m;Lcom/google/android/gms/common/api/c$b;Lcom/google/android/gms/common/api/c$c;)V

    iput-boolean p3, p0, Lcom/google/android/gms/internal/aj;->e:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/aj;->f:Lcom/google/android/gms/common/internal/m;

    iput-object p5, p0, Lcom/google/android/gms/internal/aj;->g:Landroid/os/Bundle;

    invoke-virtual {p4}, Lcom/google/android/gms/common/internal/m;->g()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aj;->h:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/m;Lcom/google/android/gms/internal/ac;Lcom/google/android/gms/common/api/c$b;Lcom/google/android/gms/common/api/c$c;)V
    .locals 8

    invoke-static {p4}, Lcom/google/android/gms/internal/aj;->a(Lcom/google/android/gms/common/internal/m;)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/aj;-><init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/m;Landroid/os/Bundle;Lcom/google/android/gms/common/api/c$b;Lcom/google/android/gms/common/api/c$c;)V

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/internal/m;)Landroid/os/Bundle;
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/m;->f()Lcom/google/android/gms/internal/ac;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/m;->g()Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "com.google.android.gms.signin.internal.clientRequestedAccount"

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/m;->a()Landroid/accounts/Account;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v1, :cond_0

    const-string v3, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    if-eqz v0, :cond_2

    const-string v1, "com.google.android.gms.signin.internal.offlineAccessRequested"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ac;->a()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.signin.internal.idTokenRequested"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ac;->b()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.signin.internal.serverClientId"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ac;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.gms.signin.internal.usePromptModeForAuthCode"

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.signin.internal.forceCodeForRefreshToken"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ac;->d()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.signin.internal.hostedDomain"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ac;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.gms.signin.internal.waitForAccessTokenRefresh"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ac;->f()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ac;->g()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "com.google.android.gms.signin.internal.authApiSignInModuleVersion"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ac;->g()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ac;->h()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "com.google.android.gms.signin.internal.realClientLibraryVersion"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ac;->h()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    return-object v2
.end method

.method private t()Lcom/google/android/gms/common/internal/zzad;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/aj;->f:Lcom/google/android/gms/common/internal/m;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/m;->b()Landroid/accounts/Account;

    move-result-object v1

    const/4 v0, 0x0

    const-string v2, "<<default account>>"

    iget-object v3, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aj;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/a/b;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/a/b;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    :cond_0
    new-instance v2, Lcom/google/android/gms/common/internal/zzad;

    iget-object v3, p0, Lcom/google/android/gms/internal/aj;->h:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v1, v3, v0}, Lcom/google/android/gms/common/internal/zzad;-><init>(Landroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-object v2
.end method


# virtual methods
.method protected synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/aj;->b(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ah;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/internal/ag;)V
    .locals 3

    const-string v0, "Expecting a valid ISignInCallbacks"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/aj;->t()Lcom/google/android/gms/common/internal/zzad;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aj;->q()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ah;

    new-instance v2, Lcom/google/android/gms/internal/zzaxz;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/zzaxz;-><init>(Lcom/google/android/gms/common/internal/zzad;)V

    invoke-interface {v0, v2, p1}, Lcom/google/android/gms/internal/ah;->a(Lcom/google/android/gms/internal/zzaxz;Lcom/google/android/gms/internal/ag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SignInClientImpl"

    const-string v2, "Remote service probably died when signIn is called"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/zzayb;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzayb;-><init>(I)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ag;->a(Lcom/google/android/gms/internal/zzayb;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v1, "SignInClientImpl"

    const-string v2, "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected b(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ah;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/ah$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ah;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/aj;->e:Z

    return v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.service.START"

    return-object v0
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    return-object v0
.end method

.method public h()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/l$i;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/l$i;-><init>(Lcom/google/android/gms/common/internal/l;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/aj;->a(Lcom/google/android/gms/common/internal/l$f;)V

    return-void
.end method

.method protected n()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/aj;->f:Lcom/google/android/gms/common/internal/m;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/m;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aj;->k()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aj;->g:Landroid/os/Bundle;

    const-string v1, "com.google.android.gms.signin.internal.realClientPackageName"

    iget-object v2, p0, Lcom/google/android/gms/internal/aj;->f:Lcom/google/android/gms/common/internal/m;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/m;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aj;->g:Landroid/os/Bundle;

    return-object v0
.end method
