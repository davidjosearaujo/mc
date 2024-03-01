.class public Lcom/ksjhgd/xx/d/d;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static a:Lcom/ksjhgd/xx/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcom/ksjhgd/xx/d/d;->a:Lcom/ksjhgd/xx/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ksjhgd/xx/f;

    invoke-direct {v0}, Lcom/ksjhgd/xx/f;-><init>()V

    sput-object v0, Lcom/ksjhgd/xx/d/d;->a:Lcom/ksjhgd/xx/f;

    :cond_0
    sget-object v0, Lcom/ksjhgd/xx/d/d;->a:Lcom/ksjhgd/xx/f;

    invoke-virtual {v0, p1, p2}, Lcom/ksjhgd/xx/f;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShellReceiver.onReceive()"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    return-void
.end method
