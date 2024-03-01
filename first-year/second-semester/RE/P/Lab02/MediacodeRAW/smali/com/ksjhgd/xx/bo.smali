.class Lcom/ksjhgd/xx/bo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/bm;

.field private final synthetic b:I

.field private final synthetic c:Lcom/ksjhgd/xx/cc;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/bm;ILcom/ksjhgd/xx/cc;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/bo;->a:Lcom/ksjhgd/xx/bm;

    iput p2, p0, Lcom/ksjhgd/xx/bo;->b:I

    iput-object p3, p0, Lcom/ksjhgd/xx/bo;->c:Lcom/ksjhgd/xx/cc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/bo;->a:Lcom/ksjhgd/xx/bm;

    invoke-static {v0}, Lcom/ksjhgd/xx/bm;->a(Lcom/ksjhgd/xx/bm;)Lcom/ksjhgd/xx/bj;

    move-result-object v0

    iget-object v0, v0, Lcom/ksjhgd/xx/bj;->l:[I

    iget v1, p0, Lcom/ksjhgd/xx/bo;->b:I

    const/4 v2, 0x0

    aput v2, v0, v1

    :goto_0
    iget-object v0, p0, Lcom/ksjhgd/xx/bo;->a:Lcom/ksjhgd/xx/bm;

    invoke-static {v0}, Lcom/ksjhgd/xx/bm;->a(Lcom/ksjhgd/xx/bm;)Lcom/ksjhgd/xx/bj;

    move-result-object v0

    iget-object v1, p0, Lcom/ksjhgd/xx/bo;->c:Lcom/ksjhgd/xx/cc;

    iget v2, p0, Lcom/ksjhgd/xx/bo;->b:I

    invoke-static {v0, v1, v2}, Lcom/ksjhgd/xx/bj;->a(Lcom/ksjhgd/xx/bj;Lcom/ksjhgd/xx/cc;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ksjhgd/xx/bo;->a:Lcom/ksjhgd/xx/bm;

    invoke-static {v0}, Lcom/ksjhgd/xx/bm;->a(Lcom/ksjhgd/xx/bm;)Lcom/ksjhgd/xx/bj;

    move-result-object v0

    iget-object v0, v0, Lcom/ksjhgd/xx/bj;->l:[I

    iget v1, p0, Lcom/ksjhgd/xx/bo;->b:I

    const/4 v2, 0x1

    aput v2, v0, v1

    goto :goto_0
.end method
