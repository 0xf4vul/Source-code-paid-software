.class final Lcom/facebook/ads/internal/m/f$11;
.super Lcom/facebook/ads/internal/h/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/m/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/internal/h/s",
        "<",
        "Lcom/facebook/ads/internal/view/d/a/p;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/m/f;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/m/f;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/m/f$11;->a:Lcom/facebook/ads/internal/m/f;

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
            "Lcom/facebook/ads/internal/view/d/a/p;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/ads/internal/view/d/a/p;

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/facebook/ads/internal/h/q;)V
    .locals 3

    .prologue
    .line 0
    check-cast p1, Lcom/facebook/ads/internal/view/d/a/p;

    .line 1000
    iget-object v0, p0, Lcom/facebook/ads/internal/m/f$11;->a:Lcom/facebook/ads/internal/m/f;

    .line 2000
    iget v1, p1, Lcom/facebook/ads/internal/view/d/a/p;->a:I

    .line 3000
    iget v2, p1, Lcom/facebook/ads/internal/view/d/a/p;->b:I

    .line 1000
    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/m/f;->a(II)V

    .line 0
    return-void
.end method
