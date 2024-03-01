.class public Lcom/mbv/a/sdklibrary/a/a/b;
.super Ljava/lang/Object;
.source "OneClickPresenterImpl.java"

# interfaces
.implements Lcom/mbv/a/sdklibrary/a/a;


# instance fields
.field private a:Lcom/mbv/a/sdklibrary/c/a;

.field private b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/mbv/a/sdklibrary/entity/JsData;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/mbv/a/sdklibrary/entity/JsData;

.field private d:Lcom/mbv/a/sdklibrary/service/a;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/Runnable;

.field private j:Ljava/lang/String;

.field private k:Lcom/mbv/a/sdklibrary/entity/HtmData;


# direct methods
.method public constructor <init>(Lcom/mbv/a/sdklibrary/c/a;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbv/a/sdklibrary/a/a/b;->e:Z

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b;->f:Ljava/lang/String;

    .line 178
    new-instance v0, Lcom/mbv/a/sdklibrary/a/a/b$3;

    invoke-direct {v0, p0}, Lcom/mbv/a/sdklibrary/a/a/b$3;-><init>(Lcom/mbv/a/sdklibrary/a/a/b;)V

    iput-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b;->i:Ljava/lang/Runnable;

    .line 39
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/a/a/b;->a:Lcom/mbv/a/sdklibrary/c/a;

    .line 40
    invoke-static {}, Lcom/mbv/a/sdklibrary/manager/a;->a()Lcom/mbv/a/sdklibrary/manager/a;

    move-result-object v0

    iput-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b;->d:Lcom/mbv/a/sdklibrary/service/a;

    .line 41
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b;->b:Ljava/util/Queue;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/mbv/a/sdklibrary/a/a/b;Lcom/mbv/a/sdklibrary/entity/JsData;)Lcom/mbv/a/sdklibrary/entity/JsData;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/a/a/b;->c:Lcom/mbv/a/sdklibrary/entity/JsData;

    return-object p1
.end method

