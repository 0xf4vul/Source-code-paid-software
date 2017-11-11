.class final Lcom/facebook/ads/k$d;
.super Lcom/facebook/ads/internal/b/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/k;


# direct methods
.method private constructor <init>(Lcom/facebook/ads/k;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/k$d;->a:Lcom/facebook/ads/k;

    invoke-direct {p0}, Lcom/facebook/ads/internal/b/i;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/ads/k;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/k$d;-><init>(Lcom/facebook/ads/k;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/k$d;->a:Lcom/facebook/ads/k;

    invoke-static {v0}, Lcom/facebook/ads/k;->a(Lcom/facebook/ads/k;)Lcom/facebook/ads/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/k$d;->a:Lcom/facebook/ads/k;

    invoke-static {v0}, Lcom/facebook/ads/k;->a(Lcom/facebook/ads/k;)Lcom/facebook/ads/d;

    :cond_0
    return-void
.end method
