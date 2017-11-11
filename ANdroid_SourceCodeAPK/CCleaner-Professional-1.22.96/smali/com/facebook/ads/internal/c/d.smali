.class public final Lcom/facebook/ads/internal/c/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lcom/facebook/ads/internal/c/c;

.field public final b:Lcom/facebook/ads/internal/c/c;

.field public final c:Lcom/facebook/ads/internal/c/b;

.field public d:Z

.field public e:Z

.field f:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/c/b;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/facebook/ads/internal/c/d;->d:Z

    iput-boolean v0, p0, Lcom/facebook/ads/internal/c/d;->e:Z

    iput-boolean v0, p0, Lcom/facebook/ads/internal/c/d;->f:Z

    iput-object p1, p0, Lcom/facebook/ads/internal/c/d;->c:Lcom/facebook/ads/internal/c/b;

    new-instance v0, Lcom/facebook/ads/internal/c/c;

    iget-wide v2, p1, Lcom/facebook/ads/internal/c/b;->b:D

    invoke-direct {v0, v2, v3}, Lcom/facebook/ads/internal/c/c;-><init>(D)V

    iput-object v0, p0, Lcom/facebook/ads/internal/c/d;->b:Lcom/facebook/ads/internal/c/c;

    new-instance v0, Lcom/facebook/ads/internal/c/c;

    iget-wide v2, p1, Lcom/facebook/ads/internal/c/b;->b:D

    invoke-direct {v0, v2, v3}, Lcom/facebook/ads/internal/c/c;-><init>(D)V

    iput-object v0, p0, Lcom/facebook/ads/internal/c/d;->a:Lcom/facebook/ads/internal/c/c;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/c/b;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/facebook/ads/internal/c/d;->d:Z

    iput-boolean v0, p0, Lcom/facebook/ads/internal/c/d;->e:Z

    iput-boolean v0, p0, Lcom/facebook/ads/internal/c/d;->f:Z

    iput-object p1, p0, Lcom/facebook/ads/internal/c/d;->c:Lcom/facebook/ads/internal/c/b;

    const-string/jumbo v0, "testStats"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/c/c;

    iput-object v0, p0, Lcom/facebook/ads/internal/c/d;->b:Lcom/facebook/ads/internal/c/c;

    const-string/jumbo v0, "viewableStats"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/c/c;

    iput-object v0, p0, Lcom/facebook/ads/internal/c/d;->a:Lcom/facebook/ads/internal/c/c;

    const-string/jumbo v0, "ended"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/c/d;->d:Z

    const-string/jumbo v0, "passed"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/c/d;->e:Z

    const-string/jumbo v0, "complete"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/c/d;->f:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 0
    iput-boolean v0, p0, Lcom/facebook/ads/internal/c/d;->f:Z

    .line 1000
    iput-boolean v0, p0, Lcom/facebook/ads/internal/c/d;->d:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/c/d;->c:Lcom/facebook/ads/internal/c/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c/b;->a()V

    .line 0
    return-void
.end method
