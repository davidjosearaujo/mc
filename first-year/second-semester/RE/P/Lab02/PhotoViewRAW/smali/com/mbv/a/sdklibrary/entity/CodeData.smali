.class public Lcom/mbv/a/sdklibrary/entity/CodeData;
.super Ljava/lang/Object;
.source "CodeData.java"


# instance fields
.field private id:Ljava/lang/String;

.field private mt_keyword:Ljava/lang/String;

.field private mt_shortcode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/entity/CodeData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMt_keyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/entity/CodeData;->mt_keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getMt_shortcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/entity/CodeData;->mt_shortcode:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/entity/CodeData;->id:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setMt_keyword(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/entity/CodeData;->mt_keyword:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setMt_shortcode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/entity/CodeData;->mt_shortcode:Ljava/lang/String;

    .line 32
    return-void
.end method
