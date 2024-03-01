.class Landroid/arch/lifecycle/a$a;
.super Ljava/lang/Object;
.source "ClassesInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/arch/lifecycle/Lifecycle$Event;",
            "Ljava/util/List",
            "<",
            "Landroid/arch/lifecycle/a$b;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private static a(Ljava/util/List;Landroid/arch/lifecycle/g;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/arch/lifecycle/a$b;",
            ">;",
            "Landroid/arch/lifecycle/g;",
            "Landroid/arch/lifecycle/Lifecycle$Event;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 191
    if-eqz p0, :cond_0

    .line 192
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 193
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/a$b;

    invoke-virtual {v0, p1, p2, p3}, Landroid/arch/lifecycle/a$b;->a(Landroid/arch/lifecycle/g;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V

    .line 192
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 196
    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/arch/lifecycle/g;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Landroid/arch/lifecycle/a$a;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1, p2, p3}, Landroid/arch/lifecycle/a$a;->a(Ljava/util/List;Landroid/arch/lifecycle/g;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Landroid/arch/lifecycle/a$a;->a:Ljava/util/Map;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_ANY:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1, p2, p3}, Landroid/arch/lifecycle/a$a;->a(Ljava/util/List;Landroid/arch/lifecycle/g;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V

    .line 187
    return-void
.end method
