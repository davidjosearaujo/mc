.class public abstract Lcom/google/android/gms/common/internal/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/l$g;,
        Lcom/google/android/gms/common/internal/l$a;,
        Lcom/google/android/gms/common/internal/l$j;,
        Lcom/google/android/gms/common/internal/l$k;,
        Lcom/google/android/gms/common/internal/l$i;,
        Lcom/google/android/gms/common/internal/l$e;,
        Lcom/google/android/gms/common/internal/l$d;,
        Lcom/google/android/gms/common/internal/l$f;,
        Lcom/google/android/gms/common/internal/l$c;,
        Lcom/google/android/gms/common/internal/l$b;,
        Lcom/google/android/gms/common/internal/l$h;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final d:[Ljava/lang/String;


# instance fields
.field final a:Landroid/os/Handler;

.field protected b:Lcom/google/android/gms/common/internal/l$f;

.field protected c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private e:I

.field private f:J

.field private g:J

.field private h:I

.field private i:J

.field private final j:Landroid/content/Context;

.field private final k:Landroid/os/Looper;

.field private final l:Lcom/google/android/gms/common/internal/r;

.field private final m:Lcom/google/android/gms/common/f;

.field private final n:Ljava/lang/Object;

.field private final o:Ljava/lang/Object;

.field private p:Lcom/google/android/gms/common/internal/y;

.field private q:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/internal/l$e",
            "<*>;>;"
        }
    .end annotation
.end field

.field private s:Lcom/google/android/gms/common/internal/l$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/internal/l$h;"
        }
    .end annotation
.end field

.field private t:I

.field private final u:Lcom/google/android/gms/common/internal/l$b;

.field private final v:Lcom/google/android/gms/common/internal/l$c;

.field private final w:I

.field private final x:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "service_esmobile"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_googleme"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/common/internal/l;->d:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/r;Lcom/google/android/gms/common/f;ILcom/google/android/gms/common/internal/l$b;Lcom/google/android/gms/common/internal/l$c;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/l;->n:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/l;->o:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/l;->r:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/internal/l;->t:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/l;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "Context must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/l;->j:Landroid/content/Context;

    const-string v0, "Looper must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/l;->k:Landroid/os/Looper;

    const-string v0, "Supervisor must not be null"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/r;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/l;->l:Lcom/google/android/gms/common/internal/r;

    const-string v0, "API availability must not be null"

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/f;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/l;->m:Lcom/google/android/gms/common/f;

    new-instance v0, Lcom/google/android/gms/common/internal/l$d;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/common/internal/l$d;-><init>(Lcom/google/android/gms/common/internal/l;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/l;->a:Landroid/os/Handler;

    iput p5, p0, Lcom/google/android/gms/common/internal/l;->w:I

    iput-object p6, p0, Lcom/google/android/gms/common/internal/l;->u:Lcom/google/android/gms/common/internal/l$b;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/l;->v:Lcom/google/android/gms/common/internal/l$c;

    iput-object p8, p0, Lcom/google/android/gms/common/internal/l;->x:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/l;Lcom/google/android/gms/common/internal/y;)Lcom/google/android/gms/common/internal/y;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/l;->p:Lcom/google/android/gms/common/internal/y;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/l;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->o:Ljava/lang/Object;

    return-object v0
.end method

