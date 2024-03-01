.class Lcom/ksjhgd/xx/bb;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/ba;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/ba;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/bb;->a:Lcom/ksjhgd/xx/ba;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ksjhgd/xx/bb;->a:Lcom/ksjhgd/xx/ba;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/ba;->a()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
