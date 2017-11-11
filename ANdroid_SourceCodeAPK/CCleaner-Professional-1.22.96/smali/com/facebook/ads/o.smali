.class public final Lcom/facebook/ads/o;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/o$b;,
        Lcom/facebook/ads/o$a;
    }
.end annotation


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Landroid/support/v4/widget/r;

.field private c:Lcom/facebook/ads/o$a;

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/facebook/ads/o;->d:Z

    iput v2, p0, Lcom/facebook/ads/o;->e:I

    iput v2, p0, Lcom/facebook/ads/o;->f:I

    const/high16 v0, 0x3f800000    # 1.0f

    new-instance v1, Lcom/facebook/ads/o$b;

    invoke-direct {v1, p0, v2}, Lcom/facebook/ads/o$b;-><init>(Lcom/facebook/ads/o;B)V

    invoke-static {p0, v0, v1}, Landroid/support/v4/widget/r;->a(Landroid/view/ViewGroup;FLandroid/support/v4/widget/r$a;)Landroid/support/v4/widget/r;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/o;->b:Landroid/support/v4/widget/r;

    iput-object p2, p0, Lcom/facebook/ads/o;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/facebook/ads/o;->a:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/o;->a:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/o;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lcom/facebook/ads/o;->setBackgroundColor(I)V

    const v0, 0x3b9aca01

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/o;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/o;)I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/o;->e:I

    return v0
.end method

.method static synthetic a(Lcom/facebook/ads/o;I)I
    .locals 0

    iput p1, p0, Lcom/facebook/ads/o;->e:I

    return p1
.end method

.method static synthetic a(Lcom/facebook/ads/o;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/o;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/o;)I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/o;->h:I

    return v0
.end method

.method static synthetic b(Lcom/facebook/ads/o;I)I
    .locals 0

    iput p1, p0, Lcom/facebook/ads/o;->h:I

    return p1
.end method

.method static synthetic c(Lcom/facebook/ads/o;)V
    .locals 1

    .prologue
    .line 0
    .line 1000
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/o;->d:Z

    iget-object v0, p0, Lcom/facebook/ads/o;->c:Lcom/facebook/ads/o$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/o;->c:Lcom/facebook/ads/o$a;

    invoke-interface {v0}, Lcom/facebook/ads/o$a;->a()V

    .line 0
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/facebook/ads/o;)I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/o;->g:I

    return v0
.end method

.method static synthetic e(Lcom/facebook/ads/o;)V
    .locals 1

    .prologue
    .line 0
    .line 2000
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/o;->d:Z

    .line 0
    return-void
.end method

.method static synthetic f(Lcom/facebook/ads/o;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/o;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic g(Lcom/facebook/ads/o;)Landroid/support/v4/widget/r;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/o;->b:Landroid/support/v4/widget/r;

    return-object v0
.end method


# virtual methods
.method public final computeScroll()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/o;->b:Landroid/support/v4/widget/r;

    invoke-virtual {v0}, Landroid/support/v4/widget/r;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/view/x;->c(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/o;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTop()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/o;->f:I

    goto :goto_0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/facebook/ads/o;->a:Landroid/webkit/WebView;

    invoke-static {v2, v0, v1}, Landroid/support/v4/widget/r;->b(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/o;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/o;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/o;->b:Landroid/support/v4/widget/r;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/r;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/facebook/ads/o;->a:Landroid/webkit/WebView;

    iget v1, p0, Lcom/facebook/ads/o;->f:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->offsetTopAndBottom(I)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/facebook/ads/o;->a:Landroid/webkit/WebView;

    invoke-static {v2, v0, v1}, Landroid/support/v4/widget/r;->b(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/o;->b:Landroid/support/v4/widget/r;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/r;->b(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final setDragListener(Lcom/facebook/ads/o$a;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/o;->c:Lcom/facebook/ads/o$a;

    return-void
.end method

.method public final setDragRange(I)V
    .locals 4

    iput p1, p0, Lcom/facebook/ads/o;->g:I

    iget-object v0, p0, Lcom/facebook/ads/o;->b:Landroid/support/v4/widget/r;

    iget-object v1, p0, Lcom/facebook/ads/o;->a:Landroid/webkit/WebView;

    const/4 v2, 0x0

    iget v3, p0, Lcom/facebook/ads/o;->g:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/r;->a(Landroid/view/View;II)Z

    return-void
.end method
