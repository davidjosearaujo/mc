.class Lcom/ksjhgd/xx/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/x;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/x;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/af;->a:Lcom/ksjhgd/xx/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ksjhgd/xx/af;->a:Lcom/ksjhgd/xx/x;

    invoke-static {v0}, Lcom/ksjhgd/xx/x;->b(Lcom/ksjhgd/xx/x;)F

    move-result v0

    iget-object v1, p0, Lcom/ksjhgd/xx/af;->a:Lcom/ksjhgd/xx/x;

    invoke-static {v1}, Lcom/ksjhgd/xx/x;->c(Lcom/ksjhgd/xx/x;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41700000    # 15.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/af;->a:Lcom/ksjhgd/xx/x;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/x;->g()V

    :cond_0
    iget-object v0, p0, Lcom/ksjhgd/xx/af;->a:Lcom/ksjhgd/xx/x;

    invoke-static {v0}, Lcom/ksjhgd/xx/x;->d(Lcom/ksjhgd/xx/x;)V

    return-void
.end method
