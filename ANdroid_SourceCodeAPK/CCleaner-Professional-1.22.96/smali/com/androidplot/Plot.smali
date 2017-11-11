.class public abstract Lcom/androidplot/Plot;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/Plot$2;,
        Lcom/androidplot/Plot$b;,
        Lcom/androidplot/Plot$c;,
        Lcom/androidplot/Plot$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SeriesType::",
        "Lcom/androidplot/b;",
        "FormatterType:",
        "Lcom/androidplot/b/d;",
        "RendererType:",
        "Lcom/androidplot/b/j;",
        ">",
        "Landroid/view/View;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field public a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Class;",
            "Lcom/androidplot/b/i",
            "<TSeriesType;TFormatterType;>;>;"
        }
    .end annotation
.end field

.field private c:Lcom/androidplot/b/b;

.field private d:I

.field private e:F

.field private f:F

.field private g:Z

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Paint;

.field private j:Lcom/androidplot/b/e;

.field private k:Lcom/androidplot/b/a/a;

.field private l:Lcom/androidplot/c/b;

.field private m:Lcom/androidplot/Plot$c;

.field private final n:Lcom/androidplot/Plot$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/androidplot/Plot",
            "<TSeriesType;TFormatterType;TRendererType;>.b;"
        }
    .end annotation
.end field

.field private final o:Ljava/lang/Object;

.field private p:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TRendererType;>;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/lang/Thread;

