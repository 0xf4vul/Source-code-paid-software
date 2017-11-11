.class final Lcom/facebook/ads/internal/view/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/AudienceNetworkActivity$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/d;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/d;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d$1;->a:Lcom/facebook/ads/internal/view/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d$1;->a:Lcom/facebook/ads/internal/view/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/d;->a(Lcom/facebook/ads/internal/view/d;)Lcom/facebook/ads/internal/view/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/a/d;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d$1;->a:Lcom/facebook/ads/internal/view/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/d;->a(Lcom/facebook/ads/internal/view/d;)Lcom/facebook/ads/internal/view/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/a/d;->goBack()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
