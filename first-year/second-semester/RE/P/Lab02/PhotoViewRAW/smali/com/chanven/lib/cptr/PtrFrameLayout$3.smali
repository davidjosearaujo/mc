.class Lcom/chanven/lib/cptr/PtrFrameLayout$3;
.super Ljava/lang/Object;
.source "PtrFrameLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chanven/lib/cptr/PtrFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chanven/lib/cptr/PtrFrameLayout;


# direct methods
.method constructor <init>(Lcom/chanven/lib/cptr/PtrFrameLayout;)V
    .locals 0

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/chanven/lib/cptr/PtrFrameLayout$3;->a:Lcom/chanven/lib/cptr/PtrFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/chanven/lib/cptr/PtrFrameLayout$3;->a:Lcom/chanven/lib/cptr/PtrFrameLayout;

    invoke-static {v0}, Lcom/chanven/lib/cptr/PtrFrameLayout;->c(Lcom/chanven/lib/cptr/PtrFrameLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chanven/lib/cptr/PtrFrameLayout$3;->a:Lcom/chanven/lib/cptr/PtrFrameLayout;

    invoke-virtual {v0}, Lcom/chanven/lib/cptr/PtrFrameLayout;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1138
    iget-object v0, p0, Lcom/chanven/lib/cptr/PtrFrameLayout$3;->a:Lcom/chanven/lib/cptr/PtrFrameLayout;

    invoke-virtual {v0}, Lcom/chanven/lib/cptr/PtrFrameLayout;->g()V

    .line 1140
    :cond_0
    return-void
.end method
