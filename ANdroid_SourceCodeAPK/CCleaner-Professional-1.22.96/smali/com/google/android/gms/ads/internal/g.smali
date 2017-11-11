.class public final Lcom/google/android/gms/ads/internal/g;
.super Lcom/google/android/gms/ads/internal/c;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/g$a;
    }
.end annotation


# instance fields
.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/ya;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/ads/internal/e;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/ads/internal/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/ya;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/ads/internal/e;)V

    return-void
.end method

.method private b(Lcom/google/android/gms/internal/acw;Lcom/google/android/gms/internal/acw;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p2, Lcom/google/android/gms/internal/acw;->n:Z

    if-eqz v0, :cond_7

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/o;->a(Lcom/google/android/gms/internal/acw;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    const-string/jumbo v0, "Could not get mediation view"

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/w$a;->getNextView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v0, v1, Lcom/google/android/gms/internal/aer;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->destroy()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/w$a;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/o;->b(Lcom/google/android/gms/internal/acw;)Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/google/android/gms/ads/internal/g;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/w$a;->getChildCount()I

    move-result v0

    if-le v0, v3, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/w$a;->showNext()V

    :cond_4
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/w$a;->getNextView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/aer;

    if-eqz v1, :cond_8

    check-cast v0, Lcom/google/android/gms/internal/aer;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/w;->i:Lcom/google/android/gms/internal/zzeg;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/g;->a:Lcom/google/android/gms/internal/ul;

    invoke-interface {v0, v1, v4, v5}, Lcom/google/android/gms/internal/aer;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/ul;)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/w;->b()V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/w$a;->setVisibility(I)V

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-result-object v1

    const-string/jumbo v3, "BannerAdManager.swapViews"

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/acz;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string/jumbo v1, "Could not add mediation view to view hierarchy."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    goto :goto_0

    :cond_7
    iget-object v0, p2, Lcom/google/android/gms/internal/acw;->v:Lcom/google/android/gms/internal/zzeg;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    iget-object v1, p2, Lcom/google/android/gms/internal/acw;->v:Lcom/google/android/gms/internal/zzeg;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/aer;->a(Lcom/google/android/gms/internal/zzeg;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/w$a;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    iget-object v1, p2, Lcom/google/android/gms/internal/acw;->v:Lcom/google/android/gms/internal/zzeg;

    iget v1, v1, Lcom/google/android/gms/internal/zzeg;->f:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/w$a;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    iget-object v1, p2, Lcom/google/android/gms/internal/acw;->v:Lcom/google/android/gms/internal/zzeg;

    iget v1, v1, Lcom/google/android/gms/internal/zzeg;->c:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/w$a;->setMinimumHeight(I)V

    iget-object v0, p2, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/g;->a(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_8
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/w$a;->removeView(Landroid/view/View;)V

    goto :goto_2
.end method


# virtual methods
.method public final G()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Interstitial is NOT supported by BannerAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final a(Lcom/google/android/gms/internal/acw$a;Lcom/google/android/gms/ads/internal/f;Lcom/google/android/gms/internal/acn;)Lcom/google/android/gms/internal/aer;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->i:Lcom/google/android/gms/internal/zzeg;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeg;->g:[Lcom/google/android/gms/internal/zzeg;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->i:Lcom/google/android/gms/internal/zzeg;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzeg;->i:Z

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    .line 1000
    iget-object v0, p1, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmn;->A:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->i:Lcom/google/android/gms/internal/zzeg;

    .line 0
    :goto_0
    iput-object v0, v2, Lcom/google/android/gms/ads/internal/w;->i:Lcom/google/android/gms/internal/zzeg;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/ads/internal/c;->a(Lcom/google/android/gms/internal/acw$a;Lcom/google/android/gms/ads/internal/f;Lcom/google/android/gms/internal/acn;)Lcom/google/android/gms/internal/aer;

    move-result-object v0

    return-object v0

    .line 1000
    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmn;->m:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string/jumbo v1, "[xX]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    aget-object v1, v0, v4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-instance v0, Lcom/google/android/gms/ads/d;

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/ads/d;-><init>(II)V

    :goto_1
    new-instance v1, Lcom/google/android/gms/internal/zzeg;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    invoke-direct {v1, v3, v0}, Lcom/google/android/gms/internal/zzeg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->i:Lcom/google/android/gms/internal/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeg;->c()Lcom/google/android/gms/ads/d;

    move-result-object v0

    goto :goto_1
.end method

.method protected final a(Lcom/google/android/gms/internal/acw;Z)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 0
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/c;->a(Lcom/google/android/gms/internal/acw;Z)V

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/o;->b(Lcom/google/android/gms/internal/acw;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v4, Lcom/google/android/gms/ads/internal/g$a;

    invoke-direct {v4, p0}, Lcom/google/android/gms/ads/internal/g$a;-><init>(Lcom/google/android/gms/ads/internal/g;)V

    .line 10000
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/o;->b(Lcom/google/android/gms/internal/acw;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v5, p1, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    if-eqz v5, :cond_1

    invoke-interface {v5}, Lcom/google/android/gms/internal/aer;->b()Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    :goto_0
    if-nez v3, :cond_2

    const-string/jumbo v0, "AdWebView is null"

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object v3, v0

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v1, p1, Lcom/google/android/gms/internal/acw;->o:Lcom/google/android/gms/internal/xp;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/acw;->o:Lcom/google/android/gms/internal/xp;

    iget-object v1, v1, Lcom/google/android/gms/internal/xp;->o:Ljava/util/List;

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    const-string/jumbo v0, "No template ids present in mediation response"

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Error occurred while recording impression and registering for clicks"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    move-object v2, v0

    goto :goto_2

    :cond_5
    :try_start_1
    iget-object v1, p1, Lcom/google/android/gms/internal/acw;->p:Lcom/google/android/gms/internal/yb;

    if-eqz v1, :cond_8

    iget-object v1, p1, Lcom/google/android/gms/internal/acw;->p:Lcom/google/android/gms/internal/yb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/yb;->h()Lcom/google/android/gms/internal/ye;

    move-result-object v1

    :goto_3
    iget-object v6, p1, Lcom/google/android/gms/internal/acw;->p:Lcom/google/android/gms/internal/yb;

    if-eqz v6, :cond_6

    iget-object v0, p1, Lcom/google/android/gms/internal/acw;->p:Lcom/google/android/gms/internal/yb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/yb;->i()Lcom/google/android/gms/internal/yf;

    move-result-object v0

    :cond_6
    const-string/jumbo v6, "2"

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz v1, :cond_9

    invoke-static {v3}, Lcom/google/android/gms/a/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ye;->b(Lcom/google/android/gms/a/a;)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ye;->j()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {v1}, Lcom/google/android/gms/internal/ye;->i()V

    :cond_7
    invoke-interface {v5}, Lcom/google/android/gms/internal/aer;->l()Lcom/google/android/gms/internal/aes;

    move-result-object v0

    const-string/jumbo v2, "/nativeExpressViewClicked"

    const/4 v3, 0x0

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/ads/internal/o;->a(Lcom/google/android/gms/internal/ye;Lcom/google/android/gms/internal/yf;Lcom/google/android/gms/ads/internal/g$a;)Lcom/google/android/gms/internal/wb;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    goto :goto_1

    :cond_8
    move-object v1, v0

    goto :goto_3

    :cond_9
    const-string/jumbo v1, "1"

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    if-eqz v0, :cond_b

    invoke-static {v3}, Lcom/google/android/gms/a/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/yf;->b(Lcom/google/android/gms/a/a;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/yf;->h()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-interface {v0}, Lcom/google/android/gms/internal/yf;->g()V

    :cond_a
    invoke-interface {v5}, Lcom/google/android/gms/internal/aer;->l()Lcom/google/android/gms/internal/aes;

    move-result-object v1

    const-string/jumbo v2, "/nativeExpressViewClicked"

    const/4 v3, 0x0

    invoke-static {v3, v0, v4}, Lcom/google/android/gms/ads/internal/o;->a(Lcom/google/android/gms/internal/ye;Lcom/google/android/gms/internal/yf;Lcom/google/android/gms/ads/internal/g$a;)Lcom/google/android/gms/internal/wb;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v0, "No matching template id and mapper"

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public final a(Z)V
    .locals 1

    const-string/jumbo v0, "setManualImpressionsEnabled must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/g;->l:Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/acw;Lcom/google/android/gms/internal/acw;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 0
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/c;->a(Lcom/google/android/gms/internal/acw;Lcom/google/android/gms/internal/acw;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/w;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/g;->b(Lcom/google/android/gms/internal/acw;Lcom/google/android/gms/internal/acw;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/google/android/gms/ads/internal/g;->a(I)V

    move v0, v2

    goto :goto_0

    :cond_1
    iget-boolean v0, p2, Lcom/google/android/gms/internal/acw;->k:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0, p2}, Lcom/google/android/gms/ads/internal/g;->d(Lcom/google/android/gms/internal/acw;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->C()Lcom/google/android/gms/internal/aem;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/aem;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->C()Lcom/google/android/gms/internal/aem;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/aem;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-boolean v0, p2, Lcom/google/android/gms/internal/acw;->m:Z

    if-nez v0, :cond_2

    new-instance v4, Lcom/google/android/gms/ads/internal/g$1;

    invoke-direct {v4, p0}, Lcom/google/android/gms/ads/internal/g$1;-><init>(Lcom/google/android/gms/ads/internal/g;)V

    iget-object v0, p2, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    if-eqz v0, :cond_9

    iget-object v0, p2, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->l()Lcom/google/android/gms/internal/aes;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    new-instance v5, Lcom/google/android/gms/ads/internal/g$2;

    invoke-direct {v5, p2, v4}, Lcom/google/android/gms/ads/internal/g$2;-><init>(Lcom/google/android/gms/internal/acw;Ljava/lang/Runnable;)V

    .line 3000
    iput-object v5, v0, Lcom/google/android/gms/internal/aes;->k:Lcom/google/android/gms/internal/aes$e;

    .line 0
    :cond_2
    :goto_2
    iget-object v0, p2, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    if-eqz v0, :cond_e

    iget-object v0, p2, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->z()Lcom/google/android/gms/internal/aex;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    invoke-interface {v1}, Lcom/google/android/gms/internal/aer;->l()Lcom/google/android/gms/internal/aes;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aes;->g()V

    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->x:Lcom/google/android/gms/internal/zzft;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->x:Lcom/google/android/gms/internal/zzft;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzft;->a:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aex;->b(Z)V

    .line 6000
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5000
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/w;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p2, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    if-eqz v0, :cond_8

    iget-object v0, p2, Lcom/google/android/gms/internal/acw;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->h:Lcom/google/android/gms/internal/qx;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->i:Lcom/google/android/gms/internal/zzeg;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/qx;->a(Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/acw;)V

    :cond_5
    new-instance v1, Lcom/google/android/gms/internal/rd;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v4, p2, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    invoke-interface {v4}, Lcom/google/android/gms/internal/aer;->b()Landroid/view/View;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/android/gms/internal/rd;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->D()Lcom/google/android/gms/internal/acq;

    move-result-object v4

    .line 7000
    sget-object v0, Lcom/google/android/gms/internal/ud;->av:Lcom/google/android/gms/internal/ty;

    .line 8000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 7000
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v4}, Lcom/google/android/gms/internal/acq;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    move v2, v3

    .line 5000
    :cond_6
    if-eqz v2, :cond_7

    new-instance v0, Lcom/google/android/gms/internal/acp;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/w;->b:Ljava/lang/String;

    invoke-direct {v0, v2, v4}, Lcom/google/android/gms/internal/acp;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/rd;->a(Lcom/google/android/gms/internal/rd$b;)V

    :cond_7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/acw;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p2, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/rd;->a(Lcom/google/android/gms/internal/rd$b;)V

    :cond_8
    :goto_4
    move v0, v3

    .line 0
    goto/16 :goto_0

    :cond_9
    move-object v0, v1

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/w;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/android/gms/internal/ud;->cb:Lcom/google/android/gms/internal/ty;

    .line 4000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_b
    invoke-virtual {p0, p2, v2}, Lcom/google/android/gms/ads/internal/g;->a(Lcom/google/android/gms/internal/acw;Z)V

    goto/16 :goto_2

    .line 5000
    :cond_c
    iget-object v0, p2, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->l()Lcom/google/android/gms/internal/aes;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/ads/internal/g$3;

    invoke-direct {v2, v1, p2}, Lcom/google/android/gms/ads/internal/g$3;-><init>(Lcom/google/android/gms/internal/rd;Lcom/google/android/gms/internal/acw;)V

    .line 9000
    iput-object v2, v0, Lcom/google/android/gms/internal/aes;->e:Lcom/google/android/gms/internal/aes$c;

    goto :goto_4

    .line 5000
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->E:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p2, Lcom/google/android/gms/internal/acw;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->h:Lcom/google/android/gms/internal/qx;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->i:Lcom/google/android/gms/internal/zzeg;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->E:Landroid/view/View;

    invoke-virtual {v0, v1, p2, v2}, Lcom/google/android/gms/internal/qx;->a(Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/acw;Landroid/view/View;)V

    goto :goto_4

    :cond_e
    move-object v0, v1

    goto/16 :goto_3
.end method

.method public final a(Lcom/google/android/gms/internal/zzec;)Z
    .locals 22

    .prologue
    .line 0
    .line 2000
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/google/android/gms/internal/zzec;->h:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/gms/ads/internal/g;->l:Z

    if-ne v2, v3, :cond_0

    .line 0
    :goto_0
    invoke-super/range {p0 .. p1}, Lcom/google/android/gms/ads/internal/c;->a(Lcom/google/android/gms/internal/zzec;)Z

    move-result v2

    return v2

    .line 2000
    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/zzec;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/android/gms/internal/zzec;->a:I

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzec;->b:J

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/internal/zzec;->c:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/google/android/gms/internal/zzec;->d:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/google/android/gms/internal/zzec;->e:Ljava/util/List;

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/google/android/gms/internal/zzec;->f:Z

    move-object/from16 v0, p1

    iget v10, v0, Lcom/google/android/gms/internal/zzec;->g:I

    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/google/android/gms/internal/zzec;->h:Z

    if-nez v11, :cond_1

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/gms/ads/internal/g;->l:Z

    if-eqz v11, :cond_2

    :cond_1
    const/4 v11, 0x1

    :goto_1
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/android/gms/internal/zzec;->i:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/android/gms/internal/zzec;->j:Lcom/google/android/gms/internal/zzfp;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/google/android/gms/internal/zzec;->k:Landroid/location/Location;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/google/android/gms/internal/zzec;->l:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzec;->m:Landroid/os/Bundle;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzec;->n:Landroid/os/Bundle;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzec;->o:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzec;->p:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzec;->q:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzec;->r:Z

    move/from16 v21, v0

    invoke-direct/range {v2 .. v21}, Lcom/google/android/gms/internal/zzec;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/zzfp;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 p1, v2

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    goto :goto_1
.end method

.method final d(Lcom/google/android/gms/internal/acw;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 0
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p1, Lcom/google/android/gms/internal/acw;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/adj;->a(Landroid/view/View;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/w$a;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->l()Lcom/google/android/gms/internal/aes;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->l()Lcom/google/android/gms/internal/aes;

    move-result-object v0

    .line 11000
    iput-object v2, v0, Lcom/google/android/gms/internal/aes;->k:Lcom/google/android/gms/internal/aes$e;

    .line 0
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/g;->a(Lcom/google/android/gms/internal/acw;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/gms/internal/acw;->m:Z

    goto :goto_0
.end method

.method public final onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/g;->d(Lcom/google/android/gms/internal/acw;)V

    return-void
.end method

.method public final onScrollChanged()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/g;->d(Lcom/google/android/gms/internal/acw;)V

    return-void
.end method

.method public final q()Lcom/google/android/gms/internal/te;
    .locals 1

    const-string/jumbo v0, "getVideoController must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->z()Lcom/google/android/gms/internal/aex;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final x()Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.permission.INTERNET"

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/adj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->i:Lcom/google/android/gms/internal/zzeg;

    const-string/jumbo v3, "Missing internet permission in AndroidManifest.xml."

    const-string/jumbo v4, "Missing internet permission in AndroidManifest.xml. You must have the following declaration: <uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/internal/aea;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/adj;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->i:Lcom/google/android/gms/internal/zzeg;

    const-string/jumbo v3, "Missing AdActivity with android:configChanges in AndroidManifest.xml."

    const-string/jumbo v4, "Missing AdActivity with android:configChanges in AndroidManifest.xml. You must have the following declaration within the <application> element: <activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />"

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/internal/aea;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_1
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/internal/w$a;->setVisibility(I)V

    :cond_2
    return v0
.end method
