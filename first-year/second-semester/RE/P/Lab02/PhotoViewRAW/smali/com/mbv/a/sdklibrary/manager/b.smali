.class public Lcom/mbv/a/sdklibrary/manager/b;
.super Ljava/lang/Object;
.source "ScheduleExecutorManage.java"


# static fields
.field public static volatile a:Lcom/mbv/a/sdklibrary/manager/b;


# instance fields
.field private b:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mbv/a/sdklibrary/manager/b;
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lcom/mbv/a/sdklibrary/manager/b;->a:Lcom/mbv/a/sdklibrary/manager/b;

    if-nez v0, :cond_1

    .line 16
    const-class v1, Lcom/mbv/a/sdklibrary/manager/b;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/mbv/a/sdklibrary/manager/b;->a:Lcom/mbv/a/sdklibrary/manager/b;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/mbv/a/sdklibrary/manager/b;

    invoke-direct {v0}, Lcom/mbv/a/sdklibrary/manager/b;-><init>()V

    sput-object v0, Lcom/mbv/a/sdklibrary/manager/b;->a:Lcom/mbv/a/sdklibrary/manager/b;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :cond_1
    sget-object v0, Lcom/mbv/a/sdklibrary/manager/b;->a:Lcom/mbv/a/sdklibrary/manager/b;

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 7

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/manager/b;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 28
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mbv/a/sdklibrary/manager/b;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 29
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/manager/b;->b:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x2710

    const-wide/32 v4, 0x2bf20

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 32
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/manager/b;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/manager/b;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbv/a/sdklibrary/manager/b;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 39
    :cond_0
    return-void
.end method
