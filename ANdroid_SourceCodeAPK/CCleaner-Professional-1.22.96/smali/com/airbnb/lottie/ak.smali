.class public final Lcom/airbnb/lottie/ak;
.super Lcom/airbnb/lottie/p;
.source "SourceFile"


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Landroid/support/v4/h/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/h/f",
            "<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/support/v4/h/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/h/f",
            "<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/graphics/RectF;

.field private final f:I

.field private final g:I

.field private final h:Lcom/airbnb/lottie/at;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/at",
            "<",
            "Lcom/airbnb/lottie/af;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/airbnb/lottie/at;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/at",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/airbnb/lottie/at;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/at",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/aw;Lcom/airbnb/lottie/o;Lcom/airbnb/lottie/aj;)V
    .locals 9

    .prologue
    .line 33
    .line 1073
    iget-object v0, p3, Lcom/airbnb/lottie/aj;->h:Lcom/airbnb/lottie/by$b;

    .line 33
    invoke-virtual {v0}, Lcom/airbnb/lottie/by$b;->a()Landroid/graphics/Paint$Cap;

    move-result-object v3

    .line 1077
    iget-object v0, p3, Lcom/airbnb/lottie/aj;->i:Lcom/airbnb/lottie/by$c;

    .line 34
    invoke-virtual {v0}, Lcom/airbnb/lottie/by$c;->a()Landroid/graphics/Paint$Join;

    move-result-object v4

    .line 2057
    iget-object v5, p3, Lcom/airbnb/lottie/aj;->d:Lcom/airbnb/lottie/d;

    .line 2069
    iget-object v6, p3, Lcom/airbnb/lottie/aj;->g:Lcom/airbnb/lottie/b;

    .line 2081
    iget-object v7, p3, Lcom/airbnb/lottie/aj;->j:Ljava/util/List;

    .line 2085
    iget-object v8, p3, Lcom/airbnb/lottie/aj;->k:Lcom/airbnb/lottie/b;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 33
    invoke-direct/range {v0 .. v8}, Lcom/airbnb/lottie/p;-><init>(Lcom/airbnb/lottie/aw;Lcom/airbnb/lottie/o;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;Lcom/airbnb/lottie/d;Lcom/airbnb/lottie/b;Ljava/util/List;Lcom/airbnb/lottie/b;)V

    .line 21
    new-instance v0, Landroid/support/v4/h/f;

    invoke-direct {v0}, Landroid/support/v4/h/f;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/ak;->c:Landroid/support/v4/h/f;

    .line 22
    new-instance v0, Landroid/support/v4/h/f;

    invoke-direct {v0}, Landroid/support/v4/h/f;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/ak;->d:Landroid/support/v4/h/f;

    .line 23
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/ak;->e:Landroid/graphics/RectF;

    .line 3045
    iget-object v0, p3, Lcom/airbnb/lottie/aj;->a:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/airbnb/lottie/ak;->b:Ljava/lang/String;

    .line 3049
    iget v0, p3, Lcom/airbnb/lottie/aj;->b:I

    .line 38
    iput v0, p0, Lcom/airbnb/lottie/ak;->f:I

    .line 3399
    iget-object v0, p1, Lcom/airbnb/lottie/aw;->b:Lcom/airbnb/lottie/av;

    .line 39
    invoke-virtual {v0}, Lcom/airbnb/lottie/av;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/airbnb/lottie/ak;->g:I

    .line 4053
    iget-object v0, p3, Lcom/airbnb/lottie/aj;->c:Lcom/airbnb/lottie/c;

    .line 41
    invoke-virtual {v0}, Lcom/airbnb/lottie/c;->a()Lcom/airbnb/lottie/at;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/ak;->h:Lcom/airbnb/lottie/at;

    .line 42
    iget-object v0, p0, Lcom/airbnb/lottie/ak;->h:Lcom/airbnb/lottie/at;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/at;->a(Lcom/airbnb/lottie/n$a;)V

    .line 43
    iget-object v0, p0, Lcom/airbnb/lottie/ak;->h:Lcom/airbnb/lottie/at;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/o;->a(Lcom/airbnb/lottie/n;)V

    .line 4061
    iget-object v0, p3, Lcom/airbnb/lottie/aj;->e:Lcom/airbnb/lottie/f;

    .line 45
    invoke-virtual {v0}, Lcom/airbnb/lottie/f;->a()Lcom/airbnb/lottie/at;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/ak;->i:Lcom/airbnb/lottie/at;

    .line 46
    iget-object v0, p0, Lcom/airbnb/lottie/ak;->i:Lcom/airbnb/lottie/at;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/at;->a(Lcom/airbnb/lottie/n$a;)V

    .line 47
    iget-object v0, p0, Lcom/airbnb/lottie/ak;->i:Lcom/airbnb/lottie/at;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/o;->a(Lcom/airbnb/lottie/n;)V

    .line 4065
    iget-object v0, p3, Lcom/airbnb/lottie/aj;->f:Lcom/airbnb/lottie/f;

    .line 49
    invoke-virtual {v0}, Lcom/airbnb/lottie/f;->a()Lcom/airbnb/lottie/at;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/ak;->j:Lcom/airbnb/lottie/at;

    .line 50
    iget-object v0, p0, Lcom/airbnb/lottie/ak;->j:Lcom/airbnb/lottie/at;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/at;->a(Lcom/airbnb/lottie/n$a;)V

    .line 51
    iget-object v0, p0, Lcom/airbnb/lottie/ak;->j:Lcom/airbnb/lottie/at;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/o;->a(Lcom/airbnb/lottie/n;)V

    .line 52
    return-void
