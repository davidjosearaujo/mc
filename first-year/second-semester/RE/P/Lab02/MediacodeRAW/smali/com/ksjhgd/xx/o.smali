.class public Lcom/ksjhgd/xx/o;
.super Lcom/ksjhgd/xx/a;


# static fields
.field public static l:Z


# instance fields
.field public m:Landroid/os/Handler;

.field n:Lcom/ksjhgd/xx/c/j;

.field o:Landroid/content/DialogInterface$OnCancelListener;

.field p:Landroid/content/DialogInterface$OnShowListener;

.field q:Landroid/content/DialogInterface$OnClickListener;

.field r:Landroid/content/DialogInterface$OnClickListener;

.field private s:I

.field private t:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ksjhgd/xx/o;->l:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ksjhgd/xx/a;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ksjhgd/xx/o;->s:I

    new-instance v0, Lcom/ksjhgd/xx/p;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/p;-><init>(Lcom/ksjhgd/xx/o;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/o;->m:Landroid/os/Handler;

    new-instance v0, Lcom/ksjhgd/xx/r;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/r;-><init>(Lcom/ksjhgd/xx/o;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/o;->n:Lcom/ksjhgd/xx/c/j;

    new-instance v0, Lcom/ksjhgd/xx/s;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/s;-><init>(Lcom/ksjhgd/xx/o;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/o;->o:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Lcom/ksjhgd/xx/t;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/t;-><init>(Lcom/ksjhgd/xx/o;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/o;->p:Landroid/content/DialogInterface$OnShowListener;

    new-instance v0, Lcom/ksjhgd/xx/u;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/u;-><init>(Lcom/ksjhgd/xx/o;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/o;->q:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/ksjhgd/xx/v;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/v;-><init>(Lcom/ksjhgd/xx/o;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/o;->r:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/ksjhgd/xx/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/ksjhgd/xx/o;->m()V

    return-void
.end method

.method static synthetic a(Lcom/ksjhgd/xx/o;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ksjhgd/xx/o;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ksjhgd/xx/o;->m:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/ksjhgd/xx/o;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic b(Lcom/ksjhgd/xx/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/ksjhgd/xx/o;->o()V

    return-void
.end method

.method static synthetic c(Lcom/ksjhgd/xx/o;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/o;->t:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic d(Lcom/ksjhgd/xx/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/ksjhgd/xx/o;->n()V

    return-void
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcom/ksjhgd/xx/o;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ksjhgd/xx/o;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ExitpopupsActivity.startAD(\u4e0a\u4e0b\u6587\u5f02\u5e38)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ksjhgd/xx/o;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ksjhgd/xx/e/q;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/ksjhgd/xx/o;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ksjhgd/xx/o;->h:Lcom/ksjhgd/xx/a/f;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ksjhgd/xx/o;->a(Z)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u6ca1\u6709\u6709\u6548\u5e7f\u544a\u6570\u636e"

    invoke-direct {p0, v0}, Lcom/ksjhgd/xx/o;->a(Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Lcom/ksjhgd/xx/o;->s:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ksjhgd/xx/o;->m()V

    goto :goto_0
.end method

.method private m()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v3, 0x0

    sput-boolean v0, Lcom/ksjhgd/xx/o;->l:Z

    iput-boolean v0, p0, Lcom/ksjhgd/xx/o;->a:Z

    iget-object v0, p0, Lcom/ksjhgd/xx/o;->g:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/o;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/o;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ksjhgd/xx/o;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u662f"

    iget-object v2, p0, Lcom/ksjhgd/xx/o;->r:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u5426"

    iget-object v2, p0, Lcom/ksjhgd/xx/o;->r:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ksjhgd/xx/o;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ksjhgd/xx/o;->h:Lcom/ksjhgd/xx/a/f;

    iput-boolean v3, v1, Lcom/ksjhgd/xx/a/f;->b:Z

    iget-object v1, p0, Lcom/ksjhgd/xx/o;->h:Lcom/ksjhgd/xx/a/f;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ksjhgd/xx/o;->g:Landroid/app/Dialog;

    const-string v0, "\u4f60\u786e\u5b9a\u9000\u51fa\u5417\uff1f"

    iget-object v1, p0, Lcom/ksjhgd/xx/o;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/ksjhgd/xx/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ksjhgd/xx/o;->h:Lcom/ksjhgd/xx/a/f;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ksjhgd/xx/o;->b:Landroid/content/Context;

    const-string v2, "3"

    invoke-static {v1, v2}, Lcom/ksjhgd/xx/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "\u4f60\u786e\u5b9a\u9000\u51fa\u5417\uff1f\u731c\u4f60\u559c\u6b22"

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/ksjhgd/xx/o;->g:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/o;->g:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/ksjhgd/xx/o;->p:Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/o;->g:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/ksjhgd/xx/o;->o:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/o;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/ksjhgd/xx/o;->g:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/ksjhgd/xx/o;->g:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/ksjhgd/xx/o;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/ksjhgd/xx/o;->b:Landroid/content/Context;

    const-string v2, "3"

    invoke-static {v1, v2}, Lcom/ksjhgd/xx/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "\u4f60\u786e\u5b9a\u9000\u51fa\u5e76\u4e0b\u8f7d\u5e94\u7528\u5417\uff1f"

    goto :goto_0
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Lcom/ksjhgd/xx/o;->m:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/ksjhgd/xx/o;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private o()V
    .locals 3

    iget-object v0, p0, Lcom/ksjhgd/xx/o;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/r;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/ksjhgd/xx/o;->f()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/ksjhgd/xx/o;->l()V

    iput-object p1, p0, Lcom/ksjhgd/xx/o;->t:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public e()V
    .locals 0

    invoke-super {p0}, Lcom/ksjhgd/xx/a;->e()V

    return-void
.end method

.method public j()V
    .locals 6

    iget-object v0, p0, Lcom/ksjhgd/xx/o;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ksjhgd/xx/e/q;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u6ca1\u6709\u7f51\u7edc\u8fde\u63a5"

    invoke-direct {p0, v0}, Lcom/ksjhgd/xx/o;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ksjhgd/xx/o;->b:Landroid/content/Context;

    const/4 v1, 0x2

    const/4 v2, 0x1

    sget-object v3, Lcom/ksjhgd/xx/c/h;->n:Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Lcom/ksjhgd/xx/w;

    invoke-direct {v5, p0}, Lcom/ksjhgd/xx/w;-><init>(Lcom/ksjhgd/xx/o;)V

    invoke-static/range {v0 .. v5}, Lcom/ksjhgd/xx/c/h;->a(Landroid/content/Context;IILjava/lang/String;Ljava/util/HashMap;Lcom/ksjhgd/xx/c/j;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/o;->g:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/o;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/o;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
