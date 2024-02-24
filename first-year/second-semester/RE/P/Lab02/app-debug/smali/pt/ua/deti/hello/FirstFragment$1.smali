.class Lpt/ua/deti/hello/FirstFragment$1;
.super Ljava/lang/Object;
.source "FirstFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpt/ua/deti/hello/FirstFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpt/ua/deti/hello/FirstFragment;


# direct methods
.method constructor <init>(Lpt/ua/deti/hello/FirstFragment;)V
    .locals 0
    .param p1, "this$0"    # Lpt/ua/deti/hello/FirstFragment;

    .line 26
    iput-object p1, p0, Lpt/ua/deti/hello/FirstFragment$1;->this$0:Lpt/ua/deti/hello/FirstFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 29
    iget-object v0, p0, Lpt/ua/deti/hello/FirstFragment$1;->this$0:Lpt/ua/deti/hello/FirstFragment;

    invoke-static {v0}, Landroidx/navigation/fragment/NavHostFragment;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    .line 30
    const v1, 0x7f08002d

    invoke-virtual {v0, v1}, Landroidx/navigation/NavController;->navigate(I)V

    .line 31
    return-void
.end method
