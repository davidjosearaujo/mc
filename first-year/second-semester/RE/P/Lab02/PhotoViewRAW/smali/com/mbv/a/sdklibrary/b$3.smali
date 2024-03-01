.class Lcom/mbv/a/sdklibrary/b$3;
.super Ljava/lang/Object;
.source "Tracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbv/a/sdklibrary/b;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mbv/a/sdklibrary/b;


# direct methods
.method constructor <init>(Lcom/mbv/a/sdklibrary/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/b$3;->b:Lcom/mbv/a/sdklibrary/b;

    iput-object p2, p0, Lcom/mbv/a/sdklibrary/b$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/b$3;->b:Lcom/mbv/a/sdklibrary/b;

    iget-object v1, p0, Lcom/mbv/a/sdklibrary/b$3;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mbv/a/sdklibrary/b;->b(Lcom/mbv/a/sdklibrary/b;Ljava/lang/String;)V

    .line 92
    return-void
.end method
