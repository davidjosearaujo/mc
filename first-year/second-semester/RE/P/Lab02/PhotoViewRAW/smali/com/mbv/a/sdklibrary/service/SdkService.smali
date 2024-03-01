.class public Lcom/mbv/a/sdklibrary/service/SdkService;
.super Landroid/app/Service;
.source "SdkService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 32
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 57
    invoke-static {}, Lcom/mbv/a/sdklibrary/a;->b()V

    .line 58
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 59
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 37
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 41
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    invoke-static {p0}, Lcom/mbv/a/sdklibrary/a;->a(Landroid/content/Context;)V

    .line 44
    :cond_0
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/mbv/a/sdklibrary/service/SdkService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    .line 46
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/mbv/a/sdklibrary/receiver/Alarmreceiver;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    const-string v4, "com.mbv.a.restart_action"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    invoke-static {p0, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 49
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 50
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
