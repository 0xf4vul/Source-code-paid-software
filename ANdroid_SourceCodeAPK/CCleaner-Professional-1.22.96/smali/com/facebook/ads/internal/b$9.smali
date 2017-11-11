.class final Lcom/facebook/ads/internal/b$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/a/a;


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

    iput-object p1, p0, Lcom/facebook/ads/internal/b$9;->a:Lcom/facebook/ads/internal/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b$9;->a:Lcom/facebook/ads/internal/b;

    iget-object v0, v0, Lcom/facebook/ads/internal/b;->a:Lcom/facebook/ads/internal/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c;->b()V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b$9;->a:Lcom/facebook/ads/internal/b;

    iget-object v0, v0, Lcom/facebook/ads/internal/b;->a:Lcom/facebook/ads/internal/c;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/c;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Lcom/facebook/ads/c;)V
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/facebook/ads/internal/b$9;->a:Lcom/facebook/ads/internal/b;

    iget-object v0, v0, Lcom/facebook/ads/internal/b;->a:Lcom/facebook/ads/internal/c;

    new-instance v1, Lcom/facebook/ads/internal/d;

    .line 1000
    iget v2, p1, Lcom/facebook/ads/c;->i:I

    .line 2000
    iget-object v3, p1, Lcom/facebook/ads/c;->j:Ljava/lang/String;

    .line 0
    invoke-direct {v1, v2, v3}, Lcom/facebook/ads/internal/d;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/c;->a(Lcom/facebook/ads/internal/d;)V

    return-void
.end method

.method public final a(Lcom/facebook/ads/internal/b/y;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b$9;->a:Lcom/facebook/ads/internal/b;

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/b;->a(Lcom/facebook/ads/internal/b;Lcom/facebook/ads/internal/b/a;)Lcom/facebook/ads/internal/b/a;

    iget-object v0, p0, Lcom/facebook/ads/internal/b$9;->a:Lcom/facebook/ads/internal/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/b;->e(Lcom/facebook/ads/internal/b;)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/b$9;->a:Lcom/facebook/ads/internal/b;

    iget-object v0, v0, Lcom/facebook/ads/internal/b;->a:Lcom/facebook/ads/internal/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c;->a()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b$9;->a:Lcom/facebook/ads/internal/b;

    iget-object v0, v0, Lcom/facebook/ads/internal/b;->a:Lcom/facebook/ads/internal/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c;->c()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b$9;->a:Lcom/facebook/ads/internal/b;

    iget-object v0, v0, Lcom/facebook/ads/internal/b;->a:Lcom/facebook/ads/internal/c;

    return-void
.end method
