.class final Lcom/facebook/ads/internal/b/r$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/AudienceNetworkActivity$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/b/r;
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

    iput-object p1, p0, Lcom/facebook/ads/internal/b/r$1;->a:Lcom/facebook/ads/internal/b/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/ads/internal/b/r$1;->a:Lcom/facebook/ads/internal/b/r;

    invoke-static {v1}, Lcom/facebook/ads/internal/b/r;->a(Lcom/facebook/ads/internal/b/r;)Lcom/facebook/ads/internal/view/d/b/i;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/internal/b/r$1;->a:Lcom/facebook/ads/internal/b/r;

    invoke-static {v1}, Lcom/facebook/ads/internal/b/r;->a(Lcom/facebook/ads/internal/b/r;)Lcom/facebook/ads/internal/view/d/b/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/d/b/i;->a()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/internal/b/r$1;->a:Lcom/facebook/ads/internal/b/r;

    invoke-static {v1}, Lcom/facebook/ads/internal/b/r;->a(Lcom/facebook/ads/internal/b/r;)Lcom/facebook/ads/internal/view/d/b/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/d/b/i;->getSkipSeconds()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/internal/b/r$1;->a:Lcom/facebook/ads/internal/b/r;

    iget-object v1, v1, Lcom/facebook/ads/internal/b/r;->a:Lcom/facebook/ads/internal/view/o;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/internal/b/r$1;->a:Lcom/facebook/ads/internal/b/r;

    iget-object v1, v1, Lcom/facebook/ads/internal/b/r;->a:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/o;->c()V

    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/internal/b/r$1;->a:Lcom/facebook/ads/internal/b/r;

    iget-object v1, v1, Lcom/facebook/ads/internal/b/r;->a:Lcom/facebook/ads/internal/view/o;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/internal/b/r$1;->a:Lcom/facebook/ads/internal/b/r;

    iget-object v1, v1, Lcom/facebook/ads/internal/b/r;->a:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/o;->d()V

    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/internal/b/r$1;->a:Lcom/facebook/ads/internal/b/r;

    invoke-static {v1}, Lcom/facebook/ads/internal/b/r;->b(Lcom/facebook/ads/internal/b/r;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