.method static synthetic a(Lcom/mbv/a/sdklibrary/a/a/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/a/a/b;->f:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b;->c:Lcom/mbv/a/sdklibrary/entity/JsData;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 68
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbv/a/sdklibrary/entity/JsData;

    iput-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b;->c:Lcom/mbv/a/sdklibrary/entity/JsData;

    .line 69
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b;->c:Lcom/mbv/a/sdklibrary/entity/JsData;

    invoke-direct {p0, v0}, Lcom/mbv/a/sdklibrary/a/a/b;->b(Lcom/mbv/a/sdklibrary/entity/JsData;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b;->c:Lcom/mbv/a/sdklibrary/entity/JsData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b;->c:Lcom/mbv/a/sdklibrary/entity/JsData;

    invoke-virtual {v0}, Lcom/mbv/a/sdklibrary/entity/JsData;->getUrl_link()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b;->c:Lcom/mbv/a/sdklibrary/entity/JsData;

    invoke-virtual {v0}, Lcom/mbv/a/sdklibrary/entity/JsData;->getUrl_link()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mbv/a/sdklibrary/a/a/b;->c(Ljava/lang/String;)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iput-object v1, p0, Lcom/mbv/a/sdklibrary/a/a/b;->c:Lcom/mbv/a/sdklibrary/entity/JsData;

    .line 74
    invoke-direct {p0}, Lcom/mbv/a/sdklibrary/a/a/b;->a()V

    goto :goto_0

    .line 77
    :cond_2
    iput-object v1, p0, Lcom/mbv/a/sdklibrary/a/a/b;->c:Lcom/mbv/a/sdklibrary/entity/JsData;

    .line 78
    invoke-direct {p0}, Lcom/mbv/a/sdklibrary/a/a/b;->a()V

    goto :goto_0

    .line 80
    :cond_3
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/mbv/a/sdklibrary/a/a/b;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/mbv/a/sdklibrary/a/a/b;->a()V

    return-void
.end method

.method private a(Lcom/mbv/a/sdklibrary/entity/JsData;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 105
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "offer_status"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 106
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/mbv/a/sdklibrary/a/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mbv/a/sdklibrary/entity/JsData;->getUrl_link()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 107
    return-void
.end method

.method static synthetic a(Lcom/mbv/a/sdklibrary/a/a/b;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/mbv/a/sdklibrary/a/a/b;->e:Z

    return p1
.end method

.method private b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 117
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/mbv/a/sdklibrary/a/a/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method private b(Lcom/mbv/a/sdklibrary/entity/JsData;)Z
    .locals 3

    .prologue
    .line 110
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "offer_status"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/mbv/a/sdklibrary/a/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mbv/a/sdklibrary/entity/JsData;->getUrl_link()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 112
    return v0
.end method

.method static synthetic c(Lcom/mbv/a/sdklibrary/a/a/b;)Lcom/mbv/a/sdklibrary/service/a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b;->d:Lcom/mbv/a/sdklibrary/service/a;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 85
    const-string v0, "mb_subid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&mb_subid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&aff_sub="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 89
    const-string v2, ""

    const-string v1, ""

    const-string v0, ""

    .line 90
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/f;->s()Ljava/lang/String;

    move-result-object v4

    .line 91
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.baidu.com?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Lcom/mbv/a/sdklibrary/b/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 93
    const-string v1, "utm_source"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    const-string v1, "utm_campaign"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    const-string v4, "adpkey_subchannel"

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&utm_source="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&utm_campaign="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&adpkey_subchannel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    iput-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b;->g:Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lcom/mbv/a/sdklibrary/a/a/b;->a:Lcom/mbv/a/sdklibrary/c/a;

    invoke-interface {v1, v0}, Lcom/mbv/a/sdklibrary/c/a;->loadUrl(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method static synthetic d(Lcom/mbv/a/sdklibrary/a/a/b;)Lcom/mbv/a/sdklibrary/entity/JsData;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b;->c:Lcom/mbv/a/sdklibrary/entity/JsData;

    return-object v0
.end method

.method static synthetic e(Lcom/mbv/a/sdklibrary/a/a/b;)Lcom/mbv/a/sdklibrary/entity/HtmData;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b;->k:Lcom/mbv/a/sdklibrary/entity/HtmData;

    return-object v0
.end method

.method static synthetic f(Lcom/mbv/a/sdklibrary/a/a/b;)Lcom/mbv/a/sdklibrary/c/a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b;->a:Lcom/mbv/a/sdklibrary/c/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b;->d:Lcom/mbv/a/sdklibrary/service/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b;->c:Lcom/mbv/a/sdklibrary/entity/JsData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/a/a/b;->h:Ljava/lang/String;

    .line 139
    iget-object v1, p0, Lcom/mbv/a/sdklibrary/a/a/b;->d:Lcom/mbv/a/sdklibrary/service/a;

    iget-object v2, p0, Lcom/mbv/a/sdklibrary/a/a/b;->g:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/mbv/a/sdklibrary/a/a/b;->e:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    :goto_0
    invoke-interface {v1, v2, p1, v0}, Lcom/mbv/a/sdklibrary/service/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 142
    :cond_0
    iget-boolean v0, p0, Lcom/mbv/a/sdklibrary/a/a/b;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b;->c:Lcom/mbv/a/sdklibrary/entity/JsData;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b;->c:Lcom/mbv/a/sdklibrary/entity/JsData;

    invoke-direct {p0, v0}, Lcom/mbv/a/sdklibrary/a/a/b;->a(Lcom/mbv/a/sdklibrary/entity/JsData;)V

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b;->a:Lcom/mbv/a/sdklibrary/c/a;

    invoke-interface {v0}, Lcom/mbv/a/sdklibrary/c/a;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mbv/a/sdklibrary/a/a/b;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 146
    return-void

    .line 139
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/mbv/a/sdklibrary/entity/HtmData;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/a/a/b;->j:Ljava/lang/String;

    .line 195
    iput-object p2, p0, Lcom/mbv/a/sdklibrary/a/a/b;->k:Lcom/mbv/a/sdklibrary/entity/HtmData;

    .line 196
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mbv/a/sdklibrary/entity/JsData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 47
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b;->a:Lcom/mbv/a/sdklibrary/c/a;

    invoke-interface {v0}, Lcom/mbv/a/sdklibrary/c/a;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mbv/a/sdklibrary/a/a/b$1;

    invoke-direct {v1, p0}, Lcom/mbv/a/sdklibrary/a/a/b$1;-><init>(Lcom/mbv/a/sdklibrary/a/a/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 127
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 128
    const-string v2, "Referer"

    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    move-object v0, p2

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v0, "X-Requested-With"

    const-string v2, "com.facebook.katana"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-virtual {p1, p2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 131
    iput-object p2, p0, Lcom/mbv/a/sdklibrary/a/a/b;->f:Ljava/lang/String;

    .line 132
    const/4 v0, 0x1

    return v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 150
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b;->a:Lcom/mbv/a/sdklibrary/c/a;

    invoke-interface {v0}, Lcom/mbv/a/sdklibrary/c/a;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mbv/a/sdklibrary/a/a/b;->i:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b;->a:Lcom/mbv/a/sdklibrary/c/a;

    invoke-interface {v0}, Lcom/mbv/a/sdklibrary/c/a;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mbv/a/sdklibrary/a/a/b$2;

    invoke-direct {v1, p0, p1}, Lcom/mbv/a/sdklibrary/a/a/b$2;-><init>(Lcom/mbv/a/sdklibrary/a/a/b;Ljava/lang/String;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
