.class public Lcom/mbv/a/sdklibrary/b/d;
.super Ljava/lang/Object;
.source "DateUtil.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)J
    .locals 3

    .prologue
    .line 17
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 18
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    :goto_0
    return-wide v0

    .line 22
    :cond_0
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 25
    :catch_0
    move-exception v2

    .line 26
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method
