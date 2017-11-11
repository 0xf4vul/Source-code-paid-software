.class final Lcom/facebook/ads/internal/b$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/b/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field final synthetic d:Ljava/lang/Runnable;

.field final synthetic e:J

.field final synthetic f:Lcom/facebook/ads/internal/g/a;

.field final synthetic g:Lcom/facebook/ads/internal/b;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/b;Ljava/lang/Runnable;JLcom/facebook/ads/internal/g/a;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/facebook/ads/internal/b$5;->g:Lcom/facebook/ads/internal/b;

    iput-object p2, p0, Lcom/facebook/ads/internal/b$5;->d:Ljava/lang/Runnable;

    iput-wide p3, p0, Lcom/facebook/ads/internal/b$5;->e:J

    iput-object p5, p0, Lcom/facebook/ads/internal/b$5;->f:Lcom/facebook/ads/internal/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/facebook/ads/internal/b$5;->a:Z

    iput-boolean v0, p0, Lcom/facebook/ads/internal/b$5;->b:Z

    iput-boolean v0, p0, Lcom/facebook/ads/internal/b$5;->c:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lcom/facebook/ads/internal/b$5;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/b$5;->b:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/b$5;->f:Lcom/facebook/ads/internal/g/a;

    sget-object v1, Lcom/facebook/ads/internal/g/i;->b:Lcom/facebook/ads/internal/g/i;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/g/a;->a(Lcom/facebook/ads/internal/g/i;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/b;->a(Ljava/util/List;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/ads/internal/b/ac;)V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/b$5;->g:Lcom/facebook/ads/internal/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/b;->f(Lcom/facebook/ads/internal/b;)Lcom/facebook/ads/internal/b/a;

    move-result-object v0

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/b$5;->g:Lcom/facebook/ads/internal/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/b;->g(Lcom/facebook/ads/internal/b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/b$5;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/b$5;->g:Lcom/facebook/ads/internal/b;

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/b;->a(Lcom/facebook/ads/internal/b;Lcom/facebook/ads/internal/b/a;)Lcom/facebook/ads/internal/b/a;

    iget-object v0, p0, Lcom/facebook/ads/internal/b$5;->g:Lcom/facebook/ads/internal/b;

    iget-object v0, v0, Lcom/facebook/ads/internal/b;->a:Lcom/facebook/ads/internal/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c;->a()V

    iget-boolean v0, p0, Lcom/facebook/ads/internal/b$5;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/b$5;->a:Z

    iget-wide v0, p0, Lcom/facebook/ads/internal/b$5;->e:J

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/b;->a(J)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/b$5;->f:Lcom/facebook/ads/internal/g/a;

    sget-object v2, Lcom/facebook/ads/internal/g/i;->a:Lcom/facebook/ads/internal/g/i;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/g/a;->a(Lcom/facebook/ads/internal/g/i;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/ads/internal/b;->a(Ljava/util/List;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final a(Lcom/facebook/ads/internal/b/ac;Lcom/facebook/ads/c;)V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/facebook/ads/internal/b$5;->g:Lcom/facebook/ads/internal/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/b;->f(Lcom/facebook/ads/internal/b;)Lcom/facebook/ads/internal/b/a;

    move-result-object v0

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/b$5;->g:Lcom/facebook/ads/internal/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/b;->g(Lcom/facebook/ads/internal/b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/b$5;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {p1}, Lcom/facebook/ads/internal/b;->b(Lcom/facebook/ads/internal/b/a;)V

    iget-boolean v0, p0, Lcom/facebook/ads/internal/b$5;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/b$5;->a:Z

    iget-wide v0, p0, Lcom/facebook/ads/internal/b$5;->e:J

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/b;->a(J)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "error"

    .line 1000
    iget v2, p2, Lcom/facebook/ads/c;->i:I

    .line 0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "msg"

    .line 2000
    iget-object v2, p2, Lcom/facebook/ads/c;->j:Ljava/lang/String;

    .line 0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/internal/b$5;->f:Lcom/facebook/ads/internal/g/a;

    sget-object v2, Lcom/facebook/ads/internal/g/i;->a:Lcom/facebook/ads/internal/g/i;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/g/a;->a(Lcom/facebook/ads/internal/g/i;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/ads/internal/b;->a(Ljava/util/List;Ljava/util/Map;)V

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/b$5;->g:Lcom/facebook/ads/internal/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/b;->c(Lcom/facebook/ads/internal/b;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lcom/facebook/ads/internal/b$5;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/b$5;->c:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/b$5;->f:Lcom/facebook/ads/internal/g/a;

    sget-object v1, Lcom/facebook/ads/internal/g/i;->c:Lcom/facebook/ads/internal/g/i;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/g/a;->a(Lcom/facebook/ads/internal/g/i;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/b;->a(Ljava/util/List;Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/b$5;->g:Lcom/facebook/ads/internal/b;

    iget-object v0, v0, Lcom/facebook/ads/internal/b;->a:Lcom/facebook/ads/internal/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/b$5;->g:Lcom/facebook/ads/internal/b;

    iget-object v0, v0, Lcom/facebook/ads/internal/b;->a:Lcom/facebook/ads/internal/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c;->b()V

    :cond_1
    return-void
.end method
