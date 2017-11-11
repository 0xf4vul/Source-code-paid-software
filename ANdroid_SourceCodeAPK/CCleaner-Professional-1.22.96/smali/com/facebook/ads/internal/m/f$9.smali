.class final Lcom/facebook/ads/internal/m/f$9;
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
        "Lcom/facebook/ads/internal/view/d/a/n;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/m/f;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/m/f;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/m/f$9;->a:Lcom/facebook/ads/internal/m/f;

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
            "Lcom/facebook/ads/internal/view/d/a/n;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/ads/internal/view/d/a/n;

    return-object v0
.end method

.method public final synthetic a(Lcom/facebook/ads/internal/h/q;)V
    .locals 3

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/facebook/ads/internal/m/f$9;->a:Lcom/facebook/ads/internal/m/f;

    iget v0, v0, Lcom/facebook/ads/internal/m/f;->l:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/m/f$9;->a:Lcom/facebook/ads/internal/m/f;

    invoke-static {v0}, Lcom/facebook/ads/internal/m/f;->c(Lcom/facebook/ads/internal/m/f;)Lcom/facebook/ads/internal/view/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/o;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/ads/internal/m/f$9;->a:Lcom/facebook/ads/internal/m/f;

    invoke-static {v1}, Lcom/facebook/ads/internal/m/f;->c(Lcom/facebook/ads/internal/m/f;)Lcom/facebook/ads/internal/view/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/o;->getDuration()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/m/f$9;->a:Lcom/facebook/ads/internal/m/f;

    invoke-static {v0}, Lcom/facebook/ads/internal/m/f;->c(Lcom/facebook/ads/internal/m/f;)Lcom/facebook/ads/internal/view/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/o;->getDuration()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/ads/internal/m/f$9;->a:Lcom/facebook/ads/internal/m/f;

    iget v1, v1, Lcom/facebook/ads/internal/m/f;->l:I

    if-gt v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/m/f$9;->a:Lcom/facebook/ads/internal/m/f;

    iget-object v1, p0, Lcom/facebook/ads/internal/m/f$9;->a:Lcom/facebook/ads/internal/m/f;

    invoke-static {v1}, Lcom/facebook/ads/internal/m/f;->c(Lcom/facebook/ads/internal/m/f;)Lcom/facebook/ads/internal/view/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/o;->getCurrentPosition()I

    move-result v1

    .line 2000
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/m/l;->a(IZ)V

    .line 0
    :cond_1
    return-void
.end method