.field private s:Z

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/androidplot/Plot;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/androidplot/Plot;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const/high16 v5, 0x41700000    # 15.0f

    const/4 v1, 0x0

    const/16 v4, 0x96

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 269
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    new-instance v0, Lcom/androidplot/b/b;

    invoke-direct {v0, v2}, Lcom/androidplot/b/b;-><init>(B)V

    iput-object v0, p0, Lcom/androidplot/Plot;->c:Lcom/androidplot/b/b;

    .line 109
    sget v0, Lcom/androidplot/Plot$a;->b:I

    iput v0, p0, Lcom/androidplot/Plot;->d:I

    .line 110
    iput v5, p0, Lcom/androidplot/Plot;->e:F

    .line 111
    iput v5, p0, Lcom/androidplot/Plot;->f:F

    .line 112
    iput-boolean v3, p0, Lcom/androidplot/Plot;->g:Z

    .line 117
    new-instance v0, Lcom/androidplot/c/b;

    invoke-direct {v0}, Lcom/androidplot/c/b;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->l:Lcom/androidplot/c/b;

    .line 118
    sget-object v0, Lcom/androidplot/Plot$c;->b:Lcom/androidplot/Plot$c;

    iput-object v0, p0, Lcom/androidplot/Plot;->m:Lcom/androidplot/Plot$c;

    .line 119
    new-instance v0, Lcom/androidplot/Plot$b;

    invoke-direct {v0, p0, v2}, Lcom/androidplot/Plot$b;-><init>(Lcom/androidplot/Plot;B)V

    iput-object v0, p0, Lcom/androidplot/Plot;->n:Lcom/androidplot/Plot$b;

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->o:Ljava/lang/Object;

    .line 138
    iput-boolean v2, p0, Lcom/androidplot/Plot;->s:Z

    .line 139
    iput-boolean v3, p0, Lcom/androidplot/Plot;->t:Z

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->q:Ljava/util/ArrayList;

    .line 143
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->a:Ljava/util/LinkedHashMap;

    .line 144
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->p:Ljava/util/LinkedList;

    .line 145
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->h:Landroid/graphics/Paint;

    .line 146
    iget-object v0, p0, Lcom/androidplot/Plot;->h:Landroid/graphics/Paint;

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    iget-object v0, p0, Lcom/androidplot/Plot;->h:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 148
    iget-object v0, p0, Lcom/androidplot/Plot;->h:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 149
    iget-object v0, p0, Lcom/androidplot/Plot;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 150
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->i:Landroid/graphics/Paint;

    .line 151
    iget-object v0, p0, Lcom/androidplot/Plot;->i:Landroid/graphics/Paint;

    const v2, -0xbbbbbc

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    iget-object v0, p0, Lcom/androidplot/Plot;->i:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1303
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/androidplot/c/f;->a(Landroid/content/Context;)V

    .line 1304
    new-instance v0, Lcom/androidplot/b/e;

    invoke-direct {v0}, Lcom/androidplot/b/e;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->j:Lcom/androidplot/b/e;

    .line 1305
    new-instance v0, Lcom/androidplot/b/a/a;

    iget-object v2, p0, Lcom/androidplot/Plot;->j:Lcom/androidplot/b/e;

    new-instance v3, Lcom/androidplot/b/m;

    const/high16 v4, 0x41c80000    # 25.0f

    sget-object v5, Lcom/androidplot/b/k;->a:Lcom/androidplot/b/k;

    const/high16 v6, 0x42c80000    # 100.0f

    sget-object v7, Lcom/androidplot/b/k;->a:Lcom/androidplot/b/k;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/androidplot/b/m;-><init>(FLcom/androidplot/b/k;FLcom/androidplot/b/k;)V

    sget-object v4, Lcom/androidplot/b/p;->a:Lcom/androidplot/b/p;

    invoke-direct {v0, v2, v3, v4}, Lcom/androidplot/b/a/a;-><init>(Lcom/androidplot/b/e;Lcom/androidplot/b/m;Lcom/androidplot/b/p;)V

    iput-object v0, p0, Lcom/androidplot/Plot;->k:Lcom/androidplot/b/a/a;

    .line 1309
    iget-object v0, p0, Lcom/androidplot/Plot;->k:Lcom/androidplot/b/a/a;

    sget-object v2, Lcom/androidplot/b/q;->f:Lcom/androidplot/b/q;

    sget-object v4, Lcom/androidplot/b/s;->a:Lcom/androidplot/b/s;

    sget-object v5, Lcom/androidplot/b/a;->a:Lcom/androidplot/b/a;

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/b/a/a;->a(FLcom/androidplot/b/q;FLcom/androidplot/b/s;Lcom/androidplot/b/a;)V

    .line 1312
    invoke-virtual {p0}, Lcom/androidplot/Plot;->a()V

    .line 1314
    iget-object v0, p0, Lcom/androidplot/Plot;->j:Lcom/androidplot/b/e;

    iget-object v1, p0, Lcom/androidplot/Plot;->k:Lcom/androidplot/b/a/a;

    invoke-virtual {v0, v1}, Lcom/androidplot/b/e;->a(Ljava/lang/Object;)Z

    .line 1315
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1316
    invoke-direct {p0, p2}, Lcom/androidplot/Plot;->a(Landroid/util/AttributeSet;)V

    .line 1319
    :cond_0
    iget-object v0, p0, Lcom/androidplot/Plot;->j:Lcom/androidplot/b/e;

    invoke-virtual {v0}, Lcom/androidplot/b/e;->b_()V

    .line 1321
    iget-object v0, p0, Lcom/androidplot/Plot;->m:Lcom/androidplot/Plot$c;

    sget-object v1, Lcom/androidplot/Plot$c;->a:Lcom/androidplot/Plot$c;

    if-ne v0, v1, :cond_1

    .line 1322
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/androidplot/Plot$1;

    invoke-direct {v1, p0}, Lcom/androidplot/Plot$1;-><init>(Lcom/androidplot/Plot;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/androidplot/Plot;->r:Ljava/lang/Thread;

    .line 271
    :cond_1
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    .line 360
    if-eqz p1, :cond_2

    .line 362
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 363
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 364
    invoke-interface {p1, v0}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 367
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "androidplot"

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 368
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_1
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, v1}, Lcom/androidplot/c/a;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/util/HashMap;)V

    .line 373
    :cond_2
    return-void
.end method

