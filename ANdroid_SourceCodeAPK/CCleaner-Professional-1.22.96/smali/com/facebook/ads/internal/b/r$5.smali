.class final Lcom/facebook/ads/internal/b/r$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/b/r;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/b/r;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/b/r;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/b/r$5;->a:Lcom/facebook/ads/internal/b/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/b/r$5;->a:Lcom/facebook/ads/internal/b/r;

    iget-object v0, v0, Lcom/facebook/ads/internal/b/r;->a:Lcom/facebook/ads/internal/view/o;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/b/r$5;->a:Lcom/facebook/ads/internal/b/r;

    iget-object v0, v0, Lcom/facebook/ads/internal/b/r;->a:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/o;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/internal/b/r$5;->a:Lcom/facebook/ads/internal/b/r;

    invoke-static {v0}, Lcom/facebook/ads/internal/b/r;->c(Lcom/facebook/ads/internal/b/r;)Lcom/facebook/ads/o;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/b/r$5;->a:Lcom/facebook/ads/internal/b/r;

    invoke-static {v0}, Lcom/facebook/ads/internal/b/r;->c(Lcom/facebook/ads/internal/b/r;)Lcom/facebook/ads/o;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/b/r$5;->a:Lcom/facebook/ads/internal/b/r;

    iget-object v1, v1, Lcom/facebook/ads/internal/b/r;->a:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/o;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/o;->setDragRange(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/internal/b/r$5;->a:Lcom/facebook/ads/internal/b/r;

    iget-object v0, v0, Lcom/facebook/ads/internal/b/r;->a:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/o;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
