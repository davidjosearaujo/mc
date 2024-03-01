.class public Lcom/ksjhgd/xx/bg;
.super Lcom/ksjhgd/xx/a;


# static fields
.field public static m:Ljava/lang/String;


# instance fields
.field l:Landroid/content/Context;

.field n:Ljava/lang/String;

.field o:Landroid/os/Handler;

.field p:I

.field q:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/bg;->m:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x36
        0x27
        0x28
        0x2d
        0x22
        0x1f
        0x22
        0x1c
        0x1a
        0x2d
        0x22
        0x28
        0x27
        0x36
        0x22
        0x1c
        0x28
        0x27
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/ksjhgd/xx/a;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/bg;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ksjhgd/xx/bg;->n:Ljava/lang/String;

    iput-object p1, p0, Lcom/ksjhgd/xx/bg;->l:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ksjhgd/xx/bg;->l:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-virtual {p0, v1}, Lcom/ksjhgd/xx/bg;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v1, p0, Lcom/ksjhgd/xx/bg;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v1, v1, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/ksjhgd/xx/bg;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v1, v1, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, p1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ksjhgd/xx/bg;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ksjhgd/xx/bg;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v1, v1, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v0, v1, v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ksjhgd/xx/bg;->a(Lcom/ksjhgd/xx/c/c;I)Z

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(ILjava/io/File;)V
    .locals 6

    iget-object v0, p0, Lcom/ksjhgd/xx/bg;->l:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    const v2, 0x108008e

    iput v2, v1, Landroid/app/Notification;->icon:I

    const/16 v2, 0x22

    iput v2, v1, Landroid/app/Notification;->flags:I

    iget-object v2, p0, Lcom/ksjhgd/xx/bg;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v2, v2, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/ksjhgd/xx/c/c;->b:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/ksjhgd/xx/bg;->l:Landroid/content/Context;

    const-class v4, Lcom/uwjhdf/Pnmsf;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v3, Lcom/ksjhgd/xx/f;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "id"

    iget-object v4, p0, Lcom/ksjhgd/xx/bg;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v4, v4, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "type"

    const/4 v4, 0x7

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/ksjhgd/xx/bg;->l:Landroid/content/Context;

    iget-object v4, p0, Lcom/ksjhgd/xx/bg;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v4, v4, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Lcom/ksjhgd/xx/bg;->l:Landroid/content/Context;

    iget-object v4, p0, Lcom/ksjhgd/xx/bg;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v4, v4, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/ksjhgd/xx/c/c;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/ksjhgd/xx/bg;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v5, v5, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v5, v5, p1

    iget-object v5, v5, Lcom/ksjhgd/xx/c/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/ksjhgd/xx/bg;->l:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/ksjhgd/xx/m;->a(Landroid/content/Context;Landroid/app/Notification;Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/ksjhgd/xx/bg;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v2, v2, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/ksjhgd/xx/bg;->f:Landroid/content/SharedPreferences;

    const-string v1, "show"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Lcom/ksjhgd/xx/bg;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "show"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void

    :cond_2
    aget-object v4, v2, v0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public j()V
    .locals 5

    iget-object v0, p0, Lcom/ksjhgd/xx/bg;->l:Landroid/content/Context;

    const-string v1, "7"

    invoke-static {v0, v1}, Lcom/ksjhgd/xx/bg;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/ksjhgd/xx/bh;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/bh;-><init>(Lcom/ksjhgd/xx/bg;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/bg;->o:Landroid/os/Handler;

    iget-object v0, p0, Lcom/ksjhgd/xx/bg;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/ksjhgd/xx/e/q;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ksjhgd/xx/bg;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ksjhgd/xx/bg;->k()I

    move-result v0

    iput v0, p0, Lcom/ksjhgd/xx/bg;->p:I

    iget v0, p0, Lcom/ksjhgd/xx/bg;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const-string v0, "\u6240\u6709\u5e7f\u544a\u90fd\u663e\u793a\u4e86 \u6ca1\u6709\u5e7f\u544a\u4e86"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ksjhgd/xx/bg;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    iget v1, p0, Lcom/ksjhgd/xx/bg;->p:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/ksjhgd/xx/c/c;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/ksjhgd/xx/bg;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v1, v1, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    iget v2, p0, Lcom/ksjhgd/xx/bg;->p:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/ksjhgd/xx/bg;->n:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_3
    const-string v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/ksjhgd/xx/bg;->n:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".png"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ksjhgd/xx/bg;->q:Ljava/io/File;

    :goto_1
    iget-object v1, p0, Lcom/ksjhgd/xx/bg;->q:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v0, p0, Lcom/ksjhgd/xx/bg;->p:I

    iget-object v1, p0, Lcom/ksjhgd/xx/bg;->q:Ljava/io/File;

    invoke-virtual {p0, v0, v1}, Lcom/ksjhgd/xx/bg;->a(ILjava/io/File;)V

    goto/16 :goto_0

    :cond_4
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/ksjhgd/xx/bg;->l:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".png"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ksjhgd/xx/bg;->q:Ljava/io/File;

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ksjhgd/xx/bi;

    invoke-direct {v2, p0, v0}, Lcom/ksjhgd/xx/bi;-><init>(Lcom/ksjhgd/xx/bg;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method public k()I
    .locals 10

    const/4 v1, 0x0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/ksjhgd/xx/bg;->f:Landroid/content/SharedPreferences;

    const-string v2, "show"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/ksjhgd/xx/e/a;

    iget-object v2, p0, Lcom/ksjhgd/xx/bg;->l:Landroid/content/Context;

    sget-object v3, Lcom/ksjhgd/xx/e/a;->b:Ljava/lang/String;

    invoke-direct {v5, v2, v3}, Lcom/ksjhgd/xx/e/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/ksjhgd/xx/bg;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v3, v3, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    const/4 v2, -0x1

    :goto_1
    iget-object v0, p0, Lcom/ksjhgd/xx/bg;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return v2

    :cond_0
    iget-object v3, p0, Lcom/ksjhgd/xx/bg;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v3, v3, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v3, v3, v2

    iget-object v7, v3, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/ksjhgd/xx/e/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    array-length v8, v6

    move v3, v1

    :goto_2
    if-lt v3, v8, :cond_1

    :goto_3
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    aget-object v9, v6, v3

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ksjhgd/xx/bg;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v1

    goto :goto_1
.end method
