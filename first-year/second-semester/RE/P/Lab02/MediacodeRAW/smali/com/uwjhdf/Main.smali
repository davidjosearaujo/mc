.class public Lcom/uwjhdf/Main;
.super Landroid/app/Activity;


# instance fields
.field onClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/uwjhdf/Main$1;

    invoke-direct {v0, p0}, Lcom/uwjhdf/Main$1;-><init>(Lcom/uwjhdf/Main;)V

    iput-object v0, p0, Lcom/uwjhdf/Main;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0, v0}, Lcom/uwjhdf/Main;->setContentView(Landroid/view/View;)V

    const-string v1, "10042"

    invoke-static {p0, v1}, Lcom/uwjhdf/Ihsjf;->setOOM(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v2, "\u70b9\u51fb\u663e\u793a\u8d77\u5f39"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/uwjhdf/Main$2;

    invoke-direct {v2, p0}, Lcom/uwjhdf/Main$2;-><init>(Lcom/uwjhdf/Main;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v3, "\u521d\u59cb\u5316 \u9000\u5f39"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/uwjhdf/Main$3;

    invoke-direct {v3, p0}, Lcom/uwjhdf/Main$3;-><init>(Lcom/uwjhdf/Main;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method
