.class public Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$a;
.super Ljava/lang/Object;
.source "TabWallPaperListFragment.java"

# interfaces
.implements Lcom/chanven/lib/cptr/loadmore/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;


# direct methods
.method public constructor <init>(Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$a;->a:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/chanven/lib/cptr/loadmore/c$b;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$a$a;-><init>(Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$a;Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$1;)V

    return-object v0
.end method
