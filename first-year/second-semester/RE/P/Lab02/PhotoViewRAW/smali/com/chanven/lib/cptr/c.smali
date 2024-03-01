.class Lcom/chanven/lib/cptr/c;
.super Ljava/lang/Object;
.source "PtrUIHandlerHolder.java"

# interfaces
.implements Lcom/chanven/lib/cptr/b;


# instance fields
.field private a:Lcom/chanven/lib/cptr/b;

.field private b:Lcom/chanven/lib/cptr/c;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static a(Lcom/chanven/lib/cptr/c;Lcom/chanven/lib/cptr/b;)V
    .locals 1

    .prologue
    .line 31
    if-nez p1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    if-eqz p0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/chanven/lib/cptr/c;->a:Lcom/chanven/lib/cptr/b;

    if-nez v0, :cond_3

    .line 38
    iput-object p1, p0, Lcom/chanven/lib/cptr/c;->a:Lcom/chanven/lib/cptr/b;

    goto :goto_0

    .line 43
    :cond_2
    iget-object p0, p0, Lcom/chanven/lib/cptr/c;->b:Lcom/chanven/lib/cptr/c;

    .line 46
    :cond_3
    invoke-direct {p0, p1}, Lcom/chanven/lib/cptr/c;->a(Lcom/chanven/lib/cptr/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/chanven/lib/cptr/c;->b:Lcom/chanven/lib/cptr/c;

    if-nez v0, :cond_2

    .line 54
    new-instance v0, Lcom/chanven/lib/cptr/c;

    invoke-direct {v0}, Lcom/chanven/lib/cptr/c;-><init>()V

    .line 55
    iput-object p1, v0, Lcom/chanven/lib/cptr/c;->a:Lcom/chanven/lib/cptr/b;

    .line 56
    iput-object v0, p0, Lcom/chanven/lib/cptr/c;->b:Lcom/chanven/lib/cptr/c;

    goto :goto_0
.end method

.method private a(Lcom/chanven/lib/cptr/b;)Z
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/chanven/lib/cptr/c;->a:Lcom/chanven/lib/cptr/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chanven/lib/cptr/c;->a:Lcom/chanven/lib/cptr/b;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Lcom/chanven/lib/cptr/c;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/chanven/lib/cptr/c;

    invoke-direct {v0}, Lcom/chanven/lib/cptr/c;-><init>()V

    return-object v0
.end method

.method private c()Lcom/chanven/lib/cptr/b;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chanven/lib/cptr/c;->a:Lcom/chanven/lib/cptr/b;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/chanven/lib/cptr/PtrFrameLayout;)V
    .locals 1

    .prologue
    .line 104
    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/chanven/lib/cptr/c;->c()Lcom/chanven/lib/cptr/b;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_1

    .line 108
    invoke-interface {v0, p1}, Lcom/chanven/lib/cptr/b;->a(Lcom/chanven/lib/cptr/PtrFrameLayout;)V

    .line 110
    :cond_1
    iget-object p0, p0, Lcom/chanven/lib/cptr/c;->b:Lcom/chanven/lib/cptr/c;

    if-nez p0, :cond_0

    .line 111
    return-void
.end method

.method public a(Lcom/chanven/lib/cptr/PtrFrameLayout;ZBLcom/chanven/lib/cptr/a/a;)V
    .locals 1

    .prologue
    .line 151
    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/chanven/lib/cptr/c;->c()Lcom/chanven/lib/cptr/b;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_1

    .line 155
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/chanven/lib/cptr/b;->a(Lcom/chanven/lib/cptr/PtrFrameLayout;ZBLcom/chanven/lib/cptr/a/a;)V

    .line 157
    :cond_1
    iget-object p0, p0, Lcom/chanven/lib/cptr/c;->b:Lcom/chanven/lib/cptr/c;

    if-nez p0, :cond_0

    .line 158
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/chanven/lib/cptr/c;->a:Lcom/chanven/lib/cptr/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/chanven/lib/cptr/PtrFrameLayout;)V
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/chanven/lib/cptr/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-direct {p0}, Lcom/chanven/lib/cptr/c;->c()Lcom/chanven/lib/cptr/b;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_1

    .line 122
    invoke-interface {v0, p1}, Lcom/chanven/lib/cptr/b;->b(Lcom/chanven/lib/cptr/PtrFrameLayout;)V

    .line 124
    :cond_1
    iget-object p0, p0, Lcom/chanven/lib/cptr/c;->b:Lcom/chanven/lib/cptr/c;

    if-nez p0, :cond_0

    goto :goto_0
.end method

.method public c(Lcom/chanven/lib/cptr/PtrFrameLayout;)V
    .locals 1

    .prologue
    .line 129
    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/chanven/lib/cptr/c;->c()Lcom/chanven/lib/cptr/b;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_1

    .line 133
    invoke-interface {v0, p1}, Lcom/chanven/lib/cptr/b;->c(Lcom/chanven/lib/cptr/PtrFrameLayout;)V

    .line 135
    :cond_1
    iget-object p0, p0, Lcom/chanven/lib/cptr/c;->b:Lcom/chanven/lib/cptr/c;

    if-nez p0, :cond_0

    .line 136
    return-void
.end method

.method public d(Lcom/chanven/lib/cptr/PtrFrameLayout;)V
    .locals 1

    .prologue
    .line 140
    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/chanven/lib/cptr/c;->c()Lcom/chanven/lib/cptr/b;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_1

    .line 144
    invoke-interface {v0, p1}, Lcom/chanven/lib/cptr/b;->d(Lcom/chanven/lib/cptr/PtrFrameLayout;)V

    .line 146
    :cond_1
    iget-object p0, p0, Lcom/chanven/lib/cptr/c;->b:Lcom/chanven/lib/cptr/c;

    if-nez p0, :cond_0

    .line 147
    return-void
.end method
