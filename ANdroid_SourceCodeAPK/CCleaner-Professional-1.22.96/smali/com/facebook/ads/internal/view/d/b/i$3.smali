.class final Lcom/facebook/ads/internal/view/d/b/i$3;
.super Lcom/facebook/ads/internal/view/d/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/d/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/d/b/i;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/d/b/i;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/b/i$3;->a:Lcom/facebook/ads/internal/view/d/b/i;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/d/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/facebook/ads/internal/h/q;)V
    .locals 2

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/i$3;->a:Lcom/facebook/ads/internal/view/d/b/i;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/d/b/i;->e(Lcom/facebook/ads/internal/view/d/b/i;)I

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/i$3;->a:Lcom/facebook/ads/internal/view/d/b/i;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/d/b/i;->d(Lcom/facebook/ads/internal/view/d/b/i;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/i$3;->a:Lcom/facebook/ads/internal/view/d/b/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/d/b/i;->postInvalidate()V

    .line 0
    return-void
.end method
