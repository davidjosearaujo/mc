.class Lcom/ksjhgd/xx/p;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/o;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/o;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/p;->a:Lcom/ksjhgd/xx/o;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ksjhgd/xx/p;)Lcom/ksjhgd/xx/o;
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/p;->a:Lcom/ksjhgd/xx/o;

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

    iget-object v0, p0, Lcom/ksjhgd/xx/p;->a:Lcom/ksjhgd/xx/o;

    iput-boolean v1, v0, Lcom/ksjhgd/xx/o;->a:Z

    iget-object v0, p0, Lcom/ksjhgd/xx/p;->a:Lcom/ksjhgd/xx/o;

    iget-object v2, v0, Lcom/ksjhgd/xx/o;->b:Landroid/content/Context;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/ksjhgd/xx/p;->a:Lcom/ksjhgd/xx/o;

    invoke-static {v0}, Lcom/ksjhgd/xx/o;->a(Lcom/ksjhgd/xx/o;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/ksjhgd/xx/p;->a:Lcom/ksjhgd/xx/o;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/o;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/p;->a:Lcom/ksjhgd/xx/o;

    iget-object v0, v0, Lcom/ksjhgd/xx/o;->h:Lcom/ksjhgd/xx/a/f;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/ksjhgd/xx/p;->a:Lcom/ksjhgd/xx/o;

    iget-object v0, v0, Lcom/ksjhgd/xx/o;->f:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/ksjhgd/xx/e/r;->r:Ljava/lang/String;

    invoke-interface {v0, v3, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v0, v4, v8

    if-eqz v0, :cond_1

    const-wide/16 v6, 0x1388

    cmp-long v0, v4, v6

    if-lez v0, :cond_6

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ksjhgd/xx/p;->a:Lcom/ksjhgd/xx/o;

    iget-object v0, v0, Lcom/ksjhgd/xx/o;->f:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/ksjhgd/xx/e/r;->s:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/ksjhgd/xx/p;->a:Lcom/ksjhgd/xx/o;

    iget-object v3, v3, Lcom/ksjhgd/xx/o;->f:Landroid/content/SharedPreferences;

    sget-object v4, Lcom/ksjhgd/xx/e/r;->t:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sget-object v4, Lcom/ksjhgd/xx/c/b;->a:[I

    array-length v4, v4

    if-gt v3, v4, :cond_4

    iget-object v4, p0, Lcom/ksjhgd/xx/p;->a:Lcom/ksjhgd/xx/o;

    iput v3, v4, Lcom/ksjhgd/xx/o;->j:I

    sget-object v4, Lcom/ksjhgd/xx/c/b;->a:[I

    add-int/lit8 v5, v3, -0x1

    aget v4, v4, v5

    if-lt v0, v4, :cond_2

    add-int/lit8 v0, v3, 0x1

    sget-object v4, Lcom/ksjhgd/xx/c/b;->a:[I

    array-length v4, v4

    if-le v0, v4, :cond_3

    iget-object v0, p0, Lcom/ksjhgd/xx/p;->a:Lcom/ksjhgd/xx/o;

    iput v2, v0, Lcom/ksjhgd/xx/o;->j:I

    :goto_2
    iget-object v0, p0, Lcom/ksjhgd/xx/p;->a:Lcom/ksjhgd/xx/o;

    iget-object v0, v0, Lcom/ksjhgd/xx/o;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/ksjhgd/xx/e/r;->s:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/ksjhgd/xx/p;->a:Lcom/ksjhgd/xx/o;

    iget-object v0, v0, Lcom/ksjhgd/xx/o;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/r;->t:Ljava/lang/String;

    iget-object v2, p0, Lcom/ksjhgd/xx/p;->a:Lcom/ksjhgd/xx/o;

    iget v2, v2, Lcom/ksjhgd/xx/o;->j:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    :goto_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "page"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ksjhgd/xx/p;->a:Lcom/ksjhgd/xx/o;

    iget v3, v3, Lcom/ksjhgd/xx/o;->j:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    const-string v2, "exit"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ksjhgd/xx/p;->a:Lcom/ksjhgd/xx/o;

    iget-object v1, v1, Lcom/ksjhgd/xx/o;->b:Landroid/content/Context;

    sget-object v2, Lcom/ksjhgd/xx/c/h;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/ksjhgd/xx/p;->a:Lcom/ksjhgd/xx/o;

    iget-object v3, v3, Lcom/ksjhgd/xx/o;->n:Lcom/ksjhgd/xx/c/j;

    invoke-static {v1, v2, v0, v3}, Lcom/ksjhgd/xx/c/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/ksjhgd/xx/c/j;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ksjhgd/xx/p;->a:Lcom/ksjhgd/xx/o;

    add-int/lit8 v2, v3, 0x1

    iput v2, v0, Lcom/ksjhgd/xx/o;->j:I

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/ksjhgd/xx/p;->a:Lcom/ksjhgd/xx/o;

    iget-object v0, v0, Lcom/ksjhgd/xx/o;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/r;->t:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    :cond_5
    new-instance v0, Lcom/ksjhgd/xx/q;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/q;-><init>(Lcom/ksjhgd/xx/p;)V

    invoke-virtual {v0}, Lcom/ksjhgd/xx/q;->start()V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method