.method private declared-synchronized a(Lcom/androidplot/c/b;)V
    .locals 4

    .prologue
    .line 564
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/Plot;->l:Lcom/androidplot/c/b;

    .line 565
    iget-object v1, p0, Lcom/androidplot/Plot;->j:Lcom/androidplot/b/e;

    iget-object v0, p0, Lcom/androidplot/Plot;->l:Lcom/androidplot/c/b;

    .line 2264
    iput-object v0, v1, Lcom/androidplot/b/e;->k:Lcom/androidplot/c/b;

    .line 4065
    iget-object v0, v1, Lcom/androidplot/c/j;->l:Lcom/androidplot/c/d;

    .line 4110
    iget-object v0, v0, Lcom/androidplot/c/d;->a:Ljava/util/List;

    .line 3257
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/b/a/b;

    .line 3258
    iget-object v3, v1, Lcom/androidplot/b/e;->k:Lcom/androidplot/c/b;

    invoke-virtual {v0, v3}, Lcom/androidplot/b/a/b;->a(Lcom/androidplot/c/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 564
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 566
    :cond_0
    monitor-exit p0

    return-void
.end method

.method static synthetic a(Lcom/androidplot/Plot;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/androidplot/Plot;->s:Z

    return v0
.end method

.method static synthetic a(Lcom/androidplot/Plot;Z)Z
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/androidplot/Plot;->s:Z

    return p1
.end method

.method static synthetic b(Lcom/androidplot/Plot;)Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/androidplot/Plot;->t:Z

    return v0
.end method

.method static synthetic c(Lcom/androidplot/Plot;)Lcom/androidplot/Plot$b;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/androidplot/Plot;->n:Lcom/androidplot/Plot$b;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/androidplot/Plot;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 397
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/androidplot/Plot;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/androidplot/Plot;->o:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/androidplot/b/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Lcom/androidplot/b/i",
            "<TSeriesType;TFormatterType;>;"
        }
    .end annotation

    .prologue
    .line 486
    iget-object v0, p0, Lcom/androidplot/Plot;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/b/i;

    return-object v0
.end method

.method public abstract a()V
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/androidplot/Plot;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 391
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 539
    iget-object v0, p0, Lcom/androidplot/Plot;->m:Lcom/androidplot/Plot$c;

    sget-object v1, Lcom/androidplot/Plot$c;->a:Lcom/androidplot/Plot$c;

    if-ne v0, v1, :cond_1

    .line 544
    iget-boolean v0, p0, Lcom/androidplot/Plot;->t:Z

    if-eqz v0, :cond_0

    .line 545
    iget-object v1, p0, Lcom/androidplot/Plot;->o:Ljava/lang/Object;

    monitor-enter v1

    .line 546
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/Plot;->o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 547
    monitor-exit v1

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 547
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/androidplot/Plot;->m:Lcom/androidplot/Plot$c;

    sget-object v1, Lcom/androidplot/Plot$c;->b:Lcom/androidplot/Plot$c;

    if-ne v0, v1, :cond_3

    .line 552
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 553
    invoke-virtual {p0}, Lcom/androidplot/Plot;->invalidate()V

    goto :goto_0

    .line 555
    :cond_2
    invoke-virtual {p0}, Lcom/androidplot/Plot;->postInvalidate()V

    goto :goto_0

    .line 558
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unsupported Render Mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/androidplot/Plot;->m:Lcom/androidplot/Plot$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final declared-synchronized b(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/high16 v10, 0x40800000    # 4.0f

    .line 641
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/androidplot/Plot;->a(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 647
    iget-object v0, p0, Lcom/androidplot/Plot;->i:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/androidplot/Plot;->l:Lcom/androidplot/c/b;

    iget-object v0, v0, Lcom/androidplot/c/b;->b:Landroid/graphics/RectF;

    .line 4707
    sget-object v1, Lcom/androidplot/Plot$2;->a:[I

    iget v2, p0, Lcom/androidplot/Plot;->d:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 651
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/androidplot/Plot;->j:Lcom/androidplot/b/e;

    .line 5191
    iget-boolean v0, v6, Lcom/androidplot/b/e;->g:Z

    .line 5083
    if-eqz v0, :cond_1

    .line 5084
    iget-object v0, v6, Lcom/androidplot/b/e;->k:Lcom/androidplot/c/b;

    iget-object v0, v0, Lcom/androidplot/c/b;->a:Landroid/graphics/RectF;

    iget-object v1, v6, Lcom/androidplot/b/e;->k:Lcom/androidplot/c/b;

    iget-object v1, v1, Lcom/androidplot/c/b;->b:Landroid/graphics/RectF;

    iget-object v2, v6, Lcom/androidplot/b/e;->h:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1, v2}, Lcom/androidplot/b/e;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 5207
    :cond_1
    iget-boolean v0, v6, Lcom/androidplot/b/e;->i:Z

    .line 5086
    if-eqz v0, :cond_2

    .line 5087
    iget-object v0, v6, Lcom/androidplot/b/e;->k:Lcom/androidplot/c/b;

    iget-object v0, v0, Lcom/androidplot/c/b;->b:Landroid/graphics/RectF;

    iget-object v1, v6, Lcom/androidplot/b/e;->k:Lcom/androidplot/c/b;

    iget-object v1, v1, Lcom/androidplot/c/b;->c:Landroid/graphics/RectF;

    iget-object v2, v6, Lcom/androidplot/b/e;->j:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1, v2}, Lcom/androidplot/b/e;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 6065
    :cond_2
    iget-object v0, v6, Lcom/androidplot/c/j;->l:Lcom/androidplot/c/d;

    .line 6110
    iget-object v0, v0, Lcom/androidplot/c/d;->a:Ljava/util/List;

    .line 5089
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/b/a/b;
    :try_end_1
    .catch Lcom/androidplot/a/a; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5092
    const/16 v1, 0x1f

    :try_start_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 6397
    iget-object v1, v0, Lcom/androidplot/b/a/b;->i:Lcom/androidplot/b/h;

    .line 5094
    iget-object v2, v6, Lcom/androidplot/b/e;->k:Lcom/androidplot/c/b;

    iget-object v2, v2, Lcom/androidplot/c/b;->c:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/androidplot/b/a/b;->a(F)F

    move-result v2

    .line 5095
    iget-object v3, v6, Lcom/androidplot/b/e;->k:Lcom/androidplot/c/b;

    iget-object v3, v3, Lcom/androidplot/c/b;->c:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/androidplot/b/a/b;->b(F)F

    move-result v3

    .line 5096
    iget-object v4, v6, Lcom/androidplot/b/e;->k:Lcom/androidplot/c/b;

    iget-object v4, v4, Lcom/androidplot/c/b;->c:Landroid/graphics/RectF;

    invoke-static {v3, v2, v4, v1}, Lcom/androidplot/b/a/b;->a(FFLandroid/graphics/RectF;Lcom/androidplot/b/h;)Landroid/graphics/PointF;

    move-result-object v4

    .line 7056
    iget-object v8, v0, Lcom/androidplot/b/a/b;->g:Lcom/androidplot/c/b;

    .line 5104
    iget-boolean v5, v6, Lcom/androidplot/b/e;->e:Z

    if-eqz v5, :cond_3

    .line 5105
    iget-object v5, v8, Lcom/androidplot/c/b;->a:Landroid/graphics/RectF;

    iget-object v9, v6, Lcom/androidplot/b/e;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 7381
    :cond_3
    iget-boolean v5, v0, Lcom/androidplot/b/a/b;->d:Z

    .line 5111
    if-eqz v5, :cond_4

    .line 5114
    iget-object v5, v8, Lcom/androidplot/c/b;->a:Landroid/graphics/RectF;

    sget-object v9, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v5, v9}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 5116
    :cond_4
    iget-object v5, v8, Lcom/androidplot/c/b;->a:Landroid/graphics/RectF;

    .line 8389
    iget-boolean v5, v0, Lcom/androidplot/b/a/b;->h:Z

    .line 8330
    if-eqz v5, :cond_6

    .line 8331
    iget-object v5, v0, Lcom/androidplot/b/a/b;->c:Landroid/graphics/Paint;

    if-eqz v5, :cond_5

    .line 8332
    iget-object v5, v0, Lcom/androidplot/b/a/b;->g:Lcom/androidplot/c/b;

    iget-object v5, v5, Lcom/androidplot/c/b;->a:Landroid/graphics/RectF;

    .line 9355
    iget-object v9, v0, Lcom/androidplot/b/a/b;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 8342
    :cond_5
    iget-object v5, v0, Lcom/androidplot/b/a/b;->g:Lcom/androidplot/c/b;

    iget-object v5, v5, Lcom/androidplot/c/b;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, v5}, Lcom/androidplot/b/a/b;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 8344
    iget-object v5, v0, Lcom/androidplot/b/a/b;->b:Landroid/graphics/Paint;

    if-eqz v5, :cond_6

    .line 8345
    iget-object v5, v0, Lcom/androidplot/b/a/b;->g:Lcom/androidplot/c/b;

    iget-object v5, v5, Lcom/androidplot/c/b;->c:Landroid/graphics/RectF;

    .line 10351
    iget-object v0, v0, Lcom/androidplot/b/a/b;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 5121
    :cond_6
    iget-boolean v0, v6, Lcom/androidplot/b/e;->g:Z

    if-eqz v0, :cond_7

    .line 5122
    iget-object v0, v8, Lcom/androidplot/c/b;->a:Landroid/graphics/RectF;

    iget-object v5, v8, Lcom/androidplot/c/b;->b:Landroid/graphics/RectF;

    .line 11199
    iget-object v9, v6, Lcom/androidplot/b/e;->h:Landroid/graphics/Paint;

    .line 5122
    invoke-static {p1, v0, v5, v9}, Lcom/androidplot/b/e;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 5125
    :cond_7
    iget-boolean v0, v6, Lcom/androidplot/b/e;->i:Z

    if-eqz v0, :cond_8

    .line 5126
    iget-object v0, v8, Lcom/androidplot/c/b;->b:Landroid/graphics/RectF;

    iget-object v5, v8, Lcom/androidplot/c/b;->c:Landroid/graphics/RectF;

    .line 11215
    iget-object v9, v6, Lcom/androidplot/b/e;->j:Landroid/graphics/Paint;

    .line 5126
    invoke-static {p1, v0, v5, v9}, Lcom/androidplot/b/e;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 5129
    :cond_8
    iget-boolean v0, v6, Lcom/androidplot/b/e;->a:Z

    if-eqz v0, :cond_9

    .line 5130
    iget v0, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 12042
    iget-object v1, v1, Lcom/androidplot/b/h;->c:Lcom/androidplot/b/a;

    .line 12325
    new-instance v5, Landroid/graphics/RectF;

    add-float/2addr v2, v0

    add-float/2addr v3, v4

    invoke-direct {v5, v0, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v5, v1}, Lcom/androidplot/b/a/b;->a(Landroid/graphics/RectF;Lcom/androidplot/b/a;)Landroid/graphics/PointF;

    move-result-object v0

    .line 13162
    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v10

    iget v2, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v10

    iget v3, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v10

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float v4, v0, v10

    iget-object v5, v6, Lcom/androidplot/b/e;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 5137
    :cond_9
    iget-boolean v0, v6, Lcom/androidplot/b/e;->c:Z

    if-eqz v0, :cond_a

    .line 5138
    iget-object v0, v6, Lcom/androidplot/b/e;->d:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5139
    iget-object v0, v8, Lcom/androidplot/c/b;->a:Landroid/graphics/RectF;

    iget-object v1, v6, Lcom/androidplot/b/e;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 5143
    :cond_a
    :try_start_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_3
    .catch Lcom/androidplot/a/a; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 656
    :catch_0
    move-exception v0

    .line 657
    :try_start_4
    sget-object v1, Lcom/androidplot/Plot;->b:Ljava/lang/String;

    const-string/jumbo v2, "Exception while rendering Plot."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 658
    invoke-virtual {v0}, Lcom/androidplot/a/a;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 663
    :cond_b
    :goto_2
    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p0, Lcom/androidplot/Plot;->t:Z

    .line 667
    invoke-direct {p0}, Lcom/androidplot/Plot;->c()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 668
    monitor-exit p0

    return-void

    .line 4709
    :pswitch_0
    :try_start_6
    iget v1, p0, Lcom/androidplot/Plot;->e:F

    iget v2, p0, Lcom/androidplot/Plot;->f:F

    iget-object v3, p0, Lcom/androidplot/Plot;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    :try_end_6
    .catch Lcom/androidplot/a/a; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 659
    :catch_1
    move-exception v0

    .line 660
    :try_start_7
    sget-object v1, Lcom/androidplot/Plot;->b:Ljava/lang/String;

    const-string/jumbo v2, "Exception while rendering Plot."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 663
    :catchall_0
    move-exception v0

    const/4 v1, 0x1

    :try_start_8
    iput-boolean v1, p0, Lcom/androidplot/Plot;->t:Z

    .line 667
    invoke-direct {p0}, Lcom/androidplot/Plot;->c()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 641
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 4712
    :pswitch_1
    :try_start_9
    iget-object v1, p0, Lcom/androidplot/Plot;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 5143
    :catchall_2
    move-exception v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    throw v0

    .line 653
    :cond_c
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getBorderPaint()Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 654
    iget-object v0, p0, Lcom/androidplot/Plot;->l:Lcom/androidplot/c/b;

    iget-object v0, v0, Lcom/androidplot/c/b;->b:Landroid/graphics/RectF;

    .line 13695
    sget-object v1, Lcom/androidplot/Plot$2;->a:[I

    iget v2, p0, Lcom/androidplot/Plot;->d:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_2

    .line 13697
    :pswitch_2
    iget v1, p0, Lcom/androidplot/Plot;->e:F

    iget v2, p0, Lcom/androidplot/Plot;->f:F

    iget-object v3, p0, Lcom/androidplot/Plot;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 13700
    :pswitch_3
    iget-object v1, p0, Lcom/androidplot/Plot;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_9
    .catch Lcom/androidplot/a/a; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 4707
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 13695
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getBackgroundPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/androidplot/Plot;->i:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getBorderPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/androidplot/Plot;->h:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getDisplayDimensions()Lcom/androidplot/c/b;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/androidplot/Plot;->l:Lcom/androidplot/c/b;

    return-object v0
.end method

.method public getLayoutManager()Lcom/androidplot/b/e;
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/androidplot/Plot;->j:Lcom/androidplot/b/e;

    return-object v0
.end method

.method public getPlotMarginBottom()F
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/androidplot/Plot;->c:Lcom/androidplot/b/b;

    .line 15123
    iget v0, v0, Lcom/androidplot/b/b;->d:F

    .line 795
    return v0
.end method

.method public getPlotMarginLeft()F
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/androidplot/Plot;->c:Lcom/androidplot/b/b;

    .line 16099
    iget v0, v0, Lcom/androidplot/b/b;->a:F

    .line 803
    return v0
.end method

.method public getPlotMarginRight()F
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/androidplot/Plot;->c:Lcom/androidplot/b/b;

    .line 16115
    iget v0, v0, Lcom/androidplot/b/b;->c:F

    .line 811
    return v0
.end method

.method public getPlotMarginTop()F
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/androidplot/Plot;->c:Lcom/androidplot/b/b;

    .line 15107
    iget v0, v0, Lcom/androidplot/b/b;->b:F

    .line 787
    return v0
.end method

.method public getPlotPaddingBottom()F
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/androidplot/Plot;->c:Lcom/androidplot/b/b;

    .line 16155
    iget v0, v0, Lcom/androidplot/b/b;->h:F

    .line 827
    return v0
.end method

.method public getPlotPaddingLeft()F
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/androidplot/Plot;->c:Lcom/androidplot/b/b;

    .line 17131
    iget v0, v0, Lcom/androidplot/b/b;->e:F

    .line 835
    return v0
.end method

.method public getPlotPaddingRight()F
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/androidplot/Plot;->c:Lcom/androidplot/b/b;

    .line 17147
    iget v0, v0, Lcom/androidplot/b/b;->g:F

    .line 843
    return v0
.end method

.method public getPlotPaddingTop()F
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/androidplot/Plot;->c:Lcom/androidplot/b/b;

    .line 16139
    iget v0, v0, Lcom/androidplot/b/b;->f:F

    .line 819
    return v0
.end method

.method public getRenderMode()Lcom/androidplot/Plot$c;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/androidplot/Plot;->m:Lcom/androidplot/Plot$c;

    return-object v0
.end method

.method public getRendererList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TRendererType;>;"
        }
    .end annotation

    .prologue
    .line 526
    iget-object v0, p0, Lcom/androidplot/Plot;->p:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getSeriesSet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TSeriesType;>;"
        }
    .end annotation

    .prologue
    .line 495
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 496
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getRendererList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/b/j;

    .line 497
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1508
    iget-object v3, p0, Lcom/androidplot/Plot;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/b/i;

    .line 1509
    if-nez v0, :cond_1

    .line 1510
    const/4 v0, 0x0

    .line 498
    :goto_0
    if-eqz v0, :cond_0

    .line 499
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/b;

    .line 500
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2046
    :cond_1
    iget-object v0, v0, Lcom/androidplot/b/i;->a:Ljava/util/LinkedList;

    goto :goto_0

    .line 504
    :cond_2
    return-object v1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getTitleWidget()Lcom/androidplot/b/a/a;

    move-result-object v0

    .line 14187
    iget-object v0, v0, Lcom/androidplot/b/a/a;->a:Ljava/lang/String;

    .line 723
    return-object v0
