.class final Lcom/facebook/ads/internal/b$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/b/af;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/b;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/b;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/b$10;->a:Lcom/facebook/ads/internal/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b$10;->a:Lcom/facebook/ads/internal/b;

    iget-object v0, v0, Lcom/facebook/ads/internal/b;->a:Lcom/facebook/ads/internal/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c;->b()V

    return-void
.end method

.method public final a(Lcom/facebook/ads/internal/b/ae;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b$10;->a:Lcom/facebook/ads/internal/b;

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/b;->a(Lcom/facebook/ads/internal/b;Lcom/facebook/ads/internal/b/a;)Lcom/facebook/ads/internal/b/a;

    iget-object v0, p0, Lcom/facebook/ads/internal/b$10;->a:Lcom/facebook/ads/internal/b;

    iget-object v0, v0, Lcom/facebook/ads/internal/b;->a:Lcom/facebook/ads/internal/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c;->a()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b$10;->a:Lcom/facebook/ads/internal/b;

    iget-object v0, v0, Lcom/facebook/ads/internal/b;->a:Lcom/facebook/ads/internal/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c;->c()V

    return-void
.end method

.method public final b(Lcom/facebook/ads/internal/b/ae;)V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/b$10;->a:Lcom/facebook/ads/internal/b;

    iget-object v0, v0, Lcom/facebook/ads/internal/b;->a:Lcom/facebook/ads/internal/c;

    new-instance v1, Lcom/facebook/ads/internal/d;

    sget-object v2, Lcom/facebook/ads/internal/a;->g:Lcom/facebook/ads/internal/a;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/facebook/ads/internal/d;-><init>(Lcom/facebook/ads/internal/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/c;->a(Lcom/facebook/ads/internal/d;)V

    invoke-static {p1}, Lcom/facebook/ads/internal/b;->b(Lcom/facebook/ads/internal/b/a;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/b$10;->a:Lcom/facebook/ads/internal/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/b;->c(Lcom/facebook/ads/internal/b;)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b$10;->a:Lcom/facebook/ads/internal/b;

    iget-object v0, v0, Lcom/facebook/ads/internal/b;->a:Lcom/facebook/ads/internal/c;

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b$10;->a:Lcom/facebook/ads/internal/b;

    iget-object v0, v0, Lcom/facebook/ads/internal/b;->a:Lcom/facebook/ads/internal/c;

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b$10;->a:Lcom/facebook/ads/internal/b;

    iget-object v0, v0, Lcom/facebook/ads/internal/b;->a:Lcom/facebook/ads/internal/c;

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b$10;->a:Lcom/facebook/ads/internal/b;

    iget-object v0, v0, Lcom/facebook/ads/internal/b;->a:Lcom/facebook/ads/internal/c;

    return-void
.end method
