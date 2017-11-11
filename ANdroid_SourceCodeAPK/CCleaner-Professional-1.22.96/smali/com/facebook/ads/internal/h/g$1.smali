.class final Lcom/facebook/ads/internal/h/g$1;
.super Lcom/facebook/ads/internal/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/h/g;->a(Lcom/facebook/ads/internal/h/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/internal/f/a",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/h/d;

.field final synthetic b:Lcom/facebook/ads/internal/h/g;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/h/g;Lcom/facebook/ads/internal/h/d;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/h/g$1;->b:Lcom/facebook/ads/internal/h/g;

    iput-object p2, p0, Lcom/facebook/ads/internal/h/g$1;->a:Lcom/facebook/ads/internal/h/d;

    invoke-direct {p0}, Lcom/facebook/ads/internal/f/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/facebook/ads/internal/f/a;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/g$1;->a:Lcom/facebook/ads/internal/h/d;

    instance-of v0, v0, Lcom/facebook/ads/internal/h/c;

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/facebook/ads/internal/h/g;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 0
    check-cast p1, Ljava/lang/String;

    .line 1000
    invoke-super {p0, p1}, Lcom/facebook/ads/internal/f/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/g$1;->a:Lcom/facebook/ads/internal/h/d;

    .line 2000
    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/d;->a()Lcom/facebook/ads/internal/h/h;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/h/h;->a:Lcom/facebook/ads/internal/h/h;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1000
    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/g$1;->b:Lcom/facebook/ads/internal/h/g;

    invoke-static {v0}, Lcom/facebook/ads/internal/h/g;->a(Lcom/facebook/ads/internal/h/g;)Lcom/facebook/ads/internal/h/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/e;->a()V

    :goto_1
    return-void

    .line 2000
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1000
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/h/g$1;->b:Lcom/facebook/ads/internal/h/g;

    invoke-static {v0}, Lcom/facebook/ads/internal/h/g;->a(Lcom/facebook/ads/internal/h/g;)Lcom/facebook/ads/internal/h/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/e;->b()V

    goto :goto_1
.end method
