.class public Lcom/ksjhgd/xx/d/a;
.super Landroid/app/Activity;


# instance fields
.field a:Lcom/ksjhgd/xx/bj;

.field b:Lcom/ksjhgd/xx/o;

.field private c:Landroid/app/Activity;

.field private d:Landroid/content/Context;

.field private e:Lcom/ksjhgd/xx/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ksjhgd/xx/d/a;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/d/a;->c:Landroid/app/Activity;

    return-object v0
.end method

.method private a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ksjhgd/xx/d/a;->c:Landroid/app/Activity;

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "startAd2(\u521d\u59cb\u5316\u9519\u8bef \u4f20\u5165\u7684contex\u4e3anull)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ksjhgd/xx/d/a;->c:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ksjhgd/xx/d/a;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "startAd2(\u521d\u59cb\u5316\u9519\u8bef \u4f20\u5165\u7684contex\u4e3aFinishing\u72b6\u6001)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ksjhgd/xx/d/a;->b:Lcom/ksjhgd/xx/o;

    if-nez v0, :cond_3

    new-instance v0, Lcom/ksjhgd/xx/o;

    iget-object v1, p0, Lcom/ksjhgd/xx/d/a;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/ksjhgd/xx/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/d/a;->b:Lcom/ksjhgd/xx/o;

    iget-object v0, p0, Lcom/ksjhgd/xx/d/a;->b:Lcom/ksjhgd/xx/o;

    invoke-virtual {v0, v2}, Lcom/ksjhgd/xx/o;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/d/a;->b:Lcom/ksjhgd/xx/o;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/o;->a()V

    :cond_3
    iget-object v0, p0, Lcom/ksjhgd/xx/d/a;->b:Lcom/ksjhgd/xx/o;

    iget-object v0, v0, Lcom/ksjhgd/xx/o;->b:Landroid/content/Context;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ksjhgd/xx/d/a;->b:Lcom/ksjhgd/xx/o;

    iget-object v0, v0, Lcom/ksjhgd/xx/o;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    new-instance v0, Lcom/ksjhgd/xx/o;

    iget-object v1, p0, Lcom/ksjhgd/xx/d/a;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/ksjhgd/xx/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/d/a;->b:Lcom/ksjhgd/xx/o;

    iget-object v0, p0, Lcom/ksjhgd/xx/d/a;->b:Lcom/ksjhgd/xx/o;

    invoke-virtual {v0, v2}, Lcom/ksjhgd/xx/o;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/d/a;->b:Lcom/ksjhgd/xx/o;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/o;->a()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShellActivity.lifeCycleMethod() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/ksjhgd/xx/d/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/d/a;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/ksjhgd/xx/d/a;)Lcom/ksjhgd/xx/a;
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/d/a;->e:Lcom/ksjhgd/xx/a;

    return-object v0
.end method


# virtual methods
.method public a(II)V
    .locals 4

    new-instance v0, Lcom/ksjhgd/xx/d/b;

    invoke-direct {v0, p0, p1}, Lcom/ksjhgd/xx/d/b;-><init>(Lcom/ksjhgd/xx/d/a;I)V

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    mul-int/lit16 v2, p2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public a(J)V
    .locals 3

    iget-object v0, p0, Lcom/ksjhgd/xx/d/a;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/r;->w:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setActivity..."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ksjhgd/xx/d/a;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ksjhgd/xx/d/a;->d:Landroid/content/Context;

    new-instance v0, Lcom/ksjhgd/xx/a;

    invoke-direct {v0, p1}, Lcom/ksjhgd/xx/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/d/a;->e:Lcom/ksjhgd/xx/a;

    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/d/a;->a:Lcom/ksjhgd/xx/bj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/d/a;->a:Lcom/ksjhgd/xx/bj;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/bj;->j()V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/q;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    invoke-static {p1}, Lcom/ksjhgd/xx/e/q;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "\u521d\u59cb\u5316\u5931\u8d25\uff1a\u6ca1\u6709\u7f51\u7edc\u8fde\u63a5"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x1

    :try_start_0
    sget-object v3, Lcom/ksjhgd/xx/c/h;->n:Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Lcom/ksjhgd/xx/d/c;

    invoke-direct {v5, p0}, Lcom/ksjhgd/xx/d/c;-><init>(Lcom/ksjhgd/xx/d/a;)V

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/ksjhgd/xx/c/h;->a(Landroid/content/Context;IILjava/lang/String;Ljava/util/HashMap;Lcom/ksjhgd/xx/c/j;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {p1, v6}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public a(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/ksjhgd/xx/d/a;->a()V

    iget-object v0, p0, Lcom/ksjhgd/xx/d/a;->b:Lcom/ksjhgd/xx/o;

    invoke-virtual {v0, p1}, Lcom/ksjhgd/xx/o;->a(Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public b(J)V
    .locals 3

    iget-object v0, p0, Lcom/ksjhgd/xx/d/a;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/r;->x:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "initAd2(\u521d\u59cb\u5316\u9519\u8bef \u4f20\u5165\u7684contex\u4e3anull)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/ksjhgd/xx/o;

    invoke-direct {v0, p1}, Lcom/ksjhgd/xx/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/d/a;->b:Lcom/ksjhgd/xx/o;

    iget-object v0, p0, Lcom/ksjhgd/xx/d/a;->b:Lcom/ksjhgd/xx/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ksjhgd/xx/o;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/d/a;->b:Lcom/ksjhgd/xx/o;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/o;->a()V

    iget-object v0, p0, Lcom/ksjhgd/xx/d/a;->b:Lcom/ksjhgd/xx/o;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/o;->j()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/d/a;->e:Lcom/ksjhgd/xx/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/d/a;->e:Lcom/ksjhgd/xx/a;

    invoke-virtual {v0, p1}, Lcom/ksjhgd/xx/a;->a(Landroid/os/Bundle;)V

    :cond_0
    const-string v0, "onCreate"

    invoke-direct {p0, v0}, Lcom/ksjhgd/xx/d/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const-string v0, "onDestroy"

    invoke-direct {p0, v0}, Lcom/ksjhgd/xx/d/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/d/a;->e:Lcom/ksjhgd/xx/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/d/a;->e:Lcom/ksjhgd/xx/a;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/a;->e()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-string v0, "ShellActivity.onKeyDown(==================eeeeee==================)"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onRestart()V
    .locals 1

    const-string v0, "onRestart"

    invoke-direct {p0, v0}, Lcom/ksjhgd/xx/d/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/d/a;->e:Lcom/ksjhgd/xx/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/d/a;->e:Lcom/ksjhgd/xx/a;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/a;->d()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    const-string v0, "onResume"

    invoke-direct {p0, v0}, Lcom/ksjhgd/xx/d/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/d/a;->e:Lcom/ksjhgd/xx/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/d/a;->e:Lcom/ksjhgd/xx/a;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/a;->c()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    const-string v0, "onStart"

    invoke-direct {p0, v0}, Lcom/ksjhgd/xx/d/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/d/a;->e:Lcom/ksjhgd/xx/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/d/a;->e:Lcom/ksjhgd/xx/a;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/a;->a()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    const-string v0, "onStop"

    invoke-direct {p0, v0}, Lcom/ksjhgd/xx/d/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/d/a;->e:Lcom/ksjhgd/xx/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/d/a;->e:Lcom/ksjhgd/xx/a;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/a;->b()V

    :cond_0
    return-void
.end method
