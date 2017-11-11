.class final Lcom/facebook/ads/internal/view/d/b/d$2;
.super Lcom/facebook/ads/internal/view/d/a/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/d/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/d/b/d;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/d/b/d;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/b/d$2;->a:Lcom/facebook/ads/internal/view/d/b/d;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/d/a/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/facebook/ads/internal/h/q;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 0
    .line 1000
    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/d$2;->a:Lcom/facebook/ads/internal/view/d/b/d;

    .line 2000
    iget v0, v0, Lcom/facebook/ads/internal/view/d/b/d;->c:I

    .line 1000
    sget v1, Lcom/facebook/ads/internal/view/d/b/d$a;->c:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/d$2;->a:Lcom/facebook/ads/internal/view/d/b/d;

    .line 3000
    const/4 v1, 0x0

    iput v1, v0, Lcom/facebook/ads/internal/view/d/b/d;->c:I

    .line 1000
    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/d$2;->a:Lcom/facebook/ads/internal/view/d/b/d;

    .line 4000
    iget-object v0, v0, Lcom/facebook/ads/internal/view/d/b/d;->b:Landroid/view/View;

    .line 1000
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/internal/view/d/b/d$2$1;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/view/d/b/d$2$1;-><init>(Lcom/facebook/ads/internal/view/d/b/d$2;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/d$2;->a:Lcom/facebook/ads/internal/view/d/b/d;

    .line 5000
    iget-object v0, v0, Lcom/facebook/ads/internal/view/d/b/d;->a:Landroid/os/Handler;

    .line 1000
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/d$2;->a:Lcom/facebook/ads/internal/view/d/b/d;

    .line 6000
    iget-object v0, v0, Lcom/facebook/ads/internal/view/d/b/d;->b:Landroid/view/View;

    .line 1000
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/d$2;->a:Lcom/facebook/ads/internal/view/d/b/d;

    .line 7000
    iget-object v0, v0, Lcom/facebook/ads/internal/view/d/b/d;->b:Landroid/view/View;

    .line 1000
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/d$2;->a:Lcom/facebook/ads/internal/view/d/b/d;

    .line 8000
    iget-object v0, v0, Lcom/facebook/ads/internal/view/d/b/d;->b:Landroid/view/View;

    .line 1000
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
