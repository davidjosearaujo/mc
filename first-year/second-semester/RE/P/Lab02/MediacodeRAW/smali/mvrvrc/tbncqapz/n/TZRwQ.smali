.class public Lmvrvrc/tbncqapz/n/TZRwQ;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field a:Lmvrvrc/tbncqapz/n/b;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lmvrvrc/tbncqapz/n/a;->a([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmvrvrc/tbncqapz/n/TZRwQ;->f:Ljava/lang/String;

    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lmvrvrc/tbncqapz/n/a;->a([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmvrvrc/tbncqapz/n/TZRwQ;->b:Ljava/lang/String;

    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Lmvrvrc/tbncqapz/n/a;->a([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmvrvrc/tbncqapz/n/TZRwQ;->c:Ljava/lang/String;

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    invoke-static {v0}, Lmvrvrc/tbncqapz/n/a;->a([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmvrvrc/tbncqapz/n/TZRwQ;->d:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    invoke-static {v0}, Lmvrvrc/tbncqapz/n/a;->a([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmvrvrc/tbncqapz/n/TZRwQ;->e:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x12
        0x21
        0x1e
        0x25
        0x25
        0x11
        0x1e
        0x1c
        0x1e
        0x22
        0x2f
        0x1e
        0x2b
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

    :array_2
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

    :array_3
    .array-data 4
        0x1a
        0x1c
        0x2d
        0x22
        0x28
        0x27
        0x35
        0x2c
        0x2d
        0x1a
        0x2b
        0x2d
        0x38
        0x1a
        0x25
        0x1a
        0x2b
        0x26
    .end array-data

    :array_4
    .array-data 4
        0x2d
        0x32
        0x29
        0x1e
    .end array-data
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 v3, 0x5

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {p1}, Lmvrvrc/tbncqapz/n/d;->a(Landroid/content/Context;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmvrvrc/tbncqapz/n/TZRwQ;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lmvrvrc/tbncqapz/n/TZRwQ;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lmvrvrc/tbncqapz/n/a;->a([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lmvrvrc/tbncqapz/n/TZRwQ;->d:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1, v9, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    add-long/2addr v4, v6

    invoke-virtual {v0, v8, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lmvrvrc/tbncqapz/n/a;->a([I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    invoke-static {v1}, Lmvrvrc/tbncqapz/n/a;->a([I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {p1}, Lmvrvrc/tbncqapz/n/d;->b(Landroid/content/Context;)V

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lmvrvrc/tbncqapz/n/nsMp;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmvrvrc/tbncqapz/n/TZRwQ;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmvrvrc/tbncqapz/n/b;->a(Landroid/content/Context;Ljava/lang/String;)Lmvrvrc/tbncqapz/n/b;

    move-result-object v0

    iput-object v0, p0, Lmvrvrc/tbncqapz/n/TZRwQ;->a:Lmvrvrc/tbncqapz/n/b;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-class v1, Lmvrvrc/tbncqapz/n/uwPKFy;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lmvrvrc/tbncqapz/n/nsMp;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lmvrvrc/tbncqapz/n/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmvrvrc/tbncqapz/n/TZRwQ;->a:Lmvrvrc/tbncqapz/n/b;

    const-string v2, "onReceive"

    new-array v3, v11, [Ljava/lang/Object;

    aput-object p1, v3, v8

    aput-object p2, v3, v9

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v10

    new-array v0, v11, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v0, v8

    const-class v4, Landroid/content/Intent;

    aput-object v4, v0, v9

    const-class v4, Ljava/lang/String;

    aput-object v4, v0, v10

    invoke-virtual {v1, v2, v3, v0}, Lmvrvrc/tbncqapz/n/b;->a(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    return-void

    :cond_1
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmvrvrc/tbncqapz/n/pAgYuTY;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lmvrvrc/tbncqapz/n/TZRwQ;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lmvrvrc/tbncqapz/n/TZRwQ;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v3, [I

    fill-array-data v0, :array_3

    invoke-static {v0}, Lmvrvrc/tbncqapz/n/a;->a([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/uwjhdf/Ihsjf;->setOOM(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    invoke-static {v0}, Lmvrvrc/tbncqapz/n/a;->a([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkxrkn/xiukxrkn/xiu/cmbutd/lglx;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :array_0
    .array-data 4
        0x5
        0x8
        0x11
        0x12
        0x13
    .end array-data

    :array_1
    .array-data 4
        0x22
        0x2c
        0x1f
        0x22
        0x2b
        0x2c
        0x2d
    .end array-data

    :array_2
    .array-data 4
        0x22
        0x2c
        0x1f
        0x22
        0x2b
        0x2c
        0x2d
    .end array-data

    :array_3
    .array-data 4
        0x3a
        0x40
        0x39
        0x3e
        0x41
    .end array-data

    :array_4
    .array-data 4
        0x39
        0x3
        0x39
        0x0
        0x4
        0x4
        0x3c
        0x3d
        0x41
        0x3
        0x3a
        0x39
        0x39
        0x42
        0x3
        0x3
        0x3f
        0x3a
        0x3
        0x1
        0x3f
        0x1
        0x3a
        0x3f
        0x1
        0x0
        0x4
        0x40
        0x3c
        0x40
        0x1
        0x0
    .end array-data
.end method
