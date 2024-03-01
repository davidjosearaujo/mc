.class public final Lcom/google/android/gms/internal/zzabm;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Lcom/google/android/gms/internal/e;


# static fields
.field private static a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/support/v4/app/FragmentActivity;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/zzabm;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/d;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzabm;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzabm;->b:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzabm;->c:I

    return-void
.end method


# virtual methods
.method public synthetic a()Landroid/app/Activity;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzabm;->b()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzabm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabm;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/d;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabm;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/d;->a(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzabm;->c:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabm;->d:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabm;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/d;

    if-eqz p1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/zzabm;->c:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabm;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/d;->f()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzabm;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/d;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/d;->b(Landroid/os/Bundle;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzabm;->c:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabm;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/d;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/zzabm;->c:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabm;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/d;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method
