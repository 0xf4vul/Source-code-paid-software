.class public final Lcom/androidplot/xy/i;
.super Lcom/androidplot/b/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/xy/i$a;
    }
.end annotation


# static fields
.field private static final p:Lcom/androidplot/xy/i$a;


# instance fields
.field private a:Lcom/androidplot/xy/XYPlot;

.field private j:Landroid/graphics/Paint;

.field private k:Landroid/graphics/Paint;

.field private l:Lcom/androidplot/b/n;

.field private m:Z

.field private n:Z

.field private o:Lcom/androidplot/b/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/androidplot/xy/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/androidplot/xy/i$a;-><init>(B)V

    sput-object v0, Lcom/androidplot/xy/i;->p:Lcom/androidplot/xy/i$a;

    return-void
.end method

.method public constructor <init>(Lcom/androidplot/b/e;Lcom/androidplot/xy/XYPlot;Lcom/androidplot/b/m;Lcom/androidplot/b/n;Lcom/androidplot/b/m;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 73
    invoke-direct {p0, p1, p3}, Lcom/androidplot/b/a/b;-><init>(Lcom/androidplot/b/e;Lcom/androidplot/b/m;)V

    .line 52
    iput-boolean v2, p0, Lcom/androidplot/xy/i;->m:Z

    .line 53
    iput-boolean v2, p0, Lcom/androidplot/xy/i;->n:Z

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/i;->j:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Lcom/androidplot/xy/i;->j:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object v0, p0, Lcom/androidplot/xy/i;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/i;->k:Landroid/graphics/Paint;

    .line 65
    iget-object v0, p0, Lcom/androidplot/xy/i;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    iput-object p2, p0, Lcom/androidplot/xy/i;->a:Lcom/androidplot/xy/XYPlot;

    .line 75
    invoke-direct {p0, p4}, Lcom/androidplot/xy/i;->a(Lcom/androidplot/b/n;)V

    .line 76
    iput-object p5, p0, Lcom/androidplot/xy/i;->o:Lcom/androidplot/b/m;

    .line 77
    return-void
.end method

.method private a(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 84
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v6

    add-float/2addr v0, v1

    .line 85
    iget-object v1, p0, Lcom/androidplot/xy/i;->o:Lcom/androidplot/b/m;

    .line 1070
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, v1, Lcom/androidplot/b/m;->b:Lcom/androidplot/b/l;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/androidplot/b/l;->a(F)F

    move-result v3

    iget-object v1, v1, Lcom/androidplot/b/m;->a:Lcom/androidplot/b/l;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/androidplot/b/l;->a(F)F

    move-result v1

    invoke-direct {v2, v5, v5, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 88
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v6

    sub-float/2addr v0, v1

    .line 89
    iget v1, p1, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    invoke-virtual {v2, v1, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 90
    return-object v2
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 107
    iget-object v0, p0, Lcom/androidplot/xy/i;->a:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/h;

    move-result-object v0

    .line 2948
    iget-object v0, v0, Lcom/androidplot/xy/h;->k:Landroid/graphics/Paint;

    .line 108
    iget-boolean v1, p0, Lcom/androidplot/xy/i;->n:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 109
    iget-object v1, p0, Lcom/androidplot/xy/i;->k:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    iget-object v0, p0, Lcom/androidplot/xy/i;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 3094
    :cond_0
    iget v0, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    .line 113
    iget-object v1, p0, Lcom/androidplot/xy/i;->j:Landroid/graphics/Paint;

    invoke-static {v1}, Lcom/androidplot/c/c;->a(Landroid/graphics/Paint;)F

    move-result v1

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    .line 115
    iget-object v1, p0, Lcom/androidplot/xy/i;->j:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint$Align;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    iget v1, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v3

    iget-object v2, p0, Lcom/androidplot/xy/i;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, v1, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_1
    iget v1, p3, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v3

    iget-object v2, p0, Lcom/androidplot/xy/i;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, v1, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private declared-synchronized a(Lcom/androidplot/b/n;)V
    .locals 1

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/i;->l:Lcom/androidplot/b/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/androidplot/xy/i;->a:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/h;

    move-result-object v0

    .line 1948
    iget-object v0, v0, Lcom/androidplot/xy/h;->k:Landroid/graphics/Paint;

    .line 100
    iget-boolean v1, p0, Lcom/androidplot/xy/i;->m:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 103
    :cond_0
    return-void
.end method


# virtual methods
.method protected final declared-synchronized a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 153
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/androidplot/xy/i;->a:Lcom/androidplot/xy/XYPlot;

    .line 3478
    iget-object v0, v0, Lcom/androidplot/Plot;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 153
    if-eqz v0, :cond_1

    .line 210
    :cond_0
    monitor-exit p0

    return-void

    .line 160
    :cond_1
    :try_start_1
    new-instance v4, Ljava/util/TreeSet;

    new-instance v0, Lcom/androidplot/xy/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/androidplot/xy/i$a;-><init>(B)V

    invoke-direct {v4, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 164
    iget-object v0, p0, Lcom/androidplot/xy/i;->a:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getRendererList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/m;

    .line 166
    iget-object v5, p0, Lcom/androidplot/xy/i;->a:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/androidplot/xy/XYPlot;->a(Ljava/lang/Class;)Lcom/androidplot/b/i;

    move-result-object v5

    .line 167
    if-eqz v5, :cond_2

    .line 4042
    iget-object v5, v5, Lcom/androidplot/b/i;->a:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    .line 168
    add-int/2addr v1, v5

    .line 172
    :cond_2
    invoke-virtual {v0}, Lcom/androidplot/xy/m;->a()Ljava/util/Hashtable;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 179
    :cond_3
    :try_start_2
    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 182
    iget-object v1, p0, Lcom/androidplot/xy/i;->l:Lcom/androidplot/b/n;

    invoke-virtual {v1, p2, v0}, Lcom/androidplot/b/n;->a(Landroid/graphics/RectF;I)Ljava/util/Iterator;

    move-result-object v5

    .line 187
    iget-object v0, p0, Lcom/androidplot/xy/i;->a:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getRendererList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/m;

    .line 188
    iget-object v1, p0, Lcom/androidplot/xy/i;->a:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/androidplot/xy/XYPlot;->a(Ljava/lang/Class;)Lcom/androidplot/b/i;

    move-result-object v7

    .line 190
    if-eqz v7, :cond_4

    move v2, v3

    .line 5042
    :goto_1
    iget-object v0, v7, Lcom/androidplot/b/i;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 193
    if-ge v2, v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 194
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 5081
    iget-object v1, v7, Lcom/androidplot/b/i;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 5085
    iget-object v1, v7, Lcom/androidplot/b/i;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidplot/b;

    .line 196
    check-cast v1, Lcom/androidplot/xy/k;

    invoke-interface {v1}, Lcom/androidplot/xy/k;->a()Ljava/lang/String;

    move-result-object v1

    .line 5139
    invoke-direct {p0, v0}, Lcom/androidplot/xy/i;->a(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v8

    .line 5140
    invoke-direct {p0, p1, v8}, Lcom/androidplot/xy/i;->b(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6065
    const/16 v9, 0x1f

    :try_start_3
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->save(I)I

    .line 6066
    sget-object v9, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6070
    :try_start_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 5146
    invoke-direct {p0, p1, v0, v8, v1}, Lcom/androidplot/xy/i;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;Ljava/lang/String;)V

    .line 193
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 6070
    :catchall_1
    move-exception v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    throw v0

    .line 202
    :cond_5
    invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 203
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 207
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidplot/xy/j;

    .line 208
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6127
    invoke-direct {p0, v1}, Lcom/androidplot/xy/i;->a(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    .line 6128
    invoke-direct {p0, p1, v4}, Lcom/androidplot/xy/i;->b(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 8071
    iget-object v2, v2, Lcom/androidplot/xy/j;->a:Landroid/graphics/Paint;

    .line 7123
    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 6135
    invoke-direct {p0, p1, v1, v4, v0}, Lcom/androidplot/xy/i;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method
