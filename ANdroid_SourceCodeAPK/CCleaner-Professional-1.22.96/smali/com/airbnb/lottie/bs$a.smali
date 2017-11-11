.class final Lcom/airbnb/lottie/bs$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/bs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/k$a",
        "<",
        "Lcom/airbnb/lottie/bs;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/airbnb/lottie/bs$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/airbnb/lottie/bs$a;

    invoke-direct {v0}, Lcom/airbnb/lottie/bs$a;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/bs$a;->a:Lcom/airbnb/lottie/bs$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    return-void
.end method

.method private static a(ILorg/json/JSONArray;)Landroid/graphics/PointF;
    .locals 6

    .prologue
    .line 185
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt p0, v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". There are only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 187
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " points."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    invoke-virtual {p1, p0}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v1

    .line 191
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 192
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    .line 193
    new-instance v3, Landroid/graphics/PointF;

    instance-of v2, v0, Ljava/lang/Double;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/Float;

    check-cast v0, Ljava/lang/Double;

    .line 194
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Float;-><init>(D)V

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    move v2, v0

    :goto_0
    instance-of v0, v1, Ljava/lang/Double;

    if-eqz v0, :cond_2

    new-instance v4, Ljava/lang/Float;

    move-object v0, v1

    check-cast v0, Ljava/lang/Double;

    .line 195
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {v4, v0, v1}, Ljava/lang/Float;-><init>(D)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_1
    invoke-direct {v3, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v3

    .line 194
    :cond_1
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    move v2, v0

    goto :goto_0

    .line 195
    :cond_2
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    goto :goto_1
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 13

    .prologue
    const/4 v2, 0x0

    const/4 v12, 0x0

    .line 1108
    .line 1109
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    .line 1110
    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p1, v12}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    .line 1111
    instance-of v0, v1, Lorg/json/JSONObject;

    if-eqz v0, :cond_8

    move-object v0, v1

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v3, "v"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1112
    check-cast v1, Lorg/json/JSONObject;

    .line 1118
    :goto_0
    if-nez v1, :cond_1

    .line 1133
    :goto_1
    return-object v2

    .line 1114
    :cond_0
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v1, "v"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1115
    check-cast p1, Lorg/json/JSONObject;

    move-object v1, p1

    goto :goto_0

    .line 1122
    :cond_1
    const-string/jumbo v0, "v"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1123
    const-string/jumbo v0, "i"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1124
    const-string/jumbo v0, "o"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1125
    const-string/jumbo v0, "c"

    invoke-virtual {v1, v0, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 1127
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    .line 1128
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ne v0, v6, :cond_2

    .line 1129
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-eq v0, v6, :cond_3

    .line 1130
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unable to process points array or tangents. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1132
    :cond_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 1133
    new-instance v2, Lcom/airbnb/lottie/bs;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v0, v12, v1, v12}, Lcom/airbnb/lottie/bs;-><init>(Landroid/graphics/PointF;ZLjava/util/List;B)V

    goto :goto_1

    .line 1136
    :cond_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 1137
    invoke-static {v12, v2}, Lcom/airbnb/lottie/bs$a;->a(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v6

    .line 1138
    iget v0, v6, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, p2

    iput v0, v6, Landroid/graphics/PointF;->x:F

    .line 1139
    iget v0, v6, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, p2

    iput v0, v6, Landroid/graphics/PointF;->y:F

    .line 1141
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1143
    const/4 v0, 0x1

    :goto_2
    if-ge v0, v1, :cond_5

    .line 1144
    invoke-static {v0, v2}, Lcom/airbnb/lottie/bs$a;->a(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v8

    .line 1145
    add-int/lit8 v9, v0, -0x1

    invoke-static {v9, v2}, Lcom/airbnb/lottie/bs$a;->a(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v9

    .line 1146
    add-int/lit8 v10, v0, -0x1

    invoke-static {v10, v4}, Lcom/airbnb/lottie/bs$a;->a(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v10

    .line 1147
    invoke-static {v0, v3}, Lcom/airbnb/lottie/bs$a;->a(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v11

    .line 1148
    invoke-static {v9, v10}, Lcom/airbnb/lottie/bc;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v9

    .line 1149
    invoke-static {v8, v11}, Lcom/airbnb/lottie/bc;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v10

    .line 1151
    iget v11, v9, Landroid/graphics/PointF;->x:F

    mul-float/2addr v11, p2

    iput v11, v9, Landroid/graphics/PointF;->x:F

    .line 1152
    iget v11, v9, Landroid/graphics/PointF;->y:F

    mul-float/2addr v11, p2

    iput v11, v9, Landroid/graphics/PointF;->y:F

    .line 1153
    iget v11, v10, Landroid/graphics/PointF;->x:F

    mul-float/2addr v11, p2

    iput v11, v10, Landroid/graphics/PointF;->x:F

    .line 1154
    iget v11, v10, Landroid/graphics/PointF;->y:F

    mul-float/2addr v11, p2

    iput v11, v10, Landroid/graphics/PointF;->y:F

    .line 1155
    iget v11, v8, Landroid/graphics/PointF;->x:F

    mul-float/2addr v11, p2

    iput v11, v8, Landroid/graphics/PointF;->x:F

    .line 1156
    iget v11, v8, Landroid/graphics/PointF;->y:F

    mul-float/2addr v11, p2

    iput v11, v8, Landroid/graphics/PointF;->y:F

    .line 1158
    new-instance v11, Lcom/airbnb/lottie/y;

    invoke-direct {v11, v9, v10, v8}, Lcom/airbnb/lottie/y;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1143
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1161
    :cond_5
    if-eqz v5, :cond_7

    .line 1162
    invoke-static {v12, v2}, Lcom/airbnb/lottie/bs$a;->a(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v0

    .line 1163
    add-int/lit8 v8, v1, -0x1

    invoke-static {v8, v2}, Lcom/airbnb/lottie/bs$a;->a(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v2

    .line 1164
    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v4}, Lcom/airbnb/lottie/bs$a;->a(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v1

    .line 1165
    invoke-static {v12, v3}, Lcom/airbnb/lottie/bs$a;->a(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v3

    .line 1167
    invoke-static {v2, v1}, Lcom/airbnb/lottie/bc;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 1168
    invoke-static {v0, v3}, Lcom/airbnb/lottie/bc;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    .line 1170
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p2, v3

    if-eqz v3, :cond_6

    .line 1171
    iget v3, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, p2

    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 1172
    iget v3, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, p2

    iput v3, v1, Landroid/graphics/PointF;->y:F

    .line 1173
    iget v3, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 1174
    iget v3, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 1175
    iget v3, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, p2

    iput v3, v0, Landroid/graphics/PointF;->x:F

    .line 1176
    iget v3, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, p2

    iput v3, v0, Landroid/graphics/PointF;->y:F

    .line 1179
    :cond_6
    new-instance v3, Lcom/airbnb/lottie/y;

    invoke-direct {v3, v1, v2, v0}, Lcom/airbnb/lottie/y;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1181
    :cond_7
    new-instance v2, Lcom/airbnb/lottie/bs;

    invoke-direct {v2, v6, v5, v7, v12}, Lcom/airbnb/lottie/bs;-><init>(Landroid/graphics/PointF;ZLjava/util/List;B)V

    goto/16 :goto_1

    :cond_8
    move-object v1, v2

    goto/16 :goto_0
.end method
