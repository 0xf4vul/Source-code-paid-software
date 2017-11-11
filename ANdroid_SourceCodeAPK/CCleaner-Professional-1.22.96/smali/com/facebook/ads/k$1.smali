.class final Lcom/facebook/ads/k$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/view/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/k;->a(Landroid/view/View;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/k;


# direct methods
.method constructor <init>(Lcom/facebook/ads/k;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/k$1;->a:Lcom/facebook/ads/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/k$1;->a:Lcom/facebook/ads/k;

    iget-object v0, v0, Lcom/facebook/ads/k;->a:Lcom/facebook/ads/internal/b/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/k$1;->a:Lcom/facebook/ads/k;

    iget-object v0, v0, Lcom/facebook/ads/k;->a:Lcom/facebook/ads/internal/b/ac;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/b/ac;->a(I)V

    :cond_0
    return-void
.end method
