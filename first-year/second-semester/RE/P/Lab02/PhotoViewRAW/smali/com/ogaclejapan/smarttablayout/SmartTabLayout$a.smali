.class Lcom/ogaclejapan/smarttablayout/SmartTabLayout$a;
.super Ljava/lang/Object;
.source "SmartTabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ogaclejapan/smarttablayout/SmartTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;


# direct methods
.method private constructor <init>(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)V
    .locals 0

    .prologue
    .line 637
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$a;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;Lcom/ogaclejapan/smarttablayout/SmartTabLayout$1;)V
    .locals 0

    .prologue
    .line 637
    invoke-direct {p0, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$a;-><init>(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 640
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$a;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget-object v1, v1, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/b;

    invoke-virtual {v1}, Lcom/ogaclejapan/smarttablayout/b;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 641
    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$a;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget-object v1, v1, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/b;

    invoke-virtual {v1, v0}, Lcom/ogaclejapan/smarttablayout/b;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 642
    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$a;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-static {v1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->b(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Lcom/ogaclejapan/smarttablayout/SmartTabLayout$d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 643
    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$a;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-static {v1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->b(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Lcom/ogaclejapan/smarttablayout/SmartTabLayout$d;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$d;->a(I)V

    .line 645
    :cond_0
    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$a;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-static {v1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->c(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 649
    :cond_1
    return-void

    .line 640
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
