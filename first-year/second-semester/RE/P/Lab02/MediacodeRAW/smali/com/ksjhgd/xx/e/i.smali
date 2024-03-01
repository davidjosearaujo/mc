.class public Lcom/ksjhgd/xx/e/i;
.super Landroid/widget/LinearLayout;


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ksjhgd/xx/e/i;->b:Landroid/view/View$OnKeyListener;

    iput-object p1, p0, Lcom/ksjhgd/xx/e/i;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const-string v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dispatchKeyEvent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/ksjhgd/xx/o;->l:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ksjhgd/xx/e/i;->a:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    iget-object v0, p0, Lcom/ksjhgd/xx/e/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ksjhgd/xx/e/n;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/e/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/uwjhdf/Ihsjf;->initAD2(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/e/i;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/uwjhdf/Ihsjf;->viewTwo(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    sput-boolean v3, Lcom/ksjhgd/xx/o;->l:Z

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ksjhgd/xx/e/i;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
