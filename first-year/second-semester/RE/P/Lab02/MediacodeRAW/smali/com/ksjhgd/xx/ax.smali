.class Lcom/ksjhgd/xx/ax;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/Klsjfgswas;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/Klsjfgswas;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/ax;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/ksjhgd/xx/ax;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v1, p0, Lcom/ksjhgd/xx/ax;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v1, v1, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget-object v1, v1, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v1, v1, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v1, v1, p3

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/ksjhgd/xx/Klsjfgswas;->a(Lcom/ksjhgd/xx/c/c;I)Z

    iget-object v0, p0, Lcom/ksjhgd/xx/ax;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/Klsjfgswas;->b()V

    return-void
.end method
