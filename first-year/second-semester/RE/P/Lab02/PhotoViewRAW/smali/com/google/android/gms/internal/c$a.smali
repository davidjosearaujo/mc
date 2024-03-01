.class public Lcom/google/android/gms/internal/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/c$b;
.implements Lcom/google/android/gms/common/api/c$c;
.implements Lcom/google/android/gms/internal/as;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/a$a;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/c$b;",
        "Lcom/google/android/gms/common/api/c$c;",
        "Lcom/google/android/gms/internal/as;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/c;

.field private final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/internal/an;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/common/api/a$f;

.field private final d:Lcom/google/android/gms/common/api/a$c;

.field private final e:Lcom/google/android/gms/internal/ao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ao",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/internal/a;

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/ap;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/f$a",
            "<*>;",
            "Lcom/google/android/gms/internal/i;",
            ">;"
        }
    .end annotation
.end field

.field private final i:I

.field private final j:Lcom/google/android/gms/internal/j;

.field private k:Z

.field private l:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/c;Lcom/google/android/gms/common/api/h;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/h",
            "<TO;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/c$a;->b:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/c$a;->g:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/c$a;->h:Ljava/util/Map;

    iput-object v1, p0, Lcom/google/android/gms/internal/c$a;->l:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/google/android/gms/common/api/h;->a(Landroid/os/Looper;Lcom/google/android/gms/internal/c$a;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$a;->c:Lcom/google/android/gms/common/api/a$f;

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->c:Lcom/google/android/gms/common/api/a$f;

    instance-of v0, v0, Lcom/google/android/gms/common/internal/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->c:Lcom/google/android/gms/common/api/a$f;

    check-cast v0, Lcom/google/android/gms/common/internal/h;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/h;->h()Lcom/google/android/gms/common/api/a$h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$a;->d:Lcom/google/android/gms/common/api/a$c;

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/h;->a()Lcom/google/android/gms/internal/ao;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$a;->e:Lcom/google/android/gms/internal/ao;

    new-instance v0, Lcom/google/android/gms/internal/a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/c$a;->f:Lcom/google/android/gms/internal/a;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/h;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/c$a;->i:I

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->c:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/c;->b(Lcom/google/android/gms/internal/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/c;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/api/h;->a(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/gms/internal/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$a;->j:Lcom/google/android/gms/internal/j;

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->c:Lcom/google/android/gms/common/api/a$f;

    iput-object v0, p0, Lcom/google/android/gms/internal/c$a;->d:Lcom/google/android/gms/common/api/a$c;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/google/android/gms/internal/c$a;->j:Lcom/google/android/gms/internal/j;

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/c$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/c$a;->l()V

    return-void
.end method

.method private b(Lcom/google/android/gms/internal/an;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->f:Lcom/google/android/gms/internal/a;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$a;->j()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/an;->a(Lcom/google/android/gms/internal/a;Z)V

    :try_start_0
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/an;->a(Lcom/google/android/gms/internal/c$a;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/c$a;->a(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->c:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->a()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/c$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/c$a;->m()V

    return-void
.end method

.method private c(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ap;

    iget-object v2, p0, Lcom/google/android/gms/internal/c$a;->e:Lcom/google/android/gms/internal/ao;

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/internal/ap;->a(Lcom/google/android/gms/internal/ao;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private l()V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$a;->c()V

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/c$a;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/c$a;->o()V

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    :try_start_0
    new-instance v1, Lcom/google/android/gms/b/b;

    invoke-direct {v1}, Lcom/google/android/gms/b/b;-><init>()V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/c$a;->a(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->c:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->a()V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/c$a;->n()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/c$a;->p()V

    return-void

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private m()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$a;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/c$a;->k:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->f:Lcom/google/android/gms/internal/a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v1}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/c;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/c$a;->e:Lcom/google/android/gms/internal/ao;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v2}, Lcom/google/android/gms/internal/c;->c(Lcom/google/android/gms/internal/c;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v1}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/c;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/gms/internal/c$a;->e:Lcom/google/android/gms/internal/ao;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v2}, Lcom/google/android/gms/internal/c;->d(Lcom/google/android/gms/internal/c;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/c;I)I

    return-void
.end method

.method private n()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->c:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/an;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/c$a;->b(Lcom/google/android/gms/internal/an;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private o()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/c$a;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/c;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/c$a;->e:Lcom/google/android/gms/internal/ao;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/c;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/c$a;->e:Lcom/google/android/gms/internal/ao;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/c$a;->k:Z

    :cond_0
    return-void
.end method

.method private p()V
    .locals 4

    const/16 v3, 0xa

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$a;->e:Lcom/google/android/gms/internal/ao;

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v1}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/c;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/c$a;->e:Lcom/google/android/gms/internal/ao;

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v2}, Lcom/google/android/gms/internal/c;->h(Lcom/google/android/gms/internal/c;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->a(Landroid/os/Handler;)V

    sget-object v0, Lcom/google/android/gms/internal/c;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/c$a;->a(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->f:Lcom/google/android/gms/internal/a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/f$a;

    new-instance v2, Lcom/google/android/gms/internal/an$b;

    new-instance v3, Lcom/google/android/gms/b/b;

    invoke-direct {v3}, Lcom/google/android/gms/b/b;-><init>()V

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/an$b;-><init>(Lcom/google/android/gms/internal/f$a;Lcom/google/android/gms/b/b;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/c$a;->a(Lcom/google/android/gms/internal/an;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->c:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->a()V

    return-void
.end method

.method public a(I)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v1}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/c;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/c$a;->m()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/c$a$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/c$a$2;-><init>(Lcom/google/android/gms/internal/c$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v1}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/c;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/c$a;->l()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/c$a$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/c$a$1;-><init>(Lcom/google/android/gms/internal/c$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 5
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->j:Lcom/google/android/gms/internal/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->j:Lcom/google/android/gms/internal/j;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/j;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$a;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/c;I)I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/c$a;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/c;->b()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/c$a;->a(Lcom/google/android/gms/common/api/Status;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/google/android/gms/internal/c$a;->l:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/c;->c()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/internal/c;->e(Lcom/google/android/gms/internal/c;)Lcom/google/android/gms/internal/b;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/internal/c;->f(Lcom/google/android/gms/internal/c;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/c$a;->e:Lcom/google/android/gms/internal/ao;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/internal/c;->e(Lcom/google/android/gms/internal/c;)Lcom/google/android/gms/internal/b;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/c$a;->i:I

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/b;->b(Lcom/google/android/gms/common/ConnectionResult;I)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    iget v1, p0, Lcom/google/android/gms/internal/c$a;->i:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/c$a;->k:Z

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/c$a;->k:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v1}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/c;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/c$a;->e:Lcom/google/android/gms/internal/ao;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v2}, Lcom/google/android/gms/internal/c;->c(Lcom/google/android/gms/internal/c;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/android/gms/internal/c$a;->e:Lcom/google/android/gms/internal/ao;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ao;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x26

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "API: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not available on this device."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/c$a;->a(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/an;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/an;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/an;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->c:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/c$a;->b(Lcom/google/android/gms/internal/an;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/c$a;->p()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->l:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->l:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->l:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/c$a;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$a;->h()V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/internal/ap;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/f$a",
            "<*>;",
            "Lcom/google/android/gms/internal/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->h:Ljava/util/Map;

    return-object v0
.end method

.method public b(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->c:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->a()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$a;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public c()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->a(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$a;->l:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method public d()Lcom/google/android/gms/common/ConnectionResult;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->l:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method public e()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->a(Landroid/os/Handler;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/c$a;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$a;->h()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->a(Landroid/os/Handler;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/c$a;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/c$a;->o()V

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/internal/c;->g(Lcom/google/android/gms/internal/c;)Lcom/google/android/gms/common/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v1}, Lcom/google/android/gms/internal/c;->b(Lcom/google/android/gms/internal/c;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Connection timed out while waiting for Google Play services update to complete."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/c$a;->a(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->c:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->a()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "API failed to connect while resuming due to an unknown error."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public g()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->c:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->f:Lcom/google/android/gms/internal/a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/c$a;->p()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->c:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->a()V

    goto :goto_0
.end method

.method public h()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->c:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->c:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->c:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/internal/c;->i(Lcom/google/android/gms/internal/c;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    iget-object v1, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v1}, Lcom/google/android/gms/internal/c;->g(Lcom/google/android/gms/internal/c;)Lcom/google/android/gms/common/b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v2}, Lcom/google/android/gms/internal/c;->b(Lcom/google/android/gms/internal/c;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/c;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/internal/c;->i(Lcom/google/android/gms/internal/c;)I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v1}, Lcom/google/android/gms/internal/c;->i(Lcom/google/android/gms/internal/c;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/c$a;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/c$b;

    iget-object v1, p0, Lcom/google/android/gms/internal/c$a;->a:Lcom/google/android/gms/internal/c;

    iget-object v2, p0, Lcom/google/android/gms/internal/c$a;->c:Lcom/google/android/gms/common/api/a$f;

    iget-object v3, p0, Lcom/google/android/gms/internal/c$a;->e:Lcom/google/android/gms/internal/ao;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/c$b;-><init>(Lcom/google/android/gms/internal/c;Lcom/google/android/gms/common/api/a$f;Lcom/google/android/gms/internal/ao;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/c$a;->c:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$f;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/c$a;->j:Lcom/google/android/gms/internal/j;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/j;->a(Lcom/google/android/gms/internal/j$a;)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/c$a;->c:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v1, v0}, Lcom/google/android/gms/common/api/a$f;->a(Lcom/google/android/gms/common/internal/l$f;)V

    goto :goto_0
.end method

.method i()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->c:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->b()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->c:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->d()Z

    move-result v0

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/c$a;->i:I

    return v0
.end method
