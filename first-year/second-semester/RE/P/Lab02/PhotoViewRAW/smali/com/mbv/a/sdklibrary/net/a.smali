.class public Lcom/mbv/a/sdklibrary/net/a;
.super Ljava/lang/Object;
.source "DefaultThreadPool.java"


# static fields
.field private static c:Lcom/mbv/a/sdklibrary/net/a;


# instance fields
.field private a:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/AbstractExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/mbv/a/sdklibrary/net/a;->c:Lcom/mbv/a/sdklibrary/net/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/mbv/a/sdklibrary/net/a;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 15
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v2, 0xa

    const/16 v3, 0x64

    const-wide/16 v4, 0xf

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/mbv/a/sdklibrary/net/a;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/mbv/a/sdklibrary/net/a;->b:Ljava/util/concurrent/AbstractExecutorService;

    return-void
.end method

.method public static a()Lcom/mbv/a/sdklibrary/net/a;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/mbv/a/sdklibrary/net/a;->c:Lcom/mbv/a/sdklibrary/net/a;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/mbv/a/sdklibrary/net/a;

    invoke-direct {v0}, Lcom/mbv/a/sdklibrary/net/a;-><init>()V

    sput-object v0, Lcom/mbv/a/sdklibrary/net/a;->c:Lcom/mbv/a/sdklibrary/net/a;

    .line 25
    :cond_0
    sget-object v0, Lcom/mbv/a/sdklibrary/net/a;->c:Lcom/mbv/a/sdklibrary/net/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/net/a;->b:Ljava/util/concurrent/AbstractExecutorService;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 30
    return-void
.end method
