.class public Lcom/ksjhgd/xx/b/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/LinkedList;

.field private b:Lcom/ksjhgd/xx/b/g;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ksjhgd/xx/b/f;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/b/f;->a:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic b(Lcom/ksjhgd/xx/b/f;)I
    .locals 1

    iget v0, p0, Lcom/ksjhgd/xx/b/f;->c:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ksjhgd/xx/b/f;->b:Lcom/ksjhgd/xx/b/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/b/f;->b:Lcom/ksjhgd/xx/b/g;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ksjhgd/xx/b/g;->a:Z

    :cond_0
    iget-object v0, p0, Lcom/ksjhgd/xx/b/f;->a:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ksjhgd/xx/b/f;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_1
    iput-object v2, p0, Lcom/ksjhgd/xx/b/f;->b:Lcom/ksjhgd/xx/b/g;

    iput-object v2, p0, Lcom/ksjhgd/xx/b/f;->a:Ljava/util/LinkedList;

    return-void
.end method

.method public a(Lcom/ksjhgd/xx/b/e;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ksjhgd/xx/b/f;->a(Lcom/ksjhgd/xx/b/e;I)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/ksjhgd/xx/b/e;I)Z
    .locals 2

    iget-object v0, p0, Lcom/ksjhgd/xx/b/f;->b:Lcom/ksjhgd/xx/b/g;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ksjhgd/xx/b/f;->b:Lcom/ksjhgd/xx/b/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ksjhgd/xx/b/g;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/b/g;-><init>(Lcom/ksjhgd/xx/b/f;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/b/f;->b:Lcom/ksjhgd/xx/b/g;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ksjhgd/xx/b/f;->a:Ljava/util/LinkedList;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/ksjhgd/xx/b/f;->b:Lcom/ksjhgd/xx/b/g;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iput p2, p0, Lcom/ksjhgd/xx/b/f;->c:I

    iget-object v0, p0, Lcom/ksjhgd/xx/b/f;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
