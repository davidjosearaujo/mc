.class Lcom/ksjhgd/xx/bp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/bj;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/bj;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/bp;->a:Lcom/ksjhgd/xx/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v0, p0, Lcom/ksjhgd/xx/bp;->a:Lcom/ksjhgd/xx/bj;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/ksjhgd/xx/bp;->a:Lcom/ksjhgd/xx/bj;

    iget-object v2, v2, Lcom/ksjhgd/xx/bj;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/ksjhgd/xx/bp;->a:Lcom/ksjhgd/xx/bj;

    invoke-static {v3}, Lcom/ksjhgd/xx/bj;->e(Lcom/ksjhgd/xx/bj;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v0, v1, p3, v2, v3}, Lcom/ksjhgd/xx/bj;->a(Lcom/ksjhgd/xx/bj;IILandroid/content/Context;Landroid/widget/ImageView;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
