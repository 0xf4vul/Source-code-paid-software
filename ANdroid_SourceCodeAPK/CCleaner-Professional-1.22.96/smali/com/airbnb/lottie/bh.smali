.class final Lcom/airbnb/lottie/bh;
.super Lcom/airbnb/lottie/at;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/at",
        "<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Landroid/graphics/PointF;

.field private final e:[F

.field private f:Lcom/airbnb/lottie/bg;

.field private g:Landroid/graphics/PathMeasure;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/airbnb/lottie/as",
            "<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/at;-><init>(Ljava/util/List;)V

    .line 10
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/bh;->d:Landroid/graphics/PointF;

    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/airbnb/lottie/bh;->e:[F

    .line 17
    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/airbnb/lottie/as;F)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 9
    move-object v0, p1

    .line 1020
    check-cast v0, Lcom/airbnb/lottie/bg;

    .line 1054
    iget-object v1, v0, Lcom/airbnb/lottie/bg;->f:Landroid/graphics/Path;

    .line 1022
    if-nez v1, :cond_0

    .line 1023
    iget-object v0, p1, Lcom/airbnb/lottie/as;->a:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    :goto_0
    return-object v0

    .line 1026
    :cond_0
    iget-object v2, p0, Lcom/airbnb/lottie/bh;->f:Lcom/airbnb/lottie/bg;

    if-eq v2, v0, :cond_1

    .line 1027
    new-instance v2, Landroid/graphics/PathMeasure;

    invoke-direct {v2, v1, v4}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v2, p0, Lcom/airbnb/lottie/bh;->g:Landroid/graphics/PathMeasure;

    .line 1028
    iput-object v0, p0, Lcom/airbnb/lottie/bh;->f:Lcom/airbnb/lottie/bg;

    .line 1031
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/bh;->g:Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcom/airbnb/lottie/bh;->g:Landroid/graphics/PathMeasure;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    mul-float/2addr v1, p2

    iget-object v2, p0, Lcom/airbnb/lottie/bh;->e:[F

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 1032
    iget-object v0, p0, Lcom/airbnb/lottie/bh;->d:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/airbnb/lottie/bh;->e:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/airbnb/lottie/bh;->e:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 1033
    iget-object v0, p0, Lcom/airbnb/lottie/bh;->d:Landroid/graphics/PointF;

    goto :goto_0
.end method
