.class Lcom/ksjhgd/xx/bc;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/ba;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/ba;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/bc;->a:Lcom/ksjhgd/xx/ba;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/bc;->a:Lcom/ksjhgd/xx/ba;

    iget-object v0, v0, Lcom/ksjhgd/xx/ba;->h:Lcom/ksjhgd/xx/e/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ksjhgd/xx/e/i;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ksjhgd/xx/bc;->a:Lcom/ksjhgd/xx/ba;

    iget-object v0, v0, Lcom/ksjhgd/xx/ba;->h:Lcom/ksjhgd/xx/e/i;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/ksjhgd/xx/e/i;->setVisibility(I)V

    goto :goto_0
.end method
