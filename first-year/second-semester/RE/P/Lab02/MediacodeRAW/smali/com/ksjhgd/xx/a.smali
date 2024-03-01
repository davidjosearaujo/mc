.class public Lcom/ksjhgd/xx/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:Landroid/content/Context;

.field public c:Landroid/util/DisplayMetrics;

.field public d:Lcom/ksjhgd/xx/b/c;

.field public e:Lcom/ksjhgd/xx/b/f;

.field protected f:Landroid/content/SharedPreferences;

.field protected g:Landroid/app/Dialog;

.field protected h:Lcom/ksjhgd/xx/a/f;

.field protected i:Lcom/ksjhgd/xx/c/b;

.field protected j:I

.field protected k:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/ksjhgd/xx/a;->j:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ksjhgd/xx/a;->k:Ljava/util/HashMap;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "kit version:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ksjhgd/xx/e/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ksjhgd/xx/a;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ksjhgd/xx/a;->f:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/r;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    invoke-static {p0}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/r;->a:Ljava/lang/String;

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/ksjhgd/xx/a;->a(Landroid/content/Context;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BaseActivity.isOpenTheType() "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseActivity.onStart(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/ksjhgd/xx/b/f;

    invoke-direct {v0}, Lcom/ksjhgd/xx/b/f;-><init>()V

    iput-object v0, p0, Lcom/ksjhgd/xx/a;->e:Lcom/ksjhgd/xx/b/f;

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 8

    const-wide/16 v6, 0x0

    new-instance v0, Lcom/ksjhgd/xx/b/c;

    iget-object v1, p0, Lcom/ksjhgd/xx/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ksjhgd/xx/b/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/a;->d:Lcom/ksjhgd/xx/b/c;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/ksjhgd/xx/a;->c:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/ksjhgd/xx/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ksjhgd/xx/cd;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/a;->b:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/ksjhgd/xx/a;->c:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/a;->f:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/ksjhgd/xx/e/r;->A:Ljava/lang/String;

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    cmp-long v4, v0, v6

    if-eqz v4, :cond_0

    long-to-double v2, v2

    const-wide v4, 0x413b774000000000L    # 1800000.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/ksjhgd/xx/a;->f:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/ksjhgd/xx/e/r;->A:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ksjhgd/xx/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ksjhgd/xx/f;->i(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/ksjhgd/xx/c/f;)V
    .locals 4

    iget-object v0, p0, Lcom/ksjhgd/xx/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/ksjhgd/xx/e/r;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/ksjhgd/xx/c/f;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p1, Lcom/ksjhgd/xx/c/f;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/ksjhgd/xx/c/f;->b:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/ksjhgd/xx/e/r;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/ksjhgd/xx/e/r;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/ksjhgd/xx/c/f;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/r;->h:Ljava/lang/String;

    iget-object v2, p1, Lcom/ksjhgd/xx/c/f;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/ksjhgd/xx/e/r;->b:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/view/View;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ksjhgd/xx/a;->a(Ljava/lang/String;Landroid/view/View;Lcom/ksjhgd/xx/d;ZI)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/view/View;Lcom/ksjhgd/xx/d;ZI)V
    .locals 11

    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v2, "inflateimage imgurl=null"

    invoke-static {v2}, Lcom/ksjhgd/xx/e/h;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v5, Lcom/ksjhgd/xx/b/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v5, p1, v2, v3}, Lcom/ksjhgd/xx/b/d;-><init>(Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/ksjhgd/xx/a;->d:Lcom/ksjhgd/xx/b/c;

    invoke-virtual {v2, v5}, Lcom/ksjhgd/xx/b/c;->a(Lcom/ksjhgd/xx/b/d;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4

    move-object v0, p2

    check-cast v0, Landroid/widget/ImageView;

    move-object v2, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    check-cast p2, Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/ksjhgd/xx/a;->d:Lcom/ksjhgd/xx/b/c;

    if-eqz v2, :cond_1

    if-eqz p3, :cond_1

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ksjhgd/xx/a;->d:Lcom/ksjhgd/xx/b/c;

    invoke-virtual {v5}, Lcom/ksjhgd/xx/b/c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_pic"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v3, :cond_1

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v3, :cond_1

    invoke-interface {p3, v2}, Lcom/ksjhgd/xx/d;->a(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error --> BaseActivity.inflateImage(): e = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ksjhgd/xx/e/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    :try_start_1
    move-object v0, p2

    check-cast v0, Landroid/widget/ImageView;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    iget-object v10, p0, Lcom/ksjhgd/xx/a;->e:Lcom/ksjhgd/xx/b/f;

    new-instance v2, Lcom/ksjhgd/xx/b;

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p1

    move v8, p4

    move-object v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/ksjhgd/xx/b;-><init>(Lcom/ksjhgd/xx/a;Ljava/lang/String;Lcom/ksjhgd/xx/b/d;Landroid/view/View;Ljava/lang/String;ZLcom/ksjhgd/xx/d;)V

    move/from16 v0, p5

    invoke-virtual {v10, v2, v0}, Lcom/ksjhgd/xx/b/f;->a(Lcom/ksjhgd/xx/b/e;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public a(Lcom/ksjhgd/xx/c/c;I)Z
    .locals 9

    const/4 v8, -0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ksjhgd/xx/a;->b:Landroid/content/Context;

    sget-object v2, Lcom/ksjhgd/xx/e/a;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ksjhgd/xx/e/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/ksjhgd/xx/e/a;

    move-result-object v1

    iget-object v2, p1, Lcom/ksjhgd/xx/c/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ksjhgd/xx/e/a;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "BaseActivity.startDown(\u5f53\u524dad\u5df2\u7ecf\u4e0b\u8f7d\u5e76\u5b89\u88c5\u8fc7)"

    invoke-static {v1}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1, p1}, Lcom/ksjhgd/xx/e/a;->b(Lcom/ksjhgd/xx/c/c;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BaseActivity.startDown(\u63d2\u5165\u51c6\u5907\u4e0b\u8f7d\u7684ad) id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ksjhgd/xx/a;->b:Landroid/content/Context;

    sget-object v2, Lcom/ksjhgd/xx/m;->r:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v2, Lcom/ksjhgd/xx/m;->o:Ljava/lang/String;

    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p1, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_3

    iget-object v4, p0, Lcom/ksjhgd/xx/a;->b:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/ksjhgd/xx/m;->q:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    sget-object v6, Lcom/ksjhgd/xx/m;->k:Ljava/lang/String;

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    sget-object v6, Lcom/ksjhgd/xx/m;->n:Ljava/lang/String;

    iget-object v7, p1, Lcom/ksjhgd/xx/c/c;->d:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    sget-object v5, Lcom/ksjhgd/xx/m;->p:Ljava/lang/String;

    iget-object v6, p1, Lcom/ksjhgd/xx/c/c;->e:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v4, Lcom/ksjhgd/xx/m;->t:Ljava/util/LinkedList;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/ksjhgd/xx/m;->t:Ljava/util/LinkedList;

    invoke-virtual {v4, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :cond_1
    if-ne v2, v8, :cond_2

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v4, Lcom/ksjhgd/xx/m;->o:Ljava/lang/String;

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v3, Lcom/ksjhgd/xx/m;->h:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/ksjhgd/xx/a;->b:Landroid/content/Context;

    sget-object v4, Lcom/ksjhgd/xx/e;->b:Ljava/lang/String;

    invoke-static {v3, v1, v4}, Lcom/ksjhgd/xx/e;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/ksjhgd/xx/a;->b:Landroid/content/Context;

    sget-object v3, Lcom/ksjhgd/xx/m;->s:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p1, Lcom/ksjhgd/xx/c/c;->e:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@BaseActivity.startDown()"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/ksjhgd/xx/c/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_3
    const-string v0, "BaseActivity.startDown(\u4efb\u52a1\u5df2\u7ecf\u5b58\u5728)"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected a(Z)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Lcom/ksjhgd/xx/c/d;

    invoke-direct {v0}, Lcom/ksjhgd/xx/c/d;-><init>()V

    iget-object v3, p0, Lcom/ksjhgd/xx/a;->b:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ksjhgd/xx/a;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/addata"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ksjhgd/xx/e/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/ksjhgd/xx/c/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksjhgd/xx/c/b;

    iput-object v0, p0, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v0, p0, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v0, v0

    if-ge v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ksjhgd/xx/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/r;->c:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return v2

    :cond_1
    new-instance v0, Lcom/ksjhgd/xx/a/f;

    iget-object v3, p0, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    invoke-direct {v0, p0, v3, p1}, Lcom/ksjhgd/xx/a/f;-><init>(Lcom/ksjhgd/xx/a;Lcom/ksjhgd/xx/c/b;Z)V

    iput-object v0, p0, Lcom/ksjhgd/xx/a;->h:Lcom/ksjhgd/xx/a/f;

    iget-object v0, p0, Lcom/ksjhgd/xx/a;->h:Lcom/ksjhgd/xx/a/f;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/a/f;->notifyDataSetChanged()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    goto :goto_1
.end method

.method public b()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseActivity.onStop(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/a;->e:Lcom/ksjhgd/xx/b/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/a;->e:Lcom/ksjhgd/xx/b/f;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/b/f;->a()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseActivity.onDestroy(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/a;->d:Lcom/ksjhgd/xx/b/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ksjhgd/xx/a;->d:Lcom/ksjhgd/xx/b/c;

    :cond_0
    return-void
.end method

.method protected f()V
    .locals 7

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v3, v3, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    sget-object v0, Lcom/ksjhgd/xx/c/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/ksjhgd/xx/c/d;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    iget v2, v2, Lcom/ksjhgd/xx/c/b;->c:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/ksjhgd/xx/a;->b:Landroid/content/Context;

    const-string v2, "/addata"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/ksjhgd/xx/e/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :goto_1
    return-void

    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object v4, p0, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v4, v4, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v4, v4, v0

    sget-object v5, Lcom/ksjhgd/xx/c/d;->c:Ljava/lang/String;

    iget-object v6, v4, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v5, Lcom/ksjhgd/xx/c/d;->d:Ljava/lang/String;

    iget-object v6, v4, Lcom/ksjhgd/xx/c/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v5, Lcom/ksjhgd/xx/c/d;->e:Ljava/lang/String;

    iget-object v6, v4, Lcom/ksjhgd/xx/c/c;->c:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v5, Lcom/ksjhgd/xx/c/d;->f:Ljava/lang/String;

    iget-object v6, v4, Lcom/ksjhgd/xx/c/c;->d:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v5, Lcom/ksjhgd/xx/c/d;->g:Ljava/lang/String;

    iget-object v6, v4, Lcom/ksjhgd/xx/c/c;->e:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v5, Lcom/ksjhgd/xx/c/d;->h:Ljava/lang/String;

    iget-object v6, v4, Lcom/ksjhgd/xx/c/c;->f:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v5, Lcom/ksjhgd/xx/c/d;->i:Ljava/lang/String;

    iget-object v4, v4, Lcom/ksjhgd/xx/c/c;->g:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method protected g()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v5, -0x1

    iget-object v1, p0, Lcom/ksjhgd/xx/a;->f:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/ksjhgd/xx/e/r;->e:Ljava/lang/String;

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/ksjhgd/xx/a;->f:Landroid/content/SharedPreferences;

    sget-object v4, Lcom/ksjhgd/xx/e/r;->c:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    if-eq v1, v5, :cond_0

    sub-int v1, v2, v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "BaseActivity.isUpdate() \u8d85\u8fc7\u8bbe\u5b9a\u65f6\u95f4 \u542f\u52a8\u66f4\u65b0"

    invoke-static {v1}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ksjhgd/xx/a;->f:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v3, Lcom/ksjhgd/xx/e/r;->e:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected h()Z
    .locals 2

    iget-object v0, p0, Lcom/ksjhgd/xx/a;->b:Landroid/content/Context;

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/ksjhgd/xx/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
