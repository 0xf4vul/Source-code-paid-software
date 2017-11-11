.class final Lcom/airbnb/lottie/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/n$a;
.implements Lcom/airbnb/lottie/z;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/support/v4/h/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/h/f",
            "<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/support/v4/h/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/h/f",
            "<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/graphics/Matrix;

.field private final e:Landroid/graphics/Path;

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/RectF;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/bf;",
            ">;"
        }
    .end annotation
.end field

.field private final i:I

.field private final j:Lcom/airbnb/lottie/at;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/at",
            "<",
            "Lcom/airbnb/lottie/af;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/airbnb/lottie/at;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/at",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/airbnb/lottie/at;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/at",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lcom/airbnb/lottie/at;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/at",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lcom/airbnb/lottie/aw;

.field private final o:I


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/aw;Lcom/airbnb/lottie/o;Lcom/airbnb/lottie/ah;)V
    .locals 4

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/support/v4/h/f;

    invoke-direct {v0}, Landroid/support/v4/h/f;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/ai;->b:Landroid/support/v4/h/f;

    .line 26
    new-instance v0, Landroid/support/v4/h/f;

    invoke-direct {v0}, Landroid/support/v4/h/f;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/ai;->c:Landroid/support/v4/h/f;

    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/ai;->d:Landroid/graphics/Matrix;

    .line 28
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/ai;->e:Landroid/graphics/Path;

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/ai;->f:Landroid/graphics/Paint;

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/ai;->g:Landroid/graphics/RectF;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/ai;->h:Ljava/util/List;

    .line 1038
    iget-object v0, p3, Lcom/airbnb/lottie/ah;->g:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/airbnb/lottie/ai;->a:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/airbnb/lottie/ai;->n:Lcom/airbnb/lottie/aw;

    .line 1042
    iget v0, p3, Lcom/airbnb/lottie/ah;->a:I

    .line 43
    iput v0, p0, Lcom/airbnb/lottie/ai;->i:I

    .line 44
    iget-object v0, p0, Lcom/airbnb/lottie/ai;->e:Landroid/graphics/Path;

    .line 1046
    iget-object v1, p3, Lcom/airbnb/lottie/ah;->b:Landroid/graphics/Path$FillType;

    .line 44
    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 1399
    iget-object v0, p1, Lcom/airbnb/lottie/aw;->b:Lcom/airbnb/lottie/av;

    .line 45
    invoke-virtual {v0}, Lcom/airbnb/lottie/av;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/airbnb/lottie/ai;->o:I

    .line 2050
    iget-object v0, p3, Lcom/airbnb/lottie/ah;->c:Lcom/airbnb/lottie/c;

    .line 47
    invoke-virtual {v0}, Lcom/airbnb/lottie/c;->a()Lcom/airbnb/lottie/at;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/ai;->j:Lcom/airbnb/lottie/at;

    .line 48
    iget-object v0, p0, Lcom/airbnb/lottie/ai;->j:Lcom/airbnb/lottie/at;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/at;->a(Lcom/airbnb/lottie/n$a;)V

    .line 49
    iget-object v0, p0, Lcom/airbnb/lottie/ai;->j:Lcom/airbnb/lottie/at;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/o;->a(Lcom/airbnb/lottie/n;)V

    .line 2054
    iget-object v0, p3, Lcom/airbnb/lottie/ah;->d:Lcom/airbnb/lottie/d;

    .line 51
    invoke-virtual {v0}, Lcom/airbnb/lottie/d;->a()Lcom/airbnb/lottie/at;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/ai;->k:Lcom/airbnb/lottie/at;

    .line 52
    iget-object v0, p0, Lcom/airbnb/lottie/ai;->k:Lcom/airbnb/lottie/at;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/at;->a(Lcom/airbnb/lottie/n$a;)V

    .line 53
    iget-object v0, p0, Lcom/airbnb/lottie/ai;->k:Lcom/airbnb/lottie/at;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/o;->a(Lcom/airbnb/lottie/n;)V

    .line 2058
    iget-object v0, p3, Lcom/airbnb/lottie/ah;->e:Lcom/airbnb/lottie/f;

    .line 55
    invoke-virtual {v0}, Lcom/airbnb/lottie/f;->a()Lcom/airbnb/lottie/at;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/ai;->l:Lcom/airbnb/lottie/at;

    .line 56
    iget-object v0, p0, Lcom/airbnb/lottie/ai;->l:Lcom/airbnb/lottie/at;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/at;->a(Lcom/airbnb/lottie/n$a;)V

    .line 57
    iget-object v0, p0, Lcom/airbnb/lottie/ai;->l:Lcom/airbnb/lottie/at;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/o;->a(Lcom/airbnb/lottie/n;)V

    .line 2062
    iget-object v0, p3, Lcom/airbnb/lottie/ah;->f:Lcom/airbnb/lottie/f;

    .line 59
    invoke-virtual {v0}, Lcom/airbnb/lottie/f;->a()Lcom/airbnb/lottie/at;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/ai;->m:Lcom/airbnb/lottie/at;

    .line 60
    iget-object v0, p0, Lcom/airbnb/lottie/ai;->m:Lcom/airbnb/lottie/at;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/at;->a(Lcom/airbnb/lottie/n$a;)V

    .line 61
    iget-object v0, p0, Lcom/airbnb/lottie/ai;->m:Lcom/airbnb/lottie/at;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/o;->a(Lcom/airbnb/lottie/n;)V

    .line 62
    return-void
