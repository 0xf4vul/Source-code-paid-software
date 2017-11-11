.class final Lcom/facebook/ads/internal/view/k$5;
.super Lcom/facebook/ads/internal/k/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/k;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/k;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/k$5;->a:Lcom/facebook/ads/internal/view/k;

    invoke-direct {p0}, Lcom/facebook/ads/internal/k/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/k$5;->a:Lcom/facebook/ads/internal/view/k;

    .line 1000
    iget-object v0, v0, Lcom/facebook/ads/internal/view/k;->c:Lcom/facebook/ads/internal/m/i;

    .line 0
    invoke-virtual {v0}, Lcom/facebook/ads/internal/m/i;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k$5;->a:Lcom/facebook/ads/internal/view/k;

    .line 2000
    iget-object v0, v0, Lcom/facebook/ads/internal/view/k;->c:Lcom/facebook/ads/internal/m/i;

    .line 3000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/facebook/ads/internal/m/i;->b:J

    .line 0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k$5;->a:Lcom/facebook/ads/internal/view/k;

    .line 4000
    iget-object v1, v1, Lcom/facebook/ads/internal/view/k;->e:Ljava/lang/String;

    .line 0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k$5;->a:Lcom/facebook/ads/internal/view/k;

    .line 5000
    iget-object v1, v1, Lcom/facebook/ads/internal/view/k;->a:Lcom/facebook/ads/internal/k/a;

    .line 0
    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/k/a;->a(Ljava/util/Map;)V

    const-string/jumbo v1, "touch"

    iget-object v2, p0, Lcom/facebook/ads/internal/view/k$5;->a:Lcom/facebook/ads/internal/view/k;

    .line 6000
    iget-object v2, v2, Lcom/facebook/ads/internal/view/k;->c:Lcom/facebook/ads/internal/m/i;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/m/i;->b()Ljava/util/Map;

    move-result-object v2

    .line 0
    invoke-static {v2}, Lcom/facebook/ads/internal/m/u;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k$5;->a:Lcom/facebook/ads/internal/view/k;

    .line 7000
    iget-object v1, v1, Lcom/facebook/ads/internal/view/k;->f:Landroid/content/Context;

    .line 0
    invoke-static {v1}, Lcom/facebook/ads/internal/h/g;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/h/g;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/k$5;->a:Lcom/facebook/ads/internal/view/k;

    .line 8000
    iget-object v2, v2, Lcom/facebook/ads/internal/view/k;->e:Ljava/lang/String;

    .line 0
    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/internal/h/f;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/k$5;->a:Lcom/facebook/ads/internal/view/k;

    .line 9000
    iget-object v0, v0, Lcom/facebook/ads/internal/view/k;->d:Lcom/facebook/ads/internal/view/c$a;

    .line 0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k$5;->a:Lcom/facebook/ads/internal/view/k;

    .line 10000
    iget-object v0, v0, Lcom/facebook/ads/internal/view/k;->d:Lcom/facebook/ads/internal/view/c$a;

    .line 0
    sget-object v1, Lcom/facebook/ads/internal/m;->f:Lcom/facebook/ads/internal/m;

    .line 11000
    iget-object v1, v1, Lcom/facebook/ads/internal/m;->j:Ljava/lang/String;

    .line 0
    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/view/c$a;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
