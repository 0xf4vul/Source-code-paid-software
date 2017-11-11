.class final Lcom/facebook/ads/internal/b/n$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/m/af;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/b/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/f;

.field final synthetic b:Lcom/facebook/ads/internal/b/n;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/b/n;Lcom/facebook/ads/internal/view/f;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/b/n$1;->b:Lcom/facebook/ads/internal/b/n;

    iput-object p2, p0, Lcom/facebook/ads/internal/b/n$1;->a:Lcom/facebook/ads/internal/view/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/b/n$1;->a:Lcom/facebook/ads/internal/view/f;

    iget-object v0, v0, Lcom/facebook/ads/internal/view/f;->n:Lcom/facebook/ads/internal/view/l;

    invoke-static {}, Lcom/facebook/ads/internal/b/n;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/l;->setBackgroundColor(I)V

    return-void
.end method