.end method

.method public getTitleWidget()Lcom/androidplot/b/a/a;
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/androidplot/Plot;->k:Lcom/androidplot/b/a/a;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 570
    iget-object v1, p0, Lcom/androidplot/Plot;->o:Ljava/lang/Object;

    monitor-enter v1

    .line 571
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/androidplot/Plot;->s:Z

    .line 572
    iget-object v0, p0, Lcom/androidplot/Plot;->o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 573
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 615
    iget-object v0, p0, Lcom/androidplot/Plot;->m:Lcom/androidplot/Plot$c;

    sget-object v1, Lcom/androidplot/Plot$c;->a:Lcom/androidplot/Plot$c;

    if-ne v0, v1, :cond_1

    .line 616
    iget-object v1, p0, Lcom/androidplot/Plot;->n:Lcom/androidplot/Plot$b;

    monitor-enter v1

    .line 617
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/Plot;->n:Lcom/androidplot/Plot$b;

    .line 4205
    iget-object v0, v0, Lcom/androidplot/Plot$b;->a:Landroid/graphics/Bitmap;

    .line 618
    if-eqz v0, :cond_0

    .line 619
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 621
    :cond_0
    monitor-exit v1

    .line 623
    :goto_0
    return-void

    .line 621
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 622
    :cond_1
    iget-object v0, p0, Lcom/androidplot/Plot;->m:Lcom/androidplot/Plot$c;

    sget-object v1, Lcom/androidplot/Plot$c;->b:Lcom/androidplot/Plot$c;

    if-ne v0, v1, :cond_2

    .line 623
    invoke-virtual {p0, p1}, Lcom/androidplot/Plot;->b(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 625
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unsupported Render Mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/androidplot/Plot;->m:Lcom/androidplot/Plot$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected declared-synchronized onSizeChanged(IIII)V
    .locals 5

    .prologue
    .line 581
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/androidplot/c/f;->a(Landroid/content/Context;)V

    .line 586
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 587
    invoke-virtual {p0}, Lcom/androidplot/Plot;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/androidplot/Plot;->setLayerType(ILandroid/graphics/Paint;)V

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/androidplot/Plot;->m:Lcom/androidplot/Plot$c;

    sget-object v1, Lcom/androidplot/Plot$c;->a:Lcom/androidplot/Plot$c;

    if-ne v0, v1, :cond_1

    .line 594
    iget-object v0, p0, Lcom/androidplot/Plot;->n:Lcom/androidplot/Plot$b;

    invoke-virtual {v0, p2, p1}, Lcom/androidplot/Plot$b;->a(II)V

    .line 597
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 598
    iget-object v1, p0, Lcom/androidplot/Plot;->c:Lcom/androidplot/b/b;

    invoke-virtual {v1, v0}, Lcom/androidplot/b/b;->a(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    .line 599
    iget-object v2, p0, Lcom/androidplot/Plot;->c:Lcom/androidplot/b/b;

    invoke-virtual {v2, v1}, Lcom/androidplot/b/b;->b(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    .line 601
    new-instance v3, Lcom/androidplot/c/b;

    invoke-direct {v3, v0, v1, v2}, Lcom/androidplot/c/b;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-direct {p0, v3}, Lcom/androidplot/Plot;->a(Lcom/androidplot/c/b;)V

    .line 602
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 603
    iget-object v0, p0, Lcom/androidplot/Plot;->r:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/androidplot/Plot;->r:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 604
    iget-object v0, p0, Lcom/androidplot/Plot;->r:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    :cond_2
    monitor-exit p0

    return-void

    .line 581
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBackgroundPaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 755
    iput-object p1, p0, Lcom/androidplot/Plot;->i:Landroid/graphics/Paint;

    .line 756
    return-void
.end method

.method public setBorderPaint(Landroid/graphics/Paint;)V
    .locals 2

    .prologue
    .line 861
    if-nez p1, :cond_0

    .line 862
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androidplot/Plot;->h:Landroid/graphics/Paint;

    .line 867
    :goto_0
    return-void

    .line 864
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/androidplot/Plot;->h:Landroid/graphics/Paint;

    .line 865
    iget-object v0, p0, Lcom/androidplot/Plot;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0
.end method

.method public setLayoutManager(Lcom/androidplot/b/e;)V
    .locals 0

    .prologue
    .line 739
    iput-object p1, p0, Lcom/androidplot/Plot;->j:Lcom/androidplot/b/e;

    .line 740
    return-void
.end method

.method public setMarkupEnabled(Z)V
    .locals 4

    .prologue
    const/high16 v3, 0x40a00000    # 5.0f

    .line 530
    iget-object v0, p0, Lcom/androidplot/Plot;->j:Lcom/androidplot/b/e;

    .line 2171
    iput-boolean p1, v0, Lcom/androidplot/b/e;->c:Z

    .line 2187
    iput-boolean p1, v0, Lcom/androidplot/b/e;->a:Z

    .line 2195
    iput-boolean p1, v0, Lcom/androidplot/b/e;->g:Z

    .line 2211
    iput-boolean p1, v0, Lcom/androidplot/b/e;->i:Z

    .line 2227
    iput-boolean p1, v0, Lcom/androidplot/b/e;->e:Z

    .line 2228
    if-eqz p1, :cond_0

    iget-object v1, v0, Lcom/androidplot/b/e;->f:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 2230
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/androidplot/b/e;->f:Landroid/graphics/Paint;

    .line 2231
    iget-object v1, v0, Lcom/androidplot/b/e;->f:Landroid/graphics/Paint;

    const v2, -0xbbbbbc

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2232
    iget-object v1, v0, Lcom/androidplot/b/e;->f:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2233
    iget-object v0, v0, Lcom/androidplot/b/e;->f:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 531
    :cond_0
    return-void
.end method

.method public setPlotMarginBottom(F)V
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/androidplot/Plot;->c:Lcom/androidplot/b/b;

    .line 15127
    iput p1, v0, Lcom/androidplot/b/b;->d:F

    .line 800
    return-void
.end method

.method public setPlotMarginLeft(F)V
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/androidplot/Plot;->c:Lcom/androidplot/b/b;

    .line 16103
    iput p1, v0, Lcom/androidplot/b/b;->a:F

    .line 808
    return-void
.end method

.method public setPlotMarginRight(F)V
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/androidplot/Plot;->c:Lcom/androidplot/b/b;

    .line 16119
    iput p1, v0, Lcom/androidplot/b/b;->c:F

    .line 816
    return-void
.end method

.method public setPlotMarginTop(F)V
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/androidplot/Plot;->c:Lcom/androidplot/b/b;

    .line 15111
    iput p1, v0, Lcom/androidplot/b/b;->b:F

    .line 792
    return-void
.end method

.method public setPlotPaddingBottom(F)V
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/androidplot/Plot;->c:Lcom/androidplot/b/b;

    .line 16159
    iput p1, v0, Lcom/androidplot/b/b;->h:F

    .line 832
    return-void
.end method

.method public setPlotPaddingLeft(F)V
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/androidplot/Plot;->c:Lcom/androidplot/b/b;

    .line 17135
    iput p1, v0, Lcom/androidplot/b/b;->e:F

    .line 840
    return-void
.end method

.method public setPlotPaddingRight(F)V
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/androidplot/Plot;->c:Lcom/androidplot/b/b;

    .line 17151
    iput p1, v0, Lcom/androidplot/b/b;->g:F

    .line 848
    return-void
.end method

.method public setPlotPaddingTop(F)V
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/androidplot/Plot;->c:Lcom/androidplot/b/b;

    .line 16143
    iput p1, v0, Lcom/androidplot/b/b;->f:F

    .line 824
    return-void
.end method

.method public setRenderMode(Lcom/androidplot/Plot$c;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/androidplot/Plot;->m:Lcom/androidplot/Plot$c;

    .line 292
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/androidplot/Plot;->k:Lcom/androidplot/b/a/a;

    invoke-virtual {v0, p1}, Lcom/androidplot/b/a/a;->a(Ljava/lang/String;)V

    .line 732
    return-void
.end method

.method public setTitleWidget(Lcom/androidplot/b/a/a;)V
    .locals 0

    .prologue
    .line 747
    iput-object p1, p0, Lcom/androidplot/Plot;->k:Lcom/androidplot/b/a/a;

    .line 748
    return-void
.end method
