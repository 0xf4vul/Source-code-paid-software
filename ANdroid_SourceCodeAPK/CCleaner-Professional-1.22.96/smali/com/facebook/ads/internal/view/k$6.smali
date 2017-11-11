.class final Lcom/facebook/ads/internal/view/k$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/k;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/k;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/k$6;->a:Lcom/facebook/ads/internal/view/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/k$6;->a:Lcom/facebook/ads/internal/view/k;

    .line 1000
    iget-object v0, v0, Lcom/facebook/ads/internal/view/k;->g:Lcom/facebook/ads/internal/view/d/b/i;

    .line 0
    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/d/b/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k$6;->a:Lcom/facebook/ads/internal/view/k;

    .line 2000
    iget-object v0, v0, Lcom/facebook/ads/internal/view/k;->g:Lcom/facebook/ads/internal/view/d/b/i;

    .line 0
    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/d/b/i;->getSkipSeconds()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k$6;->a:Lcom/facebook/ads/internal/view/k;

    .line 3000
    iget-object v0, v0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    .line 0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k$6;->a:Lcom/facebook/ads/internal/view/k;

    .line 4000
    iget-object v0, v0, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    .line 0
    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/o;->c()V

    goto :goto_0
.end method
