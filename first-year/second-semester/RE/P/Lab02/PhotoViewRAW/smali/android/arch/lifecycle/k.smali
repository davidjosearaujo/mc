.class Landroid/arch/lifecycle/k;
.super Ljava/lang/Object;
.source "ReflectiveGenericLifecycleObserver.java"

# interfaces
.implements Landroid/arch/lifecycle/f;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/arch/lifecycle/a$a;


# virtual methods
.method public a(Landroid/arch/lifecycle/g;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Landroid/arch/lifecycle/k;->b:Landroid/arch/lifecycle/a$a;

    iget-object v1, p0, Landroid/arch/lifecycle/k;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2, v1}, Landroid/arch/lifecycle/a$a;->a(Landroid/arch/lifecycle/g;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V

    .line 37
    return-void
.end method
