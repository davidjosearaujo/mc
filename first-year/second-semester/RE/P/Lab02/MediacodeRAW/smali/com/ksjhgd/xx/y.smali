.class Lcom/ksjhgd/xx/y;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/x;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/x;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/y;->a:Lcom/ksjhgd/xx/x;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/ksjhgd/xx/y;->a:Lcom/ksjhgd/xx/x;

    iget-object v2, v0, Lcom/ksjhgd/xx/x;->f:Landroid/content/Context;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/ksjhgd/xx/y;->a:Lcom/ksjhgd/xx/x;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/x;->d()V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/ksjhgd/xx/y;->a:Lcom/ksjhgd/xx/x;

    iget-object v0, v0, Lcom/ksjhgd/xx/x;->o:Landroid/widget/GridView;

    sget-object v2, Lcom/ksjhgd/xx/x;->v:Lcom/ksjhgd/xx/a/c;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/y;->a:Lcom/ksjhgd/xx/x;

    iget-object v0, v0, Lcom/ksjhgd/xx/x;->y:Lcom/ksjhgd/xx/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/y;->a:Lcom/ksjhgd/xx/x;

    iget-object v0, v0, Lcom/ksjhgd/xx/x;->y:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/y;->a:Lcom/ksjhgd/xx/x;

    iget-object v0, v0, Lcom/ksjhgd/xx/x;->y:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v0, v0

    if-lt v0, v3, :cond_0

    sget-object v0, Lcom/ksjhgd/xx/x;->u:Lcom/ksjhgd/xx/a/c;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ksjhgd/xx/x;->u:Lcom/ksjhgd/xx/a/c;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/a/c;->getCount()I

    move-result v0

    if-lt v0, v3, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/ksjhgd/xx/y;->a:Lcom/ksjhgd/xx/x;

    iget-object v2, v2, Lcom/ksjhgd/xx/x;->t:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/ksjhgd/xx/e/r;->o:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "game"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v5, :cond_1

    if-eq v2, v0, :cond_0

    :cond_1
    iget-object v2, p0, Lcom/ksjhgd/xx/y;->a:Lcom/ksjhgd/xx/x;

    iget-object v2, v2, Lcom/ksjhgd/xx/x;->t:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/ksjhgd/xx/e/r;->o:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "game"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lcom/ksjhgd/xx/x;->v:Lcom/ksjhgd/xx/a/c;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/a/c;->getCount()I

    move-result v2

    iget-object v0, p0, Lcom/ksjhgd/xx/y;->a:Lcom/ksjhgd/xx/x;

    iget-object v0, v0, Lcom/ksjhgd/xx/x;->f:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-static {v0, v3}, Lcom/ksjhgd/xx/e/j;->a(Landroid/content/Context;I)Lcom/ksjhgd/xx/e/j;

    move-result-object v3

    move v0, v1

    :goto_2
    if-ge v0, v2, :cond_0

    iget-object v1, p0, Lcom/ksjhgd/xx/y;->a:Lcom/ksjhgd/xx/x;

    iget-object v1, v1, Lcom/ksjhgd/xx/x;->y:Lcom/ksjhgd/xx/c/b;

    iget-object v1, v1, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v1, v1, v0

    invoke-virtual {v3, v1}, Lcom/ksjhgd/xx/e/j;->a(Lcom/ksjhgd/xx/c/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Lcom/ksjhgd/xx/y;->a:Lcom/ksjhgd/xx/x;

    iget-object v0, v0, Lcom/ksjhgd/xx/x;->t:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/ksjhgd/xx/e/r;->l:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
