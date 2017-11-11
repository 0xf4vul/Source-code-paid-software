.class final Lcom/airbnb/lottie/u;
.super Lcom/airbnb/lottie/o;
.source "SourceFile"


# instance fields
.field final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/o;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/lang/Boolean;

.field private final i:Landroid/graphics/RectF;

.field private final j:Landroid/graphics/Rect;

.field private final k:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/aw;Lcom/airbnb/lottie/au;Ljava/util/List;Lcom/airbnb/lottie/av;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/aw;",
            "Lcom/airbnb/lottie/au;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/au;",
            ">;",
            "Lcom/airbnb/lottie/av;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/o;-><init>(Lcom/airbnb/lottie/aw;Lcom/airbnb/lottie/au;)V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/u;->g:Ljava/util/List;

    .line 18
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/u;->i:Landroid/graphics/RectF;

    .line 19
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/u;->j:Landroid/graphics/Rect;

    .line 20
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/u;->k:Landroid/graphics/RectF;

    .line 29
    new-instance v7, Landroid/support/v4/h/f;

    .line 1069
    iget-object v0, p4, Lcom/airbnb/lottie/av;->d:Ljava/util/List;

    .line 30
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v7, v0}, Landroid/support/v4/h/f;-><init>(I)V

    .line 33
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    move-object v3, v2

    :goto_0
    if-ltz v6, :cond_2

    .line 34
    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/au;

    .line 2027
    sget-object v1, Lcom/airbnb/lottie/o$2;->a:[I

    .line 2121
    iget-object v5, v0, Lcom/airbnb/lottie/au;->d:Lcom/airbnb/lottie/au$b;

    .line 2027
    invoke-virtual {v5}, Lcom/airbnb/lottie/au$b;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_0

    .line 2043
    const-string/jumbo v1, "LOTTIE"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Unknown layer type "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4121
    iget-object v8, v0, Lcom/airbnb/lottie/au;->d:Lcom/airbnb/lottie/au$b;

    .line 2043
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 36
    :goto_1
    if-eqz v1, :cond_1

    .line 5100
    iget-object v5, v1, Lcom/airbnb/lottie/o;->c:Lcom/airbnb/lottie/au;

    .line 6097
    iget-wide v8, v5, Lcom/airbnb/lottie/au;->c:J

    .line 39
    invoke-virtual {v7, v8, v9, v1}, Landroid/support/v4/h/f;->a(JLjava/lang/Object;)V

    .line 40
    if-eqz v3, :cond_0

    .line 6104
    iput-object v1, v3, Lcom/airbnb/lottie/o;->d:Lcom/airbnb/lottie/o;

    move-object v0, v2

    .line 33
    :goto_2
    add-int/lit8 v1, v6, -0x1

    move v6, v1

    move-object v3, v0

    goto :goto_0

    .line 2029
    :pswitch_0
    new-instance v1, Lcom/airbnb/lottie/bw;

    invoke-direct {v1, p1, v0}, Lcom/airbnb/lottie/bw;-><init>(Lcom/airbnb/lottie/aw;Lcom/airbnb/lottie/au;)V

    goto :goto_1

    .line 2031
    :pswitch_1
    new-instance v5, Lcom/airbnb/lottie/u;

    .line 3105
    iget-object v1, v0, Lcom/airbnb/lottie/au;->f:Ljava/lang/String;

    .line 4074
    iget-object v8, p4, Lcom/airbnb/lottie/av;->a:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2032
    invoke-direct {v5, p1, v0, v1, p4}, Lcom/airbnb/lottie/u;-><init>(Lcom/airbnb/lottie/aw;Lcom/airbnb/lottie/au;Ljava/util/List;Lcom/airbnb/lottie/av;)V

    move-object v1, v5

    goto :goto_1

    .line 2034
    :pswitch_2
    new-instance v1, Lcom/airbnb/lottie/cb;

    invoke-direct {v1, p1, v0}, Lcom/airbnb/lottie/cb;-><init>(Lcom/airbnb/lottie/aw;Lcom/airbnb/lottie/au;)V

    goto :goto_1

    .line 2036
    :pswitch_3
    new-instance v1, Lcom/airbnb/lottie/ao;

    .line 4091
    iget v5, p4, Lcom/airbnb/lottie/av;->g:F

    .line 2036
    invoke-direct {v1, p1, v0, v5}, Lcom/airbnb/lottie/ao;-><init>(Lcom/airbnb/lottie/aw;Lcom/airbnb/lottie/au;F)V

    goto :goto_1

    .line 2038
    :pswitch_4
    new-instance v1, Lcom/airbnb/lottie/bd;

    invoke-direct {v1, p1, v0}, Lcom/airbnb/lottie/bd;-><init>(Lcom/airbnb/lottie/aw;Lcom/airbnb/lottie/au;)V

    goto :goto_1

    .line 44
    :cond_0
    iget-object v5, p0, Lcom/airbnb/lottie/u;->g:Ljava/util/List;

    invoke-interface {v5, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 45
    sget-object v5, Lcom/airbnb/lottie/u$1;->a:[I

    .line 6125
    iget v0, v0, Lcom/airbnb/lottie/au;->p:I

    .line 45
    add-int/lit8 v0, v0, -0x1

    aget v0, v5, v0

    packed-switch v0, :pswitch_data_1

    :cond_1
    move-object v0, v3

    goto :goto_2

    :pswitch_5
    move-object v0, v1

    .line 48
    goto :goto_2

    :cond_2
    move v2, v4

    .line 54
    :goto_3
    invoke-virtual {v7}, Landroid/support/v4/h/f;->a()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 55
    invoke-virtual {v7, v2}, Landroid/support/v4/h/f;->a(I)J

    move-result-wide v0

    .line 56
    invoke-virtual {v7, v0, v1}, Landroid/support/v4/h/f;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/o;

    .line 7100
    iget-object v1, v0, Lcom/airbnb/lottie/o;->c:Lcom/airbnb/lottie/au;

    .line 7129
    iget-wide v4, v1, Lcom/airbnb/lottie/au;->e:J

    .line 57
    invoke-virtual {v7, v4, v5}, Landroid/support/v4/h/f;->a(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/o;

    .line 58
    if-eqz v1, :cond_3

    .line 8112
    iput-object v1, v0, Lcom/airbnb/lottie/o;->e:Lcom/airbnb/lottie/o;

    .line 54
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 62
    :cond_4
    return-void

    .line 2027
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 45
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final a(F)V
    .locals 3

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/airbnb/lottie/o;->a(F)V

    .line 104
    iget-object v0, p0, Lcom/airbnb/lottie/u;->c:Lcom/airbnb/lottie/au;

    .line 10089
    iget v0, v0, Lcom/airbnb/lottie/au;->l:F

    .line 104
    sub-float v2, p1, v0

    .line 105
    iget-object v0, p0, Lcom/airbnb/lottie/u;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/airbnb/lottie/u;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/o;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/o;->a(F)V

    .line 105
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 108
    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/o;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 85
    iget-object v0, p0, Lcom/airbnb/lottie/u;->i:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 86
    iget-object v0, p0, Lcom/airbnb/lottie/u;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 87
    iget-object v0, p0, Lcom/airbnb/lottie/u;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/o;

    .line 88
    iget-object v2, p0, Lcom/airbnb/lottie/u;->i:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/airbnb/lottie/u;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v3}, Lcom/airbnb/lottie/o;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 89
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/airbnb/lottie/u;->i:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 86
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 92
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/airbnb/lottie/u;->i:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    .line 93
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/airbnb/lottie/u;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    .line 94
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/airbnb/lottie/u;->i:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    .line 95
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/airbnb/lottie/u;->i:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    .line 96
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 92
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    .line 100
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 146
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/u;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/airbnb/lottie/u;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/o;

    .line 10100
    iget-object v2, v0, Lcom/airbnb/lottie/o;->c:Lcom/airbnb/lottie/au;

    .line 10101
    iget-object v2, v2, Lcom/airbnb/lottie/au;->b:Ljava/lang/String;

    .line 149
    if-nez p1, :cond_1

    .line 150
    invoke-virtual {v0, v3, v3, p3}, Lcom/airbnb/lottie/o;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 146
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    invoke-virtual {v0, p1, p2, p3}, Lcom/airbnb/lottie/o;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 155
    :cond_2
    return-void
.end method

.method final b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 65
    iget-object v0, p0, Lcom/airbnb/lottie/u;->j:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 66
    iget-object v0, p0, Lcom/airbnb/lottie/u;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/airbnb/lottie/u;->c:Lcom/airbnb/lottie/au;

    .line 9109
    iget v1, v1, Lcom/airbnb/lottie/au;->m:I

    .line 66
    int-to-float v1, v1

    iget-object v2, p0, Lcom/airbnb/lottie/u;->c:Lcom/airbnb/lottie/au;

    .line 9113
    iget v2, v2, Lcom/airbnb/lottie/au;->n:I

    .line 66
    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 67
    iget-object v0, p0, Lcom/airbnb/lottie/u;->k:Landroid/graphics/RectF;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 69
    iget-object v0, p0, Lcom/airbnb/lottie/u;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 70
    const/4 v0, 0x1

    .line 71
    iget-object v2, p0, Lcom/airbnb/lottie/u;->k:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    iget-object v0, p0, Lcom/airbnb/lottie/u;->k:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v0

    .line 74
    :cond_0
    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/airbnb/lottie/u;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/o;

    invoke-virtual {v0, p1, p2, p3}, Lcom/airbnb/lottie/o;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 69
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/u;->j:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 79
    iget-object v0, p0, Lcom/airbnb/lottie/u;->j:Landroid/graphics/Rect;

    sget-object v1, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 81
    :cond_3
    return-void
.end method
