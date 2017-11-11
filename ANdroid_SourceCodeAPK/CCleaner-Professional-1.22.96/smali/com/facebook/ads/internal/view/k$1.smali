.class final Lcom/facebook/ads/internal/view/k$1;
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
        "Lcom/facebook/ads/internal/view/d/a/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/k;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/k;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/k$1;->a:Lcom/facebook/ads/internal/view/k;

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
            "Lcom/facebook/ads/internal/view/d/a/t;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/ads/internal/view/d/a/t;

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/facebook/ads/internal/h/q;)V
    .locals 4

    .prologue
    .line 0
    check-cast p1, Lcom/facebook/ads/internal/view/d/a/t;

    .line 1000
    iget-object v0, p0, Lcom/facebook/ads/internal/view/k$1;->a:Lcom/facebook/ads/internal/view/k;

    .line 2000
    iget-object v0, v0, Lcom/facebook/ads/internal/view/k;->c:Lcom/facebook/ads/internal/m/i;

    .line 3000
    iget-object v1, p1, Lcom/facebook/ads/internal/view/d/a/t;->b:Landroid/view/MotionEvent;

    .line 1000
    iget-object v2, p0, Lcom/facebook/ads/internal/view/k$1;->a:Lcom/facebook/ads/internal/view/k;

    .line 4000
    iget-object v2, v2, Lcom/facebook/ads/internal/view/k;->b:Lcom/facebook/ads/internal/view/o;

    .line 5000
    iget-object v3, p1, Lcom/facebook/ads/internal/view/d/a/t;->a:Landroid/view/View;

    .line 1000
    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/ads/internal/m/i;->a(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 0
    return-void
.end method
