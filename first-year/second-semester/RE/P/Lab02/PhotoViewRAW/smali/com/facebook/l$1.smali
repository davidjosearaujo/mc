.class Lcom/facebook/l$1;
.super Ljava/lang/Object;
.source "ProgressOutputStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/l;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/f$b;

.field final synthetic b:Lcom/facebook/l;


# direct methods
.method constructor <init>(Lcom/facebook/l;Lcom/facebook/f$b;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/facebook/l$1;->b:Lcom/facebook/l;

    iput-object p2, p0, Lcom/facebook/l$1;->a:Lcom/facebook/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/l$1;->a:Lcom/facebook/f$b;

    iget-object v1, p0, Lcom/facebook/l$1;->b:Lcom/facebook/l;

    .line 80
    invoke-static {v1}, Lcom/facebook/l;->a(Lcom/facebook/l;)Lcom/facebook/f;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/l$1;->b:Lcom/facebook/l;

    .line 81
    invoke-static {v2}, Lcom/facebook/l;->b(Lcom/facebook/l;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/l$1;->b:Lcom/facebook/l;

    .line 82
    invoke-static {v4}, Lcom/facebook/l;->c(Lcom/facebook/l;)J

    move-result-wide v4

    .line 79
    invoke-interface/range {v0 .. v5}, Lcom/facebook/f$b;->a(Lcom/facebook/f;JJ)V

    .line 83
    return-void
.end method
