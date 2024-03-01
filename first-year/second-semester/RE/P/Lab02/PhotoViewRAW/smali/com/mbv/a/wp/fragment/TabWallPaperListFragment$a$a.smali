.class Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$a$a;
.super Ljava/lang/Object;
.source "TabWallPaperListFragment.java"

# interfaces
.implements Lcom/chanven/lib/cptr/loadmore/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field protected a:Landroid/widget/TextView;

.field final synthetic b:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$a;


# direct methods
.method private constructor <init>(Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$a;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$a$a;->b:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$a;Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$1;)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$a$a;-><init>(Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$a$a;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$a$a;->b:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$a;

    iget-object v1, v1, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$a;->a:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;

    invoke-virtual {v1}, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    return-void
.end method

.method public a(Lcom/chanven/lib/cptr/loadmore/c$a;Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 174
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$a$a;->b:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$a;

    iget-object v1, v1, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$a;->a:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;

    invoke-virtual {v1}, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$a$a;->a:Landroid/widget/TextView;

    .line 175
    iget-object v0, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$a$a;->a:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 176
    iget-object v0, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$a$a;->a:Landroid/widget/TextView;

    invoke-interface {p1, v0}, Lcom/chanven/lib/cptr/loadmore/c$a;->a(Landroid/view/View;)Landroid/view/View;

    .line 177
    invoke-virtual {p0}, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$a$a;->a()V

    .line 178
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$a$a;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$a$a;->b:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$a;

    iget-object v1, v1, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$a;->a:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;

    invoke-virtual {v1}, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$a$a;->a:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    return-void
.end method
