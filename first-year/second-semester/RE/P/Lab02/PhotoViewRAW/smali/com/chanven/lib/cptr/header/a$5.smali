.class Lcom/chanven/lib/cptr/header/a$5;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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
    .line 407
    iput-object p1, p0, Lcom/chanven/lib/cptr/header/a$5;->b:Lcom/chanven/lib/cptr/header/a;

    iput-object p2, p0, Lcom/chanven/lib/cptr/header/a$5;->a:Lcom/chanven/lib/cptr/header/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 416
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    .line 420
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a$5;->a:Lcom/chanven/lib/cptr/header/a$c;

    invoke-virtual {v0}, Lcom/chanven/lib/cptr/header/a$c;->j()V

    .line 421
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a$5;->a:Lcom/chanven/lib/cptr/header/a$c;

    invoke-virtual {v0}, Lcom/chanven/lib/cptr/header/a$c;->a()V

    .line 422
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a$5;->a:Lcom/chanven/lib/cptr/header/a$c;

    iget-object v1, p0, Lcom/chanven/lib/cptr/header/a$5;->a:Lcom/chanven/lib/cptr/header/a$c;

    invoke-virtual {v1}, Lcom/chanven/lib/cptr/header/a$c;->g()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chanven/lib/cptr/header/a$c;->b(F)V

    .line 423
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a$5;->b:Lcom/chanven/lib/cptr/header/a;

    iget-object v1, p0, Lcom/chanven/lib/cptr/header/a$5;->b:Lcom/chanven/lib/cptr/header/a;

    invoke-static {v1}, Lcom/chanven/lib/cptr/header/a;->c(Lcom/chanven/lib/cptr/header/a;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    rem-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/chanven/lib/cptr/header/a;->a(Lcom/chanven/lib/cptr/header/a;F)F

    .line 424
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a$5;->b:Lcom/chanven/lib/cptr/header/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chanven/lib/cptr/header/a;->a(Lcom/chanven/lib/cptr/header/a;F)F

    .line 411
    return-void
.end method
