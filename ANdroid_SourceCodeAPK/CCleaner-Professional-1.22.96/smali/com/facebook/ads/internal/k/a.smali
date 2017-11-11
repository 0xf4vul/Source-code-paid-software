.class public Lcom/facebook/ads/internal/k/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/k/a$b;,
        Lcom/facebook/ads/internal/k/a$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field public a:I

.field public b:I

.field public c:Lcom/facebook/ads/internal/k/b;

.field private final e:Landroid/view/View;

.field private final f:I

.field private final g:I

.field private final h:Lcom/facebook/ads/internal/k/a$a;

.field private final i:Landroid/os/Handler;

.field private final j:Z

.field private k:Ljava/lang/Runnable;

.field private l:Z

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private n:J

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/k/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/k/a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZLcom/facebook/ads/internal/k/a$a;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/facebook/ads/internal/k/a;->i:Landroid/os/Handler;

    iput v0, p0, Lcom/facebook/ads/internal/k/a;->a:I

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/facebook/ads/internal/k/a;->b:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/ads/internal/k/a;->l:Z

    new-instance v1, Lcom/facebook/ads/internal/k/b;

    sget-object v2, Lcom/facebook/ads/internal/k/c;->a:Lcom/facebook/ads/internal/k/c;

    invoke-direct {v1, v2}, Lcom/facebook/ads/internal/k/b;-><init>(Lcom/facebook/ads/internal/k/c;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/k/a;->c:Lcom/facebook/ads/internal/k/b;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/facebook/ads/internal/k/a;->m:Ljava/util/Map;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/facebook/ads/internal/k/a;->n:J

    iput v0, p0, Lcom/facebook/ads/internal/k/a;->o:I

    iput-object p1, p0, Lcom/facebook/ads/internal/k/a;->e:Landroid/view/View;

    iput p2, p0, Lcom/facebook/ads/internal/k/a;->f:I

    iput-object p5, p0, Lcom/facebook/ads/internal/k/a;->h:Lcom/facebook/ads/internal/k/a$a;

    iput-boolean p4, p0, Lcom/facebook/ads/internal/k/a;->j:Z

    if-gez p3, :cond_0

    move p3, v0

    :cond_0
    iput p3, p0, Lcom/facebook/ads/internal/k/a;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILcom/facebook/ads/internal/k/a$a;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/k/a;-><init>(Landroid/view/View;IIZLcom/facebook/ads/internal/k/a$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/facebook/ads/internal/k/a$a;)V
    .locals 6

    const/16 v2, 0x32

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/k/a;-><init>(Landroid/view/View;IIZLcom/facebook/ads/internal/k/a$a;)V

    return-void
.end method

.method private static a(Ljava/util/Vector;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/Rect;",
            ">;)I"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v6

    mul-int/lit8 v0, v6, 0x2

    new-array v7, v0, [I

    mul-int/lit8 v0, v6, 0x2

    new-array v8, v0, [I

    mul-int/lit8 v0, v6, 0x2

    mul-int/lit8 v1, v6, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    move v3, v2

    move v4, v2

    move v5, v2

    :goto_0
    if-ge v3, v6, :cond_0

    invoke-virtual {p0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    add-int/lit8 v9, v5, 0x1

    iget v10, v1, Landroid/graphics/Rect;->left:I

    aput v10, v7, v5

    add-int/lit8 v10, v4, 0x1

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    aput v5, v8, v4

    add-int/lit8 v5, v9, 0x1

    iget v4, v1, Landroid/graphics/Rect;->right:I

    aput v4, v7, v9

    add-int/lit8 v4, v10, 0x1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    aput v1, v8, v10

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_0
    invoke-static {v7}, Ljava/util/Arrays;->sort([I)V

    invoke-static {v8}, Ljava/util/Arrays;->sort([I)V

    move v4, v2

    :goto_1
    if-ge v4, v6, :cond_3

    invoke-virtual {p0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v7, v3}, Lcom/facebook/ads/internal/k/a;->a([II)I

    move-result v3

    iget v5, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v7, v5}, Lcom/facebook/ads/internal/k/a;->a([II)I

    move-result v5

    iget v9, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v8, v9}, Lcom/facebook/ads/internal/k/a;->a([II)I

    move-result v9

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v8, v1}, Lcom/facebook/ads/internal/k/a;->a([II)I

    move-result v10

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    :goto_2
    if-gt v3, v5, :cond_2

    add-int/lit8 v1, v9, 0x1

    :goto_3
    if-gt v1, v10, :cond_1

    aget-object v11, v0, v3

    const/4 v12, 0x1

    aput-boolean v12, v11, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_3
    move v5, v2

    move v1, v2

    :goto_4
    mul-int/lit8 v3, v6, 0x2

    if-ge v5, v3, :cond_6

    move v3, v1

    move v4, v2

    :goto_5
    mul-int/lit8 v1, v6, 0x2

    if-ge v4, v1, :cond_5

    aget-object v1, v0, v5

    aget-boolean v1, v1, v4

    if-eqz v1, :cond_4

    aget v1, v7, v5

    add-int/lit8 v9, v5, -0x1

    aget v9, v7, v9

    sub-int/2addr v1, v9

    aget v9, v8, v4

    add-int/lit8 v10, v4, -0x1

    aget v10, v8, v10

    sub-int/2addr v9, v10

    mul-int/2addr v1, v9

    :goto_6
    add-int/2addr v1, v3

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v1

    goto :goto_5

    :cond_4
    move v1, v2

    goto :goto_6

    :cond_5
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v3

    goto :goto_4

    :cond_6
    return v1
.end method

.method private static a([II)I
    .locals 4

    const/4 v1, 0x0

    array-length v0, p0

    move v2, v1

    move v1, v0

    :goto_0
    if-ge v2, v1, :cond_2

    sub-int v0, v1, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    aget v3, p0, v0

    if-ne v3, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    aget v3, p0, v0

    if-le v3, p1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/k/a;J)J
    .locals 1

    iput-wide p1, p0, Lcom/facebook/ads/internal/k/a;->n:J

    return-wide p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/k/a;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/k/a;->e:Landroid/view/View;

    return-object v0
.end method

.method public static a(Landroid/view/View;I)Lcom/facebook/ads/internal/k/b;
    .locals 14

    if-nez p0, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/k/b;

    sget-object v1, Lcom/facebook/ads/internal/k/c;->c:Lcom/facebook/ads/internal/k/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/k/b;-><init>(Lcom/facebook/ads/internal/k/c;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/facebook/ads/internal/k/b;

    sget-object v1, Lcom/facebook/ads/internal/k/c;->d:Lcom/facebook/ads/internal/k/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/k/b;-><init>(Lcom/facebook/ads/internal/k/c;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/facebook/ads/internal/k/b;

    sget-object v1, Lcom/facebook/ads/internal/k/c;->d:Lcom/facebook/ads/internal/k/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/k/b;-><init>(Lcom/facebook/ads/internal/k/c;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/facebook/ads/internal/k/b;

    sget-object v1, Lcom/facebook/ads/internal/k/c;->e:Lcom/facebook/ads/internal/k/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/k/b;-><init>(Lcom/facebook/ads/internal/k/c;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "adView has invisible dimensions (w="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/facebook/ads/internal/k/b;

    sget-object v1, Lcom/facebook/ads/internal/k/c;->g:Lcom/facebook/ads/internal/k/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/k/b;-><init>(Lcom/facebook/ads/internal/k/c;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const v1, 0x3f666666    # 0.9f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    new-instance v0, Lcom/facebook/ads/internal/k/b;

    sget-object v1, Lcom/facebook/ads/internal/k/c;->h:Lcom/facebook/ads/internal/k/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/k/b;-><init>(Lcom/facebook/ads/internal/k/c;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v0, 0x2

    new-array v3, v0, [I

    :try_start_0
    invoke-virtual {p0, v3}, Landroid/view/View;->getLocationOnScreen([I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/facebook/ads/internal/k/b;

    sget-object v1, Lcom/facebook/ads/internal/k/c;->f:Lcom/facebook/ads/internal/k/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/k/b;-><init>(Lcom/facebook/ads/internal/k/c;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/facebook/ads/internal/k/b;

    sget-object v1, Lcom/facebook/ads/internal/k/c;->g:Lcom/facebook/ads/internal/k/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/k/b;-><init>(Lcom/facebook/ads/internal/k/c;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const/4 v0, 0x0

    invoke-static {v5}, Lcom/facebook/ads/internal/l;->q(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_9

    new-instance v4, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v10, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x0

    aget v7, v3, v7

    const/4 v8, 0x1

    aget v8, v3, v8

    const/4 v9, 0x0

    aget v9, v3, v9

    add-int/2addr v9, v1

    const/4 v10, 0x1

    aget v10, v3, v10

    add-int/2addr v10, v2

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v0, v4

    int-to-float v0, v0

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v0, v4

    mul-int v4, v1, v2

    int-to-float v4, v4

    div-float/2addr v0, v4

    :cond_8
    :goto_1
    invoke-static {v5}, Lcom/facebook/ads/internal/l;->m(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v5}, Lcom/facebook/ads/internal/l;->n(Landroid/content/Context;)I

    move-result v7

    if-eqz v4, :cond_a

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    int-to-float v1, v7

    cmpg-float v1, v0, v1

    if-gez v1, :cond_e

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "adView visible area is too small [%.2f%% visible, current threshold %d%%]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v1, Lcom/facebook/ads/internal/k/b;

    sget-object v2, Lcom/facebook/ads/internal/k/c;->n:Lcom/facebook/ads/internal/k/c;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/k/b;-><init>(Lcom/facebook/ads/internal/k/c;F)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_9
    invoke-static {p0}, Lcom/facebook/ads/internal/k/a;->a(Landroid/view/View;)Ljava/util/Vector;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/k/a;->a(Ljava/util/Vector;)I

    move-result v7

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/facebook/ads/internal/k/a;->a(Ljava/util/Vector;)I

    move-result v0

    sub-int/2addr v0, v7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    mul-int/2addr v4, v7

    int-to-float v0, v0

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v0, v7

    int-to-float v4, v4

    div-float/2addr v0, v4

    goto :goto_1

    :cond_a
    const/4 v4, 0x0

    aget v4, v3, v4

    if-ltz v4, :cond_b

    iget v4, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v7, 0x0

    aget v7, v3, v7

    sub-int/2addr v4, v7

    if-ge v4, v1, :cond_c

    :cond_b
    new-instance v1, Lcom/facebook/ads/internal/k/b;

    sget-object v2, Lcom/facebook/ads/internal/k/c;->j:Lcom/facebook/ads/internal/k/c;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/k/b;-><init>(Lcom/facebook/ads/internal/k/c;F)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_c
    int-to-double v8, v2

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    int-to-double v12, p1

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v10

    double-to-int v1, v8

    const/4 v4, 0x1

    aget v4, v3, v4

    if-gez v4, :cond_d

    const/4 v4, 0x1

    aget v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v1, :cond_d

    new-instance v1, Lcom/facebook/ads/internal/k/b;

    sget-object v2, Lcom/facebook/ads/internal/k/c;->k:Lcom/facebook/ads/internal/k/c;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/k/b;-><init>(Lcom/facebook/ads/internal/k/c;F)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_d
    const/4 v4, 0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    iget v3, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v2, v3

    if-le v2, v1, :cond_e

    new-instance v1, Lcom/facebook/ads/internal/k/b;

    sget-object v2, Lcom/facebook/ads/internal/k/c;->l:Lcom/facebook/ads/internal/k/c;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/k/b;-><init>(Lcom/facebook/ads/internal/k/c;F)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_e
    invoke-static {v5}, Lcom/facebook/ads/internal/m/ad;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_f

    new-instance v1, Lcom/facebook/ads/internal/k/b;

    sget-object v2, Lcom/facebook/ads/internal/k/c;->m:Lcom/facebook/ads/internal/k/c;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/k/b;-><init>(Lcom/facebook/ads/internal/k/c;F)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_f
    invoke-static {v5}, Lcom/facebook/ads/internal/m/o;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/m/o;->a(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Lcom/facebook/ads/internal/k/b;

    sget-object v2, Lcom/facebook/ads/internal/k/c;->p:Lcom/facebook/ads/internal/k/c;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/k/b;-><init>(Lcom/facebook/ads/internal/k/c;F)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_10
    invoke-static {v5}, Lcom/facebook/ads/internal/l;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {v2}, Lcom/facebook/ads/internal/m/o;->b(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v1, Lcom/facebook/ads/internal/k/b;

    sget-object v3, Lcom/facebook/ads/internal/k/c;->q:Lcom/facebook/ads/internal/k/c;

    invoke-direct {v1, v3, v0, v2}, Lcom/facebook/ads/internal/k/b;-><init>(Lcom/facebook/ads/internal/k/c;FLjava/util/Map;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_11
    new-instance v1, Lcom/facebook/ads/internal/k/b;

    sget-object v3, Lcom/facebook/ads/internal/k/c;->b:Lcom/facebook/ads/internal/k/c;

    invoke-direct {v1, v3, v0, v2}, Lcom/facebook/ads/internal/k/b;-><init>(Lcom/facebook/ads/internal/k/c;FLjava/util/Map;)V

    move-object v0, v1

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/k/a;Lcom/facebook/ads/internal/k/b;)Lcom/facebook/ads/internal/k/b;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/k/a;->c:Lcom/facebook/ads/internal/k/b;

    return-object p1
.end method

.method private static a(Landroid/view/View;)Ljava/util/Vector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/ads/internal/k/a;->b(Landroid/view/View;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/facebook/ads/internal/k/a;->a(Landroid/view/View;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    move-object v0, v2

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/k/a;)Lcom/facebook/ads/internal/k/a$a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/k/a;->h:Lcom/facebook/ads/internal/k/a$a;

    return-object v0
.end method

.method private static b(Landroid/view/View;)Ljava/util/Vector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_5

    .line 5000
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    if-gtz v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    .line 0
    :goto_1
    if-eqz v2, :cond_5

    check-cast p0, Landroid/view/ViewGroup;

    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/k/a;->b(Landroid/view/View;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v2, v0

    .line 5000
    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 0
    goto :goto_0

    :cond_5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/k/a;)I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/k/a;->f:I

    return v0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/k/a;)I
    .locals 2

    iget v0, p0, Lcom/facebook/ads/internal/k/a;->o:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/facebook/ads/internal/k/a;->o:I

    return v0
.end method

.method static synthetic e(Lcom/facebook/ads/internal/k/a;)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/internal/k/a;->o:I

    return v0
.end method

.method static synthetic f(Lcom/facebook/ads/internal/k/a;)I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/k/a;->o:I

    return v0
.end method

.method static synthetic g(Lcom/facebook/ads/internal/k/a;)I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/k/a;->g:I

    return v0
.end method

.method static synthetic h(Lcom/facebook/ads/internal/k/a;)Lcom/facebook/ads/internal/k/b;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/k/a;->c:Lcom/facebook/ads/internal/k/b;

    return-object v0
.end method

.method static synthetic i(Lcom/facebook/ads/internal/k/a;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/k/a;->m:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic j(Lcom/facebook/ads/internal/k/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/k/a;->j:Z

    return v0
.end method

.method static synthetic k(Lcom/facebook/ads/internal/k/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/k/a;->l:Z

    return v0
.end method

.method static synthetic l(Lcom/facebook/ads/internal/k/a;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/k/a;->k:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic m(Lcom/facebook/ads/internal/k/a;)I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/k/a;->b:I

    return v0
.end method

.method static synthetic n(Lcom/facebook/ads/internal/k/a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/k/a;->i:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/facebook/ads/internal/k/a;->k:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/k/a;->b()V

    :cond_0
    new-instance v0, Lcom/facebook/ads/internal/k/a$b;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/k/a$b;-><init>(Lcom/facebook/ads/internal/k/a;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/k/a;->k:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/facebook/ads/internal/k/a;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/ads/internal/k/a;->k:Ljava/lang/Runnable;

    iget v2, p0, Lcom/facebook/ads/internal/k/a;->a:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v4, p0, Lcom/facebook/ads/internal/k/a;->l:Z

    iput v4, p0, Lcom/facebook/ads/internal/k/a;->o:I

    new-instance v0, Lcom/facebook/ads/internal/k/b;

    sget-object v1, Lcom/facebook/ads/internal/k/c;->a:Lcom/facebook/ads/internal/k/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/k/b;-><init>(Lcom/facebook/ads/internal/k/c;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/k/a;->c:Lcom/facebook/ads/internal/k/b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/k/a;->m:Ljava/util/Map;

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 0
    const-string/jumbo v0, "vrc"

    iget-object v1, p0, Lcom/facebook/ads/internal/k/a;->c:Lcom/facebook/ads/internal/k/b;

    .line 1000
    iget-object v1, v1, Lcom/facebook/ads/internal/k/b;->a:Lcom/facebook/ads/internal/k/c;

    .line 2000
    iget v1, v1, Lcom/facebook/ads/internal/k/c;->r:I

    .line 0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "vp"

    iget-object v1, p0, Lcom/facebook/ads/internal/k/a;->c:Lcom/facebook/ads/internal/k/b;

    .line 3000
    iget v1, v1, Lcom/facebook/ads/internal/k/b;->b:F

    .line 0
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "vh"

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/facebook/ads/internal/k/a;->m:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "vt"

    iget-wide v2, p0, Lcom/facebook/ads/internal/k/a;->n:J

    invoke-static {v2, v3}, Lcom/facebook/ads/internal/m/u;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/internal/k/a;->c:Lcom/facebook/ads/internal/k/b;

    .line 4000
    iget-object v0, v0, Lcom/facebook/ads/internal/k/b;->c:Ljava/util/Map;

    .line 0
    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/k/a;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/ads/internal/k/a;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/k/a;->k:Ljava/lang/Runnable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/k/a;->l:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/internal/k/a;->o:I

    return-void
.end method
