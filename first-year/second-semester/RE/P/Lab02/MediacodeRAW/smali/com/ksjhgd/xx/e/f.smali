.class Lcom/ksjhgd/xx/e/f;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/e/e;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/e/e;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/e/f;->a:Lcom/ksjhgd/xx/e/e;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Lcom/ksjhgd/xx/e/e;

    iget-object v1, p0, Lcom/ksjhgd/xx/e/f;->a:Lcom/ksjhgd/xx/e/e;

    invoke-static {v1}, Lcom/ksjhgd/xx/e/e;->a(Lcom/ksjhgd/xx/e/e;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ksjhgd/xx/e/f;->a:Lcom/ksjhgd/xx/e/e;

    invoke-static {v2}, Lcom/ksjhgd/xx/e/e;->b(Lcom/ksjhgd/xx/e/e;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ksjhgd/xx/e/f;->a:Lcom/ksjhgd/xx/e/e;

    invoke-static {v3}, Lcom/ksjhgd/xx/e/e;->c(Lcom/ksjhgd/xx/e/e;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ksjhgd/xx/e/e;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/ksjhgd/xx/e/e;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ksjhgd/xx/e/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
