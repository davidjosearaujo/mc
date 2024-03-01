.class Lcom/ksjhgd/xx/b/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Z

.field final synthetic b:Lcom/ksjhgd/xx/b/f;

.field private c:Lcom/ksjhgd/xx/b/e;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/b/f;)V
    .locals 1

    iput-object p1, p0, Lcom/ksjhgd/xx/b/g;->b:Lcom/ksjhgd/xx/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ksjhgd/xx/b/g;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ksjhgd/xx/b/g;->c:Lcom/ksjhgd/xx/b/e;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/ksjhgd/xx/b/g;->a:Z

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/ksjhgd/xx/b/g;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_1
    const-wide/16 v0, 0x32

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/ksjhgd/xx/b/g;->b:Lcom/ksjhgd/xx/b/f;

    invoke-static {v0}, Lcom/ksjhgd/xx/b/f;->a(Lcom/ksjhgd/xx/b/f;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ksjhgd/xx/b/g;->b:Lcom/ksjhgd/xx/b/f;

    invoke-static {v0}, Lcom/ksjhgd/xx/b/f;->a(Lcom/ksjhgd/xx/b/f;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    iget-object v0, p0, Lcom/ksjhgd/xx/b/g;->b:Lcom/ksjhgd/xx/b/f;

    invoke-static {v0}, Lcom/ksjhgd/xx/b/f;->a(Lcom/ksjhgd/xx/b/f;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/b/g;->b:Lcom/ksjhgd/xx/b/f;

    invoke-static {v0}, Lcom/ksjhgd/xx/b/f;->b(Lcom/ksjhgd/xx/b/f;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ksjhgd/xx/b/g;->b:Lcom/ksjhgd/xx/b/f;

    invoke-static {v0}, Lcom/ksjhgd/xx/b/f;->a(Lcom/ksjhgd/xx/b/f;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksjhgd/xx/b/e;

    iput-object v0, p0, Lcom/ksjhgd/xx/b/g;->c:Lcom/ksjhgd/xx/b/e;

    :goto_3
    iget-object v0, p0, Lcom/ksjhgd/xx/b/g;->c:Lcom/ksjhgd/xx/b/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/b/g;->c:Lcom/ksjhgd/xx/b/e;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/b/e;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error --> ImageTaskExecutor ThreadPool$ThreadUnit.run(): e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->b(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/ksjhgd/xx/b/g;->b:Lcom/ksjhgd/xx/b/f;

    invoke-static {v0}, Lcom/ksjhgd/xx/b/f;->a(Lcom/ksjhgd/xx/b/f;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksjhgd/xx/b/e;

    iput-object v0, p0, Lcom/ksjhgd/xx/b/g;->c:Lcom/ksjhgd/xx/b/e;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3
.end method
