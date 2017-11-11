.class public final Lcom/facebook/ads/internal/d;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/facebook/ads/internal/a;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/facebook/ads/internal/a;->a(I)Lcom/facebook/ads/internal/a;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/internal/d;-><init>(Lcom/facebook/ads/internal/a;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/a;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    iget-object p2, p1, Lcom/facebook/ads/internal/a;->r:Ljava/lang/String;

    .line 0
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/internal/d;->a:Lcom/facebook/ads/internal/a;

    iput-object p2, p0, Lcom/facebook/ads/internal/d;->b:Ljava/lang/String;

    return-void
.end method
