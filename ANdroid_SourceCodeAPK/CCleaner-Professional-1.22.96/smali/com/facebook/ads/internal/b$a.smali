.class final Lcom/facebook/ads/internal/b$a;
.super Lcom/facebook/ads/internal/m/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/internal/m/n",
        "<",
        "Lcom/facebook/ads/internal/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/m/n;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/facebook/ads/internal/m/n;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Lcom/facebook/ads/internal/b;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/b;->a(Lcom/facebook/ads/internal/b;Z)Z

    invoke-static {v0}, Lcom/facebook/ads/internal/b;->a(Lcom/facebook/ads/internal/b;)V

    goto :goto_0
.end method
