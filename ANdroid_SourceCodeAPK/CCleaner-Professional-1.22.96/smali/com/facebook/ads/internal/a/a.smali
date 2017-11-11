.class public abstract Lcom/facebook/ads/internal/a/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/facebook/ads/internal/m/p$a;
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/facebook/ads/internal/h/g;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/h/g;

    move-result-object v6

    instance-of v0, p0, Lcom/facebook/ads/internal/a/c;

    if-eqz v0, :cond_1

    .line 1000
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/h/n;

    iget-object v1, v6, Lcom/facebook/ads/internal/h/g;->c:Landroid/content/Context;

    sget-wide v2, Lcom/facebook/ads/internal/h/g;->a:D

    sget-object v4, Lcom/facebook/ads/internal/h/g;->b:Ljava/lang/String;

    move-object v1, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/h/n;-><init>(Ljava/lang/String;DLjava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v6, v0}, Lcom/facebook/ads/internal/h/g;->a(Lcom/facebook/ads/internal/h/d;)V

    .line 0
    :cond_0
    :goto_0
    const-string/jumbo v0, "Click logged"

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/m/u;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 2000
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/h/k;

    iget-object v1, v6, Lcom/facebook/ads/internal/h/g;->c:Landroid/content/Context;

    sget-wide v2, Lcom/facebook/ads/internal/h/g;->a:D

    sget-object v4, Lcom/facebook/ads/internal/h/g;->b:Ljava/lang/String;

    move-object v1, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/h/k;-><init>(Ljava/lang/String;DLjava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v6, v0}, Lcom/facebook/ads/internal/h/g;->a(Lcom/facebook/ads/internal/h/d;)V

    goto :goto_0
.end method

.method public abstract b()V
.end method
