.class final Landroid/support/v7/widget/RecyclerView$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 11765
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$f;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11766
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 11770
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$u;->a(Z)V

    .line 11771
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$u;->h:Landroid/support/v7/widget/RecyclerView$u;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$u;->i:Landroid/support/v7/widget/RecyclerView$u;

    if-nez v2, :cond_0

    .line 11772
    iput-object v3, p1, Landroid/support/v7/widget/RecyclerView$u;->h:Landroid/support/v7/widget/RecyclerView$u;

    .line 11776
    :cond_0
    iput-object v3, p1, Landroid/support/v7/widget/RecyclerView$u;->i:Landroid/support/v7/widget/RecyclerView$u;

    .line 11777
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$u;->e(Landroid/support/v7/widget/RecyclerView$u;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 11778
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$f;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p1, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    .line 12289
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->c()V

    .line 12290
    iget-object v2, v3, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/s;

    .line 12373
    iget-object v5, v2, Landroid/support/v7/widget/s;->a:Landroid/support/v7/widget/s$b;

    invoke-interface {v5, v4}, Landroid/support/v7/widget/s$b;->a(Landroid/view/View;)I

    move-result v5

    .line 12374
    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 12375
    invoke-virtual {v2, v4}, Landroid/support/v7/widget/s;->b(Landroid/view/View;)Z

    move v2, v0

    .line 12291
    :goto_0
    if-eqz v2, :cond_1

    .line 12292
    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$u;

    move-result-object v4

    .line 12293
    iget-object v5, v3, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/RecyclerView$n;->b(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 12294
    iget-object v5, v3, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/RecyclerView$n;->a(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 12300
    :cond_1
    if-nez v2, :cond_5

    :goto_1
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 11778
    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$u;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11779
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$f;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 11782
    :cond_2
    return-void

    .line 12380
    :cond_3
    iget-object v6, v2, Landroid/support/v7/widget/s;->b:Landroid/support/v7/widget/s$a;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/s$a;->c(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 12381
    iget-object v6, v2, Landroid/support/v7/widget/s;->b:Landroid/support/v7/widget/s$a;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/s$a;->d(I)Z

    .line 12382
    invoke-virtual {v2, v4}, Landroid/support/v7/widget/s;->b(Landroid/view/View;)Z

    .line 12386
    iget-object v2, v2, Landroid/support/v7/widget/s;->a:Landroid/support/v7/widget/s$b;

    invoke-interface {v2, v5}, Landroid/support/v7/widget/s$b;->a(I)V

    move v2, v0

    .line 12387
    goto :goto_0

    :cond_4
    move v2, v1

    .line 12389
    goto :goto_0

    :cond_5
    move v0, v1

    .line 12300
    goto :goto_1
.end method
