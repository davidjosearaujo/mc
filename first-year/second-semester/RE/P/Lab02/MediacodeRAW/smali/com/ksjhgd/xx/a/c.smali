.class public Lcom/ksjhgd/xx/a/c;
.super Landroid/widget/BaseAdapter;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field private e:Lcom/ksjhgd/xx/x;

.field private f:Landroid/content/Context;

.field private g:Lcom/ksjhgd/xx/c/b;

.field private h:Landroid/util/DisplayMetrics;

.field private i:F


# direct methods
.method public constructor <init>(Lcom/ksjhgd/xx/x;Lcom/ksjhgd/xx/c/b;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/16 v0, 0x1001

    iput v0, p0, Lcom/ksjhgd/xx/a/c;->a:I

    const/16 v0, 0x1002

    iput v0, p0, Lcom/ksjhgd/xx/a/c;->b:I

    const/16 v0, 0x1003

    iput v0, p0, Lcom/ksjhgd/xx/a/c;->c:I

    const/16 v0, 0x1004

    iput v0, p0, Lcom/ksjhgd/xx/a/c;->d:I

    iput-object p1, p0, Lcom/ksjhgd/xx/a/c;->e:Lcom/ksjhgd/xx/x;

    invoke-virtual {p1}, Lcom/ksjhgd/xx/x;->i()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ksjhgd/xx/a/c;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/ksjhgd/xx/a/c;->g:Lcom/ksjhgd/xx/c/b;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/ksjhgd/xx/a/c;->h:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/ksjhgd/xx/a/c;->f:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/ksjhgd/xx/a/c;->h:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/a/c;->h:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/ksjhgd/xx/a/c;->i:F

    return-void
.end method

.method static synthetic a(Lcom/ksjhgd/xx/a/c;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/a/c;->f:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, -0x2

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ksjhgd/xx/a/c;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v8, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0xffffff

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42480000    # 50.0f

    iget v3, p0, Lcom/ksjhgd/xx/a/c;->i:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/high16 v3, 0x42480000    # 50.0f

    iget v4, p0, Lcom/ksjhgd/xx/a/c;->i:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/ksjhgd/xx/a/c;->f:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget v3, p0, Lcom/ksjhgd/xx/a/c;->a:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setId(I)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/ksjhgd/xx/a/c;->f:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ksjhgd/xx/a/c;->f:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget v3, p0, Lcom/ksjhgd/xx/a/c;->b:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method static synthetic b(Lcom/ksjhgd/xx/a/c;)Lcom/ksjhgd/xx/c/b;
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/a/c;->g:Lcom/ksjhgd/xx/c/b;

    return-object v0
.end method

.method static synthetic c(Lcom/ksjhgd/xx/a/c;)Lcom/ksjhgd/xx/x;
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/a/c;->e:Lcom/ksjhgd/xx/x;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/ksjhgd/xx/c/c;)Z
    .locals 9

    const/4 v8, -0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ksjhgd/xx/a/c;->f:Landroid/content/Context;

    sget-object v2, Lcom/ksjhgd/xx/e/a;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ksjhgd/xx/e/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/ksjhgd/xx/e/a;

    move-result-object v1

    iget-object v2, p1, Lcom/ksjhgd/xx/c/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ksjhgd/xx/e/a;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "Home.startDown(\u5f53\u524dad\u5df2\u7ecf\u4e0b\u8f7d\u5e76\u5b89\u88c5\u8fc7)"

    invoke-static {v1}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1, p1}, Lcom/ksjhgd/xx/e/a;->b(Lcom/ksjhgd/xx/c/c;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Home.startDown(\u63d2\u5165\u51c6\u5907\u4e0b\u8f7d\u7684ad) id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ksjhgd/xx/a/c;->f:Landroid/content/Context;

    sget-object v2, Lcom/ksjhgd/xx/m;->r:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v2, Lcom/ksjhgd/xx/m;->o:Ljava/lang/String;

    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p1, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_2

    iget-object v4, p0, Lcom/ksjhgd/xx/a/c;->f:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/ksjhgd/xx/m;->q:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    sget-object v6, Lcom/ksjhgd/xx/m;->k:Ljava/lang/String;

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    sget-object v6, Lcom/ksjhgd/xx/m;->n:Ljava/lang/String;

    iget-object v7, p1, Lcom/ksjhgd/xx/c/c;->d:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    sget-object v5, Lcom/ksjhgd/xx/m;->p:Ljava/lang/String;

    iget-object v6, p1, Lcom/ksjhgd/xx/c/c;->e:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v4, Lcom/ksjhgd/xx/m;->t:Ljava/util/LinkedList;

    invoke-virtual {v4, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    if-ne v2, v8, :cond_1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/ksjhgd/xx/m;->o:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ksjhgd/xx/a/c;->f:Landroid/content/Context;

    const-class v3, Lcom/uwjhdf/vksf;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v2, Lcom/ksjhgd/xx/m;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/ksjhgd/xx/a/c;->f:Landroid/content/Context;

    sget-object v3, Lcom/ksjhgd/xx/e;->b:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/ksjhgd/xx/e;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/ksjhgd/xx/a/c;->f:Landroid/content/Context;

    sget-object v2, Lcom/ksjhgd/xx/m;->s:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p1, Lcom/ksjhgd/xx/c/c;->e:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_2
    const-string v0, "Home.startDown(\u4efb\u52a1\u5df2\u7ecf\u5b58\u5728)"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/a/c;->g:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/a/c;->g:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    const-string v0, "title"

    const-string v1, "msg"

    const-string v2, "url"

    invoke-direct {p0, v0, v1, v2}, Lcom/ksjhgd/xx/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/ksjhgd/xx/a/e;

    invoke-direct {v1, p0}, Lcom/ksjhgd/xx/a/e;-><init>(Lcom/ksjhgd/xx/a/c;)V

    iget v0, p0, Lcom/ksjhgd/xx/a/c;->a:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/ksjhgd/xx/a/e;->a:Landroid/widget/ImageView;

    iget v0, p0, Lcom/ksjhgd/xx/a/c;->b:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/ksjhgd/xx/a/e;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v0, Lcom/ksjhgd/xx/a/d;

    invoke-direct {v0, p0, p1}, Lcom/ksjhgd/xx/a/d;-><init>(Lcom/ksjhgd/xx/a/c;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v1

    :goto_0
    iget-object v1, v0, Lcom/ksjhgd/xx/a/e;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ksjhgd/xx/a/c;->g:Lcom/ksjhgd/xx/c/b;

    iget-object v2, v2, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/ksjhgd/xx/c/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ksjhgd/xx/a/c;->e:Lcom/ksjhgd/xx/x;

    iget-object v2, p0, Lcom/ksjhgd/xx/a/c;->g:Lcom/ksjhgd/xx/c/b;

    iget-object v2, v2, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/ksjhgd/xx/c/c;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/ksjhgd/xx/a/e;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Lcom/ksjhgd/xx/x;->a(Ljava/lang/String;Landroid/view/View;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksjhgd/xx/a/e;

    goto :goto_0
.end method
