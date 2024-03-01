.class public Lcom/ksjhgd/xx/b/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/ksjhgd/xx/b/a;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ksjhgd/xx/b/c;->b:Landroid/content/Context;

    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/ksjhgd/xx/b/c;->a:Lcom/ksjhgd/xx/b/a;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ksjhgd/xx/b/c;->a:Lcom/ksjhgd/xx/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ksjhgd/xx/b/a;

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/ksjhgd/xx/b/c;->b:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/ksjhgd/xx/b/a;-><init>(ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/b/c;->a:Lcom/ksjhgd/xx/b/a;

    :cond_0
    monitor-exit p0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/ksjhgd/xx/b/d;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0}, Lcom/ksjhgd/xx/b/c;->b()V

    iget-object v0, p0, Lcom/ksjhgd/xx/b/c;->a:Lcom/ksjhgd/xx/b/a;

    invoke-virtual {v0, p1}, Lcom/ksjhgd/xx/b/a;->c(Lcom/ksjhgd/xx/b/d;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/b/c;->a:Lcom/ksjhgd/xx/b/a;

    iget-object v0, v0, Lcom/ksjhgd/xx/b/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/ksjhgd/xx/b/d;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0}, Lcom/ksjhgd/xx/b/c;->b()V

    iget-object v0, p0, Lcom/ksjhgd/xx/b/c;->a:Lcom/ksjhgd/xx/b/a;

    invoke-virtual {v0, p1}, Lcom/ksjhgd/xx/b/a;->a(Lcom/ksjhgd/xx/b/d;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/b/c;->a:Lcom/ksjhgd/xx/b/a;

    invoke-virtual {v0, p1}, Lcom/ksjhgd/xx/b/a;->b(Lcom/ksjhgd/xx/b/d;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0
.end method
