.class final Lcom/facebook/ads/internal/m/f$5;
.super Lcom/facebook/ads/internal/view/d/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/m/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/m/f;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/m/f;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/m/f$5;->a:Lcom/facebook/ads/internal/m/f;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/d/a/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/facebook/ads/internal/h/q;)V
    .locals 2

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/facebook/ads/internal/m/f$5;->a:Lcom/facebook/ads/internal/m/f;

    iget-object v1, p0, Lcom/facebook/ads/internal/m/f$5;->a:Lcom/facebook/ads/internal/m/f;

    invoke-static {v1}, Lcom/facebook/ads/internal/m/f;->c(Lcom/facebook/ads/internal/m/f;)Lcom/facebook/ads/internal/view/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/o;->getDuration()I

    move-result v1

    iput v1, v0, Lcom/facebook/ads/internal/m/f;->l:I

    .line 0
    return-void
.end method
