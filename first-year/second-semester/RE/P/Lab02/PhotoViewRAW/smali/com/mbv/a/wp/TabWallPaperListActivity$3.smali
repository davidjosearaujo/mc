.class Lcom/mbv/a/wp/TabWallPaperListActivity$3;
.super Ljava/lang/Object;
.source "TabWallPaperListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbv/a/wp/TabWallPaperListActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbv/a/wp/TabWallPaperListActivity;


# direct methods
.method constructor <init>(Lcom/mbv/a/wp/TabWallPaperListActivity;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mbv/a/wp/TabWallPaperListActivity$3;->a:Lcom/mbv/a/wp/TabWallPaperListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/mbv/a/wp/TabWallPaperListActivity$3;->a:Lcom/mbv/a/wp/TabWallPaperListActivity;

    invoke-static {v0}, Lcom/mbv/a/wp/TabWallPaperListActivity;->a(Lcom/mbv/a/wp/TabWallPaperListActivity;)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItemAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItemAdapter;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;

    invoke-virtual {v0}, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->c()V

    .line 105
    return-void
.end method
