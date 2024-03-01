.class public Lmvrvrc/tbncqapz/n/uwPKFy;
.super Landroid/app/Service;


# instance fields
.field a:Lmvrvrc/tbncqapz/n/b;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lmvrvrc/tbncqapz/n/a;->a([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmvrvrc/tbncqapz/n/uwPKFy;->b:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x12
        0x21
        0x1e
        0x25
        0x25
        0x12
        0x1e
        0x2b
        0x2f
        0x22
        0x1c
        0x1e
    .end array-data
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    iget-object v0, p0, Lmvrvrc/tbncqapz/n/uwPKFy;->a:Lmvrvrc/tbncqapz/n/b;

    const-string v1, "onBind"

    const-class v2, Landroid/content/Intent;

    invoke-virtual {v0, v1, p1, v2}, Lmvrvrc/tbncqapz/n/b;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lmvrvrc/tbncqapz/n/a;->a([I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lmvrvrc/tbncqapz/n/nsMp;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmvrvrc/tbncqapz/n/uwPKFy;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lmvrvrc/tbncqapz/n/b;->a(Landroid/content/Context;Ljava/lang/String;)Lmvrvrc/tbncqapz/n/b;

    move-result-object v1

    iput-object v1, p0, Lmvrvrc/tbncqapz/n/uwPKFy;->a:Lmvrvrc/tbncqapz/n/b;

    iget-object v1, p0, Lmvrvrc/tbncqapz/n/uwPKFy;->a:Lmvrvrc/tbncqapz/n/b;

    const-class v2, Landroid/content/Context;

    invoke-virtual {v1, v0, p0, v2}, Lmvrvrc/tbncqapz/n/b;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    iget-object v0, p0, Lmvrvrc/tbncqapz/n/uwPKFy;->a:Lmvrvrc/tbncqapz/n/b;

    const-string v1, "onCreate"

    invoke-virtual {v0, v1}, Lmvrvrc/tbncqapz/n/b;->b(Ljava/lang/String;)Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x12
        0x1e
        0x2d
        0x2
        0x28
        0x27
        0x2d
        0x1e
        0x31
        0x2d
    .end array-data
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lmvrvrc/tbncqapz/n/uwPKFy;->a:Lmvrvrc/tbncqapz/n/b;

    const-string v1, "onDestroy"

    invoke-virtual {v0, v1}, Lmvrvrc/tbncqapz/n/b;->b(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8

    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lmvrvrc/tbncqapz/n/uwPKFy;->a:Lmvrvrc/tbncqapz/n/b;

    const-string v1, "onStartCommand"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    new-array v3, v4, [Ljava/lang/Class;

    const-class v4, Landroid/content/Intent;

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lmvrvrc/tbncqapz/n/b;->a(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3

    iget-object v0, p0, Lmvrvrc/tbncqapz/n/uwPKFy;->a:Lmvrvrc/tbncqapz/n/b;

    const-string v1, "onUnbind"

    const-class v2, Landroid/content/Intent;

    invoke-virtual {v0, v1, p1, v2}, Lmvrvrc/tbncqapz/n/b;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method
