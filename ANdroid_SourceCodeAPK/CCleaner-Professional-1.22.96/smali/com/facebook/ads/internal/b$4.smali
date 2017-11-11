.class final Lcom/facebook/ads/internal/b$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/b/ac;

.field final synthetic b:J

.field final synthetic c:Lcom/facebook/ads/internal/g/a;

.field final synthetic d:Lcom/facebook/ads/internal/b;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/b;Lcom/facebook/ads/internal/b/ac;JLcom/facebook/ads/internal/g/a;)V
    .locals 1

    iput-object p1, p0, Lcom/facebook/ads/internal/b$4;->d:Lcom/facebook/ads/internal/b;

    iput-object p2, p0, Lcom/facebook/ads/internal/b$4;->a:Lcom/facebook/ads/internal/b/ac;

    iput-wide p3, p0, Lcom/facebook/ads/internal/b$4;->b:J

    iput-object p5, p0, Lcom/facebook/ads/internal/b$4;->c:Lcom/facebook/ads/internal/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/b$4;->a:Lcom/facebook/ads/internal/b/ac;

    invoke-static {v0}, Lcom/facebook/ads/internal/b;->b(Lcom/facebook/ads/internal/b/a;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/b$4;->a:Lcom/facebook/ads/internal/b/ac;

    instance-of v0, v0, Lcom/facebook/ads/internal/b/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/b$4;->d:Lcom/facebook/ads/internal/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/b;->l(Lcom/facebook/ads/internal/b;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/internal/b$4;->a:Lcom/facebook/ads/internal/b/ac;

    check-cast v0, Lcom/facebook/ads/internal/b/aa;

    invoke-interface {v0}, Lcom/facebook/ads/internal/b/aa;->t()Lcom/facebook/ads/internal/b/l;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/m/al;->a(Lcom/facebook/ads/internal/b/l;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " Failed. Ad request timed out"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/internal/m/u;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/internal/b$4;->b:J

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/b;->a(J)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "error"

    const-string/jumbo v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "msg"

    const-string/jumbo v2, "timeout"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/internal/b$4;->c:Lcom/facebook/ads/internal/g/a;

    sget-object v2, Lcom/facebook/ads/internal/g/i;->a:Lcom/facebook/ads/internal/g/i;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/g/a;->a(Lcom/facebook/ads/internal/g/i;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/ads/internal/b;->a(Ljava/util/List;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/b$4;->d:Lcom/facebook/ads/internal/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/b;->c(Lcom/facebook/ads/internal/b;)V

    return-void
.end method
