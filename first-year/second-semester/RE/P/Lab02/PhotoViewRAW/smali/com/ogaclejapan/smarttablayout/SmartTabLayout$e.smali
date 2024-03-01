.class Lcom/ogaclejapan/smarttablayout/SmartTabLayout$e;
.super Ljava/lang/Object;
.source "SmartTabLayout.java"

# interfaces
.implements Lcom/ogaclejapan/smarttablayout/SmartTabLayout$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ogaclejapan/smarttablayout/SmartTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private final b:I

.field private final c:I


# direct methods
.method private constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .prologue
    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$e;->a:Landroid/view/LayoutInflater;

    .line 560
    iput p2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$e;->b:I

    .line 561
    iput p3, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$e;->c:I

    .line 562
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;IILcom/ogaclejapan/smarttablayout/SmartTabLayout$1;)V
    .locals 0

    .prologue
    .line 552
    invoke-direct {p0, p1, p2, p3}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$e;-><init>(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;ILandroid/support/v4/view/PagerAdapter;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 566
    .line 569
    iget v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$e;->b:I

    if-eq v1, v4, :cond_3

    .line 570
    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$e;->a:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$e;->b:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 573
    :goto_0
    iget v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$e;->c:I

    if-eq v2, v4, :cond_0

    if-eqz v1, :cond_0

    .line 574
    iget v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$e;->c:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 577
    :cond_0
    if-nez v0, :cond_1

    const-class v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 578
    check-cast v0, Landroid/widget/TextView;

    .line 581
    :cond_1
    if-eqz v0, :cond_2

    .line 582
    invoke-virtual {p3, p2}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    :cond_2
    return-object v1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method
