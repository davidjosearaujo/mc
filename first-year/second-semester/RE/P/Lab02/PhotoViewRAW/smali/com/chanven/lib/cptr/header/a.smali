.class public Lcom/chanven/lib/cptr/header/a;
.super Landroid/graphics/drawable/Drawable;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chanven/lib/cptr/header/a$b;,
        Lcom/chanven/lib/cptr/header/a$d;,
        Lcom/chanven/lib/cptr/header/a$a;,
        Lcom/chanven/lib/cptr/header/a$c;
    }
.end annotation


# static fields
.field private static final a:Landroid/view/animation/Interpolator;

.field private static final b:Landroid/view/animation/Interpolator;

.field private static final c:Landroid/view/animation/Interpolator;

.field private static final d:Landroid/view/animation/Interpolator;


# instance fields
.field private final e:[I

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/chanven/lib/cptr/header/a$c;

.field private final h:Landroid/graphics/drawable/Drawable$Callback;

.field private i:F

.field private j:Landroid/content/res/Resources;

.field private k:Landroid/view/View;

.field private l:Landroid/view/animation/Animation;

.field private m:F

.field private n:D

.field private o:D

.field private p:Landroid/view/animation/Animation;

.field private q:I

.field private r:Landroid/graphics/drawable/ShapeDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/chanven/lib/cptr/header/a;->a:Landroid/view/animation/Interpolator;

    .line 62
    new-instance v0, Lcom/chanven/lib/cptr/header/a$a;

    invoke-direct {v0, v1}, Lcom/chanven/lib/cptr/header/a$a;-><init>(Lcom/chanven/lib/cptr/header/a$1;)V

    sput-object v0, Lcom/chanven/lib/cptr/header/a;->b:Landroid/view/animation/Interpolator;

    .line 63
    new-instance v0, Lcom/chanven/lib/cptr/header/a$d;

    invoke-direct {v0, v1}, Lcom/chanven/lib/cptr/header/a$d;-><init>(Lcom/chanven/lib/cptr/header/a$1;)V

    sput-object v0, Lcom/chanven/lib/cptr/header/a;->c:Landroid/view/animation/Interpolator;

    .line 64
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/chanven/lib/cptr/header/a;->d:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 98
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/chanven/lib/cptr/header/a;->e:[I

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chanven/lib/cptr/header/a;->f:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Lcom/chanven/lib/cptr/header/a$1;

    invoke-direct {v0, p0}, Lcom/chanven/lib/cptr/header/a$1;-><init>(Lcom/chanven/lib/cptr/header/a;)V

    iput-object v0, p0, Lcom/chanven/lib/cptr/header/a;->h:Landroid/graphics/drawable/Drawable$Callback;

    .line 143
    iput-object p2, p0, Lcom/chanven/lib/cptr/header/a;->k:Landroid/view/View;

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/chanven/lib/cptr/header/a;->j:Landroid/content/res/Resources;

    .line 145
    new-instance v0, Lcom/chanven/lib/cptr/header/a$c;

    iget-object v1, p0, Lcom/chanven/lib/cptr/header/a;->h:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {v0, v1}, Lcom/chanven/lib/cptr/header/a$c;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v0, p0, Lcom/chanven/lib/cptr/header/a;->g:Lcom/chanven/lib/cptr/header/a$c;

    .line 146
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a;->g:Lcom/chanven/lib/cptr/header/a$c;

    iget-object v1, p0, Lcom/chanven/lib/cptr/header/a;->e:[I

    invoke-virtual {v0, v1}, Lcom/chanven/lib/cptr/header/a$c;->a([I)V

    .line 147
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chanven/lib/cptr/header/a;->a(I)V

    .line 148
    invoke-direct {p0}, Lcom/chanven/lib/cptr/header/a;->c()V

    .line 149
    return-void

    .line 98
    nop

    :array_0
    .array-data 4
        -0x36cbc9
        -0xc8a40f
        -0x82dc2
        -0xcb5cb0
    .end array-data
.end method

.method static synthetic a(Lcom/chanven/lib/cptr/header/a;F)F
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/chanven/lib/cptr/header/a;->m:F

    return p1
.end method

.method static synthetic a(Lcom/chanven/lib/cptr/header/a;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a;->l:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic a()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/chanven/lib/cptr/header/a;->c:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private a(D)V
    .locals 7

    .prologue
    .line 167
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chanven/lib/cptr/b/b;->a(Landroid/content/Context;)V

    .line 168
    const/high16 v0, 0x3fe00000    # 1.75f

    invoke-static {v0}, Lcom/chanven/lib/cptr/b/b;->a(F)I

    move-result v0

    .line 169
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/chanven/lib/cptr/b/b;->a(F)I

    move-result v1

    .line 170
    const/high16 v2, 0x40600000    # 3.5f

    invoke-static {v2}, Lcom/chanven/lib/cptr/b/b;->a(F)I

    move-result v2

    .line 171
    new-instance v3, Lcom/chanven/lib/cptr/header/a$b;

    double-to-int v4, p1

    invoke-direct {v3, p0, v2, v4}, Lcom/chanven/lib/cptr/header/a$b;-><init>(Lcom/chanven/lib/cptr/header/a;II)V

    .line 172
    new-instance v4, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v4, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v4, p0, Lcom/chanven/lib/cptr/header/a;->r:Landroid/graphics/drawable/ShapeDrawable;

    .line 173
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    .line 174
    iget-object v3, p0, Lcom/chanven/lib/cptr/header/a;->k:Landroid/view/View;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/chanven/lib/cptr/header/a;->r:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 176
    :cond_0
    iget-object v3, p0, Lcom/chanven/lib/cptr/header/a;->r:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    int-to-float v2, v2

    int-to-float v1, v1

    int-to-float v0, v0

    const/high16 v4, 0x1e000000

    invoke-virtual {v3, v2, v1, v0, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 177
    return-void
.end method

.method private a(DDDDFF)V
    .locals 5

    .prologue
    .line 153
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a;->g:Lcom/chanven/lib/cptr/header/a$c;

    .line 154
    iget-object v1, p0, Lcom/chanven/lib/cptr/header/a;->j:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 155
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 156
    float-to-double v2, v1

    mul-double/2addr v2, p1

    iput-wide v2, p0, Lcom/chanven/lib/cptr/header/a;->n:D

    .line 157
    float-to-double v2, v1

    mul-double/2addr v2, p3

    iput-wide v2, p0, Lcom/chanven/lib/cptr/header/a;->o:D

    .line 158
    double-to-float v2, p7

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/chanven/lib/cptr/header/a$c;->a(F)V

    .line 159
    float-to-double v2, v1

    mul-double/2addr v2, p5

    invoke-virtual {v0, v2, v3}, Lcom/chanven/lib/cptr/header/a$c;->a(D)V

    .line 160
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/chanven/lib/cptr/header/a$c;->b(I)V

    .line 161
    mul-float v2, p9, v1

    mul-float/2addr v1, p10

    invoke-virtual {v0, v2, v1}, Lcom/chanven/lib/cptr/header/a$c;->a(FF)V

    .line 162
    iget-wide v2, p0, Lcom/chanven/lib/cptr/header/a;->n:D

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/chanven/lib/cptr/header/a;->o:D

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/chanven/lib/cptr/header/a$c;->a(II)V

    .line 163
    iget-wide v0, p0, Lcom/chanven/lib/cptr/header/a;->n:D

    invoke-direct {p0, v0, v1}, Lcom/chanven/lib/cptr/header/a;->a(D)V

    .line 164
    return-void
.end method

.method static synthetic b(Lcom/chanven/lib/cptr/header/a;)Landroid/view/View;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a;->k:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/chanven/lib/cptr/header/a;->b:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic c(Lcom/chanven/lib/cptr/header/a;)F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/chanven/lib/cptr/header/a;->m:F

    return v0
.end method

.method private c()V
    .locals 6

    .prologue
    .line 341
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a;->g:Lcom/chanven/lib/cptr/header/a$c;

    .line 342
    new-instance v1, Lcom/chanven/lib/cptr/header/a$2;

    invoke-direct {v1, p0, v0}, Lcom/chanven/lib/cptr/header/a$2;-><init>(Lcom/chanven/lib/cptr/header/a;Lcom/chanven/lib/cptr/header/a$c;)V

    .line 358
    sget-object v2, Lcom/chanven/lib/cptr/header/a;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 359
    const-wide/16 v2, 0x29a

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 360
    new-instance v2, Lcom/chanven/lib/cptr/header/a$3;

    invoke-direct {v2, p0, v0}, Lcom/chanven/lib/cptr/header/a$3;-><init>(Lcom/chanven/lib/cptr/header/a;Lcom/chanven/lib/cptr/header/a$c;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 377
    new-instance v2, Lcom/chanven/lib/cptr/header/a$4;

    invoke-direct {v2, p0, v0}, Lcom/chanven/lib/cptr/header/a$4;-><init>(Lcom/chanven/lib/cptr/header/a;Lcom/chanven/lib/cptr/header/a$c;)V

    .line 403
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 404
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 405
    sget-object v3, Lcom/chanven/lib/cptr/header/a;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 406
    const-wide/16 v4, 0x535

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 407
    new-instance v3, Lcom/chanven/lib/cptr/header/a$5;

    invoke-direct {v3, p0, v0}, Lcom/chanven/lib/cptr/header/a$5;-><init>(Lcom/chanven/lib/cptr/header/a;Lcom/chanven/lib/cptr/header/a$c;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 426
    iput-object v1, p0, Lcom/chanven/lib/cptr/header/a;->p:Landroid/view/animation/Animation;

    .line 427
    iput-object v2, p0, Lcom/chanven/lib/cptr/header/a;->l:Landroid/view/animation/Animation;

    .line 428
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a;->g:Lcom/chanven/lib/cptr/header/a$c;

    invoke-virtual {v0, p1}, Lcom/chanven/lib/cptr/header/a$c;->e(F)V

    .line 208
    return-void
.end method

.method public a(FF)V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a;->g:Lcom/chanven/lib/cptr/header/a$c;

    invoke-virtual {v0, p1}, Lcom/chanven/lib/cptr/header/a$c;->b(F)V

    .line 218
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a;->g:Lcom/chanven/lib/cptr/header/a$c;

    invoke-virtual {v0, p2}, Lcom/chanven/lib/cptr/header/a$c;->c(F)V

    .line 219
    return-void
.end method

.method public a(I)V
    .locals 14

    .prologue
    const-wide/high16 v2, 0x404c000000000000L    # 56.0

    const-wide/high16 v12, 0x4044000000000000L    # 40.0

    .line 187
    if-nez p1, :cond_0

    .line 188
    const-wide/high16 v6, 0x4029000000000000L    # 12.5

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    const/high16 v10, 0x41400000    # 12.0f

    const/high16 v11, 0x40c00000    # 6.0f

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v1 .. v11}, Lcom/chanven/lib/cptr/header/a;->a(DDDDFF)V

    .line 194
    :goto_0
    return-void

    .line 191
    :cond_0
    const-wide v6, 0x4021800000000000L    # 8.75

    const-wide/high16 v8, 0x4004000000000000L    # 2.5

    const/high16 v10, 0x41200000    # 10.0f

    const/high16 v11, 0x40a00000    # 5.0f

    move-object v1, p0

    move-wide v2, v12

    move-wide v4, v12

    invoke-direct/range {v1 .. v11}, Lcom/chanven/lib/cptr/header/a;->a(DDDDFF)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a;->g:Lcom/chanven/lib/cptr/header/a$c;

    invoke-virtual {v0, p1}, Lcom/chanven/lib/cptr/header/a$c;->a(Z)V

    .line 201
    return-void
.end method

.method public varargs a([I)V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a;->g:Lcom/chanven/lib/cptr/header/a$c;

    invoke-virtual {v0, p1}, Lcom/chanven/lib/cptr/header/a$c;->a([I)V

    .line 247
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a;->g:Lcom/chanven/lib/cptr/header/a$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chanven/lib/cptr/header/a$c;->b(I)V

    .line 248
    return-void
.end method

.method public b(F)V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a;->g:Lcom/chanven/lib/cptr/header/a$c;

    invoke-virtual {v0, p1}, Lcom/chanven/lib/cptr/header/a$c;->d(F)V

    .line 228
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 234
    iput p1, p0, Lcom/chanven/lib/cptr/header/a;->q:I

    .line 235
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a;->g:Lcom/chanven/lib/cptr/header/a$c;

    invoke-virtual {v0, p1}, Lcom/chanven/lib/cptr/header/a$c;->a(I)V

    .line 236
    return-void
.end method

.method c(F)V
    .locals 0

    .prologue
    .line 295
    iput p1, p0, Lcom/chanven/lib/cptr/header/a;->i:F

    .line 296
    invoke-virtual {p0}, Lcom/chanven/lib/cptr/header/a;->invalidateSelf()V

    .line 297
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 262
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a;->r:Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a;->r:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/chanven/lib/cptr/header/a;->q:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 264
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a;->r:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/chanven/lib/cptr/header/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 268
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 269
    iget v2, p0, Lcom/chanven/lib/cptr/header/a;->i:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 270
    iget-object v2, p0, Lcom/chanven/lib/cptr/header/a;->g:Lcom/chanven/lib/cptr/header/a$c;

    invoke-virtual {v2, p1, v0}, Lcom/chanven/lib/cptr/header/a$c;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 271
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 272
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a;->g:Lcom/chanven/lib/cptr/header/a$c;

    invoke-virtual {v0}, Lcom/chanven/lib/cptr/header/a$c;->b()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 252
    iget-wide v0, p0, Lcom/chanven/lib/cptr/header/a;->o:D

    double-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 257
    iget-wide v0, p0, Lcom/chanven/lib/cptr/header/a;->n:D

    double-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 301
    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 306
    iget-object v3, p0, Lcom/chanven/lib/cptr/header/a;->f:Ljava/util/ArrayList;

    .line 307
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 308
    :goto_0
    if-ge v2, v4, :cond_1

    .line 309
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 310
    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    const/4 v0, 0x1

    .line 314
    :goto_1
    return v0

    .line 308
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 314
    goto :goto_1
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a;->g:Lcom/chanven/lib/cptr/header/a$c;

    invoke-virtual {v0, p1}, Lcom/chanven/lib/cptr/header/a$c;->c(I)V

    .line 281
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a;->g:Lcom/chanven/lib/cptr/header/a$c;

    invoke-virtual {v0, p1}, Lcom/chanven/lib/cptr/header/a$c;->a(Landroid/graphics/ColorFilter;)V

    .line 286
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a;->l:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 320
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a;->g:Lcom/chanven/lib/cptr/header/a$c;

    invoke-virtual {v0}, Lcom/chanven/lib/cptr/header/a$c;->j()V

    .line 322
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a;->g:Lcom/chanven/lib/cptr/header/a$c;

    invoke-virtual {v0}, Lcom/chanven/lib/cptr/header/a$c;->g()F

    move-result v0

    iget-object v1, p0, Lcom/chanven/lib/cptr/header/a;->g:Lcom/chanven/lib/cptr/header/a$c;

    invoke-virtual {v1}, Lcom/chanven/lib/cptr/header/a$c;->d()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/chanven/lib/cptr/header/a;->p:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 329
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a;->g:Lcom/chanven/lib/cptr/header/a$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chanven/lib/cptr/header/a$c;->b(I)V

    .line 326
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a;->g:Lcom/chanven/lib/cptr/header/a$c;

    invoke-virtual {v0}, Lcom/chanven/lib/cptr/header/a$c;->k()V

    .line 327
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/chanven/lib/cptr/header/a;->l:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 333
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 334
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chanven/lib/cptr/header/a;->c(F)V

    .line 335
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a;->g:Lcom/chanven/lib/cptr/header/a$c;

    invoke-virtual {v0, v1}, Lcom/chanven/lib/cptr/header/a$c;->a(Z)V

    .line 336
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a;->g:Lcom/chanven/lib/cptr/header/a$c;

    invoke-virtual {v0, v1}, Lcom/chanven/lib/cptr/header/a$c;->b(I)V

    .line 337
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a;->g:Lcom/chanven/lib/cptr/header/a$c;

    invoke-virtual {v0}, Lcom/chanven/lib/cptr/header/a$c;->k()V

    .line 338
    return-void
.end method
