.class public Lcom/androidplot/xy/XYPlot;
.super Lcom/androidplot/Plot;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/xy/XYPlot$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/Plot",
        "<",
        "Lcom/androidplot/xy/k;",
        "Lcom/androidplot/xy/l;",
        "Lcom/androidplot/xy/m;",
        ">;"
    }
.end annotation


# instance fields
.field private A:Ljava/lang/Number;

.field private B:Ljava/lang/Number;

.field private C:Ljava/lang/Number;

.field private D:Ljava/lang/Number;

.field private E:Ljava/lang/Number;

.field private F:Lcom/androidplot/xy/g;

.field private G:Lcom/androidplot/xy/g;

.field private H:Ljava/lang/Number;

.field private I:Ljava/lang/Number;

.field private J:Ljava/lang/Number;

.field private K:Ljava/lang/Number;

.field private L:Ljava/lang/Number;

.field private M:Ljava/lang/Number;

.field private N:Lcom/androidplot/xy/b;

.field private O:Lcom/androidplot/xy/b;

.field private P:Lcom/androidplot/xy/b;

.field private Q:Lcom/androidplot/xy/b;

.field private R:Z

.field private S:Z

.field private T:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/androidplot/xy/q;",
            ">;"
        }
    .end annotation
.end field

.field private U:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/androidplot/xy/e;",
            ">;"
        }
    .end annotation
.end field

.field private V:Lcom/androidplot/xy/c;

.field private b:Lcom/androidplot/xy/b;

.field private c:Lcom/androidplot/xy/b;

.field private d:Lcom/androidplot/xy/i;

.field private e:Lcom/androidplot/xy/h;

.field private f:Lcom/androidplot/b/a/a;

.field private g:Lcom/androidplot/b/a/a;

.field private h:I

.field private i:D

.field private j:I

.field private k:D

.field private l:Ljava/lang/Number;

.field private m:Ljava/lang/Number;

.field private n:Ljava/lang/Number;

.field private o:Ljava/lang/Number;

.field private p:Ljava/lang/Number;

.field private q:Ljava/lang/Number;

.field private r:Ljava/lang/Number;

.field private s:Ljava/lang/Number;

.field private t:Ljava/lang/Number;

.field private u:Ljava/lang/Number;

.field private v:Ljava/lang/Number;

.field private w:Ljava/lang/Number;

.field private x:Ljava/lang/Number;

.field private y:Ljava/lang/Number;

.field private z:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const/4 v1, 0x0

    .line 154
    invoke-direct {p0, p1, p2, p3}, Lcom/androidplot/Plot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    sget v0, Lcom/androidplot/xy/p;->a:I

    iput v0, p0, Lcom/androidplot/xy/XYPlot;->h:I

    .line 50
    iput-wide v2, p0, Lcom/androidplot/xy/XYPlot;->i:D

    .line 52
    sget v0, Lcom/androidplot/xy/p;->a:I

    iput v0, p0, Lcom/androidplot/xy/XYPlot;->j:I

    .line 53
    iput-wide v2, p0, Lcom/androidplot/xy/XYPlot;->k:D

    .line 76
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->x:Ljava/lang/Number;

    .line 77
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->y:Ljava/lang/Number;

    .line 78
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->z:Ljava/lang/Number;

    .line 79
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->A:Ljava/lang/Number;

    .line 80
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->B:Ljava/lang/Number;

    .line 81
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->C:Ljava/lang/Number;

    .line 82
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->D:Ljava/lang/Number;

    .line 83
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->E:Ljava/lang/Number;

    .line 89
    sget-object v0, Lcom/androidplot/xy/g;->b:Lcom/androidplot/xy/g;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->F:Lcom/androidplot/xy/g;

    .line 90
    sget-object v0, Lcom/androidplot/xy/g;->b:Lcom/androidplot/xy/g;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->G:Lcom/androidplot/xy/g;

    .line 98
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->L:Ljava/lang/Number;

    .line 100
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->M:Ljava/lang/Number;

    .line 103
    sget-object v0, Lcom/androidplot/xy/b;->b:Lcom/androidplot/xy/b;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->N:Lcom/androidplot/xy/b;

    .line 104
    sget-object v0, Lcom/androidplot/xy/b;->b:Lcom/androidplot/xy/b;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->O:Lcom/androidplot/xy/b;

    .line 105
    sget-object v0, Lcom/androidplot/xy/b;->b:Lcom/androidplot/xy/b;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->P:Lcom/androidplot/xy/b;

    .line 106
    sget-object v0, Lcom/androidplot/xy/b;->b:Lcom/androidplot/xy/b;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->Q:Lcom/androidplot/xy/b;

    .line 108
    iput-boolean v4, p0, Lcom/androidplot/xy/XYPlot;->R:Z

    .line 109
    iput-boolean v4, p0, Lcom/androidplot/xy/XYPlot;->S:Z

    .line 156
    return-void
.end method

.method private static a(DD)D
    .locals 2

    .prologue
    .line 609
    cmpl-double v0, p0, p2

    if-lez v0, :cond_0

    .line 610
    sub-double v0, p0, p2

    .line 612
    :goto_0
    return-wide v0

    :cond_0
    sub-double v0, p2, p0

    goto :goto_0
.end method

