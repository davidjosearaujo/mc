.class public Lcom/ksjhgd/xx/e/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/net/ConnectivityManager;

.field private static b:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ksjhgd/xx/e/c;->a:Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/ksjhgd/xx/e/c;->b:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/ksjhgd/xx/e/c;->b:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/ksjhgd/xx/e/c;->b:Landroid/telephony/TelephonyManager;

    :cond_1
    sget-object v0, Lcom/ksjhgd/xx/e/c;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "true"

    goto :goto_0

    :cond_2
    const-string v0, "false"

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/ksjhgd/xx/e/c;->b:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/ksjhgd/xx/e/c;->b:Landroid/telephony/TelephonyManager;

    :cond_1
    sget-object v0, Lcom/ksjhgd/xx/e/c;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/ksjhgd/xx/e/c;->b:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/ksjhgd/xx/e/c;->b:Landroid/telephony/TelephonyManager;

    :cond_1
    sget-object v0, Lcom/ksjhgd/xx/e/c;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "46000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "46002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "yidong"

    :goto_0
    return-object v0

    :cond_1
    const-string v1, "46001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "liantong"

    goto :goto_0

    :cond_2
    const-string v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "dianxin"

    goto :goto_0

    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/ksjhgd/xx/e/c;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "0"

    :cond_0
    return-object v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/ksjhgd/xx/e/c;->a:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ksjhgd/xx/e/c;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "wifi"

    :goto_1
    return-object v0

    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/ksjhgd/xx/e/c;->a:Landroid/net/ConnectivityManager;

    sget-object v0, Lcom/ksjhgd/xx/e/c;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    const-string v0, "3G/GPRS"

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
