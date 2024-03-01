.class Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$1;
.super Ljava/lang/Object;
.source "TabWallPaperListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;


# direct methods
.method constructor <init>(Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$1;->a:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {}, Lcom/mbv/a/wp/b/a;->a()Lcom/mbv/a/wp/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$1;->a:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;

    invoke-static {v1}, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->a(Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbv/a/wp/b/a;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 84
    invoke-static {}, Lcom/mbv/a/wp/c/b;->a()Lcom/mbv/a/wp/c/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mbv/a/wp/c/b;->a(Ljava/util/ArrayList;)V

    .line 85
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$1;->a:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;

    invoke-virtual {v1}, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mbv/a/wp/PreviewImagesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    const-string v1, "param_current_position"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    iget-object v1, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$1;->a:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;

    invoke-virtual {v1, v0}, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->startActivity(Landroid/content/Intent;)V

    .line 88
    return-void
.end method
