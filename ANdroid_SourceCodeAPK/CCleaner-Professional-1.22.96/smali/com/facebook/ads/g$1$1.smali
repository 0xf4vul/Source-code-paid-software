.class final Lcom/facebook/ads/g$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/g$1;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/g$1;


# direct methods
.method constructor <init>(Lcom/facebook/ads/g$1;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/g$1$1;->a:Lcom/facebook/ads/g$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 0
    iget-object v2, p0, Lcom/facebook/ads/g$1$1;->a:Lcom/facebook/ads/g$1;

    iget-object v2, v2, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    invoke-static {v2}, Lcom/facebook/ads/g;->f(Lcom/facebook/ads/g;)Lcom/facebook/ads/internal/k;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/g$1$1;->a:Lcom/facebook/ads/g$1;

    iget-object v3, v3, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    invoke-static {v3}, Lcom/facebook/ads/g;->c(Lcom/facebook/ads/g;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/facebook/ads/g$1$1;->a:Lcom/facebook/ads/g$1;

    iget-object v4, v4, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    invoke-static {v4}, Lcom/facebook/ads/g;->c(Lcom/facebook/ads/g;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Lcom/facebook/ads/internal/k;->setBounds(IIII)V

    iget-object v2, p0, Lcom/facebook/ads/g$1$1;->a:Lcom/facebook/ads/g$1;

    iget-object v2, v2, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    invoke-static {v2}, Lcom/facebook/ads/g;->f(Lcom/facebook/ads/g;)Lcom/facebook/ads/internal/k;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/g$1$1;->a:Lcom/facebook/ads/g$1;

    iget-object v3, v3, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    invoke-static {v3}, Lcom/facebook/ads/g;->f(Lcom/facebook/ads/g;)Lcom/facebook/ads/internal/k;

    move-result-object v3

    .line 1000
    iget-boolean v3, v3, Lcom/facebook/ads/internal/k;->c:Z

    .line 0
    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Lcom/facebook/ads/internal/k;->a(Z)V

    return v1
.end method
