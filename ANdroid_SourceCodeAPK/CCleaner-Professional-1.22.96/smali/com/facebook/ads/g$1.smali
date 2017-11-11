.class final Lcom/facebook/ads/g$1;
.super Lcom/facebook/ads/internal/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/g;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/facebook/ads/g;


# direct methods
.method constructor <init>(Lcom/facebook/ads/g;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    iput-object p2, p0, Lcom/facebook/ads/g$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/facebook/ads/internal/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    invoke-static {v0}, Lcom/facebook/ads/g;->b(Lcom/facebook/ads/g;)Lcom/facebook/ads/internal/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    invoke-static {v0}, Lcom/facebook/ads/g;->b(Lcom/facebook/ads/g;)Lcom/facebook/ads/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b;->c()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 0
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot present null view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    invoke-static {v0, p1}, Lcom/facebook/ads/g;->a(Lcom/facebook/ads/g;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    invoke-virtual {v0}, Lcom/facebook/ads/g;->removeAllViews()V

    iget-object v0, p0, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    iget-object v1, p0, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    invoke-static {v1}, Lcom/facebook/ads/g;->c(Lcom/facebook/ads/g;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/g;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    invoke-static {v0}, Lcom/facebook/ads/g;->c(Lcom/facebook/ads/g;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/internal/view/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    invoke-static {v0}, Lcom/facebook/ads/g;->d(Lcom/facebook/ads/g;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    invoke-static {v1}, Lcom/facebook/ads/g;->c(Lcom/facebook/ads/g;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    invoke-static {v2}, Lcom/facebook/ads/g;->e(Lcom/facebook/ads/g;)Lcom/facebook/ads/f;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/m/u;->a(Landroid/util/DisplayMetrics;Landroid/view/View;Lcom/facebook/ads/f;)V

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    invoke-static {v0}, Lcom/facebook/ads/g;->a(Lcom/facebook/ads/g;)Lcom/facebook/ads/d;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    invoke-static {v0}, Lcom/facebook/ads/g;->a(Lcom/facebook/ads/g;)Lcom/facebook/ads/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/d;->a()V

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    invoke-virtual {v0}, Lcom/facebook/ads/g;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/l;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    new-instance v1, Lcom/facebook/ads/internal/k;

    invoke-direct {v1}, Lcom/facebook/ads/internal/k;-><init>()V

    invoke-static {v0, v1}, Lcom/facebook/ads/g;->a(Lcom/facebook/ads/g;Lcom/facebook/ads/internal/k;)Lcom/facebook/ads/internal/k;

    iget-object v0, p0, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    invoke-static {v0}, Lcom/facebook/ads/g;->f(Lcom/facebook/ads/g;)Lcom/facebook/ads/internal/k;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/g$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/k;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    invoke-static {v0}, Lcom/facebook/ads/g;->f(Lcom/facebook/ads/g;)Lcom/facebook/ads/internal/k;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    invoke-virtual {v1}, Lcom/facebook/ads/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/k;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    invoke-static {v0}, Lcom/facebook/ads/g;->b(Lcom/facebook/ads/g;)Lcom/facebook/ads/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b;->a()Lcom/facebook/ads/internal/g/e;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    invoke-static {v0}, Lcom/facebook/ads/g;->f(Lcom/facebook/ads/g;)Lcom/facebook/ads/internal/k;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    invoke-static {v1}, Lcom/facebook/ads/g;->b(Lcom/facebook/ads/g;)Lcom/facebook/ads/internal/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/b;->a()Lcom/facebook/ads/internal/g/e;

    move-result-object v1

    .line 6000
    iget-wide v2, v1, Lcom/facebook/ads/internal/g/e;->c:J

    .line 0
    invoke-virtual {v0, v2, v3}, Lcom/facebook/ads/internal/k;->a(J)V

    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    invoke-static {v0}, Lcom/facebook/ads/g;->c(Lcom/facebook/ads/g;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/internal/view/b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    invoke-static {v0}, Lcom/facebook/ads/g;->f(Lcom/facebook/ads/g;)Lcom/facebook/ads/internal/k;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    invoke-static {v0}, Lcom/facebook/ads/g;->c(Lcom/facebook/ads/g;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/view/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/b;->getViewabilityChecker()Lcom/facebook/ads/internal/k/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/k;->a(Lcom/facebook/ads/internal/k/a;)V

    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    invoke-static {v0}, Lcom/facebook/ads/g;->c(Lcom/facebook/ads/g;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/g$1$1;

    invoke-direct {v1, p0}, Lcom/facebook/ads/g$1$1;-><init>(Lcom/facebook/ads/g$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    invoke-static {v0}, Lcom/facebook/ads/g;->c(Lcom/facebook/ads/g;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    invoke-static {v1}, Lcom/facebook/ads/g;->f(Lcom/facebook/ads/g;)Lcom/facebook/ads/internal/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void
.end method

.method public final a(Lcom/facebook/ads/internal/d;)V
    .locals 5

    .prologue
    .line 0
    iget-object v0, p0, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    invoke-static {v0}, Lcom/facebook/ads/g;->a(Lcom/facebook/ads/g;)Lcom/facebook/ads/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    invoke-static {v0}, Lcom/facebook/ads/g;->a(Lcom/facebook/ads/g;)Lcom/facebook/ads/d;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    .line 1000
    iget-object v0, p1, Lcom/facebook/ads/internal/d;->a:Lcom/facebook/ads/internal/a;

    .line 2000
    iget-boolean v0, v0, Lcom/facebook/ads/internal/a;->s:Z

    .line 1000
    if-eqz v0, :cond_1

    new-instance v0, Lcom/facebook/ads/c;

    iget-object v3, p1, Lcom/facebook/ads/internal/d;->a:Lcom/facebook/ads/internal/a;

    .line 3000
    iget v3, v3, Lcom/facebook/ads/internal/a;->q:I

    .line 1000
    iget-object v4, p1, Lcom/facebook/ads/internal/d;->b:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/facebook/ads/c;-><init>(ILjava/lang/String;)V

    .line 0
    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/d;->a(Lcom/facebook/ads/a;Lcom/facebook/ads/c;)V

    :cond_0
    return-void

    .line 1000
    :cond_1
    new-instance v0, Lcom/facebook/ads/c;

    sget-object v3, Lcom/facebook/ads/internal/a;->a:Lcom/facebook/ads/internal/a;

    .line 4000
    iget v3, v3, Lcom/facebook/ads/internal/a;->q:I

    .line 1000
    sget-object v4, Lcom/facebook/ads/internal/a;->a:Lcom/facebook/ads/internal/a;

    .line 5000
    iget-object v4, v4, Lcom/facebook/ads/internal/a;->r:Ljava/lang/String;

    .line 1000
    invoke-direct {v0, v3, v4}, Lcom/facebook/ads/c;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    invoke-static {v0}, Lcom/facebook/ads/g;->a(Lcom/facebook/ads/g;)Lcom/facebook/ads/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    invoke-static {v0}, Lcom/facebook/ads/g;->a(Lcom/facebook/ads/g;)Lcom/facebook/ads/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/d;->b()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    invoke-static {v0}, Lcom/facebook/ads/g;->a(Lcom/facebook/ads/g;)Lcom/facebook/ads/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/g$1;->b:Lcom/facebook/ads/g;

    invoke-static {v0}, Lcom/facebook/ads/g;->a(Lcom/facebook/ads/g;)Lcom/facebook/ads/d;

    :cond_0
    return-void
.end method
