.class Lcom/ksjhgd/xx/am;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/Klsjfgswas;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/Klsjfgswas;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/am;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ksjhgd/xx/am;)Lcom/ksjhgd/xx/Klsjfgswas;
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/am;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/ksjhgd/xx/am;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v0, v0, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iput-boolean v1, v0, Lcom/ksjhgd/xx/a;->a:Z

    iget-object v2, p0, Lcom/ksjhgd/xx/am;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/ksjhgd/xx/am;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v0, v0, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget-object v0, v0, Lcom/ksjhgd/xx/a;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "runpn"

    iget-object v2, p0, Lcom/ksjhgd/xx/am;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    invoke-static {v2}, Lcom/ksjhgd/xx/e/n;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/ksjhgd/xx/am;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    invoke-static {v0}, Lcom/ksjhgd/xx/Klsjfgswas;->a(Lcom/ksjhgd/xx/Klsjfgswas;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/ksjhgd/xx/am;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v0, v0, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget-object v0, v0, Lcom/ksjhgd/xx/a;->h:Lcom/ksjhgd/xx/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/am;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    invoke-static {v0}, Lcom/ksjhgd/xx/Klsjfgswas;->a(Lcom/ksjhgd/xx/Klsjfgswas;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ksjhgd/xx/am;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v0, v0, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/a;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/ksjhgd/xx/am;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v0, v0, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget-object v0, v0, Lcom/ksjhgd/xx/a;->f:Landroid/content/SharedPreferences;

    sget-object v4, Lcom/ksjhgd/xx/e/r;->r:Ljava/lang/String;

    invoke-interface {v0, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v0, v2, v6

    if-eqz v0, :cond_1

    const-wide/16 v4, 0x1388

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const-string v1, "page"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ksjhgd/xx/am;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v3, v3, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget v3, v3, Lcom/ksjhgd/xx/a;->j:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    const-string v2, "insert"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ksjhgd/xx/am;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v1, v1, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget-object v1, v1, Lcom/ksjhgd/xx/a;->b:Landroid/content/Context;

    sget-object v2, Lcom/ksjhgd/xx/c/h;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/ksjhgd/xx/am;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v3, v3, Lcom/ksjhgd/xx/Klsjfgswas;->h:Lcom/ksjhgd/xx/c/j;

    invoke-static {v1, v2, v0, v3}, Lcom/ksjhgd/xx/c/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/ksjhgd/xx/c/j;)V

    goto/16 :goto_0

    :cond_2
    new-instance v0, Lcom/ksjhgd/xx/an;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/an;-><init>(Lcom/ksjhgd/xx/am;)V

    invoke-virtual {v0}, Lcom/ksjhgd/xx/an;->start()V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method
