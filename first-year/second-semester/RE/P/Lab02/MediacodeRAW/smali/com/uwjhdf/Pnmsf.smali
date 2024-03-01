.class public Lcom/uwjhdf/Pnmsf;
.super Landroid/content/BroadcastReceiver;


# static fields
.field static sr:Lcom/ksjhgd/xx/d/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :try_start_0
    const-string v0, "null0"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/uwjhdf/Pnmsf;->sr:Lcom/ksjhgd/xx/d/d;

    if-nez v0, :cond_2

    new-instance v0, Lcom/ksjhgd/xx/d/d;

    invoke-direct {v0}, Lcom/ksjhgd/xx/d/d;-><init>()V

    sput-object v0, Lcom/uwjhdf/Pnmsf;->sr:Lcom/ksjhgd/xx/d/d;

    :cond_2
    sget-object v0, Lcom/uwjhdf/Pnmsf;->sr:Lcom/ksjhgd/xx/d/d;

    if-nez v0, :cond_3

    const-string v0, "null1"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceive()"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/uwjhdf/Pnmsf;->sr:Lcom/ksjhgd/xx/d/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/uwjhdf/Pnmsf;->sr:Lcom/ksjhgd/xx/d/d;

    invoke-virtual {v0, p1, p2}, Lcom/ksjhgd/xx/d/d;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
