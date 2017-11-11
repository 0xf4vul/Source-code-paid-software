.class final Lcom/facebook/ads/internal/m/l$2;
.super Lcom/facebook/ads/internal/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/m/l;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/h/f;Lcom/facebook/ads/internal/m/l$a;Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/h/f;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/facebook/ads/internal/m/l;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/m/l;Lcom/facebook/ads/internal/h/f;Ljava/lang/String;)V
    .locals 7

    iput-object p1, p0, Lcom/facebook/ads/internal/m/l$2;->g:Lcom/facebook/ads/internal/m/l;

    iput-object p2, p0, Lcom/facebook/ads/internal/m/l$2;->a:Lcom/facebook/ads/internal/h/f;

    iput-object p3, p0, Lcom/facebook/ads/internal/m/l$2;->f:Ljava/lang/String;

    const-wide v2, 0x3e7ad7f29abcaf48L    # 1.0E-7

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/internal/c/b;-><init>(DDZ)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/facebook/ads/internal/m/l$2;->a:Lcom/facebook/ads/internal/h/f;

    iget-object v1, p0, Lcom/facebook/ads/internal/m/l$2;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/ads/internal/m/l$2;->g:Lcom/facebook/ads/internal/m/l;

    sget-object v3, Lcom/facebook/ads/internal/m/l$b;->i:Lcom/facebook/ads/internal/m/l$b;

    .line 1000
    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/m/l;->a(Lcom/facebook/ads/internal/m/l$b;)Ljava/util/Map;

    move-result-object v2

    .line 0
    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/internal/h/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