.method private static a(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 6

    .prologue
    .line 516
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    :cond_0
    move-object v0, p0

    .line 519
    :goto_0
    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpg-double v1, v2, v4

    if-gez v1, :cond_2

    :cond_1
    move-object p2, v0

    .line 522
    :cond_2
    return-object p2

    :cond_3
    move-object v0, p1

    .line 516
    goto :goto_0
.end method

.method private declared-synchronized a(Ljava/lang/Number;Lcom/androidplot/xy/b;)V
    .locals 1

    .prologue
    .line 924
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/androidplot/xy/b;->a:Lcom/androidplot/xy/b;

    if-ne p2, v0, :cond_0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYPlot;->setUserMaxX(Ljava/lang/Number;)V

    .line 925
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/XYPlot;->setDomainUpperBoundaryMode(Lcom/androidplot/xy/b;)V

    .line 926
    sget-object v0, Lcom/androidplot/xy/g;->b:Lcom/androidplot/xy/g;

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYPlot;->setDomainFramingModel(Lcom/androidplot/xy/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 927
    monitor-exit p0

    return-void

    .line 924
    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static a(DLjava/lang/Number;Ljava/lang/Number;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 324
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double v2, p0, v2

    if-ltz v2, :cond_2

    :cond_0
    move v3, v0

    .line 325
    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpg-double v2, p0, v4

    if-gtz v2, :cond_3

    :cond_1
    move v2, v0

    .line 326
    :goto_1
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    :goto_2
    return v0

    :cond_2
    move v3, v1

    .line 324
    goto :goto_0

    :cond_3
    move v2, v1

    .line 325
    goto :goto_1

    :cond_4
    move v0, v1

    .line 326
    goto :goto_2
.end method

.method private declared-synchronized b(Ljava/lang/Number;Lcom/androidplot/xy/b;)V
    .locals 1

    .prologue
    .line 949
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/androidplot/xy/b;->a:Lcom/androidplot/xy/b;

    if-ne p2, v0, :cond_0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYPlot;->setUserMinX(Ljava/lang/Number;)V

    .line 950
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/XYPlot;->setDomainLowerBoundaryMode(Lcom/androidplot/xy/b;)V

    .line 951
    sget-object v0, Lcom/androidplot/xy/g;->b:Lcom/androidplot/xy/g;

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYPlot;->setDomainFramingModel(Lcom/androidplot/xy/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 953
    monitor-exit p0

    return-void

    .line 949
    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Ljava/lang/Number;Lcom/androidplot/xy/b;)V
    .locals 1

    .prologue
    .line 975
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/androidplot/xy/b;->a:Lcom/androidplot/xy/b;

    if-ne p2, v0, :cond_0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYPlot;->setUserMaxY(Ljava/lang/Number;)V

    .line 976
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/XYPlot;->setRangeUpperBoundaryMode(Lcom/androidplot/xy/b;)V

    .line 977
    sget-object v0, Lcom/androidplot/xy/g;->b:Lcom/androidplot/xy/g;

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYPlot;->setRangeFramingModel(Lcom/androidplot/xy/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    monitor-exit p0

    return-void

    .line 975
    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d(Ljava/lang/Number;Lcom/androidplot/xy/b;)V
    .locals 1

    .prologue
    .line 1000
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/androidplot/xy/b;->a:Lcom/androidplot/xy/b;

    if-ne p2, v0, :cond_0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYPlot;->setUserMinY(Ljava/lang/Number;)V

    .line 1001
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/XYPlot;->setRangeLowerBoundaryMode(Lcom/androidplot/xy/b;)V

    .line 1002
    sget-object v0, Lcom/androidplot/xy/g;->b:Lcom/androidplot/xy/g;

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYPlot;->setRangeFramingModel(Lcom/androidplot/xy/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1003
    monitor-exit p0

    return-void

    .line 1000
    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getUserMaxX()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->m:Ljava/lang/Number;

    return-object v0
.end method

.method private getUserMaxY()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->o:Ljava/lang/Number;

    return-object v0
.end method

.method private getUserMinX()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->l:Ljava/lang/Number;

    return-object v0
.end method

.method private getUserMinY()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->n:Ljava/lang/Number;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 13

    .prologue
    const/high16 v7, 0x40e00000    # 7.0f

    const/high16 v12, 0x40400000    # 3.0f

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v10, 0x41200000    # 10.0f

    const/4 v9, 0x0

    .line 160
    new-instance v0, Lcom/androidplot/xy/i;

    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getLayoutManager()Lcom/androidplot/b/e;

    move-result-object v1

    new-instance v3, Lcom/androidplot/b/m;

    invoke-static {v10}, Lcom/androidplot/c/f;->a(F)F

    move-result v2

    sget-object v4, Lcom/androidplot/b/k;->a:Lcom/androidplot/b/k;

    const/high16 v5, 0x3f000000    # 0.5f

    sget-object v6, Lcom/androidplot/b/k;->b:Lcom/androidplot/b/k;

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/androidplot/b/m;-><init>(FLcom/androidplot/b/k;FLcom/androidplot/b/k;)V

    new-instance v4, Lcom/androidplot/b/c;

    invoke-direct {v4}, Lcom/androidplot/b/c;-><init>()V

    new-instance v5, Lcom/androidplot/b/m;

    invoke-static {v7}, Lcom/androidplot/c/f;->a(F)F

    move-result v2

    sget-object v6, Lcom/androidplot/b/k;->a:Lcom/androidplot/b/k;

    invoke-static {v7}, Lcom/androidplot/c/f;->a(F)F

    move-result v7

    sget-object v8, Lcom/androidplot/b/k;->a:Lcom/androidplot/b/k;

    invoke-direct {v5, v2, v6, v7, v8}, Lcom/androidplot/b/m;-><init>(FLcom/androidplot/b/k;FLcom/androidplot/b/k;)V

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/androidplot/xy/i;-><init>(Lcom/androidplot/b/e;Lcom/androidplot/xy/XYPlot;Lcom/androidplot/b/m;Lcom/androidplot/b/n;Lcom/androidplot/b/m;)V

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->d:Lcom/androidplot/xy/i;

    .line 173
    new-instance v0, Lcom/androidplot/xy/h;

    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getLayoutManager()Lcom/androidplot/b/e;

    move-result-object v1

    new-instance v2, Lcom/androidplot/b/m;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lcom/androidplot/c/f;->a(F)F

    move-result v3

    sget-object v4, Lcom/androidplot/b/k;->c:Lcom/androidplot/b/k;

    invoke-static {v10}, Lcom/androidplot/c/f;->a(F)F

    move-result v5

    sget-object v6, Lcom/androidplot/b/k;->c:Lcom/androidplot/b/k;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/androidplot/b/m;-><init>(FLcom/androidplot/b/k;FLcom/androidplot/b/k;)V

    invoke-direct {v0, v1, p0, v2}, Lcom/androidplot/xy/h;-><init>(Lcom/androidplot/b/e;Lcom/androidplot/xy/XYPlot;Lcom/androidplot/b/m;)V

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->e:Lcom/androidplot/xy/h;

    .line 182
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 183
    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 185
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->e:Lcom/androidplot/xy/h;

    .line 1377
    iput-object v0, v1, Lcom/androidplot/b/a/b;->c:Landroid/graphics/Paint;

    .line 188
    new-instance v0, Lcom/androidplot/b/a/a;

    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getLayoutManager()Lcom/androidplot/b/e;

    move-result-object v1

    new-instance v2, Lcom/androidplot/b/m;

    invoke-static {v10}, Lcom/androidplot/c/f;->a(F)F

    move-result v3

    sget-object v4, Lcom/androidplot/b/k;->a:Lcom/androidplot/b/k;

    const/high16 v5, 0x42a00000    # 80.0f

    invoke-static {v5}, Lcom/androidplot/c/f;->a(F)F

    move-result v5

    sget-object v6, Lcom/androidplot/b/k;->a:Lcom/androidplot/b/k;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/androidplot/b/m;-><init>(FLcom/androidplot/b/k;FLcom/androidplot/b/k;)V

    sget-object v3, Lcom/androidplot/b/p;->a:Lcom/androidplot/b/p;

    invoke-direct {v0, v1, v2, v3}, Lcom/androidplot/b/a/a;-><init>(Lcom/androidplot/b/e;Lcom/androidplot/b/m;Lcom/androidplot/b/p;)V

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->f:Lcom/androidplot/b/a/a;

    .line 196
    new-instance v0, Lcom/androidplot/b/a/a;

    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getLayoutManager()Lcom/androidplot/b/e;

    move-result-object v1

    new-instance v2, Lcom/androidplot/b/m;

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v3}, Lcom/androidplot/c/f;->a(F)F

    move-result v3

    sget-object v4, Lcom/androidplot/b/k;->a:Lcom/androidplot/b/k;

    invoke-static {v10}, Lcom/androidplot/c/f;->a(F)F

    move-result v5

    sget-object v6, Lcom/androidplot/b/k;->a:Lcom/androidplot/b/k;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/androidplot/b/m;-><init>(FLcom/androidplot/b/k;FLcom/androidplot/b/k;)V

    sget-object v3, Lcom/androidplot/b/p;->b:Lcom/androidplot/b/p;

    invoke-direct {v0, v1, v2, v3}, Lcom/androidplot/b/a/a;-><init>(Lcom/androidplot/b/e;Lcom/androidplot/b/m;Lcom/androidplot/b/p;)V

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->g:Lcom/androidplot/b/a/a;

    .line 205
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->d:Lcom/androidplot/xy/i;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Lcom/androidplot/c/f;->a(F)F

    move-result v1

    sget-object v2, Lcom/androidplot/b/q;->b:Lcom/androidplot/b/q;

    invoke-static {v9}, Lcom/androidplot/c/f;->a(F)F

    move-result v3

    sget-object v4, Lcom/androidplot/b/s;->b:Lcom/androidplot/b/s;

    sget-object v5, Lcom/androidplot/b/a;->g:Lcom/androidplot/b/a;

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/xy/i;->a(FLcom/androidplot/b/q;FLcom/androidplot/b/s;Lcom/androidplot/b/a;)V

    .line 212
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->e:Lcom/androidplot/xy/h;

    invoke-static {v9}, Lcom/androidplot/c/f;->a(F)F

    move-result v1

    sget-object v2, Lcom/androidplot/b/q;->b:Lcom/androidplot/b/q;

    invoke-static {v9}, Lcom/androidplot/c/f;->a(F)F

    move-result v3

    sget-object v4, Lcom/androidplot/b/s;->c:Lcom/androidplot/b/s;

    sget-object v5, Lcom/androidplot/b/a;->f:Lcom/androidplot/b/a;

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/xy/h;->a(FLcom/androidplot/b/q;FLcom/androidplot/b/s;Lcom/androidplot/b/a;)V

    .line 219
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->f:Lcom/androidplot/b/a/a;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lcom/androidplot/c/f;->a(F)F

    move-result v1

    sget-object v2, Lcom/androidplot/b/q;->a:Lcom/androidplot/b/q;

    invoke-static {v9}, Lcom/androidplot/c/f;->a(F)F

    move-result v3

    sget-object v4, Lcom/androidplot/b/s;->b:Lcom/androidplot/b/s;

    sget-object v5, Lcom/androidplot/b/a;->d:Lcom/androidplot/b/a;

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/b/a/a;->a(FLcom/androidplot/b/q;FLcom/androidplot/b/s;Lcom/androidplot/b/a;)V

    .line 226
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->g:Lcom/androidplot/b/a/a;

    invoke-static {v9}, Lcom/androidplot/c/f;->a(F)F

    move-result v1

    sget-object v2, Lcom/androidplot/b/q;->a:Lcom/androidplot/b/q;

    invoke-static {v9}, Lcom/androidplot/c/f;->a(F)F

    move-result v3

    sget-object v4, Lcom/androidplot/b/s;->c:Lcom/androidplot/b/s;

    sget-object v5, Lcom/androidplot/b/a;->c:Lcom/androidplot/b/a;

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/b/a/a;->a(FLcom/androidplot/b/q;FLcom/androidplot/b/s;Lcom/androidplot/b/a;)V

    .line 233
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getLayoutManager()Lcom/androidplot/b/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getTitleWidget()Lcom/androidplot/b/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidplot/b/e;->a(Ljava/lang/Object;)Z

    .line 234
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getLayoutManager()Lcom/androidplot/b/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getLegendWidget()Lcom/androidplot/xy/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidplot/b/e;->a(Ljava/lang/Object;)Z

    .line 235
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->e:Lcom/androidplot/xy/h;

    invoke-static {v12}, Lcom/androidplot/c/f;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/androidplot/xy/h;->d(F)V

    .line 236
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->e:Lcom/androidplot/xy/h;

    invoke-static {v12}, Lcom/androidplot/c/f;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/androidplot/xy/h;->c(F)V

    .line 238
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getDomainLabelWidget()Lcom/androidplot/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/b/a/a;->c()V

    .line 239
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getRangeLabelWidget()Lcom/androidplot/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/b/a/a;->c()V

    .line 240
    invoke-static {v11}, Lcom/androidplot/c/f;->a(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYPlot;->setPlotMarginLeft(F)V

    .line 241
    invoke-static {v11}, Lcom/androidplot/c/f;->a(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYPlot;->setPlotMarginRight(F)V

    .line 242
    invoke-static {v11}, Lcom/androidplot/c/f;->a(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYPlot;->setPlotMarginBottom(F)V

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->U:Ljava/util/ArrayList;

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->T:Ljava/util/ArrayList;

    .line 247
    new-instance v0, Lcom/androidplot/xy/c;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/androidplot/xy/c;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;B)V

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYPlot;->setDefaultBounds(Lcom/androidplot/xy/c;)V

    .line 248
    return-void
.end method

.method protected final a(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 260
    invoke-super {p0, p1}, Lcom/androidplot/Plot;->a(Landroid/graphics/Canvas;)V

    .line 2331
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->p:Ljava/lang/Number;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->t:Ljava/lang/Number;

    .line 2332
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->u:Ljava/lang/Number;

    .line 2333
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->r:Ljava/lang/Number;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->v:Ljava/lang/Number;

    .line 2334
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->s:Ljava/lang/Number;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->w:Ljava/lang/Number;

    .line 2336
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->l:Ljava/lang/Number;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->p:Ljava/lang/Number;

    .line 2337
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->m:Ljava/lang/Number;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    .line 2338
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->n:Ljava/lang/Number;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->r:Ljava/lang/Number;

    .line 2339
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->o:Ljava/lang/Number;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->s:Ljava/lang/Number;

    .line 2342
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getSeriesSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/k;

    move v1, v2

    .line 2344
    :goto_0
    invoke-interface {v0}, Lcom/androidplot/xy/k;->b()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 2345
    invoke-interface {v0}, Lcom/androidplot/xy/k;->c()Ljava/lang/Number;

    move-result-object v5

    .line 2346
    invoke-interface {v0}, Lcom/androidplot/xy/k;->d()Ljava/lang/Number;

    move-result-object v6

    .line 3316
    if-eqz v5, :cond_1

    if-nez v6, :cond_a

    :cond_1
    move v3, v2

    .line 2347
    :goto_1
    if-eqz v3, :cond_9

    .line 2349
    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->l:Ljava/lang/Number;

    if-nez v3, :cond_3

    .line 2350
    if-eqz v5, :cond_3

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->p:Ljava/lang/Number;

    if-eqz v3, :cond_2

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->p:Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    cmpg-double v3, v8, v10

    if-gez v3, :cond_3

    .line 2352
    :cond_2
    iput-object v5, p0, Lcom/androidplot/xy/XYPlot;->p:Ljava/lang/Number;

    .line 2356
    :cond_3
    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->m:Ljava/lang/Number;

    if-nez v3, :cond_5

    .line 2357
    if-eqz v5, :cond_5

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    if-eqz v3, :cond_4

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    cmpl-double v3, v8, v10

    if-lez v3, :cond_5

    .line 2359
    :cond_4
    iput-object v5, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    .line 2363
    :cond_5
    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->n:Ljava/lang/Number;

    if-nez v3, :cond_7

    .line 2364
    if-eqz v6, :cond_7

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->r:Ljava/lang/Number;

    if-eqz v3, :cond_6

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->r:Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    cmpg-double v3, v8, v10

    if-gez v3, :cond_7

    .line 2366
    :cond_6
    iput-object v6, p0, Lcom/androidplot/xy/XYPlot;->r:Ljava/lang/Number;

    .line 2370
    :cond_7
    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->o:Ljava/lang/Number;

    if-nez v3, :cond_9

    .line 2371
    if-eqz v6, :cond_9

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->s:Ljava/lang/Number;

    if-eqz v3, :cond_8

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->s:Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    cmpl-double v3, v8, v10

    if-lez v3, :cond_9

    .line 2372
    :cond_8
    iput-object v6, p0, Lcom/androidplot/xy/XYPlot;->s:Ljava/lang/Number;

    .line 2344
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3319
    :cond_a
    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->n:Ljava/lang/Number;

    iget-object v7, p0, Lcom/androidplot/xy/XYPlot;->o:Ljava/lang/Number;

    invoke-static {v8, v9, v3, v7}, Lcom/androidplot/xy/XYPlot;->a(DLjava/lang/Number;Ljava/lang/Number;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->l:Ljava/lang/Number;

    iget-object v7, p0, Lcom/androidplot/xy/XYPlot;->m:Ljava/lang/Number;

    invoke-static {v8, v9, v3, v7}, Lcom/androidplot/xy/XYPlot;->a(DLjava/lang/Number;Ljava/lang/Number;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_b
    move v3, v2

    goto/16 :goto_1

    .line 2382
    :cond_c
    sget-object v0, Lcom/androidplot/xy/XYPlot$1;->a:[I

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->F:Lcom/androidplot/xy/g;

    invoke-virtual {v1}, Lcom/androidplot/xy/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2394
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Domain Framing Model not yet supported: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->F:Lcom/androidplot/xy/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3617
    :pswitch_0
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->H:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    .line 3618
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1, v4, v5}, Lcom/androidplot/xy/XYPlot;->a(DD)D

    move-result-wide v0

    .line 3619
    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->p:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3, v4, v5}, Lcom/androidplot/xy/XYPlot;->a(DD)D

    move-result-wide v2

    .line 3620
    cmpl-double v6, v0, v2

    if-lez v6, :cond_d

    .line 3621
    :goto_2
    sub-double v2, v4, v0

    .line 3622
    add-double/2addr v0, v4

    .line 3623
    sget-object v4, Lcom/androidplot/xy/XYPlot$1;->b:[I

    iget-object v5, p0, Lcom/androidplot/xy/XYPlot;->b:Lcom/androidplot/xy/b;

    invoke-virtual {v5}, Lcom/androidplot/xy/b;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 3661
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Domain Origin Boundary Mode not yet supported: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->b:Lcom/androidplot/xy/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move-wide v0, v2

    .line 3620
    goto :goto_2

    .line 3625
    :pswitch_1
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/androidplot/xy/XYPlot;->p:Ljava/lang/Number;

    .line 3626
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    .line 2398
    :goto_3
    :pswitch_2
    sget-object v0, Lcom/androidplot/xy/XYPlot$1;->a:[I

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->G:Lcom/androidplot/xy/g;

    invoke-virtual {v1}, Lcom/androidplot/xy/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    .line 2412
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Range Framing Model not yet supported: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->F:Lcom/androidplot/xy/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3634
    :pswitch_3
    iget-object v4, p0, Lcom/androidplot/xy/XYPlot;->t:Ljava/lang/Number;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/androidplot/xy/XYPlot;->t:Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpg-double v4, v2, v4

    if-gez v4, :cond_10

    .line 3635
    :cond_e
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/androidplot/xy/XYPlot;->p:Ljava/lang/Number;

    .line 3640
    :goto_4
    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->u:Ljava/lang/Number;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->u:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double v2, v0, v2

    if-lez v2, :cond_11

    .line 3641
    :cond_f
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    goto :goto_3

    .line 3637
    :cond_10
    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->t:Ljava/lang/Number;

    iput-object v2, p0, Lcom/androidplot/xy/XYPlot;->p:Ljava/lang/Number;

    goto :goto_4

    .line 3643
    :cond_11
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->u:Ljava/lang/Number;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    goto :goto_3

    .line 3648
    :pswitch_4
    iget-object v4, p0, Lcom/androidplot/xy/XYPlot;->t:Ljava/lang/Number;

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/androidplot/xy/XYPlot;->t:Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpl-double v4, v2, v4

    if-lez v4, :cond_14

    .line 3649
    :cond_12
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/androidplot/xy/XYPlot;->p:Ljava/lang/Number;

    .line 3654
    :goto_5
    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->u:Ljava/lang/Number;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->u:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double v2, v0, v2

    if-gez v2, :cond_15

    .line 3655
    :cond_13
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    goto :goto_3

    .line 3651
    :cond_14
    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->t:Ljava/lang/Number;

    iput-object v2, p0, Lcom/androidplot/xy/XYPlot;->p:Ljava/lang/Number;

    goto :goto_5

    .line 3657
    :cond_15
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->u:Ljava/lang/Number;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    goto/16 :goto_3

    .line 4425
    :pswitch_5
    sget-object v0, Lcom/androidplot/xy/XYPlot$1;->b:[I

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->N:Lcom/androidplot/xy/b;

    invoke-virtual {v1}, Lcom/androidplot/xy/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    .line 4441
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DomainUpperBoundaryMode not yet implemented: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->N:Lcom/androidplot/xy/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4431
    :pswitch_6
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->u:Ljava/lang/Number;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->u:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_16

    .line 4432
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->u:Ljava/lang/Number;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    .line 4445
    :cond_16
    :goto_6
    :pswitch_7
    sget-object v0, Lcom/androidplot/xy/XYPlot$1;->b:[I

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->O:Lcom/androidplot/xy/b;

    invoke-virtual {v1}, Lcom/androidplot/xy/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4

    .line 4461
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DomainLowerBoundaryMode not supported: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->O:Lcom/androidplot/xy/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4436
    :pswitch_8
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->u:Ljava/lang/Number;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->u:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_16

    .line 4437
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->u:Ljava/lang/Number;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    goto :goto_6

    .line 4451
    :pswitch_9
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->t:Ljava/lang/Number;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->p:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->t:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_17

    .line 4452
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->t:Ljava/lang/Number;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->p:Ljava/lang/Number;

    .line 2388
    :cond_17
    :goto_7
    :pswitch_a
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->p:Ljava/lang/Number;

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->B:Ljava/lang/Number;

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->C:Ljava/lang/Number;

    invoke-static {v0, v1, v2}, Lcom/androidplot/xy/XYPlot;->a(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->p:Ljava/lang/Number;

    .line 2390
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->D:Ljava/lang/Number;

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->E:Ljava/lang/Number;

    invoke-static {v0, v1, v2}, Lcom/androidplot/xy/XYPlot;->a(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    goto/16 :goto_3

    .line 4456
    :pswitch_b
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->t:Ljava/lang/Number;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->p:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->t:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_17

    .line 4457
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->t:Ljava/lang/Number;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->p:Ljava/lang/Number;

    goto :goto_7

    .line 4666
    :pswitch_c
    sget-object v0, Lcom/androidplot/xy/XYPlot$1;->b:[I

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->c:Lcom/androidplot/xy/b;

    invoke-virtual {v1}, Lcom/androidplot/xy/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5

    .line 4683
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Range Origin Boundary Mode not yet supported: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->c:Lcom/androidplot/xy/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4668
    :pswitch_d
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->I:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 4669
    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->s:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lcom/androidplot/xy/XYPlot;->a(DD)D

    move-result-wide v2

    .line 4670
    iget-object v4, p0, Lcom/androidplot/xy/XYPlot;->r:Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5, v0, v1}, Lcom/androidplot/xy/XYPlot;->a(DD)D

    move-result-wide v4

    .line 4671
    cmpl-double v6, v2, v4

    if-lez v6, :cond_19

    .line 4672
    sub-double v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/androidplot/xy/XYPlot;->r:Ljava/lang/Number;

    .line 4673
    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->s:Ljava/lang/Number;

    .line 2416
    :cond_18
    :goto_8
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->H:Ljava/lang/Number;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->H:Ljava/lang/Number;

    :goto_9
    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->J:Ljava/lang/Number;

    .line 2417
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->I:Ljava/lang/Number;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->I:Ljava/lang/Number;

    :goto_a
    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->K:Ljava/lang/Number;

    .line 266
    return-void

    .line 4675
    :cond_19
    sub-double v2, v0, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/androidplot/xy/XYPlot;->r:Ljava/lang/Number;

    .line 4676
    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->s:Ljava/lang/Number;

    goto :goto_8

    .line 2403
    :pswitch_e
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getSeriesSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_18

    .line 5467
    sget-object v0, Lcom/androidplot/xy/XYPlot$1;->b:[I

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->P:Lcom/androidplot/xy/b;

    invoke-virtual {v1}, Lcom/androidplot/xy/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6

    .line 5483
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "RangeUpperBoundaryMode not supported: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->P:Lcom/androidplot/xy/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5473
    :pswitch_f
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->w:Ljava/lang/Number;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->s:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->w:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_1a

    .line 5474
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->w:Ljava/lang/Number;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->s:Ljava/lang/Number;

    .line 5487
    :cond_1a
    :goto_b
    :pswitch_10
    sget-object v0, Lcom/androidplot/xy/XYPlot$1;->b:[I

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->Q:Lcom/androidplot/xy/b;

    invoke-virtual {v1}, Lcom/androidplot/xy/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_7

    .line 5503
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "RangeLowerBoundaryMode not supported: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->Q:Lcom/androidplot/xy/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5478
    :pswitch_11
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->w:Ljava/lang/Number;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->s:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->w:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_1a

    .line 5479
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->w:Ljava/lang/Number;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->s:Ljava/lang/Number;

    goto :goto_b

    .line 5493
    :pswitch_12
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->v:Ljava/lang/Number;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->r:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->v:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_1b

    .line 5494
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->v:Ljava/lang/Number;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->r:Ljava/lang/Number;

    .line 2405
    :cond_1b
    :goto_c
    :pswitch_13
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->r:Ljava/lang/Number;

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->z:Ljava/lang/Number;

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->A:Ljava/lang/Number;

    invoke-static {v0, v1, v2}, Lcom/androidplot/xy/XYPlot;->a(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->r:Ljava/lang/Number;

    .line 2407
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->s:Ljava/lang/Number;

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->x:Ljava/lang/Number;

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->y:Ljava/lang/Number;

    invoke-static {v0, v1, v2}, Lcom/androidplot/xy/XYPlot;->a(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->s:Ljava/lang/Number;

    goto/16 :goto_8

    .line 5498
    :pswitch_14
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->v:Ljava/lang/Number;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->r:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->v:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_1b

    .line 5499
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->v:Ljava/lang/Number;

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->r:Ljava/lang/Number;

    goto :goto_c

    .line 2416
    :cond_1c
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getCalculatedMinX()Ljava/lang/Number;

    move-result-object v0

    goto/16 :goto_9

    .line 2417
    :cond_1d
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getCalculatedMinY()Ljava/lang/Number;

    move-result-object v0

    goto/16 :goto_a

    .line 2382
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 3623
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 2398
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_c
        :pswitch_e
    .end packed-switch

    .line 4425
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch

    .line 4445
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch

    .line 4666
    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_d
    .end packed-switch

    .line 5467
    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_11
    .end packed-switch

    .line 5487
    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_14
    .end packed-switch
.end method

.method public declared-synchronized a(Ljava/lang/Number;Lcom/androidplot/xy/b;Ljava/lang/Number;Lcom/androidplot/xy/b;)V
    .locals 1

    .prologue
    .line 875
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/androidplot/xy/XYPlot;->b(Ljava/lang/Number;Lcom/androidplot/xy/b;)V

    .line 876
    invoke-direct {p0, p3, p4}, Lcom/androidplot/xy/XYPlot;->a(Ljava/lang/Number;Lcom/androidplot/xy/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 877
    monitor-exit p0

    return-void

    .line 875
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/b;)V
    .locals 1

    .prologue
    .line 862
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p3, p2, p3}, Lcom/androidplot/xy/XYPlot;->a(Ljava/lang/Number;Lcom/androidplot/xy/b;Ljava/lang/Number;Lcom/androidplot/xy/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 863
    monitor-exit p0

    return-void

    .line 862
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/Number;Lcom/androidplot/xy/b;Ljava/lang/Number;Lcom/androidplot/xy/b;)V
    .locals 1

    .prologue
    .line 900
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/androidplot/xy/XYPlot;->d(Ljava/lang/Number;Lcom/androidplot/xy/b;)V

    .line 901
    invoke-direct {p0, p3, p4}, Lcom/androidplot/xy/XYPlot;->c(Ljava/lang/Number;Lcom/androidplot/xy/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 902
    monitor-exit p0

    return-void

    .line 900
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/b;)V
    .locals 1

    .prologue
    .line 887
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p3, p2, p3}, Lcom/androidplot/xy/XYPlot;->b(Ljava/lang/Number;Lcom/androidplot/xy/b;Ljava/lang/Number;Lcom/androidplot/xy/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    monitor-exit p0

    return-void

    .line 887
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCalculatedMaxX()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->q:Ljava/lang/Number;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getDefaultBounds()Lcom/androidplot/xy/c;

    move-result-object v0

    .line 11151
    iget-object v0, v0, Lcom/androidplot/xy/c;->a:Lcom/androidplot/a;

    .line 12092
    iget-object v0, v0, Lcom/androidplot/a;->b:Ljava/lang/Number;

    goto :goto_0
.end method

.method public getCalculatedMaxY()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->s:Ljava/lang/Number;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->s:Ljava/lang/Number;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getDefaultBounds()Lcom/androidplot/xy/c;

    move-result-object v0

    .line 13167
    iget-object v0, v0, Lcom/androidplot/xy/c;->b:Lcom/androidplot/a;

    .line 14092
    iget-object v0, v0, Lcom/androidplot/a;->b:Ljava/lang/Number;

    goto :goto_0
.end method

.method public getCalculatedMinX()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->p:Ljava/lang/Number;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->p:Ljava/lang/Number;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getDefaultBounds()Lcom/androidplot/xy/c;

    move-result-object v0

    .line 10143
    iget-object v0, v0, Lcom/androidplot/xy/c;->a:Lcom/androidplot/a;

    .line 11081
    iget-object v0, v0, Lcom/androidplot/a;->a:Ljava/lang/Number;

    goto :goto_0
.end method

.method public getCalculatedMinY()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->r:Ljava/lang/Number;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->r:Ljava/lang/Number;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getDefaultBounds()Lcom/androidplot/xy/c;

    move-result-object v0

    .line 12159
    iget-object v0, v0, Lcom/androidplot/xy/c;->b:Lcom/androidplot/a;

    .line 13081
    iget-object v0, v0, Lcom/androidplot/a;->a:Ljava/lang/Number;

    goto :goto_0
.end method

.method public getDefaultBounds()Lcom/androidplot/xy/c;
    .locals 1

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->V:Lcom/androidplot/xy/c;

    return-object v0
.end method

.method public getDomainFramingModel()Lcom/androidplot/xy/g;
    .locals 1

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->F:Lcom/androidplot/xy/g;

    return-object v0
.end method

.method public getDomainLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getDomainLabelWidget()Lcom/androidplot/b/a/a;

    move-result-object v0

    .line 8187
    iget-object v0, v0, Lcom/androidplot/b/a/a;->a:Ljava/lang/String;

    .line 771
    return-object v0
.end method

.method public getDomainLabelWidget()Lcom/androidplot/b/a/a;
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->f:Lcom/androidplot/b/a/a;

    return-object v0
.end method

.method public getDomainLeftMax()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->C:Ljava/lang/Number;

    return-object v0
.end method

.method public getDomainLeftMin()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->B:Ljava/lang/Number;

    return-object v0
.end method

.method protected getDomainLowerBoundaryMode()Lcom/androidplot/xy/b;
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->O:Lcom/androidplot/xy/b;

    return-object v0
.end method

.method public getDomainOrigin()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->J:Ljava/lang/Number;

    return-object v0
.end method

.method public getDomainRightMax()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->E:Ljava/lang/Number;

    return-object v0
.end method

.method public getDomainRightMin()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->D:Ljava/lang/Number;

    return-object v0
.end method

.method public getDomainStepMode$5df76715()I
    .locals 1

    .prologue
    .line 729
    iget v0, p0, Lcom/androidplot/xy/XYPlot;->h:I

    return v0
.end method

.method public getDomainStepValue()D
    .locals 2

    .prologue
    .line 737
    iget-wide v0, p0, Lcom/androidplot/xy/XYPlot;->i:D

    return-wide v0
.end method

.method protected getDomainUpperBoundaryMode()Lcom/androidplot/xy/b;
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->N:Lcom/androidplot/xy/b;

    return-object v0
.end method

.method public getDomainValueFormat()Ljava/text/Format;
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->e:Lcom/androidplot/xy/h;

    .line 10042
    iget-object v0, v0, Lcom/androidplot/xy/h;->m:Ljava/text/Format;

    .line 842
    return-object v0
.end method

.method public getGraphWidget()Lcom/androidplot/xy/h;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->e:Lcom/androidplot/xy/h;

    return-object v0
.end method

.method public getLegendWidget()Lcom/androidplot/xy/i;
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->d:Lcom/androidplot/xy/i;

    return-object v0
.end method

.method public getRangeBottomMax()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->A:Ljava/lang/Number;

    return-object v0
.end method

.method public getRangeBottomMin()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->z:Ljava/lang/Number;

    return-object v0
.end method

.method public getRangeFramingModel()Lcom/androidplot/xy/g;
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->G:Lcom/androidplot/xy/g;

    return-object v0
.end method

.method public getRangeLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 779
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getRangeLabelWidget()Lcom/androidplot/b/a/a;

    move-result-object v0

    .line 9187
    iget-object v0, v0, Lcom/androidplot/b/a/a;->a:Ljava/lang/String;

    .line 779
    return-object v0
.end method

.method public getRangeLabelWidget()Lcom/androidplot/b/a/a;
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->g:Lcom/androidplot/b/a/a;

    return-object v0
.end method

.method protected getRangeLowerBoundaryMode()Lcom/androidplot/xy/b;
    .locals 1

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->Q:Lcom/androidplot/xy/b;

    return-object v0
.end method

.method public getRangeOrigin()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->K:Ljava/lang/Number;

    return-object v0
.end method

.method public getRangeStepMode$5df76715()I
    .locals 1

    .prologue
    .line 750
    iget v0, p0, Lcom/androidplot/xy/XYPlot;->j:I

    return v0
.end method

.method public getRangeStepValue()D
    .locals 2

    .prologue
    .line 758
    iget-wide v0, p0, Lcom/androidplot/xy/XYPlot;->k:D

    return-wide v0
.end method

.method public getRangeTopMax()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->y:Ljava/lang/Number;

    return-object v0
.end method

.method public getRangeTopMin()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->x:Ljava/lang/Number;

    return-object v0
.end method

.method protected getRangeUpperBoundaryMode()Lcom/androidplot/xy/b;
    .locals 1

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->P:Lcom/androidplot/xy/b;

    return-object v0
.end method

.method public getRangeValueFormat()Ljava/text/Format;
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->e:Lcom/androidplot/xy/h;

    .line 10034
    iget-object v0, v0, Lcom/androidplot/xy/h;->l:Ljava/text/Format;

    .line 824
    return-object v0
.end method

.method public getTicksPerDomainLabel()I
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->e:Lcom/androidplot/xy/h;

    .line 8074
    iget v0, v0, Lcom/androidplot/xy/h;->j:I

    .line 715
    return v0
.end method

.method public getTicksPerRangeLabel()I
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->e:Lcom/androidplot/xy/h;

    .line 8066
    iget v0, v0, Lcom/androidplot/xy/h;->a:I

    .line 695
    return v0
.end method

.method protected getXValueMarkers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/androidplot/xy/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->U:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getYValueMarkers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/androidplot/xy/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->T:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setCursorPosition(Landroid/graphics/PointF;)V
    .locals 3

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getGraphWidget()Lcom/androidplot/xy/h;

    move-result-object v0

    .line 6158
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    .line 7170
    iput v1, v0, Lcom/androidplot/xy/h;->n:F

    .line 7182
    iput v2, v0, Lcom/androidplot/xy/h;->o:F

    .line 295
    return-void
.end method

.method public setDefaultBounds(Lcom/androidplot/xy/c;)V
    .locals 0

    .prologue
    .line 1230
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->V:Lcom/androidplot/xy/c;

    .line 1231
    return-void
.end method

.method protected setDomainFramingModel(Lcom/androidplot/xy/g;)V
    .locals 0

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->F:Lcom/androidplot/xy/g;

    .line 1066
    return-void
.end method

.method public setDomainLabel(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getDomainLabelWidget()Lcom/androidplot/b/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/b/a/a;->a(Ljava/lang/String;)V

    .line 776
    return-void
.end method

.method public setDomainLabelWidget(Lcom/androidplot/b/a/a;)V
    .locals 0

    .prologue
    .line 807
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->f:Lcom/androidplot/b/a/a;

    .line 808
    return-void
.end method

.method public declared-synchronized setDomainLeftMax(Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 1314
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->C:Ljava/lang/Number;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1315
    monitor-exit p0

    return-void

    .line 1314
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDomainLeftMin(Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 1300
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->B:Ljava/lang/Number;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1301
    monitor-exit p0

    return-void

    .line 1300
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setDomainLowerBoundaryMode(Lcom/androidplot/xy/b;)V
    .locals 1

    .prologue
    .line 930
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->O:Lcom/androidplot/xy/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 931
    monitor-exit p0

    return-void

    .line 930
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDomainRightMax(Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 1342
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->E:Ljava/lang/Number;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1343
    monitor-exit p0

    return-void

    .line 1342
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDomainRightMin(Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 1328
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->D:Ljava/lang/Number;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1329
    monitor-exit p0

    return-void

    .line 1328
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDomainStepMode$6ebc40db(I)V
    .locals 0

    .prologue
    .line 733
    iput p1, p0, Lcom/androidplot/xy/XYPlot;->h:I

    .line 734
    return-void
.end method

.method public setDomainStepValue(D)V
    .locals 1

    .prologue
    .line 741
    iput-wide p1, p0, Lcom/androidplot/xy/XYPlot;->i:D

    .line 742
    return-void
.end method

.method protected declared-synchronized setDomainUpperBoundaryMode(Lcom/androidplot/xy/b;)V
    .locals 1

    .prologue
    .line 905
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->N:Lcom/androidplot/xy/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 906
    monitor-exit p0

    return-void

    .line 905
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDomainValueFormat(Ljava/text/Format;)V
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->e:Lcom/androidplot/xy/h;

    .line 10046
    iput-object p1, v0, Lcom/androidplot/xy/h;->m:Ljava/text/Format;

    .line 852
    return-void
.end method

.method public setDrawDomainOriginEnabled(Z)V
    .locals 0

    .prologue
    .line 1119
    iput-boolean p1, p0, Lcom/androidplot/xy/XYPlot;->R:Z

    .line 1120
    return-void
.end method

.method public setDrawRangeOriginEnabled(Z)V
    .locals 0

    .prologue
    .line 1127
    iput-boolean p1, p0, Lcom/androidplot/xy/XYPlot;->S:Z

    .line 1128
    return-void
.end method

.method public setGraphWidget(Lcom/androidplot/xy/h;)V
    .locals 0

    .prologue
    .line 799
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->e:Lcom/androidplot/xy/h;

    .line 800
    return-void
.end method

.method public setLegendWidget(Lcom/androidplot/xy/i;)V
    .locals 0

    .prologue
    .line 791
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->d:Lcom/androidplot/xy/i;

    .line 792
    return-void
.end method

.method public declared-synchronized setRangeBottomMax(Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 1286
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->A:Ljava/lang/Number;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1287
    monitor-exit p0

    return-void

    .line 1286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRangeBottomMin(Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 1272
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->z:Ljava/lang/Number;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1273
    monitor-exit p0

    return-void

    .line 1272
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected setRangeFramingModel(Lcom/androidplot/xy/g;)V
    .locals 0

    .prologue
    .line 1075
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->G:Lcom/androidplot/xy/g;

    .line 1076
    return-void
.end method

.method public setRangeLabel(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 783
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getRangeLabelWidget()Lcom/androidplot/b/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/b/a/a;->a(Ljava/lang/String;)V

    .line 784
    return-void
.end method

.method public setRangeLabelWidget(Lcom/androidplot/b/a/a;)V
    .locals 0

    .prologue
    .line 815
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->g:Lcom/androidplot/b/a/a;

    .line 816
    return-void
.end method

.method protected declared-synchronized setRangeLowerBoundaryMode(Lcom/androidplot/xy/b;)V
    .locals 1

    .prologue
    .line 981
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->Q:Lcom/androidplot/xy/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 982
    monitor-exit p0

    return-void

    .line 981
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRangeStepMode$6ebc40db(I)V
    .locals 0

    .prologue
    .line 754
    iput p1, p0, Lcom/androidplot/xy/XYPlot;->j:I

    .line 755
    return-void
.end method

.method public setRangeStepValue(D)V
    .locals 1

    .prologue
    .line 762
    iput-wide p1, p0, Lcom/androidplot/xy/XYPlot;->k:D

    .line 763
    return-void
.end method

.method public declared-synchronized setRangeTopMax(Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 1258
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->y:Ljava/lang/Number;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1259
    monitor-exit p0

    return-void

    .line 1258
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRangeTopMin(Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 1244
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->x:Ljava/lang/Number;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1245
    monitor-exit p0

    return-void

    .line 1244
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setRangeUpperBoundaryMode(Lcom/androidplot/xy/b;)V
    .locals 1

    .prologue
    .line 956
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->P:Lcom/androidplot/xy/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 957
    monitor-exit p0

    return-void

    .line 956
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRangeValueFormat(Ljava/text/Format;)V
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->e:Lcom/androidplot/xy/h;

    .line 10038
    iput-object p1, v0, Lcom/androidplot/xy/h;->l:Ljava/text/Format;

    .line 834
    return-void
.end method

.method public setTicksPerDomainLabel(I)V
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->e:Lcom/androidplot/xy/h;

    .line 8078
    iput p1, v0, Lcom/androidplot/xy/h;->j:I

    .line 726
    return-void
.end method

.method public setTicksPerRangeLabel(I)V
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->e:Lcom/androidplot/xy/h;

    .line 8070
    iput p1, v0, Lcom/androidplot/xy/h;->a:I

    .line 706
    return-void
.end method

.method public declared-synchronized setUserDomainOrigin(Ljava/lang/Number;)V
    .locals 2

    .prologue
    .line 1046
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1047
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Origin value cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1046
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1049
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->H:Ljava/lang/Number;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1050
    monitor-exit p0

    return-void
.end method

.method protected declared-synchronized setUserMaxX(Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 914
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->m:Ljava/lang/Number;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 915
    monitor-exit p0

    return-void

    .line 914
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setUserMaxY(Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 965
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->o:Ljava/lang/Number;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 966
    monitor-exit p0

    return-void

    .line 965
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setUserMinX(Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 939
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->l:Ljava/lang/Number;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 940
    monitor-exit p0

    return-void

    .line 939
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setUserMinY(Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 990
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->n:Ljava/lang/Number;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 991
    monitor-exit p0

    return-void

    .line 990
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserRangeOrigin(Ljava/lang/Number;)V
    .locals 2

    .prologue
    .line 1053
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1054
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Origin value cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1053
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1056
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->I:Ljava/lang/Number;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1057
    monitor-exit p0

    return-void
.end method
