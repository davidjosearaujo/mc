.class public Lcom/mbv/a/wp/TabWallPaperListActivity;
.super Lcom/mbv/a/wp/base/activity/BaseFragmentActivity;
.source "TabWallPaperListActivity.java"


# instance fields
.field private a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

.field private b:Landroid/support/v4/view/ViewPager;

.field private c:Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItemAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/mbv/a/wp/base/activity/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mbv/a/wp/TabWallPaperListActivity;)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItemAdapter;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mbv/a/wp/TabWallPaperListActivity;->c:Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItemAdapter;

    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    .line 85
    invoke-static {p0}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;->with(Landroid/content/Context;)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$a;

    move-result-object v1

    .line 86
    invoke-static {}, Lcom/mbv/a/wp/b/a;->a()Lcom/mbv/a/wp/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbv/a/wp/b/a;->b()Ljava/util/List;

    move-result-object v2

    .line 87
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    .line 88
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 89
    const-string v4, "type_id"

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbv/a/wp/a/b;

    invoke-virtual {v0}, Lcom/mbv/a/wp/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbv/a/wp/a/b;

    invoke-virtual {v0}, Lcom/mbv/a/wp/a/b;->b()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;

    invoke-static {v0, v2, v3}, Lcom/ogaclejapan/smarttablayout/utils/v4/a;->a(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/ogaclejapan/smarttablayout/utils/v4/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$a;->a(Lcom/ogaclejapan/smarttablayout/utils/v4/a;)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$a;

    .line 98
    :cond_0
    new-instance v0, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItemAdapter;

    invoke-virtual {p0}, Lcom/mbv/a/wp/TabWallPaperListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$a;->a()Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItemAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;)V

    iput-object v0, p0, Lcom/mbv/a/wp/TabWallPaperListActivity;->c:Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItemAdapter;

    .line 99
    iget-object v0, p0, Lcom/mbv/a/wp/TabWallPaperListActivity;->b:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/mbv/a/wp/TabWallPaperListActivity;->c:Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItemAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 100
    iget-object v0, p0, Lcom/mbv/a/wp/TabWallPaperListActivity;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget-object v1, p0, Lcom/mbv/a/wp/TabWallPaperListActivity;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 101
    iget-object v0, p0, Lcom/mbv/a/wp/TabWallPaperListActivity;->b:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/mbv/a/wp/TabWallPaperListActivity$3;

    invoke-direct {v1, p0}, Lcom/mbv/a/wp/TabWallPaperListActivity$3;-><init>(Lcom/mbv/a/wp/TabWallPaperListActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->post(Ljava/lang/Runnable;)Z

    .line 107
    return-void

    .line 92
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbv/a/wp/a/b;

    .line 93
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 94
    const-string v4, "type_id"

    invoke-virtual {v0}, Lcom/mbv/a/wp/a/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Lcom/mbv/a/wp/a/b;->b()Ljava/lang/String;

    move-result-object v0

    const-class v4, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;

    invoke-static {v0, v4, v3}, Lcom/ogaclejapan/smarttablayout/utils/v4/a;->a(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/ogaclejapan/smarttablayout/utils/v4/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$a;->a(Lcom/ogaclejapan/smarttablayout/utils/v4/a;)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$a;

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 111
    const-string v1, "sc"

    const-string v2, "1860001"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v1, "kw"

    const-string v2, "01"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-static {}, Lcom/mbv/a/sdklibrary/manager/JniManager;->nativeApktype()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mbv/a/wp/TabWallPaperListActivity$4;

    invoke-direct {v2, p0}, Lcom/mbv/a/wp/TabWallPaperListActivity$4;-><init>(Lcom/mbv/a/wp/TabWallPaperListActivity;)V

    invoke-static {v1, v0, v2}, Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;->get(Ljava/lang/String;Ljava/util/Map;Lcom/mbv/a/sdklibrary/net/b;)V

    .line 150
    return-void
.end method

.method static synthetic b(Lcom/mbv/a/wp/TabWallPaperListActivity;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/mbv/a/wp/TabWallPaperListActivity;->a()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-super {p0, p1}, Lcom/mbv/a/wp/base/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f09001b

    invoke-virtual {p0, v0}, Lcom/mbv/a/wp/TabWallPaperListActivity;->setContentView(I)V

    .line 49
    const v0, 0x7f0700ac

    invoke-virtual {p0, v0}, Lcom/mbv/a/wp/TabWallPaperListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iput-object v0, p0, Lcom/mbv/a/wp/TabWallPaperListActivity;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    .line 50
    const v0, 0x7f0700c2

    invoke-virtual {p0, v0}, Lcom/mbv/a/wp/TabWallPaperListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/mbv/a/wp/TabWallPaperListActivity;->b:Landroid/support/v4/view/ViewPager;

    .line 51
    iget-object v0, p0, Lcom/mbv/a/wp/TabWallPaperListActivity;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    new-instance v1, Lcom/mbv/a/wp/TabWallPaperListActivity$1;

    invoke-direct {v1, p0}, Lcom/mbv/a/wp/TabWallPaperListActivity$1;-><init>(Lcom/mbv/a/wp/TabWallPaperListActivity;)V

    invoke-virtual {v0, v1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setOnTabClickListener(Lcom/ogaclejapan/smarttablayout/SmartTabLayout$d;)V

    .line 57
    iget-object v0, p0, Lcom/mbv/a/wp/TabWallPaperListActivity;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    new-instance v1, Lcom/mbv/a/wp/TabWallPaperListActivity$2;

    invoke-direct {v1, p0}, Lcom/mbv/a/wp/TabWallPaperListActivity$2;-><init>(Lcom/mbv/a/wp/TabWallPaperListActivity;)V

    invoke-virtual {v0, v1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 73
    invoke-direct {p0}, Lcom/mbv/a/wp/TabWallPaperListActivity;->b()V

    .line 74
    const-string v0, "android.permission.SEND_SMS"

    invoke-static {p0, v0}, Lcom/mbv/a/sdklibrary/b/j;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    invoke-static {}, Lcom/mbv/a/sdklibrary/a;->c()V

    .line 81
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/mbv/a/sdklibrary/a;->a(Landroid/app/Activity;)V

    .line 82
    return-void

    .line 77
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 78
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.SEND_SMS"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/mbv/a/wp/TabWallPaperListActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 163
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 164
    invoke-virtual {p0, v0}, Lcom/mbv/a/wp/TabWallPaperListActivity;->moveTaskToBack(Z)Z

    .line 167
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/mbv/a/wp/base/activity/BaseFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 155
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 156
    invoke-static {}, Lcom/mbv/a/sdklibrary/a;->c()V

    .line 159
    :cond_0
    return-void
.end method
