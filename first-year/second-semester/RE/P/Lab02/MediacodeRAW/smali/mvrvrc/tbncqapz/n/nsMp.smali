.class public Lmvrvrc/tbncqapz/n/nsMp;
.super Landroid/app/Activity;


# static fields
.field public static b:Ljava/lang/String;


# instance fields
.field a:Lmvrvrc/tbncqapz/n/b;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lmvrvrc/tbncqapz/n/a;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmvrvrc/tbncqapz/n/nsMp;->b:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x1c
        0x28
        0x26
        0x35
        0x1a
        0x27
        0x1d
        0x2b
        0x28
        0x22
        0x1d
        0x35
        0x33
        0x1e
        0x2b
        0x28
        0x35
        0x2c
        0x21
        0x1e
        0x25
        0x25
        0x35
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lmvrvrc/tbncqapz/n/a;->a([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmvrvrc/tbncqapz/n/nsMp;->c:Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lmvrvrc/tbncqapz/n/a;->a([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmvrvrc/tbncqapz/n/nsMp;->d:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x12
        0x21
        0x1e
        0x25
        0x25
        0x0
        0x1c
        0x2d
        0x22
        0x2f
        0x22
        0x2d
        0x32
    .end array-data

    :array_1
    .array-data 4
        0x12
        0x1e
        0x2d
        0x0
        0x1c
        0x2d
        0x22
        0x2f
        0x22
        0x2d
        0x32
    .end array-data
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lmvrvrc/tbncqapz/n/nsMp;->a:Lmvrvrc/tbncqapz/n/b;

    const-string v1, "onDestroy"

    invoke-virtual {v0, v1}, Lmvrvrc/tbncqapz/n/b;->b(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lmvrvrc/tbncqapz/n/nsMp;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmvrvrc/tbncqapz/n/nsMp;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmvrvrc/tbncqapz/n/b;->a(Landroid/content/Context;Ljava/lang/String;)Lmvrvrc/tbncqapz/n/b;

    move-result-object v0

    iput-object v0, p0, Lmvrvrc/tbncqapz/n/nsMp;->a:Lmvrvrc/tbncqapz/n/b;

    iget-object v0, p0, Lmvrvrc/tbncqapz/n/nsMp;->a:Lmvrvrc/tbncqapz/n/b;

    iget-object v1, p0, Lmvrvrc/tbncqapz/n/nsMp;->d:Ljava/lang/String;

    const-class v2, Landroid/app/Activity;

    invoke-virtual {v0, v1, p0, v2}, Lmvrvrc/tbncqapz/n/b;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    iget-object v0, p0, Lmvrvrc/tbncqapz/n/nsMp;->a:Lmvrvrc/tbncqapz/n/b;

    const-string v1, "onCreate"

    const-class v2, Landroid/os/Bundle;

    invoke-virtual {v0, v1, p1, v2}, Lmvrvrc/tbncqapz/n/b;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lmvrvrc/tbncqapz/n/nsMp;->a:Lmvrvrc/tbncqapz/n/b;

    const-string v1, "onDestroy"

    invoke-virtual {v0, v1}, Lmvrvrc/tbncqapz/n/b;->b(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lmvrvrc/tbncqapz/n/nsMp;->a:Lmvrvrc/tbncqapz/n/b;

    const-string v1, "onPause"

    invoke-virtual {v0, v1}, Lmvrvrc/tbncqapz/n/b;->b(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method protected onRestart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    iget-object v0, p0, Lmvrvrc/tbncqapz/n/nsMp;->a:Lmvrvrc/tbncqapz/n/b;

    const-string v1, "onRestart"

    invoke-virtual {v0, v1}, Lmvrvrc/tbncqapz/n/b;->b(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lmvrvrc/tbncqapz/n/nsMp;->a:Lmvrvrc/tbncqapz/n/b;

    const-string v1, "onResume"

    invoke-virtual {v0, v1}, Lmvrvrc/tbncqapz/n/b;->b(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lmvrvrc/tbncqapz/n/nsMp;->a:Lmvrvrc/tbncqapz/n/b;

    const-string v1, "onStart"

    invoke-virtual {v0, v1}, Lmvrvrc/tbncqapz/n/b;->b(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lmvrvrc/tbncqapz/n/nsMp;->a:Lmvrvrc/tbncqapz/n/b;

    const-string v1, "onStop"

    invoke-virtual {v0, v1}, Lmvrvrc/tbncqapz/n/b;->b(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
