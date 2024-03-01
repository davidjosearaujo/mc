.class Lcom/ksjhgd/xx/bk;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/bj;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/bj;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/bk;->a:Lcom/ksjhgd/xx/bj;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ksjhgd/xx/bk;)Lcom/ksjhgd/xx/bj;
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/bk;->a:Lcom/ksjhgd/xx/bj;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/ksjhgd/xx/bk;->a:Lcom/ksjhgd/xx/bj;

    iput-boolean v1, v0, Lcom/ksjhgd/xx/bj;->a:Z

    iget-object v0, p0, Lcom/ksjhgd/xx/bk;->a:Lcom/ksjhgd/xx/bj;

    iget-object v2, v0, Lcom/ksjhgd/xx/bj;->b:Landroid/content/Context;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/ksjhgd/xx/bk;->a:Lcom/ksjhgd/xx/bj;

    invoke-static {v0}, Lcom/ksjhgd/xx/bj;->a(Lcom/ksjhgd/xx/bj;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/ksjhgd/xx/bk;->a:Lcom/ksjhgd/xx/bj;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/bj;->h()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ksjhgd/xx/bk;->a:Lcom/ksjhgd/xx/bj;

    iget-object v0, v0, Lcom/ksjhgd/xx/bj;->b:Landroid/content/Context;

    const-string v3, "5"

    invoke-static {v0, v3}, Lcom/ksjhgd/xx/bj;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ksjhgd/xx/bk;->a:Lcom/ksjhgd/xx/bj;

    iget-object v0, v0, Lcom/ksjhgd/xx/bj;->b:Landroid/content/Context;

    const-string v3, "6"

    invoke-static {v0, v3}, Lcom/ksjhgd/xx/bj;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/ksjhgd/xx/bk;->a:Lcom/ksjhgd/xx/bj;

    iget-object v0, v0, Lcom/ksjhgd/xx/bj;->h:Lcom/ksjhgd/xx/a/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ksjhgd/xx/bk;->a:Lcom/ksjhgd/xx/bj;

    invoke-static {v0}, Lcom/ksjhgd/xx/bj;->a(Lcom/ksjhgd/xx/bj;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/ksjhgd/xx/bk;->a:Lcom/ksjhgd/xx/bj;

    iget-object v0, v0, Lcom/ksjhgd/xx/bj;->f:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/ksjhgd/xx/e/r;->r:Ljava/lang/String;

    invoke-interface {v0, v3, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v0, v4, v8

    if-eqz v0, :cond_3

    const-wide/16 v6, 0x1388

    cmp-long v0, v4, v6

    if-lez v0, :cond_8

    :cond_3
    move v0, v2

    :goto_1
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ksjhgd/xx/bk;->a:Lcom/ksjhgd/xx/bj;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/bj;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ksjhgd/xx/bk;->a:Lcom/ksjhgd/xx/bj;

    iget-object v0, v0, Lcom/ksjhgd/xx/bj;->f:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/ksjhgd/xx/e/r;->s:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/ksjhgd/xx/bk;->a:Lcom/ksjhgd/xx/bj;

    iget-object v3, v3, Lcom/ksjhgd/xx/bj;->f:Landroid/content/SharedPreferences;

    sget-object v4, Lcom/ksjhgd/xx/e/r;->t:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sget-object v4, Lcom/ksjhgd/xx/c/b;->a:[I

    array-length v4, v4

    if-gt v3, v4, :cond_6

    iget-object v4, p0, Lcom/ksjhgd/xx/bk;->a:Lcom/ksjhgd/xx/bj;

    iput v3, v4, Lcom/ksjhgd/xx/bj;->j:I

    sget-object v4, Lcom/ksjhgd/xx/c/b;->a:[I

    add-int/lit8 v5, v3, -0x1

    aget v4, v4, v5

    if-lt v0, v4, :cond_4

    add-int/lit8 v0, v3, 0x1

    sget-object v4, Lcom/ksjhgd/xx/c/b;->a:[I

    array-length v4, v4

    if-le v0, v4, :cond_5

    iget-object v0, p0, Lcom/ksjhgd/xx/bk;->a:Lcom/ksjhgd/xx/bj;

    iput v2, v0, Lcom/ksjhgd/xx/bj;->j:I

    :goto_2
    iget-object v0, p0, Lcom/ksjhgd/xx/bk;->a:Lcom/ksjhgd/xx/bj;

    iget-object v0, v0, Lcom/ksjhgd/xx/bj;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/ksjhgd/xx/e/r;->s:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/ksjhgd/xx/bk;->a:Lcom/ksjhgd/xx/bj;

    iget-object v0, v0, Lcom/ksjhgd/xx/bj;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/r;->t:Ljava/lang/String;

    iget-object v2, p0, Lcom/ksjhgd/xx/bk;->a:Lcom/ksjhgd/xx/bj;

    iget v2, v2, Lcom/ksjhgd/xx/bj;->j:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4
    :goto_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "page"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ksjhgd/xx/bk;->a:Lcom/ksjhgd/xx/bj;

    iget v3, v3, Lcom/ksjhgd/xx/bj;->j:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    const-string v2, "start"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ksjhgd/xx/bk;->a:Lcom/ksjhgd/xx/bj;

    iget-object v1, v1, Lcom/ksjhgd/xx/bj;->b:Landroid/content/Context;

    sget-object v2, Lcom/ksjhgd/xx/c/h;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/ksjhgd/xx/bk;->a:Lcom/ksjhgd/xx/bj;

    iget-object v3, v3, Lcom/ksjhgd/xx/bj;->p:Lcom/ksjhgd/xx/c/j;

    invoke-static {v1, v2, v0, v3}, Lcom/ksjhgd/xx/c/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/ksjhgd/xx/c/j;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/ksjhgd/xx/bk;->a:Lcom/ksjhgd/xx/bj;

    add-int/lit8 v2, v3, 0x1

    iput v2, v0, Lcom/ksjhgd/xx/bj;->j:I

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/ksjhgd/xx/bk;->a:Lcom/ksjhgd/xx/bj;

    iget-object v0, v0, Lcom/ksjhgd/xx/bj;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/r;->t:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    :cond_7
    new-instance v0, Lcom/ksjhgd/xx/bl;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/bl;-><init>(Lcom/ksjhgd/xx/bk;)V

    invoke-virtual {v0}, Lcom/ksjhgd/xx/bl;->start()V

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method
