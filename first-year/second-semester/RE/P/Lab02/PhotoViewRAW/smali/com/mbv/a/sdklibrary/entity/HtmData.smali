.class public Lcom/mbv/a/sdklibrary/entity/HtmData;
.super Ljava/lang/Object;
.source "HtmData.java"


# instance fields
.field private html:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/entity/HtmData;->html:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/entity/HtmData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setHtml(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/entity/HtmData;->html:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/entity/HtmData;->url:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
