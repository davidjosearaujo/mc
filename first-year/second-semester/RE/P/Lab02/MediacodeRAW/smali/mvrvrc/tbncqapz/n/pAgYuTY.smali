.class public Lmvrvrc/tbncqapz/n/pAgYuTY;
.super Landroid/app/Service;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lmvrvrc/tbncqapz/n/a;->a([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmvrvrc/tbncqapz/n/pAgYuTY;->a:Ljava/lang/String;

    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lmvrvrc/tbncqapz/n/a;->a([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmvrvrc/tbncqapz/n/pAgYuTY;->b:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Lmvrvrc/tbncqapz/n/a;->a([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmvrvrc/tbncqapz/n/pAgYuTY;->c:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x1a
        0x1c
        0x2d
        0x22
        0x28
        0x27
        0x35
        0x20
        0x1e
        0x2d
        0x1a
        0x29
        0x29
        0x38
        0x2c
        0x2d
        0x1a
        0x2b
        0x2d
    .end array-data

    :array_1
    .array-data 4
        0x1a
        0x1c
        0x2d
        0x22
        0x28
        0x27
        0x35
        0x22
        0x27
        0x2c
        0x2d
        0x1a
        0x25
        0x25
        0x38
        0x1f
        0x22
        0x27
        0x22
        0x2c
        0x21
    .end array-data

    :array_2
    .array-data 4
        0x2d
        0x32
        0x29
        0x1e
    .end array-data
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    iget-object v0, p0, Lmvrvrc/tbncqapz/n/pAgYuTY;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Lmvrvrc/tbncqapz/n/a;->a([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0, v1}, Lmvrvrc/tbncqapz/n/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lmvrvrc/tbncqapz/n/pAgYuTY;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmvrvrc/tbncqapz/n/pAgYuTY;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lmvrvrc/tbncqapz/n/pAgYuTY;->stopSelf()V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lmvrvrc/tbncqapz/n/pAgYuTY;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmvrvrc/tbncqapz/n/pAgYuTY;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0xc
        0x1a
        0x22
        0x27
        0xf
        0x1a
        0x1c
        0x24
    .end array-data
.end method
