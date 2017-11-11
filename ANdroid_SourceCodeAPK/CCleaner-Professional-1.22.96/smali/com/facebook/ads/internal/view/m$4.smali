.class final Lcom/facebook/ads/internal/view/m$4;
.super Lcom/facebook/ads/internal/view/d/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/m;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/m;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/m$4;->a:Lcom/facebook/ads/internal/view/m;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/d/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/facebook/ads/internal/h/q;)V
    .locals 1

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/facebook/ads/internal/view/m$4;->a:Lcom/facebook/ads/internal/view/m;

    .line 2000
    iget-object v0, v0, Lcom/facebook/ads/internal/view/m;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    .line 1000
    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->finish()V

    .line 0
    return-void
.end method
