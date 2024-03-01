.class public final Lcom/google/zxing/b;
.super Ljava/lang/Object;
.source "MultiFormatWriter.java"

# interfaces
.implements Lcom/google/zxing/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/b;"
        }
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lcom/google/zxing/b$1;->a:[I

    invoke-virtual {p2}, Lcom/google/zxing/BarcodeFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No encoder available for format "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :pswitch_0
    new-instance v0, Lcom/google/zxing/oned/j;

    invoke-direct {v0}, Lcom/google/zxing/oned/j;-><init>()V

    :goto_0
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 102
    invoke-interface/range {v0 .. v5}, Lcom/google/zxing/c;->a(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/b;

    move-result-object v0

    return-object v0

    .line 64
    :pswitch_1
    new-instance v0, Lcom/google/zxing/oned/s;

    invoke-direct {v0}, Lcom/google/zxing/oned/s;-><init>()V

    goto :goto_0

    .line 67
    :pswitch_2
    new-instance v0, Lcom/google/zxing/oned/i;

    invoke-direct {v0}, Lcom/google/zxing/oned/i;-><init>()V

    goto :goto_0

    .line 70
    :pswitch_3
    new-instance v0, Lcom/google/zxing/oned/o;

    invoke-direct {v0}, Lcom/google/zxing/oned/o;-><init>()V

    goto :goto_0

    .line 73
    :pswitch_4
    new-instance v0, Lcom/google/zxing/qrcode/a;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/a;-><init>()V

    goto :goto_0

    .line 76
    :pswitch_5
    new-instance v0, Lcom/google/zxing/oned/e;

    invoke-direct {v0}, Lcom/google/zxing/oned/e;-><init>()V

    goto :goto_0

    .line 79
    :pswitch_6
    new-instance v0, Lcom/google/zxing/oned/g;

    invoke-direct {v0}, Lcom/google/zxing/oned/g;-><init>()V

    goto :goto_0

    .line 82
    :pswitch_7
    new-instance v0, Lcom/google/zxing/oned/Code128Writer;

    invoke-direct {v0}, Lcom/google/zxing/oned/Code128Writer;-><init>()V

    goto :goto_0

    .line 85
    :pswitch_8
    new-instance v0, Lcom/google/zxing/oned/l;

    invoke-direct {v0}, Lcom/google/zxing/oned/l;-><init>()V

    goto :goto_0

    .line 88
    :pswitch_9
    new-instance v0, Lcom/google/zxing/pdf417/a;

    invoke-direct {v0}, Lcom/google/zxing/pdf417/a;-><init>()V

    goto :goto_0

    .line 91
    :pswitch_a
    new-instance v0, Lcom/google/zxing/oned/b;

    invoke-direct {v0}, Lcom/google/zxing/oned/b;-><init>()V

    goto :goto_0

    .line 94
    :pswitch_b
    new-instance v0, Lcom/google/zxing/datamatrix/a;

    invoke-direct {v0}, Lcom/google/zxing/datamatrix/a;-><init>()V

    goto :goto_0

    .line 97
    :pswitch_c
    new-instance v0, Lcom/google/zxing/a/a;

    invoke-direct {v0}, Lcom/google/zxing/a/a;-><init>()V

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
