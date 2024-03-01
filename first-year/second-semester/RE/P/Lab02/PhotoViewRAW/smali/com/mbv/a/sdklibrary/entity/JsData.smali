.class public Lcom/mbv/a/sdklibrary/entity/JsData;
.super Ljava/lang/Object;
.source "JsData.java"


# instance fields
.field private link_js:Ljava/lang/String;

.field private url_link:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLink_js()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/entity/JsData;->link_js:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl_link()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/entity/JsData;->url_link:Ljava/lang/String;

    return-object v0
.end method

.method public setLink_js(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/entity/JsData;->link_js:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setUrl_link(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/entity/JsData;->url_link:Ljava/lang/String;

    .line 17
    return-void
.end method
