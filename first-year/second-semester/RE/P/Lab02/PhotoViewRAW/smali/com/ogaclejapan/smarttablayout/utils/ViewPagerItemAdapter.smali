.class public Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItemAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ViewPagerItemAdapter.java"


# instance fields
.field private final a:Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems;

.field private final b:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Landroid/view/LayoutInflater;


# virtual methods
.method protected a(I)Lcom/ogaclejapan/smarttablayout/utils/b;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItemAdapter;->a:Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ogaclejapan/smarttablayout/utils/b;

    return-object v0
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItemAdapter;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/SparseArrayCompat;->remove(I)V

    .line 54
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 55
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItemAdapter;->a:Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems;

    invoke-virtual {v0}, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems;->size()I

    move-result v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItemAdapter;->a(I)Lcom/ogaclejapan/smarttablayout/utils/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ogaclejapan/smarttablayout/utils/b;->a()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPageWidth(I)F
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItemAdapter;->a(I)Lcom/ogaclejapan/smarttablayout/utils/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ogaclejapan/smarttablayout/utils/b;->b()F

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 45
    invoke-virtual {p0, p2}, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItemAdapter;->a(I)Lcom/ogaclejapan/smarttablayout/utils/b;

    move-result-object v0

    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItemAdapter;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, p1}, Lcom/ogaclejapan/smarttablayout/utils/b;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 47
    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItemAdapter;->b:Landroid/support/v4/util/SparseArrayCompat;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p2, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 48
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 59
    if-ne p2, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
