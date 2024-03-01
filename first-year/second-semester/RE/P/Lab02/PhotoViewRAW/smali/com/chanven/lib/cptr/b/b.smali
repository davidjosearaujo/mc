.class public Lcom/chanven/lib/cptr/b/b;
.super Ljava/lang/Object;
.source "PtrLocalDisplay.java"


# static fields
.field public static a:I

.field public static b:I

.field public static c:F

.field public static d:I

.field public static e:I


# direct methods
.method public static a(F)I
    .locals 2

    .prologue
    .line 31
    sget v0, Lcom/chanven/lib/cptr/b/b;->c:F

    .line 32
    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 17
    if-nez p0, :cond_0

    .line 28
    :goto_0
    return-void

    .line 20
    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 21
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 22
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 23
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/chanven/lib/cptr/b/b;->a:I

    .line 24
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lcom/chanven/lib/cptr/b/b;->b:I

    .line 25
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/chanven/lib/cptr/b/b;->c:F

    .line 26
    sget v0, Lcom/chanven/lib/cptr/b/b;->a:I

    int-to-float v0, v0

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/chanven/lib/cptr/b/b;->d:I

    .line 27
    sget v0, Lcom/chanven/lib/cptr/b/b;->b:I

    int-to-float v0, v0

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/chanven/lib/cptr/b/b;->e:I

    goto :goto_0
.end method
