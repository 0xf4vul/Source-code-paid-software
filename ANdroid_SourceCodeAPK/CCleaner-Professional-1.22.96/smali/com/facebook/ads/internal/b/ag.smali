.class public final Lcom/facebook/ads/internal/b/ag;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field a:Ljava/lang/String;

.field private b:Lcom/facebook/ads/internal/b/af;

.field private c:Lcom/facebook/ads/internal/b/ae;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/internal/b/ae;Lcom/facebook/ads/internal/b/af;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/facebook/ads/internal/b/ag;->c:Lcom/facebook/ads/internal/b/ae;

    iput-object p3, p0, Lcom/facebook/ads/internal/b/ag;->b:Lcom/facebook/ads/internal/b/af;

    iput-object p1, p0, Lcom/facebook/ads/internal/b/ag;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/m;->a:Lcom/facebook/ads/internal/m;

    iget-object v2, p0, Lcom/facebook/ads/internal/b/ag;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/b/ag;->b:Lcom/facebook/ads/internal/b/af;

    invoke-interface {v0}, Lcom/facebook/ads/internal/b/af;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/facebook/ads/internal/m;->d:Lcom/facebook/ads/internal/m;

    iget-object v2, p0, Lcom/facebook/ads/internal/b/ag;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/b/ag;->b:Lcom/facebook/ads/internal/b/af;

    iget-object v1, p0, Lcom/facebook/ads/internal/b/ag;->c:Lcom/facebook/ads/internal/b/ae;

    sget-object v2, Lcom/facebook/ads/c;->e:Lcom/facebook/ads/c;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/b/af;->b(Lcom/facebook/ads/internal/b/ae;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/facebook/ads/internal/m;->e:Lcom/facebook/ads/internal/m;

    iget-object v2, p0, Lcom/facebook/ads/internal/b/ag;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/internal/b/ag;->b:Lcom/facebook/ads/internal/b/af;

    invoke-interface {v0}, Lcom/facebook/ads/internal/b/af;->a()V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/facebook/ads/internal/m;->f:Lcom/facebook/ads/internal/m;

    iget-object v2, p0, Lcom/facebook/ads/internal/b/ag;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/internal/b/ag;->b:Lcom/facebook/ads/internal/b/af;

    invoke-interface {v0}, Lcom/facebook/ads/internal/b/af;->b()V

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/facebook/ads/internal/m;->g:Lcom/facebook/ads/internal/m;

    iget-object v2, p0, Lcom/facebook/ads/internal/b/ag;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/internal/b/ag;->b:Lcom/facebook/ads/internal/b/af;

    invoke-interface {v0}, Lcom/facebook/ads/internal/b/af;->d()V

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/facebook/ads/internal/m;->i:Lcom/facebook/ads/internal/m;

    iget-object v2, p0, Lcom/facebook/ads/internal/b/ag;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/facebook/ads/internal/b/ag;->b:Lcom/facebook/ads/internal/b/af;

    invoke-interface {v0}, Lcom/facebook/ads/internal/b/af;->e()V

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/facebook/ads/internal/m;->h:Lcom/facebook/ads/internal/m;

    iget-object v2, p0, Lcom/facebook/ads/internal/b/ag;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/b/ag;->b:Lcom/facebook/ads/internal/b/af;

    invoke-interface {v0}, Lcom/facebook/ads/internal/b/af;->f()V

    goto :goto_0
.end method
