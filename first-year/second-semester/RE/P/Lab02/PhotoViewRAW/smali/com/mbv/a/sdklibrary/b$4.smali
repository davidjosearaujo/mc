.class Lcom/mbv/a/sdklibrary/b$4;
.super Lcom/mbv/a/sdklibrary/net/b;
.source "Tracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbv/a/sdklibrary/b;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbv/a/sdklibrary/b;


# direct methods
.method constructor <init>(Lcom/mbv/a/sdklibrary/b;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/b$4;->a:Lcom/mbv/a/sdklibrary/b;

    invoke-direct {p0}, Lcom/mbv/a/sdklibrary/net/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;[B)V
    .locals 3

    .prologue
    .line 176
    if-nez p1, :cond_0

    if-nez p2, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/b$4;->a:Lcom/mbv/a/sdklibrary/b;

    const-string v1, "is_send_install"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mbv/a/sdklibrary/b;->a(Lcom/mbv/a/sdklibrary/b;Ljava/lang/String;Z)V

    goto :goto_0
.end method
