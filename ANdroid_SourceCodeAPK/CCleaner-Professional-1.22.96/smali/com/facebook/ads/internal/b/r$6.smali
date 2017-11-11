.class final Lcom/facebook/ads/internal/b/r$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/b/r;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/b/r;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/b/r;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/b/r$6;->a:Lcom/facebook/ads/internal/b/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/b/r$6;->a:Lcom/facebook/ads/internal/b/r;

    iget-object v0, v0, Lcom/facebook/ads/internal/b/r;->a:Lcom/facebook/ads/internal/view/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/b/r$6;->a:Lcom/facebook/ads/internal/b/r;

    iget-object v0, v0, Lcom/facebook/ads/internal/b/r;->a:Lcom/facebook/ads/internal/view/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/o;->a(Z)V

    :cond_0
    return-void
.end method
