.class public final Lcom/facebook/ads/internal/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/c/c$a;
    }
.end annotation


# instance fields
.field public a:Lcom/facebook/ads/internal/c/c$a;

.field public b:Lcom/facebook/ads/internal/c/c$a;


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/ads/internal/c/c;-><init>(DB)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/internal/c/c;-><init>(DB)V

    return-void
.end method

.method private constructor <init>(DB)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/ads/internal/c/c$a;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/internal/c/c$a;-><init>(D)V

    iput-object v0, p0, Lcom/facebook/ads/internal/c/c;->a:Lcom/facebook/ads/internal/c/c$a;

    new-instance v0, Lcom/facebook/ads/internal/c/c$a;

    const-wide v2, 0x3fa999999999999aL    # 0.05

    invoke-direct {v0, v2, v3}, Lcom/facebook/ads/internal/c/c$a;-><init>(D)V

    iput-object v0, p0, Lcom/facebook/ads/internal/c/c;->b:Lcom/facebook/ads/internal/c/c$a;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/c/c;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/c/c;->a:Lcom/facebook/ads/internal/c/c$a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c/c$a;->a()V

    iget-object v0, p0, Lcom/facebook/ads/internal/c/c;->b:Lcom/facebook/ads/internal/c/c$a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c/c$a;->a()V

    return-void
.end method

.method public final a(DD)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/c/c;->a:Lcom/facebook/ads/internal/c/c$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/internal/c/c$a;->a(DD)V

    return-void
.end method
