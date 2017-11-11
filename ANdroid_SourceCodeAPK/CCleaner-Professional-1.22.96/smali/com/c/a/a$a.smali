.class public final Lcom/c/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:Z

.field final c:I

.field final d:I

.field private final e:Z

.field private final f:Z

.field private final g:I

.field private final h:Z

.field private final i:F


# direct methods
.method private constructor <init>(Landroid/app/Activity;ZZ)V
    .locals 7

    .prologue
    const/16 v6, 0xe

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 376
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/c/a/a$a;->h:Z

    .line 1457
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1458
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_1

    .line 1459
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1464
    :goto_1
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    .line 1465
    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v5, v0

    .line 1466
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 377
    iput v0, p0, Lcom/c/a/a$a;->i:F

    .line 378
    const-string/jumbo v0, "status_bar_height"

    invoke-static {v3, v0}, Lcom/c/a/a$a;->a(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/c/a/a$a;->a:I

    .line 2390
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_6

    .line 2391
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2392
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x10102eb

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2393
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 379
    :goto_2
    iput v0, p0, Lcom/c/a/a$a;->g:I

    .line 2400
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2402
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_3

    .line 2403
    invoke-static {p1}, Lcom/c/a/a$a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2405
    iget-boolean v0, p0, Lcom/c/a/a$a;->h:Z

    if-eqz v0, :cond_2

    .line 2406
    const-string/jumbo v0, "navigation_bar_height"

    .line 2410
    :goto_3
    invoke-static {v3, v0}, Lcom/c/a/a$a;->a(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    .line 380
    :goto_4
    iput v0, p0, Lcom/c/a/a$a;->c:I

    .line 2418
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2420
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_4

    .line 2421
    invoke-static {p1}, Lcom/c/a/a$a;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2422
    const-string/jumbo v3, "navigation_bar_width"

    invoke-static {v0, v3}, Lcom/c/a/a$a;->a(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    .line 381
    :goto_5
    iput v0, p0, Lcom/c/a/a$a;->d:I

    .line 382
    iget v0, p0, Lcom/c/a/a$a;->c:I

    if-lez v0, :cond_5

    :goto_6
    iput-boolean v1, p0, Lcom/c/a/a$a;->b:Z

    .line 383
    iput-boolean p2, p0, Lcom/c/a/a$a;->e:Z

    .line 384
    iput-boolean p3, p0, Lcom/c/a/a$a;->f:Z

    .line 385
    return-void

    :cond_0
    move v0, v2

    .line 376
    goto/16 :goto_0

    .line 1462
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_1

    .line 2408
    :cond_2
    const-string/jumbo v0, "navigation_bar_height_landscape"

    goto :goto_3

    :cond_3
    move v0, v2

    .line 2413
    goto :goto_4

    :cond_4
    move v0, v2

    .line 2425
    goto :goto_5

    :cond_5
    move v1, v2

    .line 382
    goto :goto_6

    :cond_6
    move v0, v2

    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/app/Activity;ZZB)V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0, p1, p2, p3}, Lcom/c/a/a$a;-><init>(Landroid/app/Activity;ZZ)V

    return-void
.end method

.method private static a(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 447
    const/4 v0, 0x0

    .line 448
    const-string/jumbo v1, "dimen"

    const-string/jumbo v2, "android"

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 449
    if-lez v1, :cond_0

    .line 450
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 452
    :cond_0
    return v0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 430
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 431
    const-string/jumbo v3, "config_showNavigationBar"

    const-string/jumbo v4, "bool"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 432
    if-eqz v3, :cond_2

    .line 433
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 435
    const-string/jumbo v3, "1"

    invoke-static {}, Lcom/c/a/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 442
    :cond_0
    :goto_0
    return v0

    .line 437
    :cond_1
    const-string/jumbo v0, "0"

    invoke-static {}, Lcom/c/a/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 438
    goto :goto_0

    .line 442
    :cond_2
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 477
    iget v0, p0, Lcom/c/a/a$a;->i:F

    const/high16 v1, 0x44160000    # 600.0f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/c/a/a$a;->h:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
