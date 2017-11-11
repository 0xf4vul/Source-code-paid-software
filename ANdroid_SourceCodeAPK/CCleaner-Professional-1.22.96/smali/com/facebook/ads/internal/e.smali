.class public final Lcom/facebook/ads/internal/e;
.super Ljava/lang/Exception;


# instance fields
.field public final a:Lcom/facebook/ads/internal/d;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/a;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/internal/e;-><init>(Lcom/facebook/ads/internal/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/a;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/facebook/ads/internal/d;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/internal/d;-><init>(Lcom/facebook/ads/internal/a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/e;->a:Lcom/facebook/ads/internal/d;

    return-void
.end method
