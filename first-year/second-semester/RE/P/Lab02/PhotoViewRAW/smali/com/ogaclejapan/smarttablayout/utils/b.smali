.class public Lcom/ogaclejapan/smarttablayout/utils/b;
.super Lcom/ogaclejapan/smarttablayout/utils/a;
.source "ViewPagerItem.java"


# instance fields
.field private final a:I


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 41
    iget v0, p0, Lcom/ogaclejapan/smarttablayout/utils/b;->a:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
