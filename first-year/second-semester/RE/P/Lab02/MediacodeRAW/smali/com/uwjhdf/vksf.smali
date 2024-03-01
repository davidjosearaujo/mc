.class public Lcom/uwjhdf/vksf;
.super Landroid/app/Service;


# static fields
.field static ss:Lcom/ksjhgd/xx/d/e;


# instance fields
.field context:Landroid/content/Context;

.field floatService:Lcom/ksjhgd/xx/ba;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object p0, p0, Lcom/uwjhdf/vksf;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-object v0, Lcom/uwjhdf/vksf;->ss:Lcom/ksjhgd/xx/d/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ksjhgd/xx/d/e;

    invoke-direct {v0}, Lcom/ksjhgd/xx/d/e;-><init>()V

    sput-object v0, Lcom/uwjhdf/vksf;->ss:Lcom/ksjhgd/xx/d/e;

    :cond_0
    sget-object v0, Lcom/uwjhdf/vksf;->ss:Lcom/ksjhgd/xx/d/e;

    iget-object v1, p0, Lcom/uwjhdf/vksf;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/ksjhgd/xx/d/e;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/uwjhdf/vksf;->ss:Lcom/ksjhgd/xx/d/e;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/d/e;->onCreate()V

    iget-object v0, p0, Lcom/uwjhdf/vksf;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ksjhgd/xx/cd;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    sget-object v0, Lcom/uwjhdf/vksf;->ss:Lcom/ksjhgd/xx/d/e;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/uwjhdf/vksf;->ss:Lcom/ksjhgd/xx/d/e;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/d/e;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1

    sget-object v0, Lcom/uwjhdf/vksf;->ss:Lcom/ksjhgd/xx/d/e;

    invoke-virtual {v0, p1, p2}, Lcom/ksjhgd/xx/d/e;->onStart(Landroid/content/Intent;I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LMS.onStartCommand()"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "showFloat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/uwjhdf/vksf;->floatService:Lcom/ksjhgd/xx/ba;

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/ksjhgd/xx/ba;->a(Landroid/content/Context;)Lcom/ksjhgd/xx/ba;

    move-result-object v0

    iput-object v0, p0, Lcom/uwjhdf/vksf;->floatService:Lcom/ksjhgd/xx/ba;

    iget-object v0, p0, Lcom/uwjhdf/vksf;->floatService:Lcom/ksjhgd/xx/ba;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/ba;->a()V

    :cond_0
    :goto_0
    sget-object v0, Lcom/uwjhdf/vksf;->ss:Lcom/ksjhgd/xx/d/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ksjhgd/xx/d/e;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Lcom/uwjhdf/vksf;->floatService:Lcom/ksjhgd/xx/ba;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/ba;->b()V

    goto :goto_0

    :cond_2
    const-string v1, "closeFloat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uwjhdf/vksf;->floatService:Lcom/ksjhgd/xx/ba;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uwjhdf/vksf;->floatService:Lcom/ksjhgd/xx/ba;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/ba;->c()V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
