.class final Lcom/facebook/ads/internal/b/p$5;
.super Lcom/facebook/ads/internal/c/b;


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
    .locals 7

    iput-object p1, p0, Lcom/facebook/ads/internal/b/p$5;->a:Lcom/facebook/ads/internal/b/p;

    const-wide v2, 0x3e7ad7f29abcaf48L    # 1.0E-7

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/internal/c/b;-><init>(DDZ)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b/p$5;->a:Lcom/facebook/ads/internal/b/p;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/p;->g()V

    return-void
.end method
