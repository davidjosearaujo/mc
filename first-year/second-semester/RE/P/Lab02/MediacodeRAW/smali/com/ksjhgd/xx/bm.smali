.class Lcom/ksjhgd/xx/bm;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/bj;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/bj;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/bm;->a:Lcom/ksjhgd/xx/bj;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ksjhgd/xx/bm;)Lcom/ksjhgd/xx/bj;
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/bm;->a:Lcom/ksjhgd/xx/bj;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/ksjhgd/xx/c/c;
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/bm;->a:Lcom/ksjhgd/xx/bj;

    iget-object v0, v0, Lcom/ksjhgd/xx/bj;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/bm;->a:Lcom/ksjhgd/xx/bj;

    iget v0, v0, Lcom/ksjhgd/xx/bj;->m:I

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ksjhgd/xx/bm;->a(I)Lcom/ksjhgd/xx/c/c;

    move-result-object v0

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

    iget-object v0, p0, Lcom/ksjhgd/xx/bm;->a:Lcom/ksjhgd/xx/bj;

    const-string v1, "title"

    const-string v2, "msg"

    invoke-static {v0, v1, v2}, Lcom/ksjhgd/xx/bj;->a(Lcom/ksjhgd/xx/bj;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/ksjhgd/xx/cc;

    iget-object v0, p0, Lcom/ksjhgd/xx/bm;->a:Lcom/ksjhgd/xx/bj;

    invoke-direct {v1, v0}, Lcom/ksjhgd/xx/cc;-><init>(Lcom/ksjhgd/xx/bj;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/bm;->a:Lcom/ksjhgd/xx/bj;

    iget v0, v0, Lcom/ksjhgd/xx/bj;->u:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/ksjhgd/xx/cc;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ksjhgd/xx/bm;->a:Lcom/ksjhgd/xx/bj;

    iget v0, v0, Lcom/ksjhgd/xx/bj;->v:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/ksjhgd/xx/cc;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ksjhgd/xx/bm;->a:Lcom/ksjhgd/xx/bj;

    iget v0, v0, Lcom/ksjhgd/xx/bj;->w:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/ksjhgd/xx/cc;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ksjhgd/xx/bm;->a:Lcom/ksjhgd/xx/bj;

    iget v0, v0, Lcom/ksjhgd/xx/bj;->x:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/ksjhgd/xx/cc;->d:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/ksjhgd/xx/bm;->a:Lcom/ksjhgd/xx/bj;

    invoke-static {v0, v1, p1}, Lcom/ksjhgd/xx/bj;->a(Lcom/ksjhgd/xx/bj;Lcom/ksjhgd/xx/cc;I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v0, Lcom/ksjhgd/xx/bn;

    invoke-direct {v0, p0, p1}, Lcom/ksjhgd/xx/bn;-><init>(Lcom/ksjhgd/xx/bm;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/ksjhgd/xx/cc;->d:Landroid/widget/CheckBox;

    new-instance v2, Lcom/ksjhgd/xx/bo;

    invoke-direct {v2, p0, p1, v1}, Lcom/ksjhgd/xx/bo;-><init>(Lcom/ksjhgd/xx/bm;ILcom/ksjhgd/xx/cc;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object v0, v1

    :goto_0
    iget-object v1, v0, Lcom/ksjhgd/xx/cc;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ksjhgd/xx/bm;->a:Lcom/ksjhgd/xx/bj;

    iget-object v2, v2, Lcom/ksjhgd/xx/bj;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v2, v2, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/ksjhgd/xx/c/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/ksjhgd/xx/cc;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ksjhgd/xx/bm;->a:Lcom/ksjhgd/xx/bj;

    iget-object v2, v2, Lcom/ksjhgd/xx/bj;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v2, v2, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/ksjhgd/xx/c/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ksjhgd/xx/bm;->a:Lcom/ksjhgd/xx/bj;

    iget-object v2, p0, Lcom/ksjhgd/xx/bm;->a:Lcom/ksjhgd/xx/bj;

    iget-object v2, v2, Lcom/ksjhgd/xx/bj;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v2, v2, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/ksjhgd/xx/c/c;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/ksjhgd/xx/cc;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Lcom/ksjhgd/xx/bj;->a(Ljava/lang/String;Landroid/view/View;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksjhgd/xx/cc;

    goto :goto_0
.end method
