.class Lcom/uwjhdf/Main$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/uwjhdf/Main;


# direct methods
.method constructor <init>(Lcom/uwjhdf/Main;)V
    .locals 0

    iput-object p1, p0, Lcom/uwjhdf/Main$1;->this$0:Lcom/uwjhdf/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    iget-object v0, p0, Lcom/uwjhdf/Main$1;->this$0:Lcom/uwjhdf/Main;

    invoke-virtual {v0}, Lcom/uwjhdf/Main;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
