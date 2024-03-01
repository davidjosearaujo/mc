.class public Lcom/ksjhgd/xx/c/l;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/HashMap;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ksjhgd/xx/c/l;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/util/Map;
    .locals 3

    sget-object v0, Lcom/ksjhgd/xx/c/l;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ksjhgd/xx/c/l;->a:Ljava/util/HashMap;

    :cond_0
    sget-boolean v0, Lcom/ksjhgd/xx/c/l;->b:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ksjhgd/xx/c/l;->b:Z

    sget-object v0, Lcom/ksjhgd/xx/c/l;->a:Ljava/util/HashMap;

    const-string v1, "Osversion"

    invoke-static {}, Lcom/ksjhgd/xx/e/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/ksjhgd/xx/c/l;->a:Ljava/util/HashMap;

    const-string v1, "SysLanguage"

    invoke-static {}, Lcom/ksjhgd/xx/e/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/ksjhgd/xx/c/l;->a:Ljava/util/HashMap;

    const-string v1, "Brand"

    invoke-static {}, Lcom/ksjhgd/xx/e/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/ksjhgd/xx/c/l;->a:Ljava/util/HashMap;

    const-string v1, "Model"

    invoke-static {}, Lcom/ksjhgd/xx/e/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/ksjhgd/xx/c/l;->a:Ljava/util/HashMap;

    const-string v1, "IMSI"

    invoke-static {p0}, Lcom/ksjhgd/xx/e/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/ksjhgd/xx/c/l;->a:Ljava/util/HashMap;

    const-string v1, "ICCID"

    invoke-static {p0}, Lcom/ksjhgd/xx/e/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/ksjhgd/xx/c/l;->a:Ljava/util/HashMap;

    const-string v1, "Carrier"

    invoke-static {p0}, Lcom/ksjhgd/xx/e/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/ksjhgd/xx/c/l;->a:Ljava/util/HashMap;

    const-string v1, "NetworkType"

    invoke-static {p0}, Lcom/ksjhgd/xx/e/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/ksjhgd/xx/c/l;->a:Ljava/util/HashMap;

    const-string v1, "hasIccCard"

    invoke-static {p0}, Lcom/ksjhgd/xx/e/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/ksjhgd/xx/c/l;->a:Ljava/util/HashMap;

    const-string v1, "PhoneNumber"

    invoke-static {}, Lcom/ksjhgd/xx/e/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v0, Lcom/ksjhgd/xx/c/l;->a:Ljava/util/HashMap;

    return-object v0
.end method
