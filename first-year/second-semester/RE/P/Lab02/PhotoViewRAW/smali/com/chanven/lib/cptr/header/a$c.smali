.class Lcom/chanven/lib/cptr/header/a$c;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chanven/lib/cptr/header/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/drawable/Drawable$Callback;

.field private final e:Landroid/graphics/Paint;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:[I

.field private l:I

.field private m:F

.field private n:F

.field private o:F

.field private p:Z

.field private q:Landroid/graphics/Path;

.field private r:F

.field private s:D

.field private t:I

.field private u:I

.field private v:I

.field private w:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/chanven/lib/cptr/header/a$c;->a:Landroid/graphics/RectF;

    .line 432
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/chanven/lib/cptr/header/a$c;->b:Landroid/graphics/Paint;

    .line 433
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/chanven/lib/cptr/header/a$c;->c:Landroid/graphics/Paint;

    .line 435
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/chanven/lib/cptr/header/a$c;->e:Landroid/graphics/Paint;

    .line 436
    iput v1, p0, Lcom/chanven/lib/cptr/header/a$c;->f:F

    .line 437
    iput v1, p0, Lcom/chanven/lib/cptr/header/a$c;->g:F

    .line 438
    iput v1, p0, Lcom/chanven/lib/cptr/header/a$c;->h:F

    .line 439
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/chanven/lib/cptr/header/a$c;->i:F

    .line 440
    const/high16 v0, 0x40200000    # 2.5f

    iput v0, p0, Lcom/chanven/lib/cptr/header/a$c;->j:F

    .line 459
    iput-object p1, p0, Lcom/chanven/lib/cptr/header/a$c;->d:Landroid/graphics/drawable/Drawable$Callback;

    .line 460
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a$c;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 461
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a$c;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 462
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a$c;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 463
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a$c;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 464
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a$c;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 466
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a$c;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 467
    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 507
    iget-boolean v0, p0, Lcom/chanven/lib/cptr/header/a$c;->p:Z

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a$c;->q:Landroid/graphics/Path;

    if-nez v0, :cond_1

    .line 509
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/chanven/lib/cptr/header/a$c;->q:Landroid/graphics/Path;

    .line 510
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a$c;->q:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 516
    :goto_0
    iget v0, p0, Lcom/chanven/lib/cptr/header/a$c;->j:F

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/chanven/lib/cptr/header/a$c;->r:F

    mul-float/2addr v0, v1

    .line 517
    iget-wide v2, p0, Lcom/chanven/lib/cptr/header/a$c;->s:D

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    float-to-double v4, v1

    add-double/2addr v2, v4

    double-to-float v1, v2

    .line 518
    iget-wide v2, p0, Lcom/chanven/lib/cptr/header/a$c;->s:D

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    float-to-double v4, v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    .line 523
    iget-object v3, p0, Lcom/chanven/lib/cptr/header/a$c;->q:Landroid/graphics/Path;

    invoke-virtual {v3, v6, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 524
    iget-object v3, p0, Lcom/chanven/lib/cptr/header/a$c;->q:Landroid/graphics/Path;

    iget v4, p0, Lcom/chanven/lib/cptr/header/a$c;->t:I

    int-to-float v4, v4

    iget v5, p0, Lcom/chanven/lib/cptr/header/a$c;->r:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 525
    iget-object v3, p0, Lcom/chanven/lib/cptr/header/a$c;->q:Landroid/graphics/Path;

    iget v4, p0, Lcom/chanven/lib/cptr/header/a$c;->t:I

    int-to-float v4, v4

    iget v5, p0, Lcom/chanven/lib/cptr/header/a$c;->r:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v5, p0, Lcom/chanven/lib/cptr/header/a$c;->u:I

    int-to-float v5, v5

    iget v6, p0, Lcom/chanven/lib/cptr/header/a$c;->r:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 527
    iget-object v3, p0, Lcom/chanven/lib/cptr/header/a$c;->q:Landroid/graphics/Path;

    sub-float v0, v1, v0

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Path;->offset(FF)V

    .line 528
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a$c;->q:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 530
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a$c;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/chanven/lib/cptr/header/a$c;->k:[I

    iget v2, p0, Lcom/chanven/lib/cptr/header/a$c;->l:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 531
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a$c;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/chanven/lib/cptr/header/a$c;->v:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 532
    add-float v0, p2, p3

    const/high16 v1, 0x40a00000    # 5.0f

    sub-float/2addr v0, v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 534
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a$c;->q:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/chanven/lib/cptr/header/a$c;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 536
    :cond_0
    return-void

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a$c;->q:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    goto/16 :goto_0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 717
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a$c;->d:Landroid/graphics/drawable/Drawable$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 718
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 562
    iget v0, p0, Lcom/chanven/lib/cptr/header/a$c;->l:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/chanven/lib/cptr/header/a$c;->k:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/chanven/lib/cptr/header/a$c;->l:I

    .line 563
    return-void
.end method

.method public a(D)V
    .locals 1

    .prologue
    .line 664
    iput-wide p1, p0, Lcom/chanven/lib/cptr/header/a$c;->s:D

    .line 665
    return-void
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 593
    iput p1, p0, Lcom/chanven/lib/cptr/header/a$c;->i:F

    .line 594
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a$c;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 595
    invoke-direct {p0}, Lcom/chanven/lib/cptr/header/a$c;->l()V

    .line 596
    return-void
.end method

.method public a(FF)V
    .locals 1

    .prologue
    .line 480
    float-to-int v0, p1

    iput v0, p0, Lcom/chanven/lib/cptr/header/a$c;->t:I

    .line 481
    float-to-int v0, p2

    iput v0, p0, Lcom/chanven/lib/cptr/header/a$c;->u:I

    .line 482
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 470
    iput p1, p0, Lcom/chanven/lib/cptr/header/a$c;->w:I

    .line 471
    return-void
.end method

.method public a(II)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 640
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    .line 642
    iget-wide v2, p0, Lcom/chanven/lib/cptr/header/a$c;->s:D

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-lez v1, :cond_0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 643
    :cond_0
    iget v0, p0, Lcom/chanven/lib/cptr/header/a$c;->i:F

    div-float/2addr v0, v6

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 647
    :goto_0
    iput v0, p0, Lcom/chanven/lib/cptr/header/a$c;->j:F

    .line 648
    return-void

    .line 645
    :cond_1
    div-float/2addr v0, v6

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/chanven/lib/cptr/header/a$c;->s:D

    sub-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    const/high16 v4, 0x43b40000    # 360.0f

    .line 489
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a$c;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/chanven/lib/cptr/header/a$c;->w:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 490
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a$c;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/chanven/lib/cptr/header/a$c;->v:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 492
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/chanven/lib/cptr/header/a$c;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 494
    iget-object v1, p0, Lcom/chanven/lib/cptr/header/a$c;->a:Landroid/graphics/RectF;

    .line 495
    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 496
    iget v0, p0, Lcom/chanven/lib/cptr/header/a$c;->j:F

    iget v2, p0, Lcom/chanven/lib/cptr/header/a$c;->j:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 497
    iget v0, p0, Lcom/chanven/lib/cptr/header/a$c;->f:F

    iget v2, p0, Lcom/chanven/lib/cptr/header/a$c;->h:F

    add-float/2addr v0, v2

    mul-float v2, v0, v4

    .line 498
    iget v0, p0, Lcom/chanven/lib/cptr/header/a$c;->g:F

    iget v3, p0, Lcom/chanven/lib/cptr/header/a$c;->h:F

    add-float/2addr v0, v3

    mul-float/2addr v0, v4

    .line 499
    sub-float v3, v0, v2

    .line 500
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a$c;->b:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/chanven/lib/cptr/header/a$c;->k:[I

    iget v5, p0, Lcom/chanven/lib/cptr/header/a$c;->l:I

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 501
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a$c;->b:Landroid/graphics/Paint;

    iget v4, p0, Lcom/chanven/lib/cptr/header/a$c;->v:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 502
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/chanven/lib/cptr/header/a$c;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 503
    invoke-direct {p0, p1, v2, v3, p2}, Lcom/chanven/lib/cptr/header/a$c;->a(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V

    .line 504
    return-void
.end method

.method public a(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a$c;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 567
    invoke-direct {p0}, Lcom/chanven/lib/cptr/header/a$c;->l()V

    .line 568
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 671
    iget-boolean v0, p0, Lcom/chanven/lib/cptr/header/a$c;->p:Z

    if-eq v0, p1, :cond_0

    .line 672
    iput-boolean p1, p0, Lcom/chanven/lib/cptr/header/a$c;->p:Z

    .line 673
    invoke-direct {p0}, Lcom/chanven/lib/cptr/header/a$c;->l()V

    .line 675
    :cond_0
    return-void
.end method

.method public a([I)V
    .locals 1

    .prologue
    .line 544
    iput-object p1, p0, Lcom/chanven/lib/cptr/header/a$c;->k:[I

    .line 546
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chanven/lib/cptr/header/a$c;->b(I)V

    .line 547
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 574
    iget v0, p0, Lcom/chanven/lib/cptr/header/a$c;->v:I

    return v0
.end method

.method public b(F)V
    .locals 0

    .prologue
    .line 605
    iput p1, p0, Lcom/chanven/lib/cptr/header/a$c;->f:F

    .line 606
    invoke-direct {p0}, Lcom/chanven/lib/cptr/header/a$c;->l()V

    .line 607
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 554
    iput p1, p0, Lcom/chanven/lib/cptr/header/a$c;->l:I

    .line 555
    return-void
.end method

.method public c()F
    .locals 1

    .prologue
    .line 586
    iget v0, p0, Lcom/chanven/lib/cptr/header/a$c;->i:F

    return v0
.end method

.method public c(F)V
    .locals 0

    .prologue
    .line 624
    iput p1, p0, Lcom/chanven/lib/cptr/header/a$c;->g:F

    .line 625
    invoke-direct {p0}, Lcom/chanven/lib/cptr/header/a$c;->l()V

    .line 626
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 581
    iput p1, p0, Lcom/chanven/lib/cptr/header/a$c;->v:I

    .line 582
    return-void
.end method

.method public d()F
    .locals 1

    .prologue
    .line 600
    iget v0, p0, Lcom/chanven/lib/cptr/header/a$c;->f:F

    return v0
.end method

.method public d(F)V
    .locals 0

    .prologue
    .line 635
    iput p1, p0, Lcom/chanven/lib/cptr/header/a$c;->h:F

    .line 636
    invoke-direct {p0}, Lcom/chanven/lib/cptr/header/a$c;->l()V

    .line 637
    return-void
.end method

.method public e()F
    .locals 1

    .prologue
    .line 610
    iget v0, p0, Lcom/chanven/lib/cptr/header/a$c;->m:F

    return v0
.end method

.method public e(F)V
    .locals 1

    .prologue
    .line 681
    iget v0, p0, Lcom/chanven/lib/cptr/header/a$c;->r:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 682
    iput p1, p0, Lcom/chanven/lib/cptr/header/a$c;->r:F

    .line 683
    invoke-direct {p0}, Lcom/chanven/lib/cptr/header/a$c;->l()V

    .line 685
    :cond_0
    return-void
.end method

.method public f()F
    .locals 1

    .prologue
    .line 614
    iget v0, p0, Lcom/chanven/lib/cptr/header/a$c;->n:F

    return v0
.end method

.method public g()F
    .locals 1

    .prologue
    .line 619
    iget v0, p0, Lcom/chanven/lib/cptr/header/a$c;->g:F

    return v0
.end method

.method public h()D
    .locals 2

    .prologue
    .line 656
    iget-wide v0, p0, Lcom/chanven/lib/cptr/header/a$c;->s:D

    return-wide v0
.end method

.method public i()F
    .locals 1

    .prologue
    .line 691
    iget v0, p0, Lcom/chanven/lib/cptr/header/a$c;->o:F

    return v0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 699
    iget v0, p0, Lcom/chanven/lib/cptr/header/a$c;->f:F

    iput v0, p0, Lcom/chanven/lib/cptr/header/a$c;->m:F

    .line 700
    iget v0, p0, Lcom/chanven/lib/cptr/header/a$c;->g:F

    iput v0, p0, Lcom/chanven/lib/cptr/header/a$c;->n:F

    .line 701
    iget v0, p0, Lcom/chanven/lib/cptr/header/a$c;->h:F

    iput v0, p0, Lcom/chanven/lib/cptr/header/a$c;->o:F

    .line 702
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 708
    iput v0, p0, Lcom/chanven/lib/cptr/header/a$c;->m:F

    .line 709
    iput v0, p0, Lcom/chanven/lib/cptr/header/a$c;->n:F

    .line 710
    iput v0, p0, Lcom/chanven/lib/cptr/header/a$c;->o:F

    .line 711
    invoke-virtual {p0, v0}, Lcom/chanven/lib/cptr/header/a$c;->b(F)V

    .line 712
    invoke-virtual {p0, v0}, Lcom/chanven/lib/cptr/header/a$c;->c(F)V

    .line 713
    invoke-virtual {p0, v0}, Lcom/chanven/lib/cptr/header/a$c;->d(F)V

    .line 714
    return-void
.end method
