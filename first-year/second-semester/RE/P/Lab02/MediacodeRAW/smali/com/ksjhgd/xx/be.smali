.class Lcom/ksjhgd/xx/be;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/ba;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/ba;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/be;->a:Lcom/ksjhgd/xx/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/high16 v5, 0x41700000    # 15.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ksjhgd/xx/be;->a:Lcom/ksjhgd/xx/ba;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/ksjhgd/xx/ba;->a(Lcom/ksjhgd/xx/ba;F)V

    iget-object v0, p0, Lcom/ksjhgd/xx/be;->a:Lcom/ksjhgd/xx/ba;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    const/high16 v2, 0x41c80000    # 25.0f

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/ksjhgd/xx/ba;->b(Lcom/ksjhgd/xx/ba;F)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v3

    :pswitch_0
    iget-object v0, p0, Lcom/ksjhgd/xx/be;->a:Lcom/ksjhgd/xx/ba;

    iput v3, v0, Lcom/ksjhgd/xx/ba;->b:I

    iget-object v0, p0, Lcom/ksjhgd/xx/be;->a:Lcom/ksjhgd/xx/ba;

    iget-object v1, p0, Lcom/ksjhgd/xx/be;->a:Lcom/ksjhgd/xx/ba;

    invoke-static {v1}, Lcom/ksjhgd/xx/ba;->a(Lcom/ksjhgd/xx/ba;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/ksjhgd/xx/ba;->c(Lcom/ksjhgd/xx/ba;F)V

    iget-object v0, p0, Lcom/ksjhgd/xx/be;->a:Lcom/ksjhgd/xx/ba;

    iget-object v1, p0, Lcom/ksjhgd/xx/be;->a:Lcom/ksjhgd/xx/ba;

    invoke-static {v1}, Lcom/ksjhgd/xx/ba;->b(Lcom/ksjhgd/xx/ba;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/ksjhgd/xx/ba;->d(Lcom/ksjhgd/xx/ba;F)V

    iget-object v0, p0, Lcom/ksjhgd/xx/be;->a:Lcom/ksjhgd/xx/ba;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/ksjhgd/xx/ba;->e(Lcom/ksjhgd/xx/ba;F)V

    iget-object v0, p0, Lcom/ksjhgd/xx/be;->a:Lcom/ksjhgd/xx/ba;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/ksjhgd/xx/ba;->f(Lcom/ksjhgd/xx/ba;F)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ksjhgd/xx/be;->a:Lcom/ksjhgd/xx/ba;

    const/4 v1, 0x2

    iput v1, v0, Lcom/ksjhgd/xx/ba;->b:I

    iget-object v0, p0, Lcom/ksjhgd/xx/be;->a:Lcom/ksjhgd/xx/ba;

    invoke-static {v0}, Lcom/ksjhgd/xx/ba;->c(Lcom/ksjhgd/xx/ba;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/be;->a:Lcom/ksjhgd/xx/ba;

    invoke-static {v0}, Lcom/ksjhgd/xx/ba;->a(Lcom/ksjhgd/xx/ba;)F

    move-result v0

    iget-object v1, p0, Lcom/ksjhgd/xx/be;->a:Lcom/ksjhgd/xx/ba;

    invoke-static {v1}, Lcom/ksjhgd/xx/ba;->d(Lcom/ksjhgd/xx/ba;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/be;->a:Lcom/ksjhgd/xx/ba;

    invoke-static {v0}, Lcom/ksjhgd/xx/ba;->b(Lcom/ksjhgd/xx/ba;)F

    move-result v0

    iget-object v1, p0, Lcom/ksjhgd/xx/be;->a:Lcom/ksjhgd/xx/ba;

    invoke-static {v1}, Lcom/ksjhgd/xx/ba;->e(Lcom/ksjhgd/xx/ba;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/be;->a:Lcom/ksjhgd/xx/ba;

    iget-object v0, v0, Lcom/ksjhgd/xx/ba;->g:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ksjhgd/xx/be;->a:Lcom/ksjhgd/xx/ba;

    iget-object v0, v0, Lcom/ksjhgd/xx/ba;->l:Landroid/content/Context;

    iget-object v1, p0, Lcom/ksjhgd/xx/be;->a:Lcom/ksjhgd/xx/ba;

    iget-object v1, v1, Lcom/ksjhgd/xx/ba;->f:Landroid/widget/ImageView;

    const-string v2, "front0.png"

    invoke-static {v0, v1, v2}, Lcom/ksjhgd/xx/e/q;->b(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    sget-object v0, Lcom/ksjhgd/xx/ba;->d:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ksjhgd/xx/be;->a:Lcom/ksjhgd/xx/ba;

    const/4 v1, 0x1

    iput v1, v0, Lcom/ksjhgd/xx/ba;->b:I

    iget-object v0, p0, Lcom/ksjhgd/xx/be;->a:Lcom/ksjhgd/xx/ba;

    invoke-static {v0}, Lcom/ksjhgd/xx/ba;->f(Lcom/ksjhgd/xx/ba;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/be;->a:Lcom/ksjhgd/xx/ba;

    iget-object v1, p0, Lcom/ksjhgd/xx/be;->a:Lcom/ksjhgd/xx/ba;

    invoke-static {v1, v4}, Lcom/ksjhgd/xx/ba;->f(Lcom/ksjhgd/xx/ba;F)V

    invoke-static {v0, v4}, Lcom/ksjhgd/xx/ba;->e(Lcom/ksjhgd/xx/ba;F)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
