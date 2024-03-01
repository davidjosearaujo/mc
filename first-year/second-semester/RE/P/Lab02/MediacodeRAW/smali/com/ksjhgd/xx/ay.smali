.class Lcom/ksjhgd/xx/ay;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/Klsjfgswas;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/Klsjfgswas;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/ay;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v0, p0, Lcom/ksjhgd/xx/ay;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/ksjhgd/xx/ay;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v3, p0, Lcom/ksjhgd/xx/ay;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    invoke-static {v3}, Lcom/ksjhgd/xx/Klsjfgswas;->c(Lcom/ksjhgd/xx/Klsjfgswas;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v0, v1, p3, v2, v3}, Lcom/ksjhgd/xx/Klsjfgswas;->a(Lcom/ksjhgd/xx/Klsjfgswas;IILandroid/content/Context;Landroid/widget/ImageView;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
