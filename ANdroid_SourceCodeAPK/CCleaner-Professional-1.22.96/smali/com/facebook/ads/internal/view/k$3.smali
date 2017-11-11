.class final Lcom/facebook/ads/internal/view/k$3;
.super Lcom/facebook/ads/internal/h/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/internal/h/s",
        "<",
        "Lcom/facebook/ads/internal/view/d/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/k;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/k;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/k$3;->a:Lcom/facebook/ads/internal/view/k;

    invoke-direct {p0}, Lcom/facebook/ads/internal/h/s;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/facebook/ads/internal/view/d/a/d;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/ads/internal/view/d/a/d;

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/facebook/ads/internal/h/q;)V
    .locals 2

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/facebook/ads/internal/view/k$3;->a:Lcom/facebook/ads/internal/view/k;

    .line 2000
    iget-object v0, v0, Lcom/facebook/ads/internal/view/k;->d:Lcom/facebook/ads/internal/view/c$a;

    .line 1000
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k$3;->a:Lcom/facebook/ads/internal/view/k;

    .line 3000
    iget-object v0, v0, Lcom/facebook/ads/internal/view/k;->d:Lcom/facebook/ads/internal/view/c$a;

    .line 1000
    sget-object v1, Lcom/facebook/ads/internal/m;->d:Lcom/facebook/ads/internal/m;

    .line 4000
    iget-object v1, v1, Lcom/facebook/ads/internal/m;->j:Ljava/lang/String;

    .line 1000
    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/view/c$a;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/k$3;->a:Lcom/facebook/ads/internal/view/k;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/k;->a()V

    .line 0
    return-void
.end method
