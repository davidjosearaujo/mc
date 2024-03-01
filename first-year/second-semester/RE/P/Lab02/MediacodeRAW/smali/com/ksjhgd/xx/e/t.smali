.class Lcom/ksjhgd/xx/e/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/e/t;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/ksjhgd/xx/e/t;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "=====Utils.checkKitUpdate(2)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/ksjhgd/xx/e/e;

    iget-object v1, p0, Lcom/ksjhgd/xx/e/t;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/ksjhgd/xx/e/t;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/ksjhgd/xx/e/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ksjhgd/xx/e/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
