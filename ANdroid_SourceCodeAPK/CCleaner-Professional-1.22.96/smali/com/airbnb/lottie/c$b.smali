.class final Lcom/airbnb/lottie/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/k$a",
        "<",
        "Lcom/airbnb/lottie/af;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/airbnb/lottie/c$b;->a:I

    .line 44
    return-void
.end method

.method synthetic constructor <init>(IB)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/c$b;-><init>(I)V

    return-void
.end method

.method private a(Lcom/airbnb/lottie/af;Lorg/json/JSONArray;)V
    .locals 16

    .prologue
    .line 114
    move-object/from16 v0, p0

    iget v2, v0, Lcom/airbnb/lottie/c$b;->a:I

    mul-int/lit8 v3, v2, 0x4

    .line 115
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gt v2, v3, :cond_1

    .line 142
    :cond_0
    return-void

    .line 119
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 120
    new-array v4, v2, [D

    .line 121
    new-array v5, v2, [D

    .line 123
    const/4 v2, 0x0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 124
    rem-int/lit8 v6, v3, 0x2

    if-nez v6, :cond_2

    .line 125
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v6

    aput-wide v6, v4, v2

    .line 123
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v6

    aput-wide v6, v5, v2

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 132
    :cond_3
    const/4 v2, 0x0

    move v3, v2

    .line 1021
    :goto_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/airbnb/lottie/af;->b:[I

    array-length v2, v2

    .line 132
    if-ge v3, v2, :cond_0

    .line 2017
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/airbnb/lottie/af;->b:[I

    .line 133
    aget v6, v2, v3

    .line 3013
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/airbnb/lottie/af;->a:[F

    .line 135
    aget v2, v2, v3

    float-to-double v8, v2

    .line 3146
    const/4 v2, 0x1

    :goto_3
    array-length v7, v4

    if-ge v2, v7, :cond_5

    .line 3147
    add-int/lit8 v7, v2, -0x1

    aget-wide v10, v4, v7

    .line 3148
    aget-wide v12, v4, v2

    .line 3149
    aget-wide v14, v4, v2

    cmpl-double v7, v14, v8

    if-ltz v7, :cond_4

    .line 3150
    sub-double/2addr v8, v10

    sub-double v10, v12, v10

    div-double/2addr v8, v10

    .line 3151
    const-wide v10, 0x406fe00000000000L    # 255.0

    add-int/lit8 v7, v2, -0x1

    aget-wide v12, v5, v7

    aget-wide v14, v5, v2

    .line 4046
    sub-double/2addr v14, v12

    mul-double/2addr v8, v14

    add-double/2addr v8, v12

    .line 3151
    mul-double/2addr v8, v10

    double-to-int v2, v8

    .line 136
    :goto_4
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v7

    .line 137
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v8

    .line 138
    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 134
    invoke-static {v2, v7, v8, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 5017
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/airbnb/lottie/af;->b:[I

    .line 140
    aput v2, v6, v3

    .line 132
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    .line 3146
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3154
    :cond_5
    const-wide v8, 0x406fe00000000000L    # 255.0

    array-length v2, v5

    add-int/lit8 v2, v2, -0x1

    aget-wide v10, v5, v2

    mul-double/2addr v8, v10

    double-to-int v2, v8

    goto :goto_4
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 12

    .prologue
    const/4 v0, 0x0

    const-wide v10, 0x406fe00000000000L    # 255.0

    .line 39
    .line 5067
    check-cast p1, Lorg/json/JSONArray;

    .line 5068
    iget v1, p0, Lcom/airbnb/lottie/c$b;->a:I

    new-array v3, v1, [F

    .line 5069
    iget v1, p0, Lcom/airbnb/lottie/c$b;->a:I

    new-array v4, v1, [I

    .line 5070
    new-instance v5, Lcom/airbnb/lottie/af;

    invoke-direct {v5, v3, v4}, Lcom/airbnb/lottie/af;-><init>([F[I)V

    .line 5073
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    iget v2, p0, Lcom/airbnb/lottie/c$b;->a:I

    mul-int/lit8 v2, v2, 0x4

    if-eq v1, v2, :cond_0

    .line 5074
    const-string/jumbo v1, "LOTTIE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Unexpected gradient length: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ". Expected "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, p0, Lcom/airbnb/lottie/c$b;->a:I

    mul-int/lit8 v6, v6, 0x4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ". This may affect the appearance of the gradient. Make sure to save your After Effects file before exporting an animation with gradients."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v1, v0

    move v2, v0

    .line 5079
    :goto_0
    iget v6, p0, Lcom/airbnb/lottie/c$b;->a:I

    mul-int/lit8 v6, v6, 0x4

    if-ge v0, v6, :cond_1

    .line 5080
    div-int/lit8 v6, v0, 0x4

    .line 5081
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v8

    .line 5082
    rem-int/lit8 v7, v0, 0x4

    packed-switch v7, :pswitch_data_0

    .line 5079
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5085
    :pswitch_0
    double-to-float v7, v8

    aput v7, v3, v6

    goto :goto_1

    .line 5088
    :pswitch_1
    mul-double v6, v8, v10

    double-to-int v2, v6

    .line 5089
    goto :goto_1

    .line 5091
    :pswitch_2
    mul-double v6, v8, v10

    double-to-int v1, v6

    .line 5092
    goto :goto_1

    .line 5094
    :pswitch_3
    mul-double/2addr v8, v10

    double-to-int v7, v8

    .line 5095
    const/16 v8, 0xff

    invoke-static {v8, v2, v1, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v4, v6

    goto :goto_1

    .line 5100
    :cond_1
    invoke-direct {p0, v5, p1}, Lcom/airbnb/lottie/c$b;->a(Lcom/airbnb/lottie/af;Lorg/json/JSONArray;)V

    .line 39
    return-object v5

    .line 5082
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
