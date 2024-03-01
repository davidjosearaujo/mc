.class public Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItemAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "FragmentPagerItemAdapter.java"


# instance fields
.field private final a:Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;

.field private final b:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 33
    iput-object p2, p0, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItemAdapter;->a:Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;

    .line 34
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {p2}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;-><init>(I)V

    iput-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItemAdapter;->b:Landroid/support/v4/util/SparseArrayCompat;

    .line 35
    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItemAdapter;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 74
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(I)Lcom/ogaclejapan/smarttablayout/utils/v4/a;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItemAdapter;->a:Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ogaclejapan/smarttablayout/utils/v4/a;

    return-object v0
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItemAdapter;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/SparseArrayCompat;->remove(I)V

    .line 59
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 60
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItemAdapter;->a:Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;

    invoke-virtual {v0}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItemAdapter;->b(I)Lcom/ogaclejapan/smarttablayout/utils/v4/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItemAdapter;->a:Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;

    invoke-virtual {v1}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/ogaclejapan/smarttablayout/utils/v4/a;->a(Landroid/content/Context;I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItemAdapter;->b(I)Lcom/ogaclejapan/smarttablayout/utils/v4/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ogaclejapan/smarttablayout/utils/v4/a;->a()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPageWidth(I)F
    .locals 1

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;->getPageWidth(I)F

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    .line 50
    instance-of v0, v1, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 51
    iget-object v2, p0, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItemAdapter;->b:Landroid/support/v4/util/SparseArrayCompat;

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v0, v1

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v3}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 53
    :cond_0
    return-object v1
.end method
