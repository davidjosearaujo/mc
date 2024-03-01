.class Lcom/chanven/lib/cptr/loadmore/a$a;
.super Ljava/lang/Object;
.source "DefaultLoadMoreViewFooter.java"

# interfaces
.implements Lcom/chanven/lib/cptr/loadmore/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chanven/lib/cptr/loadmore/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Landroid/widget/TextView;

.field protected c:Landroid/widget/ProgressBar;

.field protected d:Landroid/view/View$OnClickListener;

.field final synthetic e:Lcom/chanven/lib/cptr/loadmore/a;


# direct methods
.method private constructor <init>(Lcom/chanven/lib/cptr/loadmore/a;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/chanven/lib/cptr/loadmore/a$a;->e:Lcom/chanven/lib/cptr/loadmore/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chanven/lib/cptr/loadmore/a;Lcom/chanven/lib/cptr/loadmore/a$1;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/chanven/lib/cptr/loadmore/a$a;-><init>(Lcom/chanven/lib/cptr/loadmore/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/a$a;->b:Landroid/widget/TextView;

    const-string v1, "\u70b9\u51fb\u52a0\u8f7d\u66f4\u591a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/a$a;->c:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/a$a;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/chanven/lib/cptr/loadmore/a$a;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method

.method public a(Lcom/chanven/lib/cptr/loadmore/c$a;Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 45
    sget v0, Lcom/chanven/lib/cptr/R$layout;->loadmore_default_footer:I

    invoke-interface {p1, v0}, Lcom/chanven/lib/cptr/loadmore/c$a;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/chanven/lib/cptr/loadmore/a$a;->a:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/a$a;->a:Landroid/view/View;

    sget v1, Lcom/chanven/lib/cptr/R$id;->loadmore_default_footer_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/chanven/lib/cptr/loadmore/a$a;->b:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/a$a;->a:Landroid/view/View;

    sget v1, Lcom/chanven/lib/cptr/R$id;->loadmore_default_footer_progressbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/chanven/lib/cptr/loadmore/a$a;->c:Landroid/widget/ProgressBar;

    .line 48
    iput-object p2, p0, Lcom/chanven/lib/cptr/loadmore/a$a;->d:Landroid/view/View$OnClickListener;

    .line 49
    invoke-virtual {p0}, Lcom/chanven/lib/cptr/loadmore/a$a;->a()V

    .line 50
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/a$a;->b:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/a$a;->c:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/a$a;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/a$a;->b:Landroid/widget/TextView;

    const-string v1, "\u5df2\u7ecf\u52a0\u8f7d\u5b8c\u6bd5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/a$a;->c:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/a$a;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method
