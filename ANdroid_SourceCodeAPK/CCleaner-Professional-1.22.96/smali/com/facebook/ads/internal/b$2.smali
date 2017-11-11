.class final Lcom/facebook/ads/internal/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/b/d;

.field final synthetic b:Lcom/facebook/ads/internal/b;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/b;Lcom/facebook/ads/internal/b/d;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/b$2;->b:Lcom/facebook/ads/internal/b;

    iput-object p2, p0, Lcom/facebook/ads/internal/b$2;->a:Lcom/facebook/ads/internal/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b$2;->a:Lcom/facebook/ads/internal/b/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/b;->b(Lcom/facebook/ads/internal/b/a;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/b$2;->b:Lcom/facebook/ads/internal/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/b;->c(Lcom/facebook/ads/internal/b;)V

    return-void
.end method
