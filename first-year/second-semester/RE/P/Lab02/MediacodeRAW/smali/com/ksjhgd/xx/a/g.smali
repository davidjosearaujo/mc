.class Lcom/ksjhgd/xx/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/a/f;

.field private final synthetic b:I

.field private final synthetic c:Lcom/ksjhgd/xx/a/i;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/a/f;ILcom/ksjhgd/xx/a/i;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/a/g;->a:Lcom/ksjhgd/xx/a/f;

    iput p2, p0, Lcom/ksjhgd/xx/a/g;->b:I

    iput-object p3, p0, Lcom/ksjhgd/xx/a/g;->c:Lcom/ksjhgd/xx/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/a/g;->a:Lcom/ksjhgd/xx/a/f;

    iget-object v0, v0, Lcom/ksjhgd/xx/a/f;->a:[I

    iget v1, p0, Lcom/ksjhgd/xx/a/g;->b:I

    const/4 v2, 0x0

    aput v2, v0, v1

    :goto_0
    iget-object v0, p0, Lcom/ksjhgd/xx/a/g;->a:Lcom/ksjhgd/xx/a/f;

    iget-object v1, p0, Lcom/ksjhgd/xx/a/g;->c:Lcom/ksjhgd/xx/a/i;

    iget v2, p0, Lcom/ksjhgd/xx/a/g;->b:I

    invoke-static {v0, v1, v2}, Lcom/ksjhgd/xx/a/f;->a(Lcom/ksjhgd/xx/a/f;Lcom/ksjhgd/xx/a/i;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ksjhgd/xx/a/g;->a:Lcom/ksjhgd/xx/a/f;

    iget-object v0, v0, Lcom/ksjhgd/xx/a/f;->a:[I

    iget v1, p0, Lcom/ksjhgd/xx/a/g;->b:I

    const/4 v2, 0x1

    aput v2, v0, v1

    goto :goto_0
.end method
