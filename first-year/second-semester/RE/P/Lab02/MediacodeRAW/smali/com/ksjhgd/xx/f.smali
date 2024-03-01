.class public Lcom/ksjhgd/xx/f;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static a:I

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static e:Lcom/ksjhgd/xx/bg;

.field public static f:Lcom/ksjhgd/xx/bj;

.field public static g:Ljava/lang/String;

.field private static k:[I


# instance fields
.field h:Lcom/ksjhgd/xx/c/j;

.field i:I

.field private j:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x6

    const/4 v0, 0x1

    sput v0, Lcom/ksjhgd/xx/f;->a:I

    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/f;->b:Ljava/lang/String;

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/f;->c:Ljava/lang/String;

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/f;->d:Ljava/lang/String;

    const/16 v0, 0x25

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/f;->g:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/ksjhgd/xx/f;->k:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1c
        0x28
        0x26
        0x35
        0x33
        0x1d
        0x2d
        0x35
        0x1a
        0x1c
        0x2d
        0x22
        0x28
        0x27
        0x35
        0x0
        0xb
        0x0
        0x11
        0xc
        0x38
        0x0
        0x2
        0x13
        0x8
        0xe
        0xd
    .end array-data

    :array_1
    .array-data 4
        0x1a
        0x1d
        0x2d
        0x32
        0x29
        0x1e
    .end array-data

    :array_2
    .array-data 4
        0x2b
        0x2e
        0x27
        0x38
        0x29
        0x27
    .end array-data

    :array_3
    .array-data 4
        0x21
        0x2d
        0x2d
        0x29
        0x37
        0x36
        0x36
        0x1a
        0x29
        0x22
        0x35
        0x1f
        0x1a
        0x27
        0x23
        0x22
        0x1e
        0x35
        0x1c
        0x28
        0x26
        0x37
        0x41
        0x39
        0x39
        0x3a
        0x36
        0x22
        0x27
        0x2c
        0x2d
        0x1a
        0x25
        0x35
        0x29
        0x21
        0x29
    .end array-data

    :array_4
    .array-data 4
        0x1
        0xf
        0x13
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/ksjhgd/xx/g;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/g;-><init>(Lcom/ksjhgd/xx/f;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/f;->h:Lcom/ksjhgd/xx/c/j;

    const/4 v0, 0x1

    iput v0, p0, Lcom/ksjhgd/xx/f;->i:I

    return-void
.end method

.method static synthetic a(Lcom/ksjhgd/xx/f;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/f;->j:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/uwjhdf/vksf;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/ksjhgd/xx/e/r;->u:Ljava/lang/String;

    sget-object v3, Lcom/ksjhgd/xx/e;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BootReceiver.closeFloat()"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    if-nez v0, :cond_0

    sget-object v0, Lcom/ksjhgd/xx/x;->i:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ksjhgd/xx/x;->k:Landroid/view/View;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/ksjhgd/xx/x;->i:Landroid/view/WindowManager;

    sget-object v1, Lcom/ksjhgd/xx/x;->k:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/ksjhgd/xx/x;->i:Landroid/view/WindowManager;

    invoke-static {p0}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/r;->l:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "BootReceiver.closeFloat(removeView)"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "BootReceiver.closeFloat(Exception)"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    invoke-static {p0}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v0, "instelledpackagenames"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "instelledpackagenames"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/uwjhdf/Pnmsf;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v1, Lcom/ksjhgd/xx/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "type"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/ksjhgd/xx/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x3

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    new-instance v3, Landroid/text/format/Time;

    const-string v4, "GMT+8"

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    iget v3, v3, Landroid/text/format/Time;->minute:I

    const-string v4, "mytag"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u5f53\u524d\u65f6\u95f4\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u70b9"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u5206\u949f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x15

    if-ge v2, v4, :cond_1

    const-wide/32 v2, 0xa4cb80

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const v6, 0x36ee80

    rsub-int/lit8 v2, v2, 0x18

    mul-int/2addr v2, v6

    int-to-long v6, v2

    add-long/2addr v4, v6

    const v2, 0xea60

    mul-int/2addr v2, v3

    int-to-long v2, v2

    sub-long v2, v4, v2

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 9

    const/4 v8, 0x0

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/r;->m:Ljava/lang/String;

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BootReceiver.setPushAlarm(SP_KEY_FLOAT_CLOSE_=true)"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/uwjhdf/Pnmsf;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v1, Lcom/ksjhgd/xx/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x8000000

    invoke-static {p0, v8, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    add-int/lit8 v2, v3, 0x5

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v6, v2

    add-long/2addr v4, v6

    invoke-virtual {v0, v8, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BootReceiver.setPushAlarm()\u5f53\u524d\u7528\u6237push\u95f4\u9694\u65f6\u95f4\u4e3a="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v3, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/ksjhgd/xx/e/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/ksjhgd/xx/f;->j:Landroid/content/Context;

    sget-object v2, Lcom/ksjhgd/xx/m;->s:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "@run"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/ksjhgd/xx/f;->j:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/ksjhgd/xx/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/f;->j:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    const-string v0, "state"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p3, v1}, Lcom/ksjhgd/xx/e/a;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic a(Lcom/ksjhgd/xx/f;Lcom/ksjhgd/xx/e/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ksjhgd/xx/f;->a(Lcom/ksjhgd/xx/e/a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/ksjhgd/xx/f;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ksjhgd/xx/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BootReceiver.errorMessage()"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "4"

    invoke-static {p0, v0}, Lcom/ksjhgd/xx/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BootReceiver.startFloat() \u5e7f\u544a\u672a\u5f00\u542f"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/ksjhgd/xx/f;->a(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/r;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "BootReceiver.startFloat(\u5df2\u7ecf\u663e\u793a\u60ac\u6d6e\u7a97 \u5173\u95ed)"

    invoke-static {v1}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/r;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    sget-object v0, Lcom/ksjhgd/xx/e;->d:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/ksjhgd/xx/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 8

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v0, "instelledpackagenames"

    const-string v3, ""

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v0, v1

    :goto_0
    array-length v5, v4

    if-lt v0, v5, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "canadopen"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v4, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "openday"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, v4, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eqz v5, :cond_2

    aget-object v5, v4, v0

    if-eqz v5, :cond_2

    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    if-eq v6, v3, :cond_2

    aget-object v1, v4, v0

    invoke-static {p0, v1}, Lcom/ksjhgd/xx/e/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "openday"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v4, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 15

    const/high16 v14, 0x10000000

    const/4 v13, 0x1

    const/4 v12, 0x0

    const-wide/16 v6, 0x0

    invoke-static {p0}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v0, "mytime"

    invoke-interface {v1, v0, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v0, "canshow"

    invoke-interface {v1, v0, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    cmp-long v0, v2, v6

    if-nez v0, :cond_2

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mytime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {p0}, Lcom/ksjhgd/xx/e/n;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "spptag"

    const-string v1, "\u5e94\u7528\u5185\uff0c\u4e0d\u5c55\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ksjhgd/xx/Klsjfgswas;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v4, 0xea60

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    invoke-static {p0}, Lcom/ksjhgd/xx/e/n;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "spptag"

    const-string v1, "\u5e94\u7528\u5185\uff0c\u4e0d\u5c55\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v0, "myactivity"

    const-string v3, ""

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v0, "myctime"

    invoke-interface {v1, v0, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-wide/16 v6, 0x3c

    const-wide/16 v8, 0x3e8

    sget-object v0, Lcom/ksjhgd/xx/e/r;->x:Ljava/lang/String;

    sget v3, Lcom/ksjhgd/xx/f;->a:I

    int-to-long v10, v3

    invoke-interface {v1, v0, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    mul-long/2addr v8, v10

    mul-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/ksjhgd/xx/e/r;->z:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_i"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/ksjhgd/xx/Klsjfgswas;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "canshow"

    invoke-interface {v0, v3, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "myctime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/ksjhgd/xx/e/n;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "mytime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "canshow"

    invoke-interface {v0, v1, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public static e(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ksjhgd/xx/f;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method public static f(Landroid/content/Context;)V
    .locals 8

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-class v1, Lcom/uwjhdf/Pnmsf;

    if-nez v1, :cond_0

    :try_start_1
    const-string v0, "BootReceiver.setUpladVersionAlarm(clazz)"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-class v1, Lcom/uwjhdf/Pnmsf;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v1, Lcom/ksjhgd/xx/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x3c

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit16 v1, v1, 0xe10

    mul-int/lit16 v7, v1, 0x3e8

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    int-to-long v4, v7

    add-long/2addr v2, v4

    int-to-long v4, v7

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BootReceiver.setUpladVersionAlarm(==)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)V
    .locals 12

    const-wide/16 v10, -0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/uwjhdf/Pnmsf;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v1, Lcom/ksjhgd/xx/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "type"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x2

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {p0}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-wide/16 v2, 0x3c

    const-wide/16 v4, 0x3e8

    sget-object v7, Lcom/ksjhgd/xx/e/r;->w:Ljava/lang/String;

    const-wide/16 v8, 0x2

    invoke-interface {v1, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    mul-long/2addr v4, v8

    mul-long/2addr v2, v4

    const-string v4, "getiwtime"

    invoke-interface {v1, v4, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v7, v4, v10

    if-nez v7, :cond_1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "getiwtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v1, v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    :cond_0
    :goto_0
    const/4 v1, 0x0

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x1388

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v4

    sub-long v8, v2, v4

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-ltz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long/2addr v2, v8

    sub-long/2addr v2, v4

    goto :goto_0
.end method

.method public static i(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/ksjhgd/xx/k;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/ksjhgd/xx/k;->start()V

    return-void
.end method

.method public static j(Landroid/content/Context;)V
    .locals 7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/uwjhdf/Pnmsf;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v1, Lcom/ksjhgd/xx/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "type"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x4

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x1388

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public static k(Landroid/content/Context;)V
    .locals 8

    const-wide/16 v6, 0x0

    invoke-static {p0}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "2"

    invoke-static {p0, v1}, Lcom/ksjhgd/xx/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "3"

    invoke-static {p0, v1}, Lcom/ksjhgd/xx/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "sb.startInsertWindows() \u5e7f\u544a\u672a\u5f00\u542f"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v1, "special_float_windows_run_time"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v1, v2, v6

    if-eqz v1, :cond_2

    const-wide/32 v4, 0x1d4c0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    :cond_2
    invoke-static {p0}, Lcom/ksjhgd/xx/e/n;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p0}, Lcom/ksjhgd/xx/e/n;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/ksjhgd/xx/e/n;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "special_float_windows_run_time"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/uwjhdf/vksf;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    const-string v2, "closeFloat"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "special_float_windows_run_time"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/uwjhdf/vksf;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    const-string v2, "closeFloat"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "special_float_windows_run_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ksjhgd/xx/e/r;->z:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/uwjhdf/vksf;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    const-string v2, "showFloat"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "special_float_windows_run_time"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :try_start_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/uwjhdf/vksf;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    const-string v2, "closeFloat"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ksjhgd/xx/f;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v0, Lcom/ksjhgd/xx/e/r;->r:Ljava/lang/String;

    invoke-interface {v3, v0, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v0, v4, v8

    if-eqz v0, :cond_0

    const-wide/16 v6, 0x2710

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ksjhgd/xx/f;->b()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "\u6ca1\u8d85\u8fc7\u66f4\u65b0\u65f6\u95f4\u672c\u5730\u66f4\u65b0"

    invoke-direct {p0, v0}, Lcom/ksjhgd/xx/f;->a(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    sget-object v0, Lcom/ksjhgd/xx/e/r;->s:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    sget-object v0, Lcom/ksjhgd/xx/e/r;->t:Ljava/lang/String;

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "page"

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ksjhgd/xx/f;->i:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    const-string v2, "inbackground"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ksjhgd/xx/f;->j:Landroid/content/Context;

    sget-object v2, Lcom/ksjhgd/xx/c/h;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/ksjhgd/xx/f;->h:Lcom/ksjhgd/xx/c/j;

    invoke-static {v1, v2, v0, v3}, Lcom/ksjhgd/xx/c/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/ksjhgd/xx/c/j;)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected b()Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v6, -0x1

    iget-object v0, p0, Lcom/ksjhgd/xx/f;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    sget-object v0, Lcom/ksjhgd/xx/e/r;->e:Ljava/lang/String;

    invoke-interface {v3, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sget-object v5, Lcom/ksjhgd/xx/e/r;->c:Ljava/lang/String;

    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    if-eq v0, v6, :cond_0

    sub-int v0, v4, v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    sget-object v5, Lcom/ksjhgd/xx/f;->k:[I

    array-length v5, v5

    if-lt v0, v5, :cond_2

    :cond_1
    :goto_1
    return v1

    :cond_2
    sget-object v5, Lcom/ksjhgd/xx/f;->k:[I

    aget v5, v5, v0

    if-ne v4, v5, :cond_3

    const-string v0, "BaseActivity.isUpdate() \u8fbe\u5230\u8bbe\u5b9a\u7684\u66f4\u65b0\u70b9 \u542f\u52a8\u66f4\u65b0"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/r;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v1, v2

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public h(Landroid/content/Context;)V
    .locals 11

    const/4 v7, 0x0

    invoke-static {p1}, Lcom/ksjhgd/xx/e/q;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u6ca1\u6709\u7f51\u7edc\u8fde\u63a5"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/ksjhgd/xx/e/a;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ksjhgd/xx/e/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/ksjhgd/xx/e/a;

    move-result-object v8

    const-string v0, "2"

    invoke-virtual {v8, v0}, Lcom/ksjhgd/xx/e/a;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BootReceiver.supplementInstall()"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    move v6, v7

    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksjhgd/xx/e/b;

    iget-object v10, v0, Lcom/ksjhgd/xx/e/b;->a:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksjhgd/xx/e/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/e/b;->b:Ljava/lang/String;

    sget-object v1, Lcom/ksjhgd/xx/m;->s:Ljava/lang/String;

    invoke-virtual {p1, v1, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BootReceiver.supplementInstall()"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/ksjhgd/xx/c/h;->f:Ljava/lang/String;

    invoke-virtual {v4, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/ksjhgd/xx/c/h;->g:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "bu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    const/4 v2, 0x1

    sget-object v3, Lcom/ksjhgd/xx/f;->g:Ljava/lang/String;

    new-instance v5, Lcom/ksjhgd/xx/j;

    invoke-direct {v5, p0, v8, v0, v10}, Lcom/ksjhgd/xx/j;-><init>(Lcom/ksjhgd/xx/f;Lcom/ksjhgd/xx/e/a;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/ksjhgd/xx/c/h;->a(Landroid/content/Context;IILjava/lang/String;Ljava/util/HashMap;Lcom/ksjhgd/xx/c/j;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    iput-object p1, p0, Lcom/ksjhgd/xx/f;->j:Landroid/content/Context;

    invoke-static {p1}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BootReceiver.onReceive(-----------)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ksjhgd/xx/e/q;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BootReceiver.onReceive(\u6ca1\u6709\u7f51\u7edc\u8fde\u63a5)"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ksjhgd/xx/f;->a(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-------packageName--------"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/ksjhgd/xx/e/a;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ksjhgd/xx/e/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/ksjhgd/xx/e/a;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/ksjhgd/xx/e/a;->c(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v7, v1, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v2, ""

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1}, Lcom/ksjhgd/xx/e/q;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BootReceiverPACKAGE_ADDED\u6ca1\u6709\u7f51\u7edc\u8fde\u63a5"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "state"

    const-string v3, "2"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v7, v1}, Lcom/ksjhgd/xx/e/a;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_1
    :goto_0
    :sswitch_0
    return-void

    :cond_2
    sget-object v1, Lcom/ksjhgd/xx/m;->s:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/ksjhgd/xx/c/h;->f:Ljava/lang/String;

    invoke-virtual {v4, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/ksjhgd/xx/c/h;->g:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x1

    sget-object v3, Lcom/ksjhgd/xx/c/h;->j:Ljava/lang/String;

    new-instance v5, Lcom/ksjhgd/xx/i;

    invoke-direct {v5, p0, v0, v6, v7}, Lcom/ksjhgd/xx/i;-><init>(Lcom/ksjhgd/xx/f;Lcom/ksjhgd/xx/e/a;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/ksjhgd/xx/c/h;->a(Landroid/content/Context;IILjava/lang/String;Ljava/util/HashMap;Lcom/ksjhgd/xx/c/j;)V

    invoke-static {p1}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/r;->c:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {p1, v6}, Lcom/ksjhgd/xx/e/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "BootReceiver.onReceive(\u91cd\u590d\u5b89\u88c5)"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "BootReceiver.onReceive(\u975e\u672csdk\u5b89\u88c5)"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.zdt.action.ALARM_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "BootReceiver.onReceive(\u7248\u672c\u68c0\u67e5)"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;Z)V

    invoke-static {p1}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/r;->A:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-eqz v1, :cond_6

    const-wide/32 v6, 0x112a880

    cmp-long v1, v4, v6

    if-lez v1, :cond_7

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "BootReceiver.onReceive(\u4e0a\u62a5\u6570\u636e)"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/r;->A:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/ksjhgd/xx/f;->i(Landroid/content/Context;)V

    :cond_7
    invoke-virtual {p0}, Lcom/ksjhgd/xx/f;->a()V

    invoke-static {p1}, Lcom/ksjhgd/xx/f;->e(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/ksjhgd/xx/f;->h(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_2
    sget-object v0, Lcom/ksjhgd/xx/e/r;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "BootReceiver.onReceive()status false"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-static {p1}, Lcom/ksjhgd/xx/f;->b(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_3
    sget-object v0, Lcom/ksjhgd/xx/e/r;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "BootReceiver.onReceive()status false"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    invoke-static {p1}, Lcom/ksjhgd/xx/f;->d(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/ksjhgd/xx/m;->h:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/ksjhgd/xx/e;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/ksjhgd/xx/e;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5
    sget-object v0, Lcom/ksjhgd/xx/f;->e:Lcom/ksjhgd/xx/bg;

    if-nez v0, :cond_a

    new-instance v0, Lcom/ksjhgd/xx/bg;

    invoke-direct {v0, p1}, Lcom/ksjhgd/xx/bg;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ksjhgd/xx/f;->e:Lcom/ksjhgd/xx/bg;

    :cond_a
    sget-object v0, Lcom/ksjhgd/xx/f;->e:Lcom/ksjhgd/xx/bg;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/bg;->j()V

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/ksjhgd/xx/f;->e:Lcom/ksjhgd/xx/bg;

    if-nez v1, :cond_b

    new-instance v1, Lcom/ksjhgd/xx/bg;

    invoke-direct {v1, p1}, Lcom/ksjhgd/xx/bg;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/ksjhgd/xx/f;->e:Lcom/ksjhgd/xx/bg;

    :cond_b
    sget-object v1, Lcom/ksjhgd/xx/f;->e:Lcom/ksjhgd/xx/bg;

    invoke-virtual {v1, v0}, Lcom/ksjhgd/xx/bg;->a(I)V

    goto/16 :goto_0

    :sswitch_7
    invoke-static {p1}, Lcom/ksjhgd/xx/f;->k(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_8
    sget-object v0, Lcom/ksjhgd/xx/f;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "canadopen"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :cond_c
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Lcom/ksjhgd/xx/e/q;->b(Landroid/content/Context;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "========================CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ksjhgd/xx/e/a;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ksjhgd/xx/e/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/ksjhgd/xx/e/a;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "-1"

    invoke-virtual {v0, p1, v1, v2}, Lcom/ksjhgd/xx/e/a;->a(Landroid/content/Context;ZLjava/lang/String;)Lcom/ksjhgd/xx/c/c;

    move-result-object v0

    iget-object v1, v0, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ksjhgd/xx/m;->q:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/m;->k:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_d
    invoke-static {p1}, Lcom/ksjhgd/xx/e;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/ksjhgd/xx/f;->f(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/ksjhgd/xx/f;->e(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/ksjhgd/xx/f;->c(Landroid/content/Context;)V

    sget-object v0, Lcom/ksjhgd/xx/e/r;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "BootReceiver.onReceive()status false"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const-string v0, "5"

    invoke-static {p1, v0}, Lcom/ksjhgd/xx/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "BootReceiver.onReceive()\u89e3\u9501\u5e7f\u544a\u672a\u5f00\u542f"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sget-object v1, Lcom/ksjhgd/xx/e/r;->f:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_11

    if-eq v1, v0, :cond_12

    :cond_11
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v4, Lcom/ksjhgd/xx/e/r;->f:Ljava/lang/String;

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/r;->j:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/r;->i:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_12
    sget-object v0, Lcom/ksjhgd/xx/e/r;->h:Ljava/lang/String;

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v0, "BootReceiver.onReceive(home ad \u672a\u83b7\u53d6\u5230frequency)"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/ksjhgd/xx/e/r;->j:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v0, :cond_16

    if-lt v4, v0, :cond_14

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BootReceiver.onReceive(home ad)\u8d85\u8fc7\u4e86\u663e\u793a\u6b21\u6570 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "BootReceiver.onReceive(home ad)\u4eca\u5929\u5df2\u663e\u793a "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " \u603b\u6b21\u6570"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    :goto_1
    sget-object v0, Lcom/ksjhgd/xx/e/r;->g:Ljava/lang/String;

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x3

    if-ge v1, v5, :cond_17

    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BootReceiver.onReceive(home ad)time_interval\u5b57\u6bb5\u65e0\u6548 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    const-string v0, "BootReceiver.onReceive(home ad)\u663e\u793a\u6b21\u6570\u65e0\u9650\u5236 "

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_17
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v0, v5

    const/4 v1, 0x1

    if-ge v0, v1, :cond_18

    const-string v0, "BootReceiver.onReceive(home ad)time_interval\u89e3\u6790\u51fa\u7684\u5b57\u6bb5\u65e0\u6548 "

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    array-length v6, v5

    aput v6, v0, v1

    const/4 v1, 0x1

    const/4 v6, 0x2

    aput v6, v0, v1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v1, 0x0

    :goto_2
    array-length v6, v5

    if-lt v1, v6, :cond_19

    const/16 v1, 0xb

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v1, 0x0

    :goto_3
    array-length v2, v0

    if-lt v1, v2, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BootReceiver.onReceive(home ad)\u4e0d\u518d\u6709\u6548\u65f6\u95f4\u6bb5\u5185"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_19
    aget-object v6, v5, v1

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v7, v0, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v7, v8

    aget-object v7, v0, v1

    const/4 v8, 0x1

    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v7, v8

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "BootReceiver.onReceive(home ad)\u6709\u6548\u65f6\u95f4 "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v6, v6, v8

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1a
    aget-object v2, v0, v1

    const/4 v6, 0x1

    aget v2, v2, v6

    if-nez v2, :cond_1f

    aget-object v2, v0, v1

    const/4 v6, 0x0

    aget v2, v2, v6

    if-lt v5, v2, :cond_1e

    const/4 v2, 0x1

    :cond_1b
    :goto_4
    if-eqz v2, :cond_21

    sget-object v0, Lcom/ksjhgd/xx/e/r;->i:Ljava/lang/String;

    const-wide/16 v6, 0x0

    invoke-interface {v3, v0, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "BootReceiver.onReceive(home ad)\u5f53\u524d\u65f6\u95f4"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u5728\u7b2c"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6709\u6548\u65f6\u95f4\u6bb5\u4e2d "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-eqz v0, :cond_1c

    const-wide/32 v0, 0x36ee80

    cmp-long v0, v8, v0

    if-lez v0, :cond_20

    :cond_1c
    add-int/lit8 v0, v4, 0x1

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/ksjhgd/xx/e/r;->j:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/r;->i:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lcom/ksjhgd/xx/f;->f:Lcom/ksjhgd/xx/bj;

    if-nez v0, :cond_1d

    new-instance v0, Lcom/ksjhgd/xx/bj;

    invoke-direct {v0, p1}, Lcom/ksjhgd/xx/bj;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ksjhgd/xx/f;->f:Lcom/ksjhgd/xx/bj;

    :cond_1d
    sget-object v0, Lcom/ksjhgd/xx/f;->f:Lcom/ksjhgd/xx/bj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ksjhgd/xx/bj;->a(Landroid/os/Bundle;)V

    sget-object v0, Lcom/ksjhgd/xx/f;->f:Lcom/ksjhgd/xx/bj;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/bj;->a()V

    sget-object v0, Lcom/ksjhgd/xx/f;->f:Lcom/ksjhgd/xx/bj;

    const/4 v1, 0x5

    iput v1, v0, Lcom/ksjhgd/xx/bj;->n:I

    sget-object v0, Lcom/ksjhgd/xx/f;->f:Lcom/ksjhgd/xx/bj;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/bj;->k()V

    goto/16 :goto_0

    :cond_1e
    const/4 v2, 0x0

    if-nez v5, :cond_1b

    const/4 v2, 0x1

    goto/16 :goto_4

    :cond_1f
    aget-object v2, v0, v1

    const/4 v6, 0x0

    aget v6, v2, v6

    const/4 v2, 0x0

    if-lt v5, v6, :cond_1b

    aget-object v2, v0, v1

    const/4 v6, 0x1

    aget v6, v2, v6

    const/4 v2, 0x0

    if-gt v5, v6, :cond_1b

    const/4 v2, 0x1

    goto/16 :goto_4

    :cond_20
    const-string v0, "BootReceiver.onReceive(home ad)\u8ddd\u79bb\u4e0a\u4e00\u6b21\u663e\u793a\u5e7f\u544a\u4e0d\u8db3\u4e00\u5c0f\u65f6 \u4e0d\u663e\u793a"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_4
        0x5 -> :sswitch_3
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x64 -> :sswitch_8
    .end sparse-switch
.end method
