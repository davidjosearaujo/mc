.class public Lcom/mbv/a/wp/base/activity/BaseFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseFragmentActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/mbv/a/wp/base/activity/BaseFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x4000000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 39
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 40
    return-void

    .line 37
    :cond_0
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x4000001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 21
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 23
    invoke-direct {p0, v2}, Lcom/mbv/a/wp/base/activity/BaseFragmentActivity;->a(Z)V

    .line 24
    new-instance v0, Lcom/a/a/a;

    invoke-direct {v0, p0}, Lcom/a/a/a;-><init>(Landroid/app/Activity;)V

    .line 25
    invoke-virtual {v0, v2}, Lcom/a/a/a;->a(Z)V

    .line 26
    const v1, 0x7f04001e

    invoke-virtual {v0, v1}, Lcom/a/a/a;->a(I)V

    .line 28
    :cond_0
    return-void
.end method
