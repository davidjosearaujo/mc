.class Lcom/ksjhgd/xx/az;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/Klsjfgswas;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/Klsjfgswas;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/az;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/ksjhgd/xx/az;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    invoke-static {v0}, Lcom/ksjhgd/xx/Klsjfgswas;->d(Lcom/ksjhgd/xx/Klsjfgswas;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
