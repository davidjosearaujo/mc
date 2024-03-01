.class Landroid/arch/lifecycle/d;
.super Ljava/lang/Object;
.source "FullLifecycleObserverAdapter.java"

# interfaces
.implements Landroid/arch/lifecycle/f;


# instance fields
.field private final a:Landroid/arch/lifecycle/c;


# virtual methods
.method public a(Landroid/arch/lifecycle/g;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 2

    .prologue
    .line 29
    sget-object v0, Landroid/arch/lifecycle/d$1;->a:[I

    invoke-virtual {p2}, Landroid/arch/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 51
    :goto_0
    return-void

    .line 31
    :pswitch_0
    iget-object v0, p0, Landroid/arch/lifecycle/d;->a:Landroid/arch/lifecycle/c;

    invoke-interface {v0, p1}, Landroid/arch/lifecycle/c;->a(Landroid/arch/lifecycle/g;)V

    goto :goto_0

    .line 34
    :pswitch_1
    iget-object v0, p0, Landroid/arch/lifecycle/d;->a:Landroid/arch/lifecycle/c;

    invoke-interface {v0, p1}, Landroid/arch/lifecycle/c;->b(Landroid/arch/lifecycle/g;)V

    goto :goto_0

    .line 37
    :pswitch_2
    iget-object v0, p0, Landroid/arch/lifecycle/d;->a:Landroid/arch/lifecycle/c;

    invoke-interface {v0, p1}, Landroid/arch/lifecycle/c;->c(Landroid/arch/lifecycle/g;)V

    goto :goto_0

    .line 40
    :pswitch_3
    iget-object v0, p0, Landroid/arch/lifecycle/d;->a:Landroid/arch/lifecycle/c;

    invoke-interface {v0, p1}, Landroid/arch/lifecycle/c;->d(Landroid/arch/lifecycle/g;)V

    goto :goto_0

    .line 43
    :pswitch_4
    iget-object v0, p0, Landroid/arch/lifecycle/d;->a:Landroid/arch/lifecycle/c;

    invoke-interface {v0, p1}, Landroid/arch/lifecycle/c;->e(Landroid/arch/lifecycle/g;)V

    goto :goto_0

    .line 46
    :pswitch_5
    iget-object v0, p0, Landroid/arch/lifecycle/d;->a:Landroid/arch/lifecycle/c;

    invoke-interface {v0, p1}, Landroid/arch/lifecycle/c;->f(Landroid/arch/lifecycle/g;)V

    goto :goto_0

    .line 49
    :pswitch_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ON_ANY must not been send by anybody"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
