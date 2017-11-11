.class final Lcom/airbnb/lottie/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/k",
        "<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/bg;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/graphics/PointF;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/e;->a:Ljava/util/List;

    .line 30
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/airbnb/lottie/e;->b:Landroid/graphics/PointF;

    .line 31
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Lcom/airbnb/lottie/av;)V
    .locals 13

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/e;->a:Ljava/util/List;

    .line 3050
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 3054
    check-cast v0, Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 3055
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v1, "t"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 34
    :goto_0
    if-eqz v0, :cond_4

    .line 35
    check-cast p1, Lorg/json/JSONArray;

    .line 36
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v11

    .line 37
    const/4 v0, 0x0

    move v10, v0

    :goto_1
    if-ge v10, v11, :cond_3

    .line 38
    invoke-virtual {p1, v10}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 40
    invoke-static {}, Lcom/airbnb/lottie/e$a;->a()Lcom/airbnb/lottie/k$a;

    move-result-object v0

    .line 4091
    iget v1, p2, Lcom/airbnb/lottie/av;->g:F

    .line 4026
    invoke-static {v2, p2, v1, v0}, Lcom/airbnb/lottie/as$a;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/av;FLcom/airbnb/lottie/k$a;)Lcom/airbnb/lottie/as;

    move-result-object v12

    .line 4028
    const/4 v1, 0x0

    .line 4029
    const/4 v0, 0x0

    .line 4030
    const-string/jumbo v3, "ti"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 4031
    const-string/jumbo v4, "to"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 4032
    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 5091
    iget v0, p2, Lcom/airbnb/lottie/av;->g:F

    .line 4033
    invoke-static {v2, v0}, Lcom/airbnb/lottie/ar;->a(Lorg/json/JSONArray;F)Landroid/graphics/PointF;

    move-result-object v1

    .line 6091
    iget v0, p2, Lcom/airbnb/lottie/av;->g:F

    .line 4034
    invoke-static {v3, v0}, Lcom/airbnb/lottie/ar;->a(Lorg/json/JSONArray;F)Landroid/graphics/PointF;

    move-result-object v0

    move-object v8, v0

    move-object v9, v1

    .line 4037
    :goto_2
    new-instance v0, Lcom/airbnb/lottie/bg;

    iget-object v2, v12, Lcom/airbnb/lottie/as;->a:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    iget-object v3, v12, Lcom/airbnb/lottie/as;->b:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/PointF;

    iget-object v4, v12, Lcom/airbnb/lottie/as;->c:Landroid/view/animation/Interpolator;

    iget v5, v12, Lcom/airbnb/lottie/as;->d:F

    iget-object v6, v12, Lcom/airbnb/lottie/as;->e:Ljava/lang/Float;

    const/4 v7, 0x0

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Lcom/airbnb/lottie/bg;-><init>(Lcom/airbnb/lottie/av;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/animation/Interpolator;FLjava/lang/Float;B)V

    .line 4042
    iget-object v1, v12, Lcom/airbnb/lottie/as;->b:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, v12, Lcom/airbnb/lottie/as;->a:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, v12, Lcom/airbnb/lottie/as;->a:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, v12, Lcom/airbnb/lottie/as;->b:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, v12, Lcom/airbnb/lottie/as;->b:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 4043
    invoke-virtual {v1, v3, v2}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 4045
    :goto_3
    iget-object v2, v0, Lcom/airbnb/lottie/bg;->b:Ljava/lang/Object;

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 4046
    iget-object v1, v12, Lcom/airbnb/lottie/as;->a:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, v12, Lcom/airbnb/lottie/as;->b:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    invoke-static {v1, v2, v9, v8}, Lcom/airbnb/lottie/ch;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/bg;->a(Lcom/airbnb/lottie/bg;Landroid/graphics/Path;)Landroid/graphics/Path;

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/e;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto/16 :goto_1

    .line 3055
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 4043
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 43
    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/e;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/airbnb/lottie/as;->a(Ljava/util/List;)V

    .line 47
    :goto_4
    return-void

    .line 45
    :cond_4
    check-cast p1, Lorg/json/JSONArray;

    .line 7091
    iget v0, p2, Lcom/airbnb/lottie/av;->g:F

    .line 45
    invoke-static {p1, v0}, Lcom/airbnb/lottie/ar;->a(Lorg/json/JSONArray;F)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/e;->b:Landroid/graphics/PointF;

    goto :goto_4

    :cond_5
    move-object v8, v0

    move-object v9, v1

    goto :goto_2
.end method

.method static a(Lorg/json/JSONObject;Lcom/airbnb/lottie/av;)Lcom/airbnb/lottie/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/airbnb/lottie/av;",
            ")",
            "Lcom/airbnb/lottie/k",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 14
    const-string/jumbo v0, "k"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Lcom/airbnb/lottie/e;

    const-string/jumbo v1, "k"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/airbnb/lottie/e;-><init>(Ljava/lang/Object;Lcom/airbnb/lottie/av;)V

    .line 19
    :goto_0
    return-object v0

    .line 17
    :cond_0
    new-instance v0, Lcom/airbnb/lottie/i;

    const-string/jumbo v1, "x"

    .line 18
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1050
    invoke-static {v1, p1, v3}, Lcom/airbnb/lottie/b$a;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/av;Z)Lcom/airbnb/lottie/b;

    move-result-object v1

    .line 18
    const-string/jumbo v2, "y"

    .line 19
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2050
    invoke-static {v2, p1, v3}, Lcom/airbnb/lottie/b$a;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/av;Z)Lcom/airbnb/lottie/b;

    move-result-object v2

    .line 19
    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/i;-><init>(Lcom/airbnb/lottie/b;Lcom/airbnb/lottie/b;)V

    goto :goto_0
.end method


# virtual methods
.method public final b()Lcom/airbnb/lottie/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/n",
            "<*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    .line 8069
    iget-object v0, p0, Lcom/airbnb/lottie/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 60
    :goto_0
    if-nez v0, :cond_1

    .line 61
    new-instance v0, Lcom/airbnb/lottie/cd;

    iget-object v1, p0, Lcom/airbnb/lottie/e;->b:Landroid/graphics/PointF;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/cd;-><init>(Ljava/lang/Object;)V

    .line 64
    :goto_1
    return-object v0

    .line 8069
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 64
    :cond_1
    new-instance v0, Lcom/airbnb/lottie/bh;

    iget-object v1, p0, Lcom/airbnb/lottie/e;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/bh;-><init>(Ljava/util/List;)V

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "initialPoint="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/airbnb/lottie/e;->b:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
