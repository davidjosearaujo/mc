.class public Lcom/ksjhgd/xx/cd;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static b:Lcom/ksjhgd/xx/cd;


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lcom/ksjhgd/xx/cd;->b:Lcom/ksjhgd/xx/cd;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ksjhgd/xx/cd;

    invoke-direct {v1}, Lcom/ksjhgd/xx/cd;-><init>()V

    sput-object v1, Lcom/ksjhgd/xx/cd;->b:Lcom/ksjhgd/xx/cd;

    :cond_0
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/ksjhgd/xx/cd;->b:Lcom/ksjhgd/xx/cd;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic a(Lcom/ksjhgd/xx/cd;Lcom/ksjhgd/xx/e/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ksjhgd/xx/cd;->a(Lcom/ksjhgd/xx/e/a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/ksjhgd/xx/e/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/ksjhgd/xx/cd;->a:Landroid/content/Context;

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

    iget-object v0, p0, Lcom/ksjhgd/xx/cd;->a:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/ksjhgd/xx/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/cd;->a:Landroid/content/Context;

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


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/ksjhgd/xx/cd;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    sget-object v0, Lcom/ksjhgd/xx/e/a;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ksjhgd/xx/e/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/ksjhgd/xx/e/a;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/ksjhgd/xx/e/a;->c(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v7, v0, v4

    aget-object v0, v0, v1

    const-string v3, ""

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/ksjhgd/xx/e/q;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "state"

    const-string v3, "2"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v7, v0}, Lcom/ksjhgd/xx/e/a;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/ksjhgd/xx/m;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "@"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_1

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sget-object v3, Lcom/ksjhgd/xx/c/h;->f:Ljava/lang/String;

    invoke-virtual {v4, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/ksjhgd/xx/c/h;->g:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/ksjhgd/xx/c/h;->j:Ljava/lang/String;

    new-instance v5, Lcom/ksjhgd/xx/ce;

    invoke-direct {v5, p0, v2, v6, v7}, Lcom/ksjhgd/xx/ce;-><init>(Lcom/ksjhgd/xx/cd;Lcom/ksjhgd/xx/e/a;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v5}, Lcom/ksjhgd/xx/c/h;->a(Landroid/content/Context;IILjava/lang/String;Ljava/util/HashMap;Lcom/ksjhgd/xx/c/j;)V

    invoke-static {p1}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/ksjhgd/xx/e/r;->c:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {p1, v6}, Lcom/ksjhgd/xx/e/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0
.end method
