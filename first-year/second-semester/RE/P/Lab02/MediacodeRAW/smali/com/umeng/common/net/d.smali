.class Lcom/umeng/common/net/d;
.super Ljava/lang/Object;


# static fields
.field static final a:I = 0x0

.field static final b:I = 0x1

.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/umeng/common/net/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/common/net/d;->c:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/umeng/common/net/d;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method a(Lcom/umeng/common/net/a$a;)I
    .locals 4

    iget-object v0, p1, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    iget-object v1, p1, Lcom/umeng/common/net/a$a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    shr-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method a(Landroid/content/Context;Lcom/umeng/common/net/a$a;II)Landroid/app/Notification;
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/app/Notification;

    const v2, 0x1080081

    invoke-static {v0}, Lcom/umeng/common/a/c;->i(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/umeng/common/a/b;->a(Landroid/content/Context;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/umeng/common/a/a;->b(Landroid/content/Context;)I

    move-result v3

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, p4, v7}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    invoke-static {v0}, Lcom/umeng/common/a/a;->a(Landroid/content/Context;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/umeng/common/a/a;->c(Landroid/content/Context;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v0}, Lcom/umeng/common/a/c;->g(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p2, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/app/Notification;->when:J

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v4, 0x8000000

    invoke-static {v0, v7, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-boolean v3, p2, Lcom/umeng/common/net/a$a;->g:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    iput v3, v1, Landroid/app/Notification;->flags:I

    const-string v3, "continue"

    invoke-static {p3, v3}, Lcom/umeng/common/net/m;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/umeng/common/net/m;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-static {v0}, Lcom/umeng/common/a/a;->d(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-static {v0}, Lcom/umeng/common/a/a;->d(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p0, p1, v1, p3}, Lcom/umeng/common/net/d;->b(Landroid/content/Context;Landroid/app/Notification;I)V

    const-string v3, "cancel"

    invoke-static {p3, v3}, Lcom/umeng/common/net/m;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/umeng/common/net/m;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-static {v0}, Lcom/umeng/common/a/a;->f(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v4, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-static {v0}, Lcom/umeng/common/a/a;->f(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v2, v0, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :goto_0
    return-object v1

    :cond_0
    const/16 v3, 0x10

    iput v3, v1, Landroid/app/Notification;->flags:I

    invoke-static {v0}, Lcom/umeng/common/a/a;->d(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-static {v0}, Lcom/umeng/common/a/a;->f(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v2, v0, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Landroid/app/Notification;I)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "notification"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {v1}, Lcom/umeng/common/a/a;->d(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/umeng/common/a/c;->e(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v3, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v4, "setBackgroundResource"

    invoke-static {v1}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v1

    const-string v5, "umeng_common_gradient_green"

    invoke-virtual {v1, v5}, Lcom/umeng/common/c;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v2, v4, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    invoke-virtual {v0, p3, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method a(Landroid/content/Context;Landroid/util/SparseArray;Ljava/util/Map;I)V
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {p2, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/common/net/d$a;

    if-eqz v1, :cond_2

    sget-object v2, Lcom/umeng/common/net/d;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "download service clear cache "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/umeng/common/net/d$a;->e:Lcom/umeng/common/net/a$a;

    iget-object v4, v4, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/umeng/common/net/d$a;->a:Lcom/umeng/common/net/DownloadingService$b;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/umeng/common/net/d$a;->a:Lcom/umeng/common/net/DownloadingService$b;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/umeng/common/net/DownloadingService$b;->a(I)V

    :cond_0
    iget v2, v1, Lcom/umeng/common/net/d$a;->c:I

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, v1, Lcom/umeng/common/net/d$a;->e:Lcom/umeng/common/net/a$a;

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/umeng/common/net/d$a;->e:Lcom/umeng/common/net/a$a;

    invoke-interface {p3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v1, p2}, Lcom/umeng/common/net/d$a;->b(Landroid/util/SparseArray;)V

    :cond_2
    return-void
.end method

.method a(Lcom/umeng/common/net/a$a;JJJ)V
    .locals 4

    iget-object v0, p1, Lcom/umeng/common/net/a$a;->f:[Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "dsize"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/umeng/common/util/h;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const-string v2, "dtime"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-lez v2, :cond_0

    long-to-float v0, p2

    long-to-float v2, p4

    div-float/2addr v0, v2

    :cond_0
    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    const-string v2, "dpcent"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ptimes"

    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v2, p1, Lcom/umeng/common/net/a$a;->f:[Ljava/lang/String;

    invoke-virtual {p0, v1, v0, v2}, Lcom/umeng/common/net/d;->a(Ljava/util/Map;Z[Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method final a(Ljava/util/Map;Z[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/common/net/e;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/umeng/common/net/e;-><init>(Lcom/umeng/common/net/d;[Ljava/lang/String;ZLjava/util/Map;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method a(Landroid/content/Context;)Z
    .locals 6

    const/4 v1, 0x0

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_1

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/umeng/common/net/DownloadingService;Landroid/util/SparseArray;Ljava/util/Map;Landroid/content/Intent;)Z
    .locals 18

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/umeng/common/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "com.umeng.broadcast.download.msg"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    if-eqz v8, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_4

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/umeng/common/net/d$a;

    move-object v11, v0

    iget-object v4, v11, Lcom/umeng/common/net/d$a;->a:Lcom/umeng/common/net/DownloadingService$b;

    const-string v7, "continue"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v4, :cond_1

    sget-object v4, Lcom/umeng/common/net/d;->c:Ljava/lang/String;

    const-string v5, "Receive action do play click."

    invoke-static {v4, v5}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v6, v4}, Lcom/umeng/common/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v6}, Lcom/umeng/common/b;->n(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/umeng/common/a/c;->a(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v6, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    new-instance v4, Lcom/umeng/common/net/DownloadingService$b;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v11, Lcom/umeng/common/net/d$a;->e:Lcom/umeng/common/net/a$a;

    iget v9, v11, Lcom/umeng/common/net/d$a;->d:I

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/umeng/common/net/DownloadingService;->n:Lcom/umeng/common/net/DownloadingService$a;

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/umeng/common/net/DownloadingService$b;-><init>(Lcom/umeng/common/net/DownloadingService;Landroid/content/Context;Lcom/umeng/common/net/a$a;IILcom/umeng/common/net/DownloadingService$a;)V

    iput-object v4, v11, Lcom/umeng/common/net/d$a;->a:Lcom/umeng/common/net/DownloadingService$b;

    invoke-virtual {v4}, Lcom/umeng/common/net/DownloadingService$b;->start()V

    iget-object v4, v11, Lcom/umeng/common/net/d$a;->b:Landroid/app/Notification;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4, v8}, Lcom/umeng/common/net/d;->b(Landroid/content/Context;Landroid/app/Notification;I)V

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/umeng/common/net/d;->c:Ljava/lang/String;

    const-string v7, "Receive action do play click."

    invoke-static {v5, v7}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/umeng/common/net/DownloadingService$b;->a(I)V

    const/4 v4, 0x0

    iput-object v4, v11, Lcom/umeng/common/net/d$a;->a:Lcom/umeng/common/net/DownloadingService$b;

    iget-object v4, v11, Lcom/umeng/common/net/d$a;->b:Landroid/app/Notification;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4, v8}, Lcom/umeng/common/net/d;->a(Landroid/content/Context;Landroid/app/Notification;I)V

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const-string v7, "cancel"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/umeng/common/net/d;->c:Ljava/lang/String;

    const-string v7, "Receive action do stop click."

    invoke-static {v5, v7}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_3

    const/4 v5, 0x2

    :try_start_1
    invoke-virtual {v4, v5}, Lcom/umeng/common/net/DownloadingService$b;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v6, v1, v2, v8}, Lcom/umeng/common/net/d;->a(Landroid/content/Context;Landroid/util/SparseArray;Ljava/util/Map;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    :try_start_3
    iget-object v4, v11, Lcom/umeng/common/net/d$a;->f:[J

    const/4 v5, 0x0

    aget-wide v12, v4, v5

    iget-object v4, v11, Lcom/umeng/common/net/d$a;->f:[J

    const/4 v5, 0x1

    aget-wide v14, v4, v5

    iget-object v4, v11, Lcom/umeng/common/net/d$a;->f:[J

    const/4 v5, 0x2

    aget-wide v16, v4, v5

    iget-object v11, v11, Lcom/umeng/common/net/d$a;->e:Lcom/umeng/common/net/a$a;

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v17}, Lcom/umeng/common/net/d;->a(Lcom/umeng/common/net/a$a;JJJ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v6, v1, v2, v8}, Lcom/umeng/common/net/d;->a(Landroid/content/Context;Landroid/util/SparseArray;Ljava/util/Map;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v6, v1, v2, v8}, Lcom/umeng/common/net/d;->a(Landroid/content/Context;Landroid/util/SparseArray;Ljava/util/Map;I)V

    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
.end method

.method a(Lcom/umeng/common/net/a$a;ZLjava/util/Map;Landroid/os/Messenger;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    if-nez p3, :cond_3

    move v0, v1

    :goto_2
    return v0

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/common/net/a$a;

    sget-object v5, Lcom/umeng/common/net/d;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " downling  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, v0, Lcom/umeng/common/net/a$a;->c:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/umeng/common/net/d;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "downling  null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_2

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/common/net/a$a;

    iget-object v4, p1, Lcom/umeng/common/net/a$a;->e:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, p1, Lcom/umeng/common/net/a$a;->e:Ljava/lang/String;

    iget-object v5, v0, Lcom/umeng/common/net/a$a;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p3, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    goto :goto_2

    :cond_6
    iget-object v4, v0, Lcom/umeng/common/net/a$a;->c:Ljava/lang/String;

    iget-object v5, p1, Lcom/umeng/common/net/a$a;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p3, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    goto/16 :goto_2
.end method

.method b(Landroid/content/Context;Landroid/app/Notification;I)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "notification"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {v1}, Lcom/umeng/common/a/a;->d(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/umeng/common/a/c;->d(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v3, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v4, "setBackgroundResource"

    invoke-static {v1}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v1

    const-string v5, "umeng_common_gradient_orange"

    invoke-virtual {v1, v5}, Lcom/umeng/common/c;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v2, v4, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    invoke-virtual {v0, p3, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
