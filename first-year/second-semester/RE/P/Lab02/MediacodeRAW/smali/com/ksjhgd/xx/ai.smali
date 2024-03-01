.class Lcom/ksjhgd/xx/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/x;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/x;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/ai;->a:Lcom/ksjhgd/xx/x;

    iput-object p2, p0, Lcom/ksjhgd/xx/ai;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/ksjhgd/xx/ai;->a:Lcom/ksjhgd/xx/x;

    iget-object v1, p0, Lcom/ksjhgd/xx/ai;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, v0, Lcom/ksjhgd/xx/x;->t:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/ksjhgd/xx/ai;->a:Lcom/ksjhgd/xx/x;

    iget-object v0, v0, Lcom/ksjhgd/xx/x;->t:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/r;->l:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/ksjhgd/xx/ai;->a:Lcom/ksjhgd/xx/x;

    iget-object v0, v0, Lcom/ksjhgd/xx/x;->t:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/r;->m:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/ksjhgd/xx/ai;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ksjhgd/xx/f;->a(Landroid/content/Context;)V

    return-void
.end method
