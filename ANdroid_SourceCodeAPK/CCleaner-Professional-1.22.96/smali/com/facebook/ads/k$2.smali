.class final Lcom/facebook/ads/k$2;
.super Lcom/facebook/ads/internal/k/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/k;->a(Landroid/view/View;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/k;


# direct methods
.method constructor <init>(Lcom/facebook/ads/k;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/k$2;->a:Lcom/facebook/ads/k;

    invoke-direct {p0}, Lcom/facebook/ads/internal/k/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/facebook/ads/k$2;->a:Lcom/facebook/ads/k;

    invoke-static {v0}, Lcom/facebook/ads/k;->b(Lcom/facebook/ads/k;)Lcom/facebook/ads/internal/m/i;

    move-result-object v0

    .line 1000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/facebook/ads/internal/m/i;->b:J

    .line 0
    iget-object v0, p0, Lcom/facebook/ads/k$2;->a:Lcom/facebook/ads/k;

    invoke-static {v0}, Lcom/facebook/ads/k;->c(Lcom/facebook/ads/k;)Lcom/facebook/ads/internal/k/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/k/a;->b()V

    iget-object v0, p0, Lcom/facebook/ads/k$2;->a:Lcom/facebook/ads/k;

    invoke-static {v0}, Lcom/facebook/ads/k;->d(Lcom/facebook/ads/k;)Lcom/facebook/ads/internal/b/ab;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/k$2;->a:Lcom/facebook/ads/k;

    invoke-static {v0}, Lcom/facebook/ads/k;->c(Lcom/facebook/ads/k;)Lcom/facebook/ads/internal/k/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/k$2;->a:Lcom/facebook/ads/k;

    invoke-static {v0}, Lcom/facebook/ads/k;->c(Lcom/facebook/ads/k;)Lcom/facebook/ads/internal/k/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/k/a;->b()V

    iget-object v0, p0, Lcom/facebook/ads/k$2;->a:Lcom/facebook/ads/k;

    invoke-static {v0}, Lcom/facebook/ads/k;->e(Lcom/facebook/ads/k;)Lcom/facebook/ads/internal/k/a;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/k$2;->a:Lcom/facebook/ads/k;

    invoke-static {v0}, Lcom/facebook/ads/k;->d(Lcom/facebook/ads/k;)Lcom/facebook/ads/internal/b/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/k$2;->a:Lcom/facebook/ads/k;

    invoke-static {v1}, Lcom/facebook/ads/k;->f(Lcom/facebook/ads/k;)Landroid/view/View;

    move-result-object v1

    .line 2000
    iput-object v1, v0, Lcom/facebook/ads/internal/b/ab;->g:Landroid/view/View;

    .line 0
    iget-object v0, p0, Lcom/facebook/ads/k$2;->a:Lcom/facebook/ads/k;

    invoke-static {v0}, Lcom/facebook/ads/k;->d(Lcom/facebook/ads/k;)Lcom/facebook/ads/internal/b/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/k$2;->a:Lcom/facebook/ads/k;

    invoke-static {v1}, Lcom/facebook/ads/k;->g(Lcom/facebook/ads/k;)Lcom/facebook/ads/l$a;

    move-result-object v1

    .line 3000
    iput-object v1, v0, Lcom/facebook/ads/internal/b/ab;->c:Lcom/facebook/ads/l$a;

    .line 0
    iget-object v0, p0, Lcom/facebook/ads/k$2;->a:Lcom/facebook/ads/k;

    invoke-static {v0}, Lcom/facebook/ads/k;->d(Lcom/facebook/ads/k;)Lcom/facebook/ads/internal/b/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/k$2;->a:Lcom/facebook/ads/k;

    invoke-static {v1}, Lcom/facebook/ads/k;->h(Lcom/facebook/ads/k;)Z

    move-result v1

    .line 4000
    iput-boolean v1, v0, Lcom/facebook/ads/internal/b/ab;->d:Z

    .line 0
    iget-object v0, p0, Lcom/facebook/ads/k$2;->a:Lcom/facebook/ads/k;

    invoke-static {v0}, Lcom/facebook/ads/k;->d(Lcom/facebook/ads/k;)Lcom/facebook/ads/internal/b/ab;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/k$2;->a:Lcom/facebook/ads/k;

    invoke-static {v0}, Lcom/facebook/ads/k;->i(Lcom/facebook/ads/k;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 5000
    :goto_1
    iput-boolean v0, v1, Lcom/facebook/ads/internal/b/ab;->e:Z

    .line 0
    iget-object v0, p0, Lcom/facebook/ads/k$2;->a:Lcom/facebook/ads/k;

    invoke-static {v0}, Lcom/facebook/ads/k;->d(Lcom/facebook/ads/k;)Lcom/facebook/ads/internal/b/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/k$2;->a:Lcom/facebook/ads/k;

    invoke-static {v1}, Lcom/facebook/ads/k;->j(Lcom/facebook/ads/k;)Z

    move-result v1

    .line 6000
    iput-boolean v1, v0, Lcom/facebook/ads/internal/b/ab;->f:Z

    .line 0
    iget-object v0, p0, Lcom/facebook/ads/k$2;->a:Lcom/facebook/ads/k;

    invoke-static {v0}, Lcom/facebook/ads/k;->d(Lcom/facebook/ads/k;)Lcom/facebook/ads/internal/b/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/ab;->a()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
