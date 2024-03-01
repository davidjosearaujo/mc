.class public final Lcom/umeng/analytics/a/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/umeng/analytics/a/g;


# static fields
.field public static final d:Ljava/lang/String; = "lng"

.field public static final e:Ljava/lang/String; = "lat"

.field public static final f:Ljava/lang/String; = "gps_time"

.field private static final g:Ljava/lang/String; = "last_gps_change_time"


# instance fields
.field public a:D

.field public b:D

.field public c:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/a/o;->a:D

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/a/o;->b:D

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/a/o;->c:J

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences$Editor;
    .locals 6

    const/4 v0, 0x0

    sget-boolean v1, Lcom/umeng/analytics/g;->i:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/umeng/common/b;->m(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/umeng/analytics/a/o;->a(Landroid/location/Location;Landroid/content/SharedPreferences;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "lng"

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    double-to-float v3, v4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string v2, "lat"

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    double-to-float v3, v4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string v2, "gps_time"

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/a/o;
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/umeng/analytics/g;->i:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/umeng/analytics/j;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {p0}, Lcom/umeng/common/b;->m(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/umeng/analytics/a/o;->a(Landroid/location/Location;Landroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/umeng/analytics/a/o;

    invoke-direct {v0, v2}, Lcom/umeng/analytics/a/o;-><init>(Landroid/location/Location;)V

    goto :goto_0
.end method

.method static a(Landroid/location/Location;Landroid/content/SharedPreferences;)Z
    .locals 6

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    const-string v2, "last_gps_change_time"

    const-wide/16 v4, 0x0

    invoke-interface {p1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_gps_change_time"

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Lcom/umeng/analytics/a/o;
    .locals 7

    const/4 v0, 0x0

    const/4 v6, 0x0

    sget-boolean v1, Lcom/umeng/analytics/g;->i:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/umeng/analytics/j;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v1, Lcom/umeng/analytics/a/o;

    invoke-direct {v1}, Lcom/umeng/analytics/a/o;-><init>()V

    const-string v3, "gps_time"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "lat"

    invoke-interface {v2, v0, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    float-to-double v4, v0

    iput-wide v4, v1, Lcom/umeng/analytics/a/o;->b:D

    const-string v0, "lng"

    invoke-interface {v2, v0, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    float-to-double v4, v0

    iput-wide v4, v1, Lcom/umeng/analytics/a/o;->a:D

    const-string v0, "gps_time"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/umeng/analytics/a/o;->c:J

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "gps_time"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "lng"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "lng"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/a/o;->a:D

    :cond_2
    const-string v0, "lat"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "lat"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/a/o;->b:D

    :cond_3
    const-string v0, "gps_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gps_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/a/o;->c:J

    goto :goto_0
.end method

.method public a()Z
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/umeng/analytics/a/o;->a:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/umeng/analytics/a/o;->b:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/umeng/analytics/a/o;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "lng"

    iget-wide v2, p0, Lcom/umeng/analytics/a/o;->a:D

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "lat"

    iget-wide v2, p0, Lcom/umeng/analytics/a/o;->b:D

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "gps_time"

    iget-wide v2, p0, Lcom/umeng/analytics/a/o;->c:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-void
.end method
