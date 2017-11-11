.class public final Lcom/facebook/ads/internal/view/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/view/c;


# instance fields
.field a:Lcom/facebook/ads/internal/k/a;

.field b:Lcom/facebook/ads/internal/view/o;

.field c:Lcom/facebook/ads/internal/m/i;

.field d:Lcom/facebook/ads/internal/view/c$a;

.field e:Ljava/lang/String;

.field f:Landroid/content/Context;

.field g:Lcom/facebook/ads/internal/view/d/b/i;

.field private h:Lcom/facebook/ads/internal/m/f;

.field private i:Lcom/facebook/ads/internal/h/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/internal/h/s",
            "<",
            "Lcom/facebook/ads/internal/view/d/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/facebook/ads/internal/h/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/internal/h/s",
            "<",
            "Lcom/facebook/ads/internal/view/d/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/facebook/ads/internal/h/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/internal/h/s",
            "<",
            "Lcom/facebook/ads/internal/view/d/a/l;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/facebook/ads/internal/h/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/internal/h/s",
            "<",
            "Lcom/facebook/ads/internal/view/d/a/t;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/String;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/ImageView;

.field private r:Lcom/facebook/ads/internal/view/d/b/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/o;Lcom/facebook/ads/internal/view/c$a;)V
    .locals 11

    .prologue
    const/high16 v10, 0x41400000    # 12.0f

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x2

    const/4 v6, -0x1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/k;->f:Landroid/content/Context;

    iput-object p3, p0, Lcom/facebook/ads/internal/view/k;->d:Lcom/facebook/ads/internal/view/c$a;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    .line 1000
    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/o;->e()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v1, v8}, Lcom/facebook/ads/internal/view/o;->setIsFullScreen(Z)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/o;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/o;->setBackgroundColor(I)V

    new-instance v0, Lcom/facebook/ads/internal/view/k$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/k$1;-><init>(Lcom/facebook/ads/internal/view/k;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/k;->l:Lcom/facebook/ads/internal/h/s;

    new-instance v0, Lcom/facebook/ads/internal/view/k$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/k$2;-><init>(Lcom/facebook/ads/internal/view/k;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/k;->i:Lcom/facebook/ads/internal/h/s;

    new-instance v0, Lcom/facebook/ads/internal/view/k$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/k$3;-><init>(Lcom/facebook/ads/internal/view/k;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/k;->j:Lcom/facebook/ads/internal/h/s;

    new-instance v0, Lcom/facebook/ads/internal/view/k$4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/k$4;-><init>(Lcom/facebook/ads/internal/view/k;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/k;->k:Lcom/facebook/ads/internal/h/s;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/o;->getEventBus()Lcom/facebook/ads/internal/h/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->i:Lcom/facebook/ads/internal/h/s;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/r;->a(Lcom/facebook/ads/internal/h/s;)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/o;->getEventBus()Lcom/facebook/ads/internal/h/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->j:Lcom/facebook/ads/internal/h/s;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/r;->a(Lcom/facebook/ads/internal/h/s;)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/o;->getEventBus()Lcom/facebook/ads/internal/h/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->k:Lcom/facebook/ads/internal/h/s;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/r;->a(Lcom/facebook/ads/internal/h/s;)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/o;->getEventBus()Lcom/facebook/ads/internal/h/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->l:Lcom/facebook/ads/internal/h/s;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/r;->a(Lcom/facebook/ads/internal/h/s;)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    new-instance v1, Lcom/facebook/ads/internal/view/d/b/j;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/k;->f:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/facebook/ads/internal/view/d/b/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/o;->a(Lcom/facebook/ads/internal/view/d/b/m;)V

    new-instance v0, Lcom/facebook/ads/internal/view/d/b/p;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->f:Landroid/content/Context;

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/internal/view/d/b/p;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/k;->r:Lcom/facebook/ads/internal/view/d/b/p;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->r:Lcom/facebook/ads/internal/view/d/b/p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/d/b/p;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->r:Lcom/facebook/ads/internal/view/d/b/p;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/o;->a(Lcom/facebook/ads/internal/view/d/b/m;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/l;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/view/d/b/k;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/view/d/b/k;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/o;->a(Lcom/facebook/ads/internal/view/d/b/m;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    new-instance v3, Lcom/facebook/ads/internal/view/d/b/d;

    sget v4, Lcom/facebook/ads/internal/view/d/b/d$a;->b:I

    invoke-direct {v3, v0, v4}, Lcom/facebook/ads/internal/view/d/b/d;-><init>(Landroid/view/View;I)V

    invoke-virtual {v1, v3}, Lcom/facebook/ads/internal/view/o;->a(Lcom/facebook/ads/internal/view/d/b/m;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/l;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-direct {v0, v1, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x42c00000    # 96.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-direct {v1, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/facebook/ads/internal/view/k;->f:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/facebook/ads/internal/view/k;->n:Landroid/widget/RelativeLayout;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_3

    iget-object v3, p0, Lcom/facebook/ads/internal/view/k;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->n:Landroid/widget/RelativeLayout;

    mul-float v1, v10, v2

    float-to-int v1, v1

    mul-float v3, v10, v2

    float-to-int v3, v3

    const/high16 v4, 0x40c00000    # 6.0f

    mul-float/2addr v4, v2

    float-to-int v4, v4

    invoke-virtual {v0, v1, v9, v3, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_4

    invoke-static {}, Lcom/facebook/ads/internal/m/m;->a()I

    move-result v1

    invoke-static {}, Lcom/facebook/ads/internal/m/m;->a()I

    move-result v0

    :goto_1
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/facebook/ads/internal/view/k;->f:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/facebook/ads/internal/view/k;->q:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v4, 0x42700000    # 60.0f

    mul-float/2addr v4, v2

    float-to-int v4, v4

    const/high16 v5, 0x42700000    # 60.0f

    mul-float/2addr v5, v2

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    mul-float/2addr v2, v10

    float-to-int v2, v2

    invoke-virtual {v3, v9, v9, v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/k;->q:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/k;->q:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setId(I)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/k;->n:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/k;->q:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/k;->f:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v3, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x10

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/k;->f:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/k;->o:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/facebook/ads/internal/view/k;->o:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v3, p0, Lcom/facebook/ads/internal/view/k;->o:Landroid/widget/TextView;

    const v4, 0x800003

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, p0, Lcom/facebook/ads/internal/view/k;->o:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setId(I)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->o:Landroid/widget/TextView;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->o:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->o:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/k;->f:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/k;->p:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->p:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->p:Landroid/widget/TextView;

    const v3, 0x800003

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->p:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->p:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->p:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/facebook/ads/internal/view/d/b/d;

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/k;->f:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/facebook/ads/internal/view/d/b/d$a;->b:I

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/view/d/b/d;-><init>(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->n:Landroid/widget/RelativeLayout;

    sget v2, Lcom/facebook/ads/internal/view/d/b/d$a;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/view/d/b/d;->a(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/o;->a(Lcom/facebook/ads/internal/view/d/b/m;)V

    :cond_1
    new-instance v0, Lcom/facebook/ads/internal/k/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    new-instance v2, Lcom/facebook/ads/internal/view/k$5;

    invoke-direct {v2, p0}, Lcom/facebook/ads/internal/view/k$5;-><init>(Lcom/facebook/ads/internal/view/k;)V

    invoke-direct {v0, v1, v8, v2}, Lcom/facebook/ads/internal/k/a;-><init>(Landroid/view/View;ILcom/facebook/ads/internal/k/a$a;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/k;->a:Lcom/facebook/ads/internal/k/a;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->a:Lcom/facebook/ads/internal/k/a;

    .line 2000
    const/16 v1, 0xfa

    iput v1, v0, Lcom/facebook/ads/internal/k/a;->a:I

    .line 1000
    new-instance v0, Lcom/facebook/ads/internal/m/i;

    invoke-direct {v0}, Lcom/facebook/ads/internal/m/i;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/k;->c:Lcom/facebook/ads/internal/m/i;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->d:Lcom/facebook/ads/internal/view/c$a;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/view/c$a;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->n:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->d:Lcom/facebook/ads/internal/view/c$a;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->n:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/view/c$a;->a(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->d:Lcom/facebook/ads/internal/view/c$a;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->r:Lcom/facebook/ads/internal/view/d/b/p;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/view/c$a;->a(Landroid/view/View;)V

    .line 0
    return-void

    .line 1000
    :cond_3
    iget-object v3, p0, Lcom/facebook/ads/internal/view/k;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    goto/16 :goto_1

    nop

    :array_0
    .array-data 4
        0x0
        -0xeeeeef
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/o;->d()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/o;->f()V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->a:Lcom/facebook/ads/internal/k/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->a:Lcom/facebook/ads/internal/k/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/k/a;->b()V

    :cond_1
    return-void
.end method

.method public final a(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/AudienceNetworkActivity;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v9, 0x42600000    # 56.0f

    .line 0
    const-string/jumbo v0, "videoURL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "clientToken"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/k;->e:Ljava/lang/String;

    const-string/jumbo v0, "contextSwitchBehavior"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/k;->m:Ljava/lang/String;

    const-string/jumbo v0, "facebookRewardedVideoEndCardMarkup"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/m/u;->a([B)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "skipAfterSeconds"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 3000
    :goto_0
    if-lez v4, :cond_1

    iget-object v5, p0, Lcom/facebook/ads/internal/view/k;->f:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    new-instance v6, Lcom/facebook/ads/internal/view/d/b/i;

    iget-object v7, p0, Lcom/facebook/ads/internal/view/k;->f:Landroid/content/Context;

    const v8, -0xbb7c04

    invoke-direct {v6, v7, v4, v8}, Lcom/facebook/ads/internal/view/d/b/i;-><init>(Landroid/content/Context;II)V

    iput-object v6, p0, Lcom/facebook/ads/internal/view/k;->g:Lcom/facebook/ads/internal/view/d/b/i;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    mul-float v6, v9, v5

    float-to-int v6, v6

    mul-float v7, v9, v5

    float-to-int v7, v7

    invoke-direct {v4, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v6, 0xb

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v6, 0x41800000    # 16.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lcom/facebook/ads/internal/view/k;->g:Lcom/facebook/ads/internal/view/d/b/i;

    invoke-virtual {v6, v4}, Lcom/facebook/ads/internal/view/d/b/i;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/facebook/ads/internal/view/k;->g:Lcom/facebook/ads/internal/view/d/b/i;

    invoke-virtual {v4, v5, v5, v5, v5}, Lcom/facebook/ads/internal/view/d/b/i;->setPadding(IIII)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->g:Lcom/facebook/ads/internal/view/d/b/i;

    sget v4, Lcom/facebook/ads/internal/view/d/b/i$a;->b:I

    invoke-virtual {v0, v4}, Lcom/facebook/ads/internal/view/d/b/i;->setButtonMode$331a9378(I)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->g:Lcom/facebook/ads/internal/view/d/b/i;

    new-instance v4, Lcom/facebook/ads/internal/view/k$6;

    invoke-direct {v4, p0}, Lcom/facebook/ads/internal/view/k$6;-><init>(Lcom/facebook/ads/internal/view/k;)V

    invoke-virtual {v0, v4}, Lcom/facebook/ads/internal/view/d/b/i;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    iget-object v4, p0, Lcom/facebook/ads/internal/view/k;->g:Lcom/facebook/ads/internal/view/d/b/i;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/internal/view/o;->a(Lcom/facebook/ads/internal/view/d/b/m;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->d:Lcom/facebook/ads/internal/view/c$a;

    iget-object v4, p0, Lcom/facebook/ads/internal/view/k;->g:Lcom/facebook/ads/internal/view/d/b/i;

    invoke-interface {v0, v4}, Lcom/facebook/ads/internal/view/c$a;->a(Landroid/view/View;)V

    .line 0
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->o:Landroid/widget/TextView;

    const-string/jumbo v4, "adTitle"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->p:Landroid/widget/TextView;

    const-string/jumbo v4, "adSubtitle"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->q:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    const-string/jumbo v0, "adIconUrl"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Lcom/facebook/ads/internal/m/ae;

    iget-object v5, p0, Lcom/facebook/ads/internal/view/k;->q:Landroid/widget/ImageView;

    invoke-direct {v4, v5}, Lcom/facebook/ads/internal/m/ae;-><init>(Landroid/widget/ImageView;)V

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v2

    invoke-virtual {v4, v1}, Lcom/facebook/ads/internal/m/ae;->a([Ljava/lang/String;)V

    :cond_4
    new-instance v0, Lcom/facebook/ads/internal/m/f;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/k;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/facebook/ads/internal/h/g;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/h/g;

    move-result-object v2

    iget-object v4, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    iget-object v5, p0, Lcom/facebook/ads/internal/view/k;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/facebook/ads/internal/m/f;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/h/f;Lcom/facebook/ads/internal/view/o;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/k;->h:Lcom/facebook/ads/internal/m/f;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/internal/view/o;->setVideoURI(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    sget v1, Lcom/facebook/ads/q;->b:I

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/o;->b(I)V

    return-void

    :cond_6
    move v0, v2

    goto/16 :goto_0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/facebook/ads/internal/view/c$a;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/k;->a()V

    iput-object v2, p0, Lcom/facebook/ads/internal/view/k;->o:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/facebook/ads/internal/view/k;->p:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/facebook/ads/internal/view/k;->q:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/facebook/ads/internal/view/k;->n:Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/facebook/ads/internal/view/k;->g:Lcom/facebook/ads/internal/view/d/b/i;

    iput-object v2, p0, Lcom/facebook/ads/internal/view/k;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/o;->getEventBus()Lcom/facebook/ads/internal/h/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->i:Lcom/facebook/ads/internal/h/s;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/r;->b(Lcom/facebook/ads/internal/h/s;)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/o;->getEventBus()Lcom/facebook/ads/internal/h/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->j:Lcom/facebook/ads/internal/h/s;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/r;->b(Lcom/facebook/ads/internal/h/s;)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/o;->getEventBus()Lcom/facebook/ads/internal/h/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->k:Lcom/facebook/ads/internal/h/s;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/r;->b(Lcom/facebook/ads/internal/h/s;)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/o;->getEventBus()Lcom/facebook/ads/internal/h/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->l:Lcom/facebook/ads/internal/h/s;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/r;->b(Lcom/facebook/ads/internal/h/s;)Z

    :cond_0
    iput-object v2, p0, Lcom/facebook/ads/internal/view/k;->i:Lcom/facebook/ads/internal/h/s;

    iput-object v2, p0, Lcom/facebook/ads/internal/view/k;->j:Lcom/facebook/ads/internal/h/s;

    iput-object v2, p0, Lcom/facebook/ads/internal/view/k;->k:Lcom/facebook/ads/internal/h/s;

    iput-object v2, p0, Lcom/facebook/ads/internal/view/k;->l:Lcom/facebook/ads/internal/h/s;

    iput-object v2, p0, Lcom/facebook/ads/internal/view/k;->a:Lcom/facebook/ads/internal/k/a;

    iput-object v2, p0, Lcom/facebook/ads/internal/view/k;->c:Lcom/facebook/ads/internal/m/i;

    iput-object v2, p0, Lcom/facebook/ads/internal/view/k;->h:Lcom/facebook/ads/internal/m/f;

    iput-object v2, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    iput-object v2, p0, Lcom/facebook/ads/internal/view/k;->d:Lcom/facebook/ads/internal/view/c$a;

    iput-object v2, p0, Lcom/facebook/ads/internal/view/k;->e:Ljava/lang/String;

    iput-object v2, p0, Lcom/facebook/ads/internal/view/k;->f:Landroid/content/Context;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->r:Lcom/facebook/ads/internal/view/d/b/p;

    .line 11000
    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/d/b/p;->a()V

    iput-object v2, v0, Lcom/facebook/ads/internal/view/d/b/p;->a:Landroid/widget/ProgressBar;

    iput-object v2, v0, Lcom/facebook/ads/internal/view/d/b/p;->b:Lcom/facebook/ads/internal/view/o;

    .line 0
    iput-object v2, p0, Lcom/facebook/ads/internal/view/k;->r:Lcom/facebook/ads/internal/view/d/b/p;

    return-void
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 0
    .line 4000
    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/o;->a(Z)V

    .line 0
    return-void
.end method

.method public final j()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 0
    .line 5000
    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/o;->getState$18208835()I

    move-result v0

    sget v2, Lcom/facebook/ads/internal/view/d/c/d;->e:I

    if-ne v0, v2, :cond_1

    move v0, v1

    .line 0
    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->m:Ljava/lang/String;

    const-string/jumbo v2, "restart"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6000
    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/o;->c(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    sget v1, Lcom/facebook/ads/q;->b:I

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/o;->b(I)V

    .line 0
    :cond_0
    :goto_1
    return-void

    .line 5000
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 0
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->m:Ljava/lang/String;

    const-string/jumbo v1, "resume"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7000
    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/o;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/o;->c(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    sget v1, Lcom/facebook/ads/q;->b:I

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/o;->b(I)V

    goto :goto_1

    .line 0
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->m:Ljava/lang/String;

    const-string/jumbo v1, "skip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->d:Lcom/facebook/ads/internal/view/c$a;

    sget-object v1, Lcom/facebook/ads/internal/m;->b:Lcom/facebook/ads/internal/m;

    .line 8000
    iget-object v1, v1, Lcom/facebook/ads/internal/m;->j:Ljava/lang/String;

    .line 0
    new-instance v2, Lcom/facebook/ads/internal/view/d/a/b;

    invoke-direct {v2}, Lcom/facebook/ads/internal/view/d/a/b;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/internal/view/c$a;->a(Ljava/lang/String;Lcom/facebook/ads/internal/h/q;)V

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/k;->a()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->m:Ljava/lang/String;

    const-string/jumbo v1, "endvideo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k;->d:Lcom/facebook/ads/internal/view/c$a;

    sget-object v1, Lcom/facebook/ads/internal/m;->c:Lcom/facebook/ads/internal/m;

    .line 9000
    iget-object v1, v1, Lcom/facebook/ads/internal/m;->j:Ljava/lang/String;

    .line 0
    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/view/c$a;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->a:Lcom/facebook/ads/internal/k/a;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/k/a;->a(Ljava/util/Map;)V

    const-string/jumbo v1, "touch"

    .line 10000
    iget-object v2, p0, Lcom/facebook/ads/internal/view/k;->c:Lcom/facebook/ads/internal/m/i;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/m/i;->b()Ljava/util/Map;

    move-result-object v2

    .line 0
    invoke-static {v2}, Lcom/facebook/ads/internal/m/u;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/ads/internal/h/g;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/h/g;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/k;->e:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/internal/h/f;->d(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2
.end method
