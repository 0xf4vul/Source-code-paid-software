.class final Lcom/facebook/ads/internal/view/b$1;
.super Lcom/facebook/ads/internal/k/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/b;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/b$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/b$b;

.field final synthetic b:Lcom/facebook/ads/internal/view/b;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/b;Lcom/facebook/ads/internal/view/b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/b$1;->b:Lcom/facebook/ads/internal/view/b;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/b$1;->a:Lcom/facebook/ads/internal/view/b$b;

    invoke-direct {p0}, Lcom/facebook/ads/internal/k/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/b$1;->b:Lcom/facebook/ads/internal/view/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/b;->a(Lcom/facebook/ads/internal/view/b;)Lcom/facebook/ads/internal/m/i;

    move-result-object v0

    .line 1000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/facebook/ads/internal/m/i;->b:J

    .line 0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/b$1;->a:Lcom/facebook/ads/internal/view/b$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/b$1;->a:Lcom/facebook/ads/internal/view/b$b;

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/b$b;->b()V

    :cond_0
    return-void
.end method
