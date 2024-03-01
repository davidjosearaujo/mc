.class Landroid/arch/lifecycle/h$a;
.super Ljava/lang/Object;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroid/arch/lifecycle/Lifecycle$State;

.field b:Landroid/arch/lifecycle/f;


# virtual methods
.method a(Landroid/arch/lifecycle/g;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 2

    .prologue
    .line 351
    invoke-static {p2}, Landroid/arch/lifecycle/h;->b(Landroid/arch/lifecycle/Lifecycle$Event;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v0

    .line 352
    iget-object v1, p0, Landroid/arch/lifecycle/h$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v1, v0}, Landroid/arch/lifecycle/h;->a(Landroid/arch/lifecycle/Lifecycle$State;Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v1

    iput-object v1, p0, Landroid/arch/lifecycle/h$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    .line 353
    iget-object v1, p0, Landroid/arch/lifecycle/h$a;->b:Landroid/arch/lifecycle/f;

    invoke-interface {v1, p1, p2}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/g;Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 354
    iput-object v0, p0, Landroid/arch/lifecycle/h$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    .line 355
    return-void
.end method
