.class public abstract Lcom/google/android/gms/internal/ar;
.super Lcom/google/android/gms/common/api/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ar$b;,
        Lcom/google/android/gms/internal/ar$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/f;",
        ">",
        "Lcom/google/android/gms/common/api/d",
        "<TR;>;"
    }
.end annotation


# static fields
.field static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final b:Lcom/google/android/gms/internal/ar$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ar$a",
            "<TR;>;"
        }
    .end annotation
.end field

.field protected final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/common/api/c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/util/concurrent/CountDownLatch;

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/android/gms/common/api/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/g",
            "<-TR;>;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/gms/internal/k$a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/google/android/gms/common/api/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private j:Lcom/google/android/gms/internal/ar$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ar$b;"
        }
    .end annotation
.end field

.field private volatile k:Z

.field private l:Z

.field private m:Z

.field private n:Lcom/google/android/gms/common/internal/v;

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ar$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ar$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ar;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/api/d;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ar;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ar;->e:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ar;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ar;->h:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ar;->o:Z

    new-instance v0, Lcom/google/android/gms/internal/ar$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ar$a;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ar;->b:Lcom/google/android/gms/internal/ar$a;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ar;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ar;)Lcom/google/android/gms/common/api/f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ar;->i:Lcom/google/android/gms/common/api/f;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ar;->h:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/k$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/k$a;->a(Lcom/google/android/gms/internal/ar;)V

    :cond_0
    return-void
.end method

.method public static b(Lcom/google/android/gms/common/api/f;)V
    .locals 6

    instance-of v1, p0, Lcom/google/android/gms/common/api/e;

    if-eqz v1, :cond_0

    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/common/api/e;

    move-object v1, v0

    invoke-interface {v1}, Lcom/google/android/gms/common/api/e;->a()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "BasePendingResult"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x12

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unable to release "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private c()Lcom/google/android/gms/common/api/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/ar;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ar;->k:Z

    if-nez v2, :cond_0

    :goto_0
    const-string v2, "Result has already been consumed."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/c;->a(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ar;->a()Z

    move-result v0

    const-string v2, "Result is not ready."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/c;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ar;->i:Lcom/google/android/gms/common/api/f;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/ar;->i:Lcom/google/android/gms/common/api/f;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/ar;->g:Lcom/google/android/gms/common/api/g;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ar;->k:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ar;->b()V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c(Lcom/google/android/gms/common/api/f;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ar;->i:Lcom/google/android/gms/common/api/f;

    iput-object v2, p0, Lcom/google/android/gms/internal/ar;->n:Lcom/google/android/gms/common/internal/v;

    iget-object v0, p0, Lcom/google/android/gms/internal/ar;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ar;->i:Lcom/google/android/gms/common/api/f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/f;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ar;->l:Z

    if-eqz v0, :cond_1

    iput-object v2, p0, Lcom/google/android/gms/internal/ar;->g:Lcom/google/android/gms/common/api/g;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ar;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/d$a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/d$a;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ar;->g:Lcom/google/android/gms/common/api/g;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ar;->i:Lcom/google/android/gms/common/api/f;

    instance-of v0, v0, Lcom/google/android/gms/common/api/e;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ar$b;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/internal/ar$b;-><init>(Lcom/google/android/gms/internal/ar;Lcom/google/android/gms/internal/ar$1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ar;->j:Lcom/google/android/gms/internal/ar$b;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ar;->b:Lcom/google/android/gms/internal/ar$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ar$a;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ar;->b:Lcom/google/android/gms/internal/ar$a;

    iget-object v2, p0, Lcom/google/android/gms/internal/ar;->g:Lcom/google/android/gms/common/api/g;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ar;->c()Lcom/google/android/gms/common/api/f;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ar$a;->a(Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/f;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ar;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ar;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ar;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ar;->b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/common/api/f;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ar;->m:Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/common/api/f;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/ar;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ar;->m:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ar;->l:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ar;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ar;->a()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    :goto_0
    const-string v4, "Results have already been set"

    invoke-static {v2, v4}, Lcom/google/android/gms/common/internal/c;->a(ZLjava/lang/Object;)V

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ar;->k:Z

    if-nez v2, :cond_3

    :goto_1
    const-string v1, "Result has already been consumed"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/c;->a(ZLjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ar;->c(Lcom/google/android/gms/common/api/f;)V

    monitor-exit v3

    :goto_2
    return-void

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ar;->b(Lcom/google/android/gms/common/api/f;)V

    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final a()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ar;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/f;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            ")TR;"
        }
    .end annotation
.end method