.method private a(ILandroid/os/IInterface;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    move v3, v0

    :goto_0
    if-eqz p2, :cond_1

    move v2, v0

    :goto_1
    if-ne v3, v2, :cond_2

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Z)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/l;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/common/internal/l;->t:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/l;->q:Landroid/os/IInterface;

    packed-switch p1, :pswitch_data_0

    :goto_3
    monitor-exit v1

    return-void

    :cond_0
    move v3, v1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/l;->h()V

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_1
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/internal/l;->a(Landroid/os/IInterface;)V

    goto :goto_3

    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/l;->t()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/l;ILandroid/os/IInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/internal/l;->a(ILandroid/os/IInterface;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/l;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/l;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method private a(IILandroid/os/IInterface;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)Z"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/common/internal/l;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/internal/l;->t:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/internal/l;->a(ILandroid/os/IInterface;)V

    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/l;IILandroid/os/IInterface;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/l;->a(IILandroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/common/internal/l;)Lcom/google/android/gms/common/internal/l$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->u:Lcom/google/android/gms/common/internal/l$b;

    return-object v0
.end method

.method private b(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/l;->a:Landroid/os/Handler;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/common/internal/l;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->d()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/common/internal/l;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->r:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/common/internal/l;)Lcom/google/android/gms/common/internal/l$c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->v:Lcom/google/android/gms/common/internal/l$c;

    return-object v0
.end method

.method private h()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->s:Lcom/google/android/gms/common/internal/l$h;

    if-eqz v0, :cond_0

    const-string v0, "GmsClient"

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/l;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/l;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x46

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Calling connect() while still connected, missing disconnect() for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->l:Lcom/google/android/gms/common/internal/r;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/l;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/l;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/internal/l;->s:Lcom/google/android/gms/common/internal/l$h;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/l;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/internal/r;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/internal/l$h;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/l;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/internal/l$h;-><init>(Lcom/google/android/gms/common/internal/l;I)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/l;->s:Lcom/google/android/gms/common/internal/l$h;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->l:Lcom/google/android/gms/common/internal/r;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/l;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/l;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/internal/l;->s:Lcom/google/android/gms/common/internal/l$h;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/l;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/internal/r;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "GmsClient"

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/l;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/l;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x22

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "unable to connect to service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x10

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/internal/l;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/common/internal/l;->a(ILandroid/os/Bundle;I)V

    :cond_1
    return-void
.end method

.method private t()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->s:Lcom/google/android/gms/common/internal/l$h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->l:Lcom/google/android/gms/common/internal/r;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/l;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/l;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/internal/l;->s:Lcom/google/android/gms/common/internal/l$h;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/l;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/internal/r;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/l;->s:Lcom/google/android/gms/common/internal/l$h;

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method public a()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v2, p0, Lcom/google/android/gms/common/internal/l;->r:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/l$e;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/l$e;->d()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/l;->o:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/google/android/gms/common/internal/l;->p:Lcom/google/android/gms/common/internal/y;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v4}, Lcom/google/android/gms/common/internal/l;->a(ILandroid/os/IInterface;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method protected a(I)V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    iput p1, p0, Lcom/google/android/gms/common/internal/l;->e:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/l;->f:J

    return-void
.end method

.method protected a(ILandroid/os/Bundle;I)V
    .locals 5
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/l;->a:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v3, -0x1

    new-instance v4, Lcom/google/android/gms/common/internal/l$k;

    invoke-direct {v4, p0, p1, p2}, Lcom/google/android/gms/common/internal/l$k;-><init>(Lcom/google/android/gms/common/internal/l;ILandroid/os/Bundle;)V

    invoke-virtual {v1, v2, p3, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 5
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/l;->a:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, -0x1

    new-instance v4, Lcom/google/android/gms/common/internal/l$j;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/l$j;-><init>(Lcom/google/android/gms/common/internal/l;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2, p4, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected a(Landroid/os/IInterface;)V
    .locals 2
    .param p1    # Landroid/os/IInterface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/l;->g:J

    return-void
.end method

.method protected a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/internal/l;->h:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/l;->i:J

    return-void
.end method

.method public a(Lcom/google/android/gms/common/internal/l$f;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/internal/l$f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Connection progress callbacks cannot be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/l$f;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/l;->b:Lcom/google/android/gms/common/internal/l$f;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/internal/l;->a(ILandroid/os/IInterface;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/internal/u;Ljava/util/Set;)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/u;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/l;->n()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/internal/zzj;

    iget v2, p0, Lcom/google/android/gms/common/internal/l;->w:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/internal/zzj;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/common/internal/l;->j:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/internal/zzj;->a(Ljava/lang/String;)Lcom/google/android/gms/common/internal/zzj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/zzj;->a(Landroid/os/Bundle;)Lcom/google/android/gms/common/internal/zzj;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/internal/zzj;->a(Ljava/util/Collection;)Lcom/google/android/gms/common/internal/zzj;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/l;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/l;->m()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzj;->a(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/zzj;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/internal/zzj;->a(Lcom/google/android/gms/common/internal/u;)Lcom/google/android/gms/common/internal/zzj;

    :cond_1
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/l;->o:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/common/internal/l;->p:Lcom/google/android/gms/common/internal/y;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/common/internal/l;->p:Lcom/google/android/gms/common/internal/y;

    new-instance v3, Lcom/google/android/gms/common/internal/l$g;

    iget-object v4, p0, Lcom/google/android/gms/common/internal/l;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-direct {v3, p0, v4}, Lcom/google/android/gms/common/internal/l$g;-><init>(Lcom/google/android/gms/common/internal/l;I)V

    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/common/internal/y;->a(Lcom/google/android/gms/common/internal/x;Lcom/google/android/gms/common/internal/zzj;)V

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/l;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/l;->l()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzj;->a(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/zzj;

    goto :goto_0

    :cond_3
    :try_start_2
    const-string v0, "GmsClient"

    const-string v2, "mServiceBroker is null, client disconnected"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_0
    move-exception v0

    const-string v0, "GmsClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/l;->b(I)V

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "GmsClient"

    const-string v2, "Remote exception occurred"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_2
    move-exception v0

    throw v0

    :catch_3
    move-exception v0

    const-string v1, "GmsClient"

    const-string v2, "IGmsServiceBroker.getService failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const-string v3, "IGmsServiceBroker.getService failed."

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/internal/l;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_2
.end method

.method public b(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/l;->a:Landroid/os/Handler;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/gms/common/internal/l;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public b()Z
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/common/internal/l;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/internal/l;->t:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Z
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/common/internal/l;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/internal/l;->t:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract f()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method protected abstract g()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms"

    return-object v0
.end method

.method protected final j()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->x:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->j:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->x:Ljava/lang/String;

    goto :goto_0
.end method

.method public final k()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->j:Landroid/content/Context;

    return-object v0
.end method

.method public l()Landroid/accounts/Account;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final m()Landroid/accounts/Account;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/l;->l()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/l;->l()Landroid/accounts/Account;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "<<default account>>"

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected n()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method protected final o()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/l;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public p()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final q()Landroid/os/IInterface;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/common/internal/l;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/internal/l;->t:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/l;->o()V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->q:Landroid/os/IInterface;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Client is connected but service is null"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/c;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->q:Landroid/os/IInterface;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected s()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method
