.class public Lcom/ksjhgd/xx/m;
.super Lcom/ksjhgd/xx/e;


# static fields
.field public static final g:Ljava/lang/String;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/lang/String;

.field public static final k:Ljava/lang/String;

.field public static final l:Ljava/lang/String;

.field public static final m:Ljava/lang/String;

.field public static final n:Ljava/lang/String;

.field public static final o:Ljava/lang/String;

.field public static final p:Ljava/lang/String;

.field public static final q:Ljava/lang/String;

.field public static final r:Ljava/lang/String;

.field public static final s:Ljava/lang/String;

.field public static t:Ljava/util/LinkedList;


# instance fields
.field u:Ljava/io/BufferedOutputStream;

.field v:I

.field w:Ljava/lang/String;

.field x:Ljava/lang/String;

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0xc

    const/16 v4, 0xa

    const/16 v3, 0x8

    const/4 v2, 0x5

    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/m;->g:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/m;->h:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/m;->i:Ljava/lang/String;

    new-array v0, v2, [I

    fill-array-data v0, :array_3

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/m;->j:Ljava/lang/String;

    new-array v0, v2, [I

    fill-array-data v0, :array_4

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/m;->k:Ljava/lang/String;

    new-array v0, v4, [I

    fill-array-data v0, :array_5

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/m;->l:Ljava/lang/String;

    new-array v0, v5, [I

    fill-array-data v0, :array_6

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/m;->m:Ljava/lang/String;

    new-array v0, v4, [I

    fill-array-data v0, :array_7

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/m;->n:Ljava/lang/String;

    new-array v0, v1, [I

    fill-array-data v0, :array_8

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/m;->o:Ljava/lang/String;

    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_9

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/m;->p:Ljava/lang/String;

    new-array v0, v3, [I

    fill-array-data v0, :array_a

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/m;->q:Ljava/lang/String;

    new-array v0, v3, [I

    fill-array-data v0, :array_b

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/m;->r:Ljava/lang/String;

    new-array v0, v5, [I

    fill-array-data v0, :array_c

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/m;->s:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/ksjhgd/xx/m;->t:Ljava/util/LinkedList;

    return-void

    nop

    :array_0
    .array-data 4
        0x22
        0x1d
    .end array-data

    :array_1
    .array-data 4
        0x2d
        0x32
        0x29
        0x1e
    .end array-data

    :array_2
    .array-data 4
        0x2b
        0x2e
        0x25
    .end array-data

    :array_3
    .array-data 4
        0x2d
        0x22
        0x2d
        0x25
        0x1e
    .end array-data

    :array_4
    .array-data 4
        0x2b
        0x1e
        0x2d
        0x2b
        0x32
    .end array-data

    :array_5
    .array-data 4
        0x1a
        0x29
        0x24
        0x38
        0x25
        0x1e
        0x27
        0x20
        0x2d
        0x21
    .end array-data

    :array_6
    .array-data 4
        0x22
        0x27
        0x2c
        0x2d
        0x1a
        0x25
        0x25
        0x38
        0x2d
        0x32
        0x29
        0x1e
    .end array-data

    :array_7
    .array-data 4
        0x2d
        0x22
        0x1c
        0x24
        0x1e
        0x2b
        0x13
        0x1e
        0x31
        0x2d
    .end array-data

    :array_8
    .array-data 4
        0x22
        0x1d
    .end array-data

    :array_9
    .array-data 4
        0x2c
        0x24
        0x38
        0x29
        0x1a
        0x1c
        0x24
        0x1a
        0x20
        0x1e
        0x38
        0x27
        0x1a
        0x26
        0x1e
    .end array-data

    :array_a
    .array-data 4
        0x1a
        0x1d
        0x38
        0x2b
        0x1e
        0x2d
        0x2b
        0x32
    .end array-data

    :array_b
    .array-data 4
        0x2b
        0x2e
        0x27
        0x38
        0x2d
        0x1a
        0x2c
        0x24
    .end array-data

    :array_c
    .array-data 4
        0x22
        0x27
        0x2c
        0x2d
        0x1a
        0x25
        0x25
        0x38
        0x2d
        0x32
        0x29
        0x1e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ksjhgd/xx/e;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ksjhgd/xx/m;->u:Ljava/io/BufferedOutputStream;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ksjhgd/xx/m;->v:I

    const-string v0, "0%"

    iput-object v0, p0, Lcom/ksjhgd/xx/m;->w:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/view/View;)Landroid/widget/ImageView;
    .locals 3

    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/ImageView;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_2

    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    check-cast v0, Landroid/widget/ImageView;

    move-object p0, v0

    goto :goto_0

    :cond_3
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    invoke-static {v0}, Lcom/ksjhgd/xx/m;->a(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object p0

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/ksjhgd/xx/m;->f:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/ksjhgd/xx/m;->f:Landroid/content/Context;

    const-class v4, Lcom/ksjhgd/xx/o;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v3, 0x1080081

    iput v3, v1, Landroid/app/Notification;->icon:I

    iput-object p4, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/16 v3, 0x22

    iput v3, v1, Landroid/app/Notification;->flags:I

    iget-object v3, p0, Lcom/ksjhgd/xx/m;->f:Landroid/content/Context;

    invoke-static {v3, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Lcom/ksjhgd/xx/m;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5df2\u7ecf\u4e0b\u8f7d"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, p3, v4, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/app/Notification;Landroid/graphics/Bitmap;)V
    .locals 4

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/ksjhgd/xx/m;->a(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ksjhgd/xx/m;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ksjhgd/xx/m;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 9

    const/4 v8, 0x0

    sget-object v0, Lcom/ksjhgd/xx/m;->t:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ksjhgd/xx/m;->t:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ksjhgd/xx/m;->t:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ksjhgd/xx/c/c;

    iget-object v0, p0, Lcom/ksjhgd/xx/m;->f:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/ksjhgd/xx/m;->q:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v1, :cond_1

    sget-object v2, Lcom/ksjhgd/xx/m;->k:Ljava/lang/String;

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    new-instance v0, Lcom/ksjhgd/xx/n;

    iget-object v2, v1, Lcom/ksjhgd/xx/c/c;->f:Ljava/lang/String;

    iget-object v3, v1, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    iget-object v4, v1, Lcom/ksjhgd/xx/c/c;->b:Ljava/lang/String;

    iget v5, v1, Lcom/ksjhgd/xx/c/c;->i:I

    iget-object v6, v1, Lcom/ksjhgd/xx/c/c;->d:Ljava/lang/String;

    iget-object v7, v1, Lcom/ksjhgd/xx/c/c;->e:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/ksjhgd/xx/n;-><init>(Lcom/ksjhgd/xx/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    new-array v1, v8, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ksjhgd/xx/n;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DownloadService.on ==="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/ksjhgd/xx/m;->d()V

    goto :goto_0
.end method

.method private d()V
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/ksjhgd/xx/m;->f:Landroid/content/Context;

    sget-object v1, Lcom/ksjhgd/xx/m;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/m;->o:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/ksjhgd/xx/m;->f:Landroid/content/Context;

    sget-object v2, Lcom/ksjhgd/xx/e/a;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ksjhgd/xx/e/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/ksjhgd/xx/e/a;

    move-result-object v1

    iget-object v2, p0, Lcom/ksjhgd/xx/m;->f:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v8, v0}, Lcom/ksjhgd/xx/e/a;->a(Landroid/content/Context;ZLjava/lang/String;)Lcom/ksjhgd/xx/c/c;

    move-result-object v1

    iget-object v0, v1, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/ksjhgd/xx/m;->f:Landroid/content/Context;

    check-cast v0, Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    sget-object v0, Lcom/ksjhgd/xx/m;->t:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ksjhgd/xx/m;->t:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/ksjhgd/xx/m;->t:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_1
    const-string v0, "DownloadService.startDownloadInfo(\u6ca1\u6709\u4e0b\u8f7d\u4efb\u52a1\u5173\u95ed\u65f6\u949f)"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/ksjhgd/xx/m;->f:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/ksjhgd/xx/m;->q:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v2, Lcom/ksjhgd/xx/m;->k:Ljava/lang/String;

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/ksjhgd/xx/c/c;->i:I

    sget-object v2, Lcom/ksjhgd/xx/m;->n:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ksjhgd/xx/c/c;->d:Ljava/lang/String;

    sget-object v2, Lcom/ksjhgd/xx/m;->k:Ljava/lang/String;

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_3

    new-instance v0, Lcom/ksjhgd/xx/n;

    iget-object v2, v1, Lcom/ksjhgd/xx/c/c;->f:Ljava/lang/String;

    iget-object v3, v1, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    iget-object v4, v1, Lcom/ksjhgd/xx/c/c;->b:Ljava/lang/String;

    iget v5, v1, Lcom/ksjhgd/xx/c/c;->i:I

    iget-object v6, v1, Lcom/ksjhgd/xx/c/c;->d:Ljava/lang/String;

    iget-object v7, v1, Lcom/ksjhgd/xx/c/c;->e:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/ksjhgd/xx/n;-><init>(Lcom/ksjhgd/xx/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    new-array v1, v8, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ksjhgd/xx/n;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string v0, "DownloadService.startDownloadInfo(\u542f\u52a8\u4e0b\u8f7d)"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DownloadService.on ==="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Intent;II)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DownloadService.onStartCommand(1)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/m;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/ksjhgd/xx/e/r;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/ksjhgd/xx/m;->c()V

    :cond_0
    iput p3, p0, Lcom/ksjhgd/xx/m;->y:I

    invoke-super {p0, p1, p2, p3}, Lcom/ksjhgd/xx/e;->a(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public a()V
    .locals 1

    invoke-super {p0}, Lcom/ksjhgd/xx/e;->a()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ksjhgd/xx/m;->y:I

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/ksjhgd/xx/m;->f:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method