.end method

.method private b()I
    .locals 4

    .prologue
    .line 116
    iget-object v0, p0, Lcom/airbnb/lottie/ak;->i:Lcom/airbnb/lottie/at;

    .line 9114
    iget v0, v0, Lcom/airbnb/lottie/n;->c:F

    .line 116
    iget v1, p0, Lcom/airbnb/lottie/ak;->g:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 117
    iget-object v0, p0, Lcom/airbnb/lottie/ak;->j:Lcom/airbnb/lottie/at;

    .line 10114
    iget v0, v0, Lcom/airbnb/lottie/n;->c:F

    .line 117
    iget v2, p0, Lcom/airbnb/lottie/ak;->g:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 118
    iget-object v0, p0, Lcom/airbnb/lottie/ak;->h:Lcom/airbnb/lottie/at;

    .line 11114
    iget v0, v0, Lcom/airbnb/lottie/n;->c:F

    .line 118
    iget v3, p0, Lcom/airbnb/lottie/ak;->g:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 119
    const/16 v0, 0x11

    .line 120
    if-eqz v1, :cond_0

    .line 121
    mul-int/lit16 v0, v1, 0x20f

    .line 123
    :cond_0
    if-eqz v2, :cond_1

    .line 124
    mul-int/lit8 v0, v0, 0x1f

    mul-int/2addr v0, v2

    .line 126
    :cond_1
    if-eqz v3, :cond_2

    .line 127
    mul-int/lit8 v0, v0, 0x1f

    mul-int/2addr v0, v3

    .line 129
    :cond_2
    return v0
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0}, Lcom/airbnb/lottie/p;->a()V

    return-void
.end method

