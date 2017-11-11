.class final Lcom/airbnb/lottie/bv;
.super Lcom/airbnb/lottie/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/n",
        "<",
        "Lcom/airbnb/lottie/bs;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Lcom/airbnb/lottie/bs;

.field private final e:Landroid/graphics/Path;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/as",
            "<",
            "Lcom/airbnb/lottie/bs;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/n;-><init>(Ljava/util/List;)V

    .line 8
    new-instance v0, Lcom/airbnb/lottie/bs;

    invoke-direct {v0}, Lcom/airbnb/lottie/bs;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/bv;->d:Lcom/airbnb/lottie/bs;

    .line 9
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/bv;->e:Landroid/graphics/Path;

    .line 13
    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/airbnb/lottie/as;F)Ljava/lang/Object;
    .locals 13

    .prologue
    .line 7
    .line 1016
    iget-object v0, p1, Lcom/airbnb/lottie/as;->a:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/bs;

    .line 1017
    iget-object v1, p1, Lcom/airbnb/lottie/as;->b:Ljava/lang/Object;

    check-cast v1, Lcom/airbnb/lottie/bs;

    .line 1019
    iget-object v5, p0, Lcom/airbnb/lottie/bv;->d:Lcom/airbnb/lottie/bs;

    .line 1048
    iget-object v2, v5, Lcom/airbnb/lottie/bs;->b:Landroid/graphics/PointF;

    if-nez v2, :cond_0

    .line 1049
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, v5, Lcom/airbnb/lottie/bs;->b:Landroid/graphics/PointF;

    .line 2039
    :cond_0
    iget-boolean v2, v0, Lcom/airbnb/lottie/bs;->c:Z

    .line 1051
    if-nez v2, :cond_1

    .line 3039
    iget-boolean v2, v1, Lcom/airbnb/lottie/bs;->c:Z

    .line 1051
    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v5, Lcom/airbnb/lottie/bs;->c:Z

    .line 1053
    iget-object v2, v5, Lcom/airbnb/lottie/bs;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v5, Lcom/airbnb/lottie/bs;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 3043
    iget-object v3, v0, Lcom/airbnb/lottie/bs;->a:Ljava/util/List;

    .line 1053
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    iget-object v2, v5, Lcom/airbnb/lottie/bs;->a:Ljava/util/List;

    .line 1054
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 4043
    iget-object v3, v1, Lcom/airbnb/lottie/bs;->a:Ljava/util/List;

    .line 1054
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 1055
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Curves must have the same number of control points. This: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5043
    iget-object v4, v5, Lcom/airbnb/lottie/bs;->a:Ljava/util/List;

    .line 1056
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\tShape 1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6043
    iget-object v0, v0, Lcom/airbnb/lottie/bs;->a:Ljava/util/List;

    .line 1057
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\tShape 2: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7043
    iget-object v1, v1, Lcom/airbnb/lottie/bs;->a:Ljava/util/List;

    .line 1058
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1051
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1059
    :cond_3
    iget-object v2, v5, Lcom/airbnb/lottie/bs;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8043
    iget-object v2, v0, Lcom/airbnb/lottie/bs;->a:Ljava/util/List;

    .line 1060
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_4

    .line 1061
    iget-object v3, v5, Lcom/airbnb/lottie/bs;->a:Ljava/util/List;

    new-instance v4, Lcom/airbnb/lottie/y;

    invoke-direct {v4}, Lcom/airbnb/lottie/y;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1060
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 9035
    :cond_4
    iget-object v2, v0, Lcom/airbnb/lottie/bs;->b:Landroid/graphics/PointF;

    .line 10035
    iget-object v3, v1, Lcom/airbnb/lottie/bs;->b:Landroid/graphics/PointF;

    .line 1068
    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v6, v3, Landroid/graphics/PointF;->x:F

    .line 10042
    sub-float/2addr v6, v4

    mul-float/2addr v6, p2

    add-float/2addr v4, v6

    .line 1068
    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 11042
    sub-float/2addr v3, v2

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    .line 12028
    iget-object v3, v5, Lcom/airbnb/lottie/bs;->b:Landroid/graphics/PointF;

    if-nez v3, :cond_5

    .line 12029
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, v5, Lcom/airbnb/lottie/bs;->b:Landroid/graphics/PointF;

    .line 12031
    :cond_5
    iget-object v3, v5, Lcom/airbnb/lottie/bs;->b:Landroid/graphics/PointF;

    invoke-virtual {v3, v4, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 1071
    iget-object v2, v5, Lcom/airbnb/lottie/bs;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :goto_2
    if-ltz v4, :cond_6

    .line 12043
    iget-object v2, v0, Lcom/airbnb/lottie/bs;->a:Ljava/util/List;

    .line 1072
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/y;

    .line 13043
    iget-object v3, v1, Lcom/airbnb/lottie/bs;->a:Ljava/util/List;

    .line 1073
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/y;

    .line 14027
    iget-object v6, v2, Lcom/airbnb/lottie/y;->a:Landroid/graphics/PointF;

    .line 14035
    iget-object v7, v2, Lcom/airbnb/lottie/y;->b:Landroid/graphics/PointF;

    .line 14043
    iget-object v8, v2, Lcom/airbnb/lottie/y;->c:Landroid/graphics/PointF;

    .line 15027
    iget-object v9, v3, Lcom/airbnb/lottie/y;->a:Landroid/graphics/PointF;

    .line 15035
    iget-object v10, v3, Lcom/airbnb/lottie/y;->b:Landroid/graphics/PointF;

    .line 15043
    iget-object v3, v3, Lcom/airbnb/lottie/y;->c:Landroid/graphics/PointF;

    .line 1083
    iget-object v2, v5, Lcom/airbnb/lottie/bs;->a:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/y;

    iget v11, v6, Landroid/graphics/PointF;->x:F

    iget v12, v9, Landroid/graphics/PointF;->x:F

    .line 16042
    sub-float/2addr v12, v11

    mul-float/2addr v12, p2

    add-float/2addr v11, v12

    .line 1084
    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget v9, v9, Landroid/graphics/PointF;->y:F

    .line 17042
    sub-float/2addr v9, v6

    mul-float/2addr v9, p2

    add-float/2addr v6, v9

    .line 18023
    iget-object v2, v2, Lcom/airbnb/lottie/y;->a:Landroid/graphics/PointF;

    invoke-virtual {v2, v11, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 1086
    iget-object v2, v5, Lcom/airbnb/lottie/bs;->a:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/y;

    iget v6, v7, Landroid/graphics/PointF;->x:F

    iget v9, v10, Landroid/graphics/PointF;->x:F

    .line 18042
    sub-float/2addr v9, v6

    mul-float/2addr v9, p2

    add-float/2addr v6, v9

    .line 1087
    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v9, v10, Landroid/graphics/PointF;->y:F

    .line 19042
    sub-float/2addr v9, v7

    mul-float/2addr v9, p2

    add-float/2addr v7, v9

    .line 20031
    iget-object v2, v2, Lcom/airbnb/lottie/y;->b:Landroid/graphics/PointF;

    invoke-virtual {v2, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 1089
    iget-object v2, v5, Lcom/airbnb/lottie/bs;->a:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/y;

    iget v6, v8, Landroid/graphics/PointF;->x:F

    iget v7, v3, Landroid/graphics/PointF;->x:F

    .line 20042
    sub-float/2addr v7, v6

    mul-float/2addr v7, p2

    add-float/2addr v6, v7

    .line 1090
    iget v7, v8, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 21042
    sub-float/2addr v3, v7

    mul-float/2addr v3, p2

    add-float/2addr v3, v7

    .line 22039
    iget-object v2, v2, Lcom/airbnb/lottie/y;->c:Landroid/graphics/PointF;

    invoke-virtual {v2, v6, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 1071
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_2

    .line 1020
    :cond_6
    iget-object v0, p0, Lcom/airbnb/lottie/bv;->d:Lcom/airbnb/lottie/bs;

    iget-object v1, p0, Lcom/airbnb/lottie/bv;->e:Landroid/graphics/Path;

    invoke-static {v0, v1}, Lcom/airbnb/lottie/bc;->a(Lcom/airbnb/lottie/bs;Landroid/graphics/Path;)V

    .line 1021
    iget-object v0, p0, Lcom/airbnb/lottie/bv;->e:Landroid/graphics/Path;

    .line 7
    return-object v0
.end method
