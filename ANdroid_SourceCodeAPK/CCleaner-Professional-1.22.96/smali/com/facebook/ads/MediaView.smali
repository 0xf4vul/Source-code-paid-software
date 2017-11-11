.class public Lcom/facebook/ads/MediaView;
.super Landroid/widget/RelativeLayout;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:I


# instance fields
.field private c:Lcom/facebook/ads/internal/view/e;

.field private d:Lcom/facebook/ads/internal/view/hscroll/b;

.field private e:Lcom/facebook/ads/MediaViewVideoRenderer;

.field private f:Lcom/facebook/ads/j;

.field private g:Z

.field private h:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/MediaView;->a:Ljava/lang/String;

    const/16 v0, 0x33

    const/16 v1, 0x91

    const/16 v2, 0x96

    const/16 v3, 0xa5

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/facebook/ads/MediaView;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 0
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/MediaView;->h:Z

    new-instance v0, Lcom/facebook/ads/internal/view/e;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/internal/view/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/MediaView;->setImageRenderer(Lcom/facebook/ads/internal/view/e;)V

    new-instance v0, Lcom/facebook/ads/internal/view/hscroll/b;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/internal/view/hscroll/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/MediaView;->setCarouselRenderer(Lcom/facebook/ads/internal/view/hscroll/b;)V

    new-instance v0, Lcom/facebook/ads/internal/view/h;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/internal/view/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/MediaView;->setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    .line 1000
    sget v0, Lcom/facebook/ads/MediaView;->b:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/MediaView;->setBackgroundColor(I)V

    .line 0
    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/MediaView;)Lcom/facebook/ads/MediaViewVideoRenderer;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/MediaViewVideoRenderer;

    return-object v0
.end method

