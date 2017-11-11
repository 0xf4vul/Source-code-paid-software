.class final Lcom/facebook/ads/internal/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/b/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/facebook/ads/internal/b;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/b;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/b$3;->b:Lcom/facebook/ads/internal/b;

    iput-object p2, p0, Lcom/facebook/ads/internal/b$3;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b$3;->b:Lcom/facebook/ads/internal/b;

    iget-object v0, v0, Lcom/facebook/ads/internal/b;->a:Lcom/facebook/ads/internal/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c;->c()V

    return-void
.end method

.method public final a(Lcom/facebook/ads/internal/b/d;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/b$3;->b:Lcom/facebook/ads/internal/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/b;->f(Lcom/facebook/ads/internal/b;)Lcom/facebook/ads/internal/b/a;

    move-result-object v0

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/b$3;->b:Lcom/facebook/ads/internal/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/b;->g(Lcom/facebook/ads/internal/b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/b$3;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/b$3;->b:Lcom/facebook/ads/internal/b;

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/b;->a(Lcom/facebook/ads/internal/b;Lcom/facebook/ads/internal/b/a;)Lcom/facebook/ads/internal/b/a;

    iget-object v0, p0, Lcom/facebook/ads/internal/b$3;->b:Lcom/facebook/ads/internal/b;

    iget-object v0, v0, Lcom/facebook/ads/internal/b;->a:Lcom/facebook/ads/internal/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c;->a()V

    iget-object v0, p0, Lcom/facebook/ads/internal/b$3;->b:Lcom/facebook/ads/internal/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/b;->b(Lcom/facebook/ads/internal/b;)V

    goto :goto_0
.end method

.method public final a(Lcom/facebook/ads/internal/b/d;Lcom/facebook/ads/c;)V
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/facebook/ads/internal/b$3;->b:Lcom/facebook/ads/internal/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/b;->f(Lcom/facebook/ads/internal/b;)Lcom/facebook/ads/internal/b/a;

    move-result-object v0

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/b$3;->b:Lcom/facebook/ads/internal/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/b;->g(Lcom/facebook/ads/internal/b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/b$3;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {p1}, Lcom/facebook/ads/internal/b;->b(Lcom/facebook/ads/internal/b/a;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/b$3;->b:Lcom/facebook/ads/internal/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/b;->c(Lcom/facebook/ads/internal/b;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/b$3;->b:Lcom/facebook/ads/internal/b;

    iget-object v0, v0, Lcom/facebook/ads/internal/b;->a:Lcom/facebook/ads/internal/c;

    new-instance v1, Lcom/facebook/ads/internal/d;

    .line 1000
    iget v2, p2, Lcom/facebook/ads/c;->i:I

    .line 2000
    iget-object v3, p2, Lcom/facebook/ads/c;->j:Ljava/lang/String;

    .line 0
    invoke-direct {v1, v2, v3}, Lcom/facebook/ads/internal/d;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/c;->a(Lcom/facebook/ads/internal/d;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/b$3;->b:Lcom/facebook/ads/internal/b;

    iget-object v0, v0, Lcom/facebook/ads/internal/b;->a:Lcom/facebook/ads/internal/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c;->b()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/b$3;->b:Lcom/facebook/ads/internal/b;

    invoke-static {v1}, Lcom/facebook/ads/internal/b;->k(Lcom/facebook/ads/internal/b;)Lcom/facebook/ads/internal/g/f;

    move-result-object v1

    iget-object v1, v1, Lcom/facebook/ads/internal/g/f;->d:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/ads/internal/b$3;->b:Lcom/facebook/ads/internal/b;

    invoke-static {v1}, Lcom/facebook/ads/internal/b;->k(Lcom/facebook/ads/internal/b;)Lcom/facebook/ads/internal/g/f;

    move-result-object v1

    iget-object v1, v1, Lcom/facebook/ads/internal/g/f;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b$3;->b:Lcom/facebook/ads/internal/b;

    iget-object v0, v0, Lcom/facebook/ads/internal/b;->a:Lcom/facebook/ads/internal/c;

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b$3;->b:Lcom/facebook/ads/internal/b;

    iget-object v0, v0, Lcom/facebook/ads/internal/b;->a:Lcom/facebook/ads/internal/c;

    return-void
.end method
