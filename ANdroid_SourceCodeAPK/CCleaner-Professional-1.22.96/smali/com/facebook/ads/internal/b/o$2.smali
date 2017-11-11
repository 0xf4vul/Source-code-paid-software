.class final Lcom/facebook/ads/internal/b/o$2;
.super Lcom/facebook/ads/internal/b/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/b/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/b/o;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/b/o;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/b/o$2;->a:Lcom/facebook/ads/internal/b/o;

    invoke-direct {p0}, Lcom/facebook/ads/internal/b/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b/o$2;->a:Lcom/facebook/ads/internal/b/o;

    invoke-static {v0}, Lcom/facebook/ads/internal/b/o;->a(Lcom/facebook/ads/internal/b/o;)Lcom/facebook/ads/internal/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/b/o$2;->a:Lcom/facebook/ads/internal/b/o;

    invoke-static {v0}, Lcom/facebook/ads/internal/b/o;->a(Lcom/facebook/ads/internal/b/o;)Lcom/facebook/ads/internal/b/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/b/c;->a()V

    :cond_0
    return-void
.end method
