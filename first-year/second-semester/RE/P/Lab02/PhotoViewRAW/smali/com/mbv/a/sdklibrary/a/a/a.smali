.class public Lcom/mbv/a/sdklibrary/a/a/a;
.super Ljava/lang/Object;
.source "ExecuTaskPresenterImpl.java"


# static fields
.field private static volatile c:Lcom/mbv/a/sdklibrary/a/a/a;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mbv/a/sdklibrary/entity/TaskData;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/mbv/a/sdklibrary/entity/CodeData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/a;->a:Ljava/util/List;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/a;->b:Ljava/util/Queue;

    return-void
.end method

.method public static a()Lcom/mbv/a/sdklibrary/a/a/a;
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcom/mbv/a/sdklibrary/a/a/a;->c:Lcom/mbv/a/sdklibrary/a/a/a;

    if-nez v0, :cond_1

    .line 35
    const-class v1, Lcom/mbv/a/sdklibrary/a/a/a;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/mbv/a/sdklibrary/a/a/a;->c:Lcom/mbv/a/sdklibrary/a/a/a;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/mbv/a/sdklibrary/a/a/a;

    invoke-direct {v0}, Lcom/mbv/a/sdklibrary/a/a/a;-><init>()V

    sput-object v0, Lcom/mbv/a/sdklibrary/a/a/a;->c:Lcom/mbv/a/sdklibrary/a/a/a;

    .line 39
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_1
    sget-object v0, Lcom/mbv/a/sdklibrary/a/a/a;->c:Lcom/mbv/a/sdklibrary/a/a/a;

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(J)V
    .locals 3

    .prologue
    .line 137
    invoke-static {}, Lcom/mbv/a/sdklibrary/manager/JniManager;->a()Lcom/mbv/a/sdklibrary/manager/JniManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbv/a/sdklibrary/manager/JniManager;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mbv/a/sdklibrary/a/a/a$2;

    invoke-direct {v1, p0}, Lcom/mbv/a/sdklibrary/a/a/a$2;-><init>(Lcom/mbv/a/sdklibrary/a/a/a;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 143
    return-void
.end method

.method static synthetic a(Lcom/mbv/a/sdklibrary/a/a/a;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/mbv/a/sdklibrary/a/a/a;->c()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 129
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {p1, v1}, Lcom/mbv/a/sdklibrary/b/d;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    .line 130
    invoke-static {p2, v1}, Lcom/mbv/a/sdklibrary/b/d;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 131
    const/4 v0, 0x1

    .line 133
    :cond_0
    return v0
.end method

.method static synthetic b(Lcom/mbv/a/sdklibrary/a/a/a;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/mbv/a/sdklibrary/a/a/a;->d()V

    return-void
.end method

.method private c()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 82
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/a;->a:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    move v1, v2

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbv/a/sdklibrary/entity/TaskData;

    invoke-virtual {v0}, Lcom/mbv/a/sdklibrary/entity/TaskData;->getStart_time()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbv/a/sdklibrary/entity/TaskData;

    invoke-virtual {v0}, Lcom/mbv/a/sdklibrary/entity/TaskData;->getEnd_time()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/mbv/a/sdklibrary/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbv/a/sdklibrary/entity/TaskData;

    invoke-virtual {v0}, Lcom/mbv/a/sdklibrary/entity/TaskData;->getService()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbv/a/sdklibrary/entity/TaskData;

    invoke-virtual {v0}, Lcom/mbv/a/sdklibrary/entity/TaskData;->getService()Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbv/a/sdklibrary/entity/TaskData;

    invoke-virtual {v0}, Lcom/mbv/a/sdklibrary/entity/TaskData;->getService()Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v0, v2

    .line 87
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 88
    aget-object v4, v3, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v4, v3, v0

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    aget-object v4, v3, v0

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 90
    array-length v5, v4

    if-lt v5, v8, :cond_0

    .line 91
    new-instance v5, Lcom/mbv/a/sdklibrary/entity/CodeData;

    invoke-direct {v5}, Lcom/mbv/a/sdklibrary/entity/CodeData;-><init>()V

    .line 92
    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Lcom/mbv/a/sdklibrary/entity/CodeData;->setMt_shortcode(Ljava/lang/String;)V

    .line 93
    aget-object v4, v4, v7

    invoke-virtual {v5, v4}, Lcom/mbv/a/sdklibrary/entity/CodeData;->setMt_keyword(Ljava/lang/String;)V

    .line 94
    iget-object v4, p0, Lcom/mbv/a/sdklibrary/a/a/a;->b:Ljava/util/Queue;

    invoke-interface {v4, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbv/a/sdklibrary/entity/TaskData;

    invoke-virtual {v0}, Lcom/mbv/a/sdklibrary/entity/TaskData;->getService()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbv/a/sdklibrary/entity/TaskData;

    invoke-virtual {v0}, Lcom/mbv/a/sdklibrary/entity/TaskData;->getService()Ljava/lang/String;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbv/a/sdklibrary/entity/TaskData;

    invoke-virtual {v0}, Lcom/mbv/a/sdklibrary/entity/TaskData;->getService()Ljava/lang/String;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 101
    array-length v3, v0

    if-lt v3, v8, :cond_2

    .line 102
    new-instance v3, Lcom/mbv/a/sdklibrary/entity/CodeData;

    invoke-direct {v3}, Lcom/mbv/a/sdklibrary/entity/CodeData;-><init>()V

    .line 103
    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Lcom/mbv/a/sdklibrary/entity/CodeData;->setMt_shortcode(Ljava/lang/String;)V

    .line 104
    aget-object v0, v0, v7

    invoke-virtual {v3, v0}, Lcom/mbv/a/sdklibrary/entity/CodeData;->setMt_keyword(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/a;->b:Ljava/util/Queue;

    invoke-interface {v0, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 112
    :cond_3
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/a;->b:Ljava/util/Queue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbv/a/sdklibrary/entity/CodeData;

    .line 117
    invoke-static {}, Lcom/mbv/a/sdklibrary/manager/JniManager;->a()Lcom/mbv/a/sdklibrary/manager/JniManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mbv/a/sdklibrary/entity/CodeData;->getMt_shortcode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mbv/a/sdklibrary/entity/CodeData;->getMt_keyword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/mbv/a/sdklibrary/manager/JniManager;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 118
    if-eqz v0, :cond_1

    .line 119
    const-wide/16 v0, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/mbv/a/sdklibrary/a/a/a;->a(J)V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    const-wide/16 v0, 0x7d0

    invoke-direct {p0, v0, v1}, Lcom/mbv/a/sdklibrary/a/a/a;->a(J)V

    goto :goto_0
.end method


# virtual methods
.method public b()V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    invoke-static {}, Lcom/mbv/a/sdklibrary/manager/JniManager;->nativeServicelist()Ljava/lang/String;

    move-result-object v1

    .line 47
    new-instance v2, Lcom/mbv/a/sdklibrary/a/a/a$1;

    invoke-direct {v2, p0}, Lcom/mbv/a/sdklibrary/a/a/a$1;-><init>(Lcom/mbv/a/sdklibrary/a/a/a;)V

    invoke-static {v1, v0, v2}, Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;->get(Ljava/lang/String;Ljava/util/Map;Lcom/mbv/a/sdklibrary/net/b;)V

    .line 79
    return-void
.end method