.end method

.method private b()I
    .locals 4

    .prologue
    .line 165
    iget-object v0, p0, Lcom/airbnb/lottie/ai;->l:Lcom/airbnb/lottie/at;

    .line 6114
    iget v0, v0, Lcom/airbnb/lottie/n;->c:F

    .line 165
    iget v1, p0, Lcom/airbnb/lottie/ai;->o:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 166
    iget-object v0, p0, Lcom/airbnb/lottie/ai;->m:Lcom/airbnb/lottie/at;

    .line 7114
    iget v0, v0, Lcom/airbnb/lottie/n;->c:F

    .line 166
    iget v2, p0, Lcom/airbnb/lottie/ai;->o:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 167
    iget-object v0, p0, Lcom/airbnb/lottie/ai;->j:Lcom/airbnb/lottie/at;

    .line 8114
    iget v0, v0, Lcom/airbnb/lottie/n;->c:F

    .line 167
    iget v3, p0, Lcom/airbnb/lottie/ai;->o:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 168
    const/16 v0, 0x11

    .line 169
    if-eqz v1, :cond_0

    .line 170
    mul-int/lit16 v0, v1, 0x20f

    .line 172
    :cond_0
    if-eqz v2, :cond_1

    .line 173
    mul-int/lit8 v0, v0, 0x1f

    mul-int/2addr v0, v2

    .line 175
    :cond_1
    if-eqz v3, :cond_2

    .line 176
    mul-int/lit8 v0, v0, 0x1f

    mul-int/2addr v0, v3

    .line 178
    :cond_2
    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/airbnb/lottie/ai;->n:Lcom/airbnb/lottie/aw;

    invoke-virtual {v0}, Lcom/airbnb/lottie/aw;->invalidateSelf()V

    .line 66
    return-void
.end method

