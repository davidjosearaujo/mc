.class Lcom/chanven/lib/cptr/header/a$3;
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
    .line 360
    iput-object p1, p0, Lcom/chanven/lib/cptr/header/a$3;->b:Lcom/chanven/lib/cptr/header/a;

    iput-object p2, p0, Lcom/chanven/lib/cptr/header/a$3;->a:Lcom/chanven/lib/cptr/header/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a$3;->a:Lcom/chanven/lib/cptr/header/a$c;

    invoke-virtual {v0}, Lcom/chanven/lib/cptr/header/a$c;->a()V

    .line 368
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a$3;->a:Lcom/chanven/lib/cptr/header/a$c;

    invoke-virtual {v0}, Lcom/chanven/lib/cptr/header/a$c;->j()V

    .line 369
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a$3;->a:Lcom/chanven/lib/cptr/header/a$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chanven/lib/cptr/header/a$c;->a(Z)V

    .line 370
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/a$3;->b:Lcom/chanven/lib/cptr/header/a;

    invoke-static {v0}, Lcom/chanven/lib/cptr/header/a;->b(Lcom/chanven/lib/cptr/header/a;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/chanven/lib/cptr/header/a$3;->b:Lcom/chanven/lib/cptr/header/a;

    invoke-static {v1}, Lcom/chanven/lib/cptr/header/a;->a(Lcom/chanven/lib/cptr/header/a;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 371
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 375
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 363
    return-void
.end method