.method private setCarouselRenderer(Lcom/facebook/ads/internal/view/hscroll/b;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-boolean v0, p0, Lcom/facebook/ads/MediaView;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Carousel renderer must be set before nativeAd."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/view/hscroll/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/view/hscroll/b;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/MediaView;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/MediaView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1, v1}, Lcom/facebook/ads/internal/view/hscroll/b;->setChildSpacing(I)V

    invoke-virtual {p1, v4, v0, v4, v0}, Lcom/facebook/ads/internal/view/hscroll/b;->setPadding(IIII)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/hscroll/b;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p1, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/view/hscroll/b;

    return-void
.end method

.method private setImageRenderer(Lcom/facebook/ads/internal/view/e;)V
    .locals 2

    const/4 v1, -0x1

    iget-boolean v0, p0, Lcom/facebook/ads/MediaView;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Image renderer must be set before nativeAd."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/MediaView;->c:Lcom/facebook/ads/internal/view/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->c:Lcom/facebook/ads/internal/view/e;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/MediaView;->removeView(Landroid/view/View;)V

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/e;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p1, p0, Lcom/facebook/ads/MediaView;->c:Lcom/facebook/ads/internal/view/e;

    return-void
.end method


# virtual methods
.method protected getAdEventManager()Lcom/facebook/ads/internal/h/f;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/MediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/h/g;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/h/g;

    move-result-object v0

    return-object v0
.end method

.method public setAutoplay(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/facebook/ads/MediaView;->h:Z

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/MediaViewVideoRenderer;

    instance-of v0, v0, Lcom/facebook/ads/internal/view/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/MediaViewVideoRenderer;->setAutoplay(Z)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MediaView only supports setAutoplay for backwards compatibility. New MediaViewVideoRenderer classes should implement their own autoplay handling."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAutoplayOnMobile(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/MediaViewVideoRenderer;

    instance-of v0, v0, Lcom/facebook/ads/internal/view/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/MediaViewVideoRenderer;->setAutoplayOnMobile(Z)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MediaView only supports setAutoplayOnMobile for backwards compatibility. New MediaViewVideoRenderer classes should implement their own autoplay handling."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setListener(Lcom/facebook/ads/j;)V
    .locals 2

    iput-object p1, p0, Lcom/facebook/ads/MediaView;->f:Lcom/facebook/ads/j;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/MediaViewVideoRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/MediaViewVideoRenderer;->setListener(Lcom/facebook/ads/internal/view/i;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/MediaViewVideoRenderer;

    new-instance v1, Lcom/facebook/ads/MediaView$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/MediaView$1;-><init>(Lcom/facebook/ads/MediaView;Lcom/facebook/ads/j;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/MediaViewVideoRenderer;->setListener(Lcom/facebook/ads/internal/view/i;)V

    goto :goto_0
.end method

.method public setNativeAd(Lcom/facebook/ads/k;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 0
    iput-boolean v1, p0, Lcom/facebook/ads/MediaView;->g:Z

    .line 3000
    iput-object p0, p1, Lcom/facebook/ads/k;->b:Lcom/facebook/ads/MediaView;

    .line 0
    iget-boolean v0, p0, Lcom/facebook/ads/MediaView;->h:Z

    .line 4000
    iput-boolean v0, p1, Lcom/facebook/ads/k;->c:Z

    .line 5000
    invoke-virtual {p1}, Lcom/facebook/ads/k;->g()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v2

    .line 0
    :goto_0
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->c:Lcom/facebook/ads/internal/view/e;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/internal/view/e;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/view/hscroll/b;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/internal/view/hscroll/b;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/view/hscroll/b;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/MediaView;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/view/hscroll/b;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/internal/view/hscroll/b;->setCurrentPosition(I)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/view/hscroll/b;

    new-instance v1, Lcom/facebook/ads/internal/b/n;

    iget-object v2, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/view/hscroll/b;

    invoke-virtual {p1}, Lcom/facebook/ads/k;->g()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/ads/internal/b/n;-><init>(Lcom/facebook/ads/internal/view/hscroll/b;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/hscroll/b;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    :cond_0
    :goto_1
    return-void

    .line 5000
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/k;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/k;

    invoke-virtual {v0}, Lcom/facebook/ads/k;->a()Lcom/facebook/ads/k$a;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 6000
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_5

    invoke-virtual {p1}, Lcom/facebook/ads/k;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 0
    :goto_2
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/MediaViewVideoRenderer;->setNativeAd(Lcom/facebook/ads/k;)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->c:Lcom/facebook/ads/internal/view/e;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/internal/view/e;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/view/hscroll/b;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/internal/view/hscroll/b;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/MediaView;->bringChildToFront(Landroid/view/View;)V

    iput-boolean v1, p0, Lcom/facebook/ads/MediaView;->g:Z

    goto :goto_1

    :cond_5
    move v0, v2

    .line 6000
    goto :goto_2

    .line 0
    :cond_6
    invoke-virtual {p1}, Lcom/facebook/ads/k;->a()Lcom/facebook/ads/k$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->c:Lcom/facebook/ads/internal/view/e;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/internal/view/e;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/view/hscroll/b;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/internal/view/hscroll/b;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->c:Lcom/facebook/ads/internal/view/e;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/MediaView;->bringChildToFront(Landroid/view/View;)V

    iput-boolean v1, p0, Lcom/facebook/ads/MediaView;->g:Z

    new-instance v0, Lcom/facebook/ads/internal/m/ae;

    iget-object v3, p0, Lcom/facebook/ads/MediaView;->c:Lcom/facebook/ads/internal/view/e;

    invoke-direct {v0, v3}, Lcom/facebook/ads/internal/m/ae;-><init>(Lcom/facebook/ads/internal/view/e;)V

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/facebook/ads/k;->a()Lcom/facebook/ads/k$a;

    move-result-object v3

    .line 7000
    iget-object v3, v3, Lcom/facebook/ads/k$a;->a:Ljava/lang/String;

    .line 0
    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/m/ae;->a([Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 0
    iget-boolean v0, p0, Lcom/facebook/ads/MediaView;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Video renderer must be set before nativeAd."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/MediaViewVideoRenderer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/MediaView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/MediaViewVideoRenderer;

    .line 2000
    iget-object v0, v0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/j;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/j;->f()V

    .line 0
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/MediaView;->getAdEventManager()Lcom/facebook/ads/internal/h/f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->setAdEventManager(Lcom/facebook/ads/internal/h/f;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p1, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/MediaViewVideoRenderer;

    return-void
.end method