.method public final a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 12

    .prologue
    .line 78
    iget-object v0, p0, Lcom/airbnb/lottie/ai;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 79
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/ai;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 80
    iget-object v2, p0, Lcom/airbnb/lottie/ai;->e:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/bf;

    invoke-interface {v0}, Lcom/airbnb/lottie/bf;->e()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v2, v0, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 79
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/ai;->e:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/airbnb/lottie/ai;->g:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 86
    iget v0, p0, Lcom/airbnb/lottie/ai;->i:I

    sget v1, Lcom/airbnb/lottie/al;->a:I

    if-ne v0, v1, :cond_3

    .line 2127
    invoke-direct {p0}, Lcom/airbnb/lottie/ai;->b()I

    move-result v8

    .line 2128
    iget-object v0, p0, Lcom/airbnb/lottie/ai;->b:Landroid/support/v4/h/f;

    int-to-long v2, v8

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/h/f;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/LinearGradient;

    .line 2129
    if-eqz v0, :cond_2

    .line 91
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/airbnb/lottie/ai;->d:Landroid/graphics/Matrix;

    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 92
    iget-object v1, p0, Lcom/airbnb/lottie/ai;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 93
    iget-object v1, p0, Lcom/airbnb/lottie/ai;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 95
    int-to-float v0, p3

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v1, v0, v1

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->k:Lcom/airbnb/lottie/at;

    invoke-virtual {v0}, Lcom/airbnb/lottie/at;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 96
    iget-object v1, p0, Lcom/airbnb/lottie/ai;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 98
    iget-object v0, p0, Lcom/airbnb/lottie/ai;->e:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/airbnb/lottie/ai;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 99
    return-void

    .line 2132
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/ai;->l:Lcom/airbnb/lottie/at;

    invoke-virtual {v0}, Lcom/airbnb/lottie/at;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/graphics/PointF;

    .line 2133
    iget-object v0, p0, Lcom/airbnb/lottie/ai;->m:Lcom/airbnb/lottie/at;

    invoke-virtual {v0}, Lcom/airbnb/lottie/at;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/graphics/PointF;

    .line 2134
    iget-object v0, p0, Lcom/airbnb/lottie/ai;->j:Lcom/airbnb/lottie/at;

    invoke-virtual {v0}, Lcom/airbnb/lottie/at;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/af;

    .line 3017
    iget-object v5, v0, Lcom/airbnb/lottie/af;->b:[I

    .line 4013
    iget-object v6, v0, Lcom/airbnb/lottie/af;->a:[F

    .line 2137
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 2139
    iget-object v1, p0, Lcom/airbnb/lottie/ai;->b:Landroid/support/v4/h/f;

    int-to-long v2, v8

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/h/f;->a(JLjava/lang/Object;)V

    goto :goto_1

    .line 4144
    :cond_3
    invoke-direct {p0}, Lcom/airbnb/lottie/ai;->b()I

    move-result v7

    .line 4145
    iget-object v0, p0, Lcom/airbnb/lottie/ai;->c:Landroid/support/v4/h/f;

    int-to-long v2, v7

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/h/f;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RadialGradient;

    .line 4146
    if-nez v0, :cond_1

    .line 4149
    iget-object v0, p0, Lcom/airbnb/lottie/ai;->l:Lcom/airbnb/lottie/at;

    invoke-virtual {v0}, Lcom/airbnb/lottie/at;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 4150
    iget-object v1, p0, Lcom/airbnb/lottie/ai;->m:Lcom/airbnb/lottie/at;

    invoke-virtual {v1}, Lcom/airbnb/lottie/at;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/graphics/PointF;

    .line 4151
    iget-object v1, p0, Lcom/airbnb/lottie/ai;->j:Lcom/airbnb/lottie/at;

    invoke-virtual {v1}, Lcom/airbnb/lottie/at;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/af;

    .line 5017
    iget-object v4, v1, Lcom/airbnb/lottie/af;->b:[I

    .line 6013
    iget-object v5, v1, Lcom/airbnb/lottie/af;->a:[F

    .line 4154
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 4155
    iget v2, v0, Landroid/graphics/PointF;->y:F

    .line 4156
    iget v0, v3, Landroid/graphics/PointF;->x:F

    .line 4157
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 4158
    sub-float/2addr v0, v1

    float-to-double v8, v0

    sub-float v0, v3, v2

    float-to-double v10, v0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v3, v8

    .line 4159
    new-instance v0, Landroid/graphics/RadialGradient;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 4160
    iget-object v1, p0, Lcom/airbnb/lottie/ai;->c:Landroid/support/v4/h/f;

    int-to-long v2, v7

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/h/f;->a(JLjava/lang/Object;)V

    goto/16 :goto_1
.end method

.method public final a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 102
    iget-object v0, p0, Lcom/airbnb/lottie/ai;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    move v1, v2

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/ai;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 104
    iget-object v3, p0, Lcom/airbnb/lottie/ai;->e:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/bf;

    invoke-interface {v0}, Lcom/airbnb/lottie/bf;->e()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v3, v0, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 103
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/ai;->e:Landroid/graphics/Path;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 109
    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v4

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v4

    iget v2, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v4

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 115
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/w;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/w;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 70
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/w;

    .line 71
    instance-of v2, v0, Lcom/airbnb/lottie/bf;

    if-eqz v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/airbnb/lottie/ai;->h:Ljava/util/List;

    check-cast v0, Lcom/airbnb/lottie/bf;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 75
    :cond_1
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/airbnb/lottie/ai;->a:Ljava/lang/String;

    return-object v0
.end method
