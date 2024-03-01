.class Lcom/ogaclejapan/smarttablayout/SmartTabLayout$b;
.super Ljava/lang/Object;
.source "SmartTabLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ogaclejapan/smarttablayout/SmartTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)V
    .locals 0

    .prologue
    .line 590
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$b;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;Lcom/ogaclejapan/smarttablayout/SmartTabLayout$1;)V
    .locals 0

    .prologue
    .line 590
    invoke-direct {p0, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$b;-><init>(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .prologue
    .line 612
    iput p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$b;->b:I

    .line 614
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$b;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$b;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 617
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$b;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget-object v0, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/b;

    invoke-virtual {v0}, Lcom/ogaclejapan/smarttablayout/b;->getChildCount()I

    move-result v0

    .line 597
    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$b;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget-object v0, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/b;

    invoke-virtual {v0, p1, p2}, Lcom/ogaclejapan/smarttablayout/b;->a(IF)V

    .line 603
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$b;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-static {v0, p1, p2}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;IF)V

    .line 605
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$b;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$b;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 621
    iget v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$b;->b:I

    if-nez v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$b;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget-object v0, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/b;

    invoke-virtual {v0, p1, v2}, Lcom/ogaclejapan/smarttablayout/b;->a(IF)V

    .line 623
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$b;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-static {v0, p1, v2}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;IF)V

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$b;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget-object v0, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/b;

    invoke-virtual {v0}, Lcom/ogaclejapan/smarttablayout/b;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    .line 627
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$b;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget-object v0, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/b;

    invoke-virtual {v0, v2}, Lcom/ogaclejapan/smarttablayout/b;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne p1, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 626
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 627
    goto :goto_1

    .line 630
    :cond_2
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$b;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 631
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$b;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 633
    :cond_3
    return-void
.end method
