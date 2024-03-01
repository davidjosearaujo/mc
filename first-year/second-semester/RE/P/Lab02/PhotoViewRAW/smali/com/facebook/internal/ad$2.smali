.class Lcom/facebook/internal/ad$2;
.super Ljava/lang/Object;
.source "WebDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/ad;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/ad;


# direct methods
.method constructor <init>(Lcom/facebook/internal/ad;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lcom/facebook/internal/ad$2;->a:Lcom/facebook/internal/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/facebook/internal/ad$2;->a:Lcom/facebook/internal/ad;

    invoke-virtual {v0}, Lcom/facebook/internal/ad;->cancel()V

    .line 510
    return-void
.end method
