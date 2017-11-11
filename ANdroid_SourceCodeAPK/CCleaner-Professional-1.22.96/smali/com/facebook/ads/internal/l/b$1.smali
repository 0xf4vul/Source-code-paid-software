.class public final Lcom/facebook/ads/internal/l/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/l/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/g/f;

.field final synthetic b:Lcom/facebook/ads/internal/l/b;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/l/b;Lcom/facebook/ads/internal/g/f;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/l/b$1;->b:Lcom/facebook/ads/internal/l/b;

    iput-object p2, p0, Lcom/facebook/ads/internal/l/b$1;->a:Lcom/facebook/ads/internal/g/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 0
    iget-object v2, p0, Lcom/facebook/ads/internal/l/b$1;->b:Lcom/facebook/ads/internal/l/b;

    invoke-static {v2}, Lcom/facebook/ads/internal/l/b;->a(Lcom/facebook/ads/internal/l/b;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/g/j;->b(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/facebook/ads/internal/l/b$1;->a:Lcom/facebook/ads/internal/g/f;

    .line 1000
    iget-object v2, v2, Lcom/facebook/ads/internal/g/f;->i:Lcom/facebook/ads/internal/m/x;

    .line 2000
    iget-object v2, v2, Lcom/facebook/ads/internal/m/x;->a:Lcom/facebook/ads/internal/m/x$a;

    sget-object v3, Lcom/facebook/ads/internal/m/x$a;->b:Lcom/facebook/ads/internal/m/x$a;

    if-ne v2, v3, :cond_1

    .line 0
    :goto_0
    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/l/b$1;->a:Lcom/facebook/ads/internal/g/f;

    .line 3000
    iget-object v0, v0, Lcom/facebook/ads/internal/g/f;->i:Lcom/facebook/ads/internal/m/x;

    .line 0
    sget-object v1, Lcom/facebook/ads/internal/g/j;->o:Ljava/lang/String;

    .line 4000
    iget-object v2, v0, Lcom/facebook/ads/internal/m/x;->d:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/facebook/ads/internal/e;

    sget-object v3, Lcom/facebook/ads/internal/a;->o:Lcom/facebook/ads/internal/a;

    const-string/jumbo v4, "Bid %d for IDFA %s being used on IDFA %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/facebook/ads/internal/m/x;->b:Ljava/lang/Long;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v0, v0, Lcom/facebook/ads/internal/m/x;->d:Ljava/lang/String;

    aput-object v0, v5, v6

    const/4 v0, 0x2

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/facebook/ads/internal/e;-><init>(Lcom/facebook/ads/internal/a;Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/facebook/ads/internal/e; {:try_start_0 .. :try_end_0} :catch_0

    .line 0
    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/ads/internal/l/b$1;->b:Lcom/facebook/ads/internal/l/b;

    .line 5000
    iget-object v0, v0, Lcom/facebook/ads/internal/e;->a:Lcom/facebook/ads/internal/d;

    .line 0
    invoke-static {v1, v0}, Lcom/facebook/ads/internal/l/b;->a(Lcom/facebook/ads/internal/l/b;Lcom/facebook/ads/internal/d;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/l/b$1;->b:Lcom/facebook/ads/internal/l/b;

    iget-object v1, p0, Lcom/facebook/ads/internal/l/b$1;->a:Lcom/facebook/ads/internal/g/f;

    .line 6000
    iget-object v1, v1, Lcom/facebook/ads/internal/g/f;->i:Lcom/facebook/ads/internal/m/x;

    .line 7000
    iget-object v1, v1, Lcom/facebook/ads/internal/m/x;->c:Ljava/lang/String;

    .line 0
    invoke-static {v0, v1}, Lcom/facebook/ads/internal/l/b;->a(Lcom/facebook/ads/internal/l/b;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 2000
    goto :goto_0

    .line 0
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/internal/l/b$1;->b:Lcom/facebook/ads/internal/l/b;

    iget-object v1, p0, Lcom/facebook/ads/internal/l/b$1;->a:Lcom/facebook/ads/internal/g/f;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/g/f;->c()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/internal/l/b;->b:Ljava/util/Map;

    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/internal/l/b$1;->b:Lcom/facebook/ads/internal/l/b;

    iget-object v1, p0, Lcom/facebook/ads/internal/l/b$1;->b:Lcom/facebook/ads/internal/l/b;

    invoke-static {v1}, Lcom/facebook/ads/internal/l/b;->a(Lcom/facebook/ads/internal/l/b;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/l/b$1;->a:Lcom/facebook/ads/internal/g/f;

    iget-object v2, v2, Lcom/facebook/ads/internal/g/f;->e:Lcom/facebook/ads/internal/h;

    invoke-static {v1, v2}, Lcom/facebook/ads/internal/m/am;->a(Landroid/content/Context;Lcom/facebook/ads/internal/h;)Lcom/facebook/ads/internal/j/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/l/b;->a(Lcom/facebook/ads/internal/l/b;Lcom/facebook/ads/internal/j/a/a;)Lcom/facebook/ads/internal/j/a/a;

    iget-object v0, p0, Lcom/facebook/ads/internal/l/b$1;->b:Lcom/facebook/ads/internal/l/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/l/b;->c(Lcom/facebook/ads/internal/l/b;)Lcom/facebook/ads/internal/j/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/l/b$1;->b:Lcom/facebook/ads/internal/l/b;

    invoke-static {v1}, Lcom/facebook/ads/internal/l/b;->b(Lcom/facebook/ads/internal/l/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/l/b$1;->b:Lcom/facebook/ads/internal/l/b;

    invoke-static {v2}, Lcom/facebook/ads/internal/l/b;->c(Lcom/facebook/ads/internal/l/b;)Lcom/facebook/ads/internal/j/a/a;

    invoke-static {}, Lcom/facebook/ads/internal/j/a/a;->a()Lcom/facebook/ads/internal/j/a/p;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/l/b$1;->b:Lcom/facebook/ads/internal/l/b;

    iget-object v3, v3, Lcom/facebook/ads/internal/l/b;->b:Ljava/util/Map;

    .line 8000
    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/j/a/p;->putAll(Ljava/util/Map;)V

    .line 0
    iget-object v3, p0, Lcom/facebook/ads/internal/l/b$1;->b:Lcom/facebook/ads/internal/l/b;

    invoke-static {v3}, Lcom/facebook/ads/internal/l/b;->d(Lcom/facebook/ads/internal/l/b;)Lcom/facebook/ads/internal/j/a/b;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/ads/internal/j/a/a;->a(Ljava/lang/String;Lcom/facebook/ads/internal/j/a/p;Lcom/facebook/ads/internal/j/a/b;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/facebook/ads/internal/l/b$1;->b:Lcom/facebook/ads/internal/l/b;

    sget-object v2, Lcom/facebook/ads/internal/a;->i:Lcom/facebook/ads/internal/a;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/internal/a;->a(Ljava/lang/String;)Lcom/facebook/ads/internal/d;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/internal/l/b;->a(Lcom/facebook/ads/internal/l/b;Lcom/facebook/ads/internal/d;)V

    goto :goto_1
.end method
