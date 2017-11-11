.class final Lcom/facebook/ads/internal/b/q$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/b/q;->a(Landroid/content/Context;Lcom/facebook/ads/internal/b/e;Ljava/util/Map;Lcom/facebook/ads/internal/h/f;Ljava/util/EnumSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/b/r;

.field final synthetic b:Lcom/facebook/ads/internal/b/q;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/b/q;Lcom/facebook/ads/internal/b/r;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/b/q$1;->b:Lcom/facebook/ads/internal/b/q;

    iput-object p2, p0, Lcom/facebook/ads/internal/b/q$1;->a:Lcom/facebook/ads/internal/b/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/b/q$1;->b:Lcom/facebook/ads/internal/b/q;

    invoke-static {v0}, Lcom/facebook/ads/internal/b/q;->b(Lcom/facebook/ads/internal/b/q;)Lcom/facebook/ads/internal/b/e;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/b/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/facebook/ads/internal/b/q$1;->b:Lcom/facebook/ads/internal/b/q;

    iget-object v1, p0, Lcom/facebook/ads/internal/b/q$1;->a:Lcom/facebook/ads/internal/b/r;

    .line 1000
    iget v1, v1, Lcom/facebook/ads/internal/b/r;->i:I

    .line 0
    invoke-static {v0, v1}, Lcom/facebook/ads/internal/b/q;->a(Lcom/facebook/ads/internal/b/q;I)I

    invoke-static {}, Lcom/facebook/ads/internal/b/q;->d()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/b/q$1;->b:Lcom/facebook/ads/internal/b/q;

    invoke-static {v1}, Lcom/facebook/ads/internal/b/q;->c(Lcom/facebook/ads/internal/b/q;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/b/q$1;->a:Lcom/facebook/ads/internal/b/r;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/facebook/ads/c;)V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/facebook/ads/internal/b/q$1;->a:Lcom/facebook/ads/internal/b/r;

    .line 2000
    iget-object v1, v0, Lcom/facebook/ads/internal/b/r;->h:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/facebook/ads/internal/b/r;->h:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 0
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/b/q$1;->b:Lcom/facebook/ads/internal/b/q;

    invoke-static {v0}, Lcom/facebook/ads/internal/b/q;->b(Lcom/facebook/ads/internal/b/q;)Lcom/facebook/ads/internal/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/b/q$1;->b:Lcom/facebook/ads/internal/b/q;

    invoke-interface {v0, v1, p1}, Lcom/facebook/ads/internal/b/e;->a(Lcom/facebook/ads/internal/b/d;Lcom/facebook/ads/c;)V

    return-void
.end method

.method public final a(Lcom/facebook/ads/internal/b/y;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/b/q$1;->b:Lcom/facebook/ads/internal/b/q;

    invoke-static {v0}, Lcom/facebook/ads/internal/b/q;->a(Lcom/facebook/ads/internal/b/q;)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/b/q$1;->b:Lcom/facebook/ads/internal/b/q;

    invoke-static {v0}, Lcom/facebook/ads/internal/b/q;->b(Lcom/facebook/ads/internal/b/q;)Lcom/facebook/ads/internal/b/e;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/b/q$1;->b:Lcom/facebook/ads/internal/b/q;

    invoke-static {v0}, Lcom/facebook/ads/internal/b/q;->b(Lcom/facebook/ads/internal/b/q;)Lcom/facebook/ads/internal/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/b/q$1;->b:Lcom/facebook/ads/internal/b/q;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/b/e;->a(Lcom/facebook/ads/internal/b/d;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b/q$1;->b:Lcom/facebook/ads/internal/b/q;

    invoke-static {v0}, Lcom/facebook/ads/internal/b/q;->b(Lcom/facebook/ads/internal/b/q;)Lcom/facebook/ads/internal/b/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/b/e;->a()V

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method
