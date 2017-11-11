.class final Lcom/facebook/ads/internal/view/m$2;
.super Lcom/facebook/ads/internal/view/d/a/i;


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

    iput-object p1, p0, Lcom/facebook/ads/internal/view/m$2;->a:Lcom/facebook/ads/internal/view/m;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/d/a/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/facebook/ads/internal/h/q;)V
    .locals 2

    .prologue
    .line 0
    check-cast p1, Lcom/facebook/ads/internal/view/d/a/h;

    .line 1000
    iget-object v0, p0, Lcom/facebook/ads/internal/view/m$2;->a:Lcom/facebook/ads/internal/view/m;

    .line 2000
    iget-object v0, v0, Lcom/facebook/ads/internal/view/m;->c:Lcom/facebook/ads/internal/view/c$a;

    .line 1000
    const-string/jumbo v1, "videoInterstitalEvent"

    invoke-interface {v0, v1, p1}, Lcom/facebook/ads/internal/view/c$a;->a(Ljava/lang/String;Lcom/facebook/ads/internal/h/q;)V

    .line 0
    return-void
.end method
