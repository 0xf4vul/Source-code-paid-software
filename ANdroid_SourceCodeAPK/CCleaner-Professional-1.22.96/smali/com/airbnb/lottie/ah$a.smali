.class final Lcom/airbnb/lottie/ah$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method static a(Lorg/json/JSONObject;Lcom/airbnb/lottie/av;)Lcom/airbnb/lottie/ah;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 78
    const-string/jumbo v1, "nm"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    const-string/jumbo v2, "g"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 81
    if-eqz v2, :cond_0

    const-string/jumbo v3, "k"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    const-string/jumbo v3, "p"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 85
    const-string/jumbo v4, "k"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 87
    :try_start_0
    const-string/jumbo v4, "p"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_0
    :goto_0
    if-eqz v2, :cond_6

    .line 94
    invoke-static {v2, p1}, Lcom/airbnb/lottie/c$a;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/av;)Lcom/airbnb/lottie/c;

    move-result-object v4

    .line 97
    :goto_1
    const-string/jumbo v2, "o"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 99
    if-eqz v2, :cond_5

    .line 100
    invoke-static {v2, p1}, Lcom/airbnb/lottie/d$a;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/av;)Lcom/airbnb/lottie/d;

    move-result-object v5

    .line 103
    :goto_2
    const-string/jumbo v2, "r"

    invoke-virtual {p0, v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 104
    if-ne v2, v6, :cond_1

    sget-object v3, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 106
    :goto_3
    const-string/jumbo v2, "t"

    invoke-virtual {p0, v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 107
    if-ne v2, v6, :cond_2

    sget v2, Lcom/airbnb/lottie/al;->a:I

    .line 109
    :goto_4
    const-string/jumbo v6, "s"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 111
    if-eqz v6, :cond_4

    .line 112
    invoke-static {v6, p1}, Lcom/airbnb/lottie/f$a;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/av;)Lcom/airbnb/lottie/f;

    move-result-object v6

    .line 115
    :goto_5
    const-string/jumbo v7, "e"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 117
    if-eqz v7, :cond_3

    .line 118
    invoke-static {v7, p1}, Lcom/airbnb/lottie/f$a;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/av;)Lcom/airbnb/lottie/f;

    move-result-object v7

    .line 121
    :goto_6
    new-instance v0, Lcom/airbnb/lottie/ah;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/airbnb/lottie/ah;-><init>(Ljava/lang/String;ILandroid/graphics/Path$FillType;Lcom/airbnb/lottie/c;Lcom/airbnb/lottie/d;Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/f;B)V

    return-object v0

    .line 104
    :cond_1
    sget-object v3, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_3

    .line 107
    :cond_2
    sget v2, Lcom/airbnb/lottie/al;->b:I

    goto :goto_4

    :catch_0
    move-exception v3

    goto :goto_0

    :cond_3
    move-object v7, v0

    goto :goto_6

    :cond_4
    move-object v6, v0

    goto :goto_5

    :cond_5
    move-object v5, v0

    goto :goto_2

    :cond_6
    move-object v4, v0

    goto :goto_1
.end method
