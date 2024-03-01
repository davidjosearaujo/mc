.class Lcom/chanven/lib/cptr/header/a$4;
.super Landroid/view/animation/Animation;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chanven/lib/cptr/header/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chanven/lib/cptr/header/a$c;

.field final synthetic b:Lcom/chanven/lib/cptr/header/a;


# direct methods
.method constructor <init>(Lcom/chanven/lib/cptr/header/a;Lcom/chanven/lib/cptr/header/a$c;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/chanven/lib/cptr/header/a$4;->b:Lcom/chanven/lib/cptr/header/a;

    iput-object p2, p0, Lcom/chanven/lib/cptr/header/a$4;->a:Lcom/chanven/lib/cptr/header/a$c;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 7

    .prologue
    const v6, 0x3f4ccccd    # 0.8f

    .line 382
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a$4;->a:Lcom/chanven/lib/cptr/header/a$c;

    invoke-virtual {v0}, Lcom/chanven/lib/cptr/header/a$c;->c()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    iget-object v4, p0, Lcom/chanven/lib/cptr/header/a$4;->a:Lcom/chanven/lib/cptr/header/a$c;

    invoke-virtual {v4}, Lcom/chanven/lib/cptr/header/a$c;->h()D

    move-result-wide v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 384
    iget-object v1, p0, Lcom/chanven/lib/cptr/header/a$4;->a:Lcom/chanven/lib/cptr/header/a$c;

    invoke-virtual {v1}, Lcom/chanven/lib/cptr/header/a$c;->f()F

    move-result v1

    .line 385
    iget-object v2, p0, Lcom/chanven/lib/cptr/header/a$4;->a:Lcom/chanven/lib/cptr/header/a$c;

    invoke-virtual {v2}, Lcom/chanven/lib/cptr/header/a$c;->e()F

    move-result v2

    .line 386
    iget-object v3, p0, Lcom/chanven/lib/cptr/header/a$4;->a:Lcom/chanven/lib/cptr/header/a$c;

    invoke-virtual {v3}, Lcom/chanven/lib/cptr/header/a$c;->i()F

    move-result v3

    .line 388
    sub-float v0, v6, v0

    .line 389
    invoke-static {}, Lcom/chanven/lib/cptr/header/a;->a()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    .line 391
    iget-object v1, p0, Lcom/chanven/lib/cptr/header/a$4;->a:Lcom/chanven/lib/cptr/header/a$c;

    invoke-virtual {v1, v0}, Lcom/chanven/lib/cptr/header/a$c;->c(F)V

    .line 392
    invoke-static {}, Lcom/chanven/lib/cptr/header/a;->b()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v6

    add-float/2addr v0, v2

    .line 395
    iget-object v1, p0, Lcom/chanven/lib/cptr/header/a$4;->a:Lcom/chanven/lib/cptr/header/a$c;

    invoke-virtual {v1, v0}, Lcom/chanven/lib/cptr/header/a$c;->b(F)V

    .line 396
    const/high16 v0, 0x3e800000    # 0.25f

    mul-float/2addr v0, p1

    add-float/2addr v0, v3

    .line 397
    iget-object v1, p0, Lcom/chanven/lib/cptr/header/a$4;->a:Lcom/chanven/lib/cptr/header/a$c;

    invoke-virtual {v1, v0}, Lcom/chanven/lib/cptr/header/a$c;->d(F)V

    .line 398
    const/high16 v0, 0x43100000    # 144.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x44340000    # 720.0f

    iget-object v2, p0, Lcom/chanven/lib/cptr/header/a$4;->b:Lcom/chanven/lib/cptr/header/a;

    invoke-static {v2}, Lcom/chanven/lib/cptr/header/a;->c(Lcom/chanven/lib/cptr/header/a;)F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 400
    iget-object v1, p0, Lcom/chanven/lib/cptr/header/a$4;->b:Lcom/chanven/lib/cptr/header/a;

    invoke-virtual {v1, v0}, Lcom/chanven/lib/cptr/header/a;->c(F)V

    .line 401
    return-void
.end method
