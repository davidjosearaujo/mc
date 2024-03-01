.class Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2;
.super Lcom/mbv/a/sdklibrary/net/b;
.source "TabWallPaperListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->d()V
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
    .line 105
    iput-object p1, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2;->a:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;

    invoke-direct {p0}, Lcom/mbv/a/sdklibrary/net/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;[B)V
    .locals 3

    .prologue
    .line 108
    if-nez p1, :cond_0

    if-nez p2, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    .line 112
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2;->a:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;

    invoke-virtual {v1}, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2$1;

    invoke-direct {v2, p0, v0}, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2$1;-><init>(Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