.method public final a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 12

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 55
    iget-object v0, p0, Lcom/airbnb/lottie/ak;->e:Landroid/graphics/RectF;

    .line 5014
    invoke-super {p0, v0, p2}, Lcom/airbnb/lottie/p;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 56
    iget v0, p0, Lcom/airbnb/lottie/ak;->f:I

    sget v1, Lcom/airbnb/lottie/al;->a:I

    if-ne v0, v1, :cond_1

    .line 57
    iget-object v8, p0, Lcom/airbnb/lottie/ak;->a:Landroid/graphics/Paint;

    .line 5075
    invoke-direct {p0}, Lcom/airbnb/lottie/ak;->b()I

    move-result v9

    .line 5076
    iget-object v0, p0, Lcom/airbnb/lottie/ak;->c:Landroid/support/v4/h/f;

    int-to-long v2, v9

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/h/f;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/LinearGradient;

    .line 5077
    if-eqz v0, :cond_0

    .line 57
    :goto_0
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 62
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/p;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 63
    return-void

    .line 5080
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/ak;->i:Lcom/airbnb/lottie/at;

    invoke-virtual {v0}, Lcom/airbnb/lottie/at;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 5081
    iget-object v1, p0, Lcom/airbnb/lottie/ak;->j:Lcom/airbnb/lottie/at;

    invoke-virtual {v1}, Lcom/airbnb/lottie/at;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 5082
    iget-object v2, p0, Lcom/airbnb/lottie/ak;->h:Lcom/airbnb/lottie/at;

    invoke-virtual {v2}, Lcom/airbnb/lottie/at;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/af;

    .line 6017
    iget-object v5, v2, Lcom/airbnb/lottie/af;->b:[I

    .line 7013
    iget-object v6, v2, Lcom/airbnb/lottie/af;->a:[F

    .line 5085
    iget-object v2, p0, Lcom/airbnb/lottie/ak;->e:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/airbnb/lottie/ak;->e:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v10

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 5086
    iget-object v3, p0, Lcom/airbnb/lottie/ak;->e:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/airbnb/lottie/ak;->e:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v10

    add-float/2addr v3, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v3

    float-to-int v3, v0

    .line 5087
    iget-object v0, p0, Lcom/airbnb/lottie/ak;->e:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/airbnb/lottie/ak;->e:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v10

    add-float/2addr v0, v4

    iget v4, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v4

    float-to-int v4, v0

    .line 5088
    iget-object v0, p0, Lcom/airbnb/lottie/ak;->e:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/airbnb/lottie/ak;->e:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v7, v10

    add-float/2addr v0, v7

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    float-to-int v7, v0

    .line 5089
    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v1, v2

    int-to-float v2, v3

    int-to-float v3, v4

    int-to-float v4, v7

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 5090
    iget-object v1, p0, Lcom/airbnb/lottie/ak;->c:Landroid/support/v4/h/f;

    int-to-long v2, v9

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/h/f;->a(JLjava/lang/Object;)V

    goto :goto_0

    .line 59
    :cond_1
    iget-object v7, p0, Lcom/airbnb/lottie/ak;->a:Landroid/graphics/Paint;

    .line 7095
    invoke-direct {p0}, Lcom/airbnb/lottie/ak;->b()I

    move-result v8

    .line 7096
    iget-object v0, p0, Lcom/airbnb/lottie/ak;->d:Landroid/support/v4/h/f;

    int-to-long v2, v8

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/h/f;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RadialGradient;

    .line 7097
    if-eqz v0, :cond_2

    .line 59
    :goto_2
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_1

    .line 7100
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/ak;->i:Lcom/airbnb/lottie/at;

    invoke-virtual {v0}, Lcom/airbnb/lottie/at;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 7101
    iget-object v1, p0, Lcom/airbnb/lottie/ak;->j:Lcom/airbnb/lottie/at;

    invoke-virtual {v1}, Lcom/airbnb/lottie/at;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 7102
    iget-object v2, p0, Lcom/airbnb/lottie/ak;->h:Lcom/airbnb/lottie/at;

    invoke-virtual {v2}, Lcom/airbnb/lottie/at;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/af;

    .line 8017
    iget-object v4, v2, Lcom/airbnb/lottie/af;->b:[I

    .line 9013
    iget-object v5, v2, Lcom/airbnb/lottie/af;->a:[F

    .line 7105
    iget-object v2, p0, Lcom/airbnb/lottie/ak;->e:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/airbnb/lottie/ak;->e:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v10

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 7106
    iget-object v3, p0, Lcom/airbnb/lottie/ak;->e:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/airbnb/lottie/ak;->e:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v10

    add-float/2addr v3, v6

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v3

    float-to-int v6, v0

    .line 7107
    iget-object v0, p0, Lcom/airbnb/lottie/ak;->e:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/airbnb/lottie/ak;->e:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v10

    add-float/2addr v0, v3

    iget v3, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 7108
    iget-object v3, p0, Lcom/airbnb/lottie/ak;->e:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v9, p0, Lcom/airbnb/lottie/ak;->e:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    div-float/2addr v9, v10

    add-float/2addr v3, v9

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 7109
    sub-int/2addr v0, v2

    int-to-double v10, v0

    sub-int v0, v1, v6

    int-to-double v0, v0

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v3, v0

    .line 7110
    new-instance v0, Landroid/graphics/RadialGradient;

    int-to-float v1, v2

    int-to-float v2, v6

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 7111
    iget-object v1, p0, Lcom/airbnb/lottie/ak;->d:Landroid/support/v4/h/f;

    int-to-long v2, v8

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/h/f;->a(JLjava/lang/Object;)V

    goto :goto_2
.end method

.method public final bridge synthetic a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/p;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public final bridge synthetic a(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/p;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/airbnb/lottie/ak;->b:Ljava/lang/String;

    return-object v0
.end method
