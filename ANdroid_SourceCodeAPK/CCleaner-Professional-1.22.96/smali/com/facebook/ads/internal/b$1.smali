.class final Lcom/facebook/ads/internal/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/b;->a(Lcom/facebook/ads/internal/l/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/l/e;

.field final synthetic b:Lcom/facebook/ads/internal/b;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/b;Lcom/facebook/ads/internal/l/e;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/b$1;->b:Lcom/facebook/ads/internal/b;

    iput-object p2, p0, Lcom/facebook/ads/internal/b$1;->a:Lcom/facebook/ads/internal/l/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/facebook/ads/internal/b$1;->a:Lcom/facebook/ads/internal/l/e;

    .line 1000
    iget-object v0, v0, Lcom/facebook/ads/internal/l/d;->a:Lcom/facebook/ads/internal/g/d;

    .line 0
    if-eqz v0, :cond_0

    .line 2000
    iget-object v1, v0, Lcom/facebook/ads/internal/g/d;->c:Lcom/facebook/ads/internal/g/e;

    .line 0
    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "invalid placement in response"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/internal/b$1;->b:Lcom/facebook/ads/internal/b;

    invoke-static {v1, v0}, Lcom/facebook/ads/internal/b;->a(Lcom/facebook/ads/internal/b;Lcom/facebook/ads/internal/g/d;)Lcom/facebook/ads/internal/g/d;

    iget-object v0, p0, Lcom/facebook/ads/internal/b$1;->b:Lcom/facebook/ads/internal/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/b;->c(Lcom/facebook/ads/internal/b;)V

    return-void
.end method
