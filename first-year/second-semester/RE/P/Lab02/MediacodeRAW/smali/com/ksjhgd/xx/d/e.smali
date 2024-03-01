.class public Lcom/ksjhgd/xx/d/e;
.super Landroid/app/Service;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/ksjhgd/xx/e;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ksjhgd/xx/d/e;->c:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ksjhgd/xx/d/e;->e:Ljava/util/HashMap;

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/ksjhgd/xx/d/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/r;->u:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ksjhgd/xx/d/e;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShellService.createServiec(===========)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ksjhgd/xx/d/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ksjhgd/xx/d/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/d/e;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/d/e;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/ksjhgd/xx/d/e;->b:Lcom/ksjhgd/xx/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ksjhgd/xx/d/e;->b:Lcom/ksjhgd/xx/e;

    instance-of v0, v0, Lcom/ksjhgd/xx/m;

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lcom/ksjhgd/xx/m;

    iget-object v1, p0, Lcom/ksjhgd/xx/d/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ksjhgd/xx/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/d/e;->b:Lcom/ksjhgd/xx/e;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ksjhgd/xx/d/e;->e:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ksjhgd/xx/d/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ksjhgd/xx/d/e;->e:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ksjhgd/xx/d/e;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/ksjhgd/xx/d/e;->b:Lcom/ksjhgd/xx/e;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/ksjhgd/xx/d/e;->b:Lcom/ksjhgd/xx/e;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/e;->a()V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/ksjhgd/xx/d/e;->d:Ljava/lang/String;

    sget-object v1, Lcom/ksjhgd/xx/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ksjhgd/xx/d/e;->b:Lcom/ksjhgd/xx/e;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ksjhgd/xx/d/e;->b:Lcom/ksjhgd/xx/e;

    instance-of v0, v0, Lcom/ksjhgd/xx/m;

    if-nez v0, :cond_2

    :cond_5
    new-instance v0, Lcom/ksjhgd/xx/m;

    iget-object v1, p0, Lcom/ksjhgd/xx/d/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ksjhgd/xx/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/d/e;->b:Lcom/ksjhgd/xx/e;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/ksjhgd/xx/d/e;->d:Ljava/lang/String;

    sget-object v1, Lcom/ksjhgd/xx/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ksjhgd/xx/d/e;->b:Lcom/ksjhgd/xx/e;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ksjhgd/xx/d/e;->b:Lcom/ksjhgd/xx/e;

    instance-of v0, v0, Lcom/ksjhgd/xx/al;

    if-nez v0, :cond_2

    :cond_7
    new-instance v0, Lcom/ksjhgd/xx/al;

    iget-object v1, p0, Lcom/ksjhgd/xx/d/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ksjhgd/xx/al;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/d/e;->b:Lcom/ksjhgd/xx/e;

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/ksjhgd/xx/d/e;->d:Ljava/lang/String;

    sget-object v1, Lcom/ksjhgd/xx/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ksjhgd/xx/d/e;->b:Lcom/ksjhgd/xx/e;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/ksjhgd/xx/d/e;->b:Lcom/ksjhgd/xx/e;

    instance-of v0, v0, Lcom/ksjhgd/xx/x;

    if-nez v0, :cond_2

    :cond_9
    iget-object v0, p0, Lcom/ksjhgd/xx/d/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ksjhgd/xx/x;->b(Landroid/content/Context;)Lcom/ksjhgd/xx/x;

    move-result-object v0

    iput-object v0, p0, Lcom/ksjhgd/xx/d/e;->b:Lcom/ksjhgd/xx/e;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShellService.lifeCycleMethod()"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setActivity..."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ksjhgd/xx/d/e;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ksjhgd/xx/d/e;->a:Landroid/content/Context;

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    iget-boolean v0, p0, Lcom/ksjhgd/xx/d/e;->c:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    :cond_0
    invoke-direct {p0}, Lcom/ksjhgd/xx/d/e;->a()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    iget-boolean v0, p0, Lcom/ksjhgd/xx/d/e;->c:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    :cond_0
    iget-object v0, p0, Lcom/ksjhgd/xx/d/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v0, p0, Lcom/ksjhgd/xx/d/e;->e:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/ksjhgd/xx/d/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ksjhgd/xx/d/e;->e:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/ksjhgd/xx/d/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksjhgd/xx/e;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/e;->b()V

    :cond_1
    sget-object v0, Lcom/ksjhgd/xx/e/r;->u:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ksjhgd/xx/d/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/ksjhgd/xx/d/e;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ksjhgd/xx/d/e;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksjhgd/xx/e;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/e;->b()V

    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/r;->u:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/ksjhgd/xx/d/e;->c:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    :cond_0
    iget-object v0, p0, Lcom/ksjhgd/xx/d/e;->e:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ksjhgd/xx/d/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ksjhgd/xx/d/e;->e:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ksjhgd/xx/d/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksjhgd/xx/e;

    invoke-virtual {v0, p1, p2}, Lcom/ksjhgd/xx/e;->a(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    const/4 v1, 0x3

    if-eqz p1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ShellService.onStartCommand(0)"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ksjhgd/xx/e/r;->u:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    if-ne p2, v1, :cond_4

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ShellService.onStartCommand(START_FLAG_REDELIVERY)"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ksjhgd/xx/d/e;->e:Ljava/util/HashMap;

    sget-object v3, Lcom/ksjhgd/xx/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ksjhgd/xx/d/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/d/e;->d:Ljava/lang/String;

    sget-object v2, Lcom/ksjhgd/xx/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ksjhgd/xx/d/e;->e:Ljava/util/HashMap;

    sget-object v2, Lcom/ksjhgd/xx/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ksjhgd/xx/d/e;->e:Ljava/util/HashMap;

    sget-object v2, Lcom/ksjhgd/xx/e;->b:Ljava/lang/String;

    new-instance v3, Lcom/ksjhgd/xx/m;

    iget-object v4, p0, Lcom/ksjhgd/xx/d/e;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/ksjhgd/xx/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/ksjhgd/xx/d/e;->e:Ljava/util/HashMap;

    sget-object v2, Lcom/ksjhgd/xx/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksjhgd/xx/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ksjhgd/xx/e;->a(Landroid/content/Intent;II)I

    :cond_2
    iget-object v0, p0, Lcom/ksjhgd/xx/d/e;->d:Ljava/lang/String;

    sget-object v2, Lcom/ksjhgd/xx/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ksjhgd/xx/d/e;->e:Ljava/util/HashMap;

    sget-object v2, Lcom/ksjhgd/xx/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ksjhgd/xx/d/e;->e:Ljava/util/HashMap;

    sget-object v2, Lcom/ksjhgd/xx/e;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/ksjhgd/xx/d/e;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/ksjhgd/xx/x;->b(Landroid/content/Context;)Lcom/ksjhgd/xx/x;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/ksjhgd/xx/d/e;->e:Ljava/util/HashMap;

    sget-object v2, Lcom/ksjhgd/xx/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksjhgd/xx/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ksjhgd/xx/e;->a(Landroid/content/Intent;II)I

    :cond_4
    invoke-direct {p0}, Lcom/ksjhgd/xx/d/e;->a()V

    iget-object v0, p0, Lcom/ksjhgd/xx/d/e;->e:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/ksjhgd/xx/d/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ksjhgd/xx/d/e;->e:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ksjhgd/xx/d/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksjhgd/xx/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ksjhgd/xx/e;->a(Landroid/content/Intent;II)I

    move-result v0

    :goto_1
    return v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ShellService.onStartCommand(0)"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-boolean v0, p0, Lcom/ksjhgd/xx/d/e;->c:Z

    if-nez v0, :cond_7

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_1
.end method
