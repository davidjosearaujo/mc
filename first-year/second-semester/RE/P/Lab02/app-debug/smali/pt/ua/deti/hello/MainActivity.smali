.class public Lpt/ua/deti/hello/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private secretAction()V
    .locals 2

    .line 60
    const-string v0, "hello"

    const-string v1, "The Password is #5up3r53cr3t#"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 21
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lpt/ua/deti/hello/MainActivity;->setContentView(I)V

    .line 23
    const v0, 0x7f080122

    invoke-virtual {p0, v0}, Lpt/ua/deti/hello/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 24
    .local v0, "toolbar":Landroidx/appcompat/widget/Toolbar;
    invoke-virtual {p0, v0}, Lpt/ua/deti/hello/MainActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 26
    const v1, 0x7f08007a

    invoke-virtual {p0, v1}, Lpt/ua/deti/hello/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 27
    .local v1, "fab":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    invoke-direct {p0}, Lpt/ua/deti/hello/MainActivity;->secretAction()V

    .line 28
    new-instance v2, Lpt/ua/deti/hello/MainActivity$1;

    invoke-direct {v2, p0}, Lpt/ua/deti/hello/MainActivity$1;-><init>(Lpt/ua/deti/hello/MainActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 40
    invoke-virtual {p0}, Lpt/ua/deti/hello/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 49
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 52
    .local v0, "id":I
    const v1, 0x7f08003f

    if-ne v0, v1, :cond_0

    .line 53
    const/4 v1, 0x1

    return v1

    .line 56
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method
