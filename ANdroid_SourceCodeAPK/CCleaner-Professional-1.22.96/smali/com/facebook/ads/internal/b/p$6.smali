.class final Lcom/facebook/ads/internal/b/p$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/b/p;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/b/p;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/b/p$6;->a:Lcom/facebook/ads/internal/b/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/b/p$6;->a:Lcom/facebook/ads/internal/b/p;

    iget-object v0, v0, Lcom/facebook/ads/internal/b/p;->a:Lcom/facebook/ads/internal/view/o;

    iget-object v1, p0, Lcom/facebook/ads/internal/b/p$6;->a:Lcom/facebook/ads/internal/b/p;

    invoke-static {v1}, Lcom/facebook/ads/internal/b/p;->c(Lcom/facebook/ads/internal/b/p;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/o;->setVideoURI(Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/b/p$6;->a:Lcom/facebook/ads/internal/b/p;

    iget-object v0, v0, Lcom/facebook/ads/internal/b/p;->a:Lcom/facebook/ads/internal/view/o;

    iget-object v1, p0, Lcom/facebook/ads/internal/b/p$6;->a:Lcom/facebook/ads/internal/b/p;

    invoke-static {v1}, Lcom/facebook/ads/internal/b/p;->c(Lcom/facebook/ads/internal/b/p;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/o;->setVideoURI(Ljava/lang/String;)V

    return-void
.end method
