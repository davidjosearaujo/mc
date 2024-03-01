.class public Lcom/mbv/a/sdklibrary/receiver/Alarmreceiver;
.super Landroid/content/BroadcastReceiver;
.source "Alarmreceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 19
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    if-ne v0, v1, :cond_1

    .line 20
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mbv/a/sdklibrary/receiver/Alarmreceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    const-string v1, "com.mbv.a.restart_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    invoke-static {p1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 24
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 25
    const/4 v1, 0x2

    const-wide/32 v4, 0xea60

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 29
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.mbv.a.restart_action"

    if-ne v0, v1, :cond_0

    .line 27
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mbv/a/sdklibrary/service/SdkService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
