.class Lcom/ksjhgd/xx/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/o;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/o;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/v;->a:Lcom/ksjhgd/xx/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ksjhgd/xx/v;->a:Lcom/ksjhgd/xx/o;

    invoke-virtual {v1}, Lcom/ksjhgd/xx/o;->k()V

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ksjhgd/xx/v;->a:Lcom/ksjhgd/xx/o;

    invoke-static {v0}, Lcom/ksjhgd/xx/o;->c(Lcom/ksjhgd/xx/o;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ksjhgd/xx/v;->a:Lcom/ksjhgd/xx/o;

    invoke-static {v0}, Lcom/ksjhgd/xx/o;->c(Lcom/ksjhgd/xx/o;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/ksjhgd/xx/v;->a:Lcom/ksjhgd/xx/o;

    iget-object v2, v2, Lcom/ksjhgd/xx/o;->b:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sput-boolean v0, Lcom/ksjhgd/xx/o;->l:Z

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ksjhgd/xx/v;->a:Lcom/ksjhgd/xx/o;

    iget-object v2, v2, Lcom/ksjhgd/xx/o;->b:Landroid/content/Context;

    const-class v3, Lcom/uwjhdf/vksf;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    const-string v3, "closeFloat"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/ksjhgd/xx/v;->a:Lcom/ksjhgd/xx/o;

    iget-object v2, v2, Lcom/ksjhgd/xx/o;->b:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v1, p0, Lcom/ksjhgd/xx/v;->a:Lcom/ksjhgd/xx/o;

    iget-object v1, v1, Lcom/ksjhgd/xx/o;->h:Lcom/ksjhgd/xx/a/f;

    if-eqz v1, :cond_2

    :goto_3
    iget-object v1, p0, Lcom/ksjhgd/xx/v;->a:Lcom/ksjhgd/xx/o;

    iget-object v1, v1, Lcom/ksjhgd/xx/o;->h:Lcom/ksjhgd/xx/a/f;

    iget-object v1, v1, Lcom/ksjhgd/xx/a/f;->a:[I

    array-length v1, v1

    if-lt v0, v1, :cond_3

    :cond_2
    const-string v0, "ExitpopupsActivity.enclosing_method(\u70b9\u51fb\u786e\u5b9a\u6309\u94ae)"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/v;->a:Lcom/ksjhgd/xx/o;

    iget-object v0, v0, Lcom/ksjhgd/xx/o;->b:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/ksjhgd/xx/f;->a(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/ksjhgd/xx/v;->a:Lcom/ksjhgd/xx/o;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/o;->b()V

    iget-object v0, p0, Lcom/ksjhgd/xx/v;->a:Lcom/ksjhgd/xx/o;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/o;->e()V

    iget-object v0, p0, Lcom/ksjhgd/xx/v;->a:Lcom/ksjhgd/xx/o;

    invoke-static {v0}, Lcom/ksjhgd/xx/o;->c(Lcom/ksjhgd/xx/o;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/v;->a:Lcom/ksjhgd/xx/o;

    iget-object v0, v0, Lcom/ksjhgd/xx/o;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/v;->a:Lcom/ksjhgd/xx/o;

    iget-object v0, v0, Lcom/ksjhgd/xx/o;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/v;->a:Lcom/ksjhgd/xx/o;

    iget-object v0, v0, Lcom/ksjhgd/xx/o;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/ksjhgd/xx/v;->a:Lcom/ksjhgd/xx/o;

    iget-object v1, v1, Lcom/ksjhgd/xx/o;->h:Lcom/ksjhgd/xx/a/f;

    iget-object v1, v1, Lcom/ksjhgd/xx/a/f;->a:[I

    aget v1, v1, v0

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Lcom/ksjhgd/xx/v;->a:Lcom/ksjhgd/xx/o;

    iget-object v2, p0, Lcom/ksjhgd/xx/v;->a:Lcom/ksjhgd/xx/o;

    iget-object v2, v2, Lcom/ksjhgd/xx/o;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v2, v2, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v2, v2, v0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/ksjhgd/xx/o;->a(Lcom/ksjhgd/xx/c/c;I)Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :pswitch_1
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ksjhgd/xx/v;->a:Lcom/ksjhgd/xx/o;

    iget-object v2, v2, Lcom/ksjhgd/xx/o;->b:Landroid/content/Context;

    const-class v3, Lcom/uwjhdf/vksf;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    const-string v3, "closeFloat"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/ksjhgd/xx/v;->a:Lcom/ksjhgd/xx/o;

    iget-object v2, v2, Lcom/ksjhgd/xx/o;->b:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    sput-boolean v0, Lcom/ksjhgd/xx/o;->l:Z

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/ksjhgd/xx/v;->a:Lcom/ksjhgd/xx/o;

    iget-object v0, v0, Lcom/ksjhgd/xx/o;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ksjhgd/xx/v;->a:Lcom/ksjhgd/xx/o;

    iget-object v0, v0, Lcom/ksjhgd/xx/o;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ksjhgd/xx/v;->a:Lcom/ksjhgd/xx/o;

    iget-object v0, v0, Lcom/ksjhgd/xx/o;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
