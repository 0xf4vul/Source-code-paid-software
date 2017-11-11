.class Lcom/google/android/gms/ads/BaseAdView;
.super Landroid/view/ViewGroup;


# instance fields
.field protected final a:Lcom/google/android/gms/internal/ti;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/ti;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ti;-><init>(Landroid/view/ViewGroup;I)V

    iput-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->a:Lcom/google/android/gms/internal/ti;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/google/android/gms/internal/ti;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/ti;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->a:Lcom/google/android/gms/internal/ti;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/google/android/gms/internal/ti;

    invoke-direct {v0, p0, p2, p4}, Lcom/google/android/gms/internal/ti;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->a:Lcom/google/android/gms/internal/ti;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->a:Lcom/google/android/gms/internal/ti;

    .line 17000
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ti;->i:Lcom/google/android/gms/internal/sw;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ti;->i:Lcom/google/android/gms/internal/sw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/sw;->n()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to call resume."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/aeb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/ads/c;)V
    .locals 9

    .prologue
    .line 0
    iget-object v6, p0, Lcom/google/android/gms/ads/BaseAdView;->a:Lcom/google/android/gms/internal/ti;

    .line 5000
    iget-object v7, p1, Lcom/google/android/gms/ads/c;->a:Lcom/google/android/gms/internal/th;

    .line 6000
    :try_start_0
    iget-object v0, v6, Lcom/google/android/gms/internal/ti;->i:Lcom/google/android/gms/internal/sw;

    if-nez v0, :cond_a

    .line 7000
    iget-object v0, v6, Lcom/google/android/gms/internal/ti;->f:[Lcom/google/android/gms/ads/d;

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/google/android/gms/internal/ti;->n:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, v6, Lcom/google/android/gms/internal/ti;->i:Lcom/google/android/gms/internal/sw;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The ad size and ad unit ID must be set before loadAd is called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6000
    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to load ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/aeb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void

    .line 8000
    :cond_2
    :try_start_1
    iget-object v0, v6, Lcom/google/android/gms/internal/ti;->p:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v6, Lcom/google/android/gms/internal/ti;->f:[Lcom/google/android/gms/ads/d;

    iget v1, v6, Lcom/google/android/gms/internal/ti;->q:I

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ti;->a(Landroid/content/Context;[Lcom/google/android/gms/ads/d;I)Lcom/google/android/gms/internal/zzeg;

    move-result-object v3

    .line 9000
    const-string/jumbo v0, "search_v2"

    iget-object v1, v3, Lcom/google/android/gms/internal/zzeg;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 8000
    if-eqz v0, :cond_b

    invoke-static {}, Lcom/google/android/gms/internal/so;->b()Lcom/google/android/gms/internal/sn;

    move-result-object v0

    iget-object v1, v6, Lcom/google/android/gms/internal/ti;->n:Ljava/lang/String;

    .line 10000
    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/gms/internal/sn$2;

    invoke-direct {v5, v0, v2, v3, v1}, Lcom/google/android/gms/internal/sn$2;-><init>(Lcom/google/android/gms/internal/sn;Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;)V

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/sn;->a(Landroid/content/Context;ZLcom/google/android/gms/internal/sn$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/sw;

    .line 7000
    :goto_1
    iput-object v0, v6, Lcom/google/android/gms/internal/ti;->i:Lcom/google/android/gms/internal/sw;

    iget-object v0, v6, Lcom/google/android/gms/internal/ti;->i:Lcom/google/android/gms/internal/sw;

    new-instance v1, Lcom/google/android/gms/internal/sd;

    iget-object v2, v6, Lcom/google/android/gms/internal/ti;->c:Lcom/google/android/gms/internal/sq;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/sd;-><init>(Lcom/google/android/gms/ads/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/sw;->a(Lcom/google/android/gms/internal/ss;)V

    iget-object v0, v6, Lcom/google/android/gms/internal/ti;->d:Lcom/google/android/gms/internal/sb;

    if-eqz v0, :cond_3

    iget-object v0, v6, Lcom/google/android/gms/internal/ti;->i:Lcom/google/android/gms/internal/sw;

    new-instance v1, Lcom/google/android/gms/internal/sc;

    iget-object v2, v6, Lcom/google/android/gms/internal/ti;->d:Lcom/google/android/gms/internal/sb;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/sc;-><init>(Lcom/google/android/gms/internal/sb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/sw;->a(Lcom/google/android/gms/internal/sr;)V

    :cond_3
    iget-object v0, v6, Lcom/google/android/gms/internal/ti;->g:Lcom/google/android/gms/ads/doubleclick/a;

    if-eqz v0, :cond_4

    iget-object v0, v6, Lcom/google/android/gms/internal/ti;->i:Lcom/google/android/gms/internal/sw;

    new-instance v1, Lcom/google/android/gms/internal/sl;

    iget-object v2, v6, Lcom/google/android/gms/internal/ti;->g:Lcom/google/android/gms/ads/doubleclick/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/sl;-><init>(Lcom/google/android/gms/ads/doubleclick/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/sw;->a(Lcom/google/android/gms/internal/sy;)V

    :cond_4
    iget-object v0, v6, Lcom/google/android/gms/internal/ti;->j:Lcom/google/android/gms/ads/purchase/a;

    if-eqz v0, :cond_5

    iget-object v0, v6, Lcom/google/android/gms/internal/ti;->i:Lcom/google/android/gms/internal/sw;

    new-instance v1, Lcom/google/android/gms/internal/zk;

    iget-object v2, v6, Lcom/google/android/gms/internal/ti;->j:Lcom/google/android/gms/ads/purchase/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zk;-><init>(Lcom/google/android/gms/ads/purchase/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/sw;->a(Lcom/google/android/gms/internal/zf;)V

    :cond_5
    iget-object v0, v6, Lcom/google/android/gms/internal/ti;->l:Lcom/google/android/gms/ads/purchase/b;

    if-eqz v0, :cond_6

    iget-object v0, v6, Lcom/google/android/gms/internal/ti;->i:Lcom/google/android/gms/internal/sw;

    new-instance v1, Lcom/google/android/gms/internal/zo;

    iget-object v2, v6, Lcom/google/android/gms/internal/ti;->l:Lcom/google/android/gms/ads/purchase/b;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zo;-><init>(Lcom/google/android/gms/ads/purchase/b;)V

    iget-object v2, v6, Lcom/google/android/gms/internal/ti;->o:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/sw;->a(Lcom/google/android/gms/internal/zj;Ljava/lang/String;)V

    :cond_6
    iget-object v0, v6, Lcom/google/android/gms/internal/ti;->k:Lcom/google/android/gms/ads/doubleclick/b;

    if-eqz v0, :cond_7

    iget-object v0, v6, Lcom/google/android/gms/internal/ti;->i:Lcom/google/android/gms/internal/sw;

    new-instance v1, Lcom/google/android/gms/internal/uq;

    iget-object v2, v6, Lcom/google/android/gms/internal/ti;->k:Lcom/google/android/gms/ads/doubleclick/b;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/uq;-><init>(Lcom/google/android/gms/ads/doubleclick/b;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/sw;->a(Lcom/google/android/gms/internal/up;)V

    :cond_7
    iget-object v0, v6, Lcom/google/android/gms/internal/ti;->h:Lcom/google/android/gms/ads/e;

    if-eqz v0, :cond_8

    iget-object v0, v6, Lcom/google/android/gms/internal/ti;->i:Lcom/google/android/gms/internal/sw;

    iget-object v1, v6, Lcom/google/android/gms/internal/ti;->h:Lcom/google/android/gms/ads/e;

    .line 12000
    iget-object v1, v1, Lcom/google/android/gms/ads/e;->a:Lcom/google/android/gms/internal/sp;

    .line 7000
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/sw;->a(Lcom/google/android/gms/internal/ta;)V

    :cond_8
    iget-object v0, v6, Lcom/google/android/gms/internal/ti;->m:Lcom/google/android/gms/ads/h;

    if-eqz v0, :cond_9

    iget-object v0, v6, Lcom/google/android/gms/internal/ti;->i:Lcom/google/android/gms/internal/sw;

    new-instance v1, Lcom/google/android/gms/internal/zzft;

    iget-object v2, v6, Lcom/google/android/gms/internal/ti;->m:Lcom/google/android/gms/ads/h;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzft;-><init>(Lcom/google/android/gms/ads/h;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/sw;->a(Lcom/google/android/gms/internal/zzft;)V

    :cond_9
    iget-object v0, v6, Lcom/google/android/gms/internal/ti;->i:Lcom/google/android/gms/internal/sw;

    iget-boolean v1, v6, Lcom/google/android/gms/internal/ti;->r:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/sw;->a(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 13000
    :try_start_2
    iget-object v0, v6, Lcom/google/android/gms/internal/ti;->i:Lcom/google/android/gms/internal/sw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/sw;->i()Lcom/google/android/gms/a/a;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    if-nez v0, :cond_c

    .line 6000
    :cond_a
    :goto_2
    :try_start_3
    iget-object v0, v6, Lcom/google/android/gms/internal/ti;->i:Lcom/google/android/gms/internal/sw;

    iget-object v1, v6, Lcom/google/android/gms/internal/ti;->p:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/sj;->a(Landroid/content/Context;Lcom/google/android/gms/internal/th;)Lcom/google/android/gms/internal/zzec;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/sw;->a(Lcom/google/android/gms/internal/zzec;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/google/android/gms/internal/ti;->a:Lcom/google/android/gms/internal/xy;

    .line 14000
    iget-object v1, v7, Lcom/google/android/gms/internal/th;->h:Ljava/util/Map;

    .line 15000
    iput-object v1, v0, Lcom/google/android/gms/internal/xy;->a:Ljava/util/Map;

    goto/16 :goto_0

    .line 8000
    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/so;->b()Lcom/google/android/gms/internal/sn;

    move-result-object v1

    iget-object v4, v6, Lcom/google/android/gms/internal/ti;->n:Ljava/lang/String;

    iget-object v5, v6, Lcom/google/android/gms/internal/ti;->a:Lcom/google/android/gms/internal/xy;

    .line 11000
    const/4 v8, 0x0

    new-instance v0, Lcom/google/android/gms/internal/sn$1;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/sn$1;-><init>(Lcom/google/android/gms/internal/sn;Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/ya;)V

    invoke-static {v2, v8, v0}, Lcom/google/android/gms/internal/sn;->a(Landroid/content/Context;ZLcom/google/android/gms/internal/sn$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/sw;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 13000
    :cond_c
    :try_start_4
    iget-object v1, v6, Lcom/google/android/gms/internal/ti;->p:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/gms/a/b;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_5
    const-string/jumbo v1, "Failed to get an ad frame."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/aeb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2
.end method

.method public b()V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->a:Lcom/google/android/gms/internal/ti;

    .line 16000
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ti;->i:Lcom/google/android/gms/internal/sw;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ti;->i:Lcom/google/android/gms/internal/sw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/sw;->m()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to call pause."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/aeb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->a:Lcom/google/android/gms/internal/ti;

    .line 1000
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ti;->i:Lcom/google/android/gms/internal/sw;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ti;->i:Lcom/google/android/gms/internal/sw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/sw;->h()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to destroy AdView."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/aeb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getAdListener()Lcom/google/android/gms/ads/a;
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->a:Lcom/google/android/gms/internal/ti;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/ti;->e:Lcom/google/android/gms/ads/a;

    .line 0
    return-object v0
.end method

.method public getAdSize()Lcom/google/android/gms/ads/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->a:Lcom/google/android/gms/internal/ti;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ti;->a()Lcom/google/android/gms/ads/d;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->a:Lcom/google/android/gms/internal/ti;

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/internal/ti;->n:Ljava/lang/String;

    .line 0
    return-object v0
.end method

.method public getInAppPurchaseListener()Lcom/google/android/gms/ads/purchase/a;
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->a:Lcom/google/android/gms/internal/ti;

    .line 4000
    iget-object v0, v0, Lcom/google/android/gms/internal/ti;->j:Lcom/google/android/gms/ads/purchase/a;

    .line 0
    return-object v0
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->a:Lcom/google/android/gms/internal/ti;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ti;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/BaseAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v3, p4, p2

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    sub-int v4, p5, p3

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v3

    add-int/2addr v2, v4

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/BaseAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    invoke-virtual {p0, v2, p1, p2}, Lcom/google/android/gms/ads/BaseAdView;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/BaseAdView;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/BaseAdView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, p1}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/ads/BaseAdView;->setMeasuredDimension(II)V

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/BaseAdView;->getAdSize()Lcom/google/android/gms/ads/d;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/BaseAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/d;->b(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/d;->a(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "Unable to retrieve ad size."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/aeb;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v1

    goto :goto_1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public setAdListener(Lcom/google/android/gms/ads/a;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->a:Lcom/google/android/gms/internal/ti;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ti;->a(Lcom/google/android/gms/ads/a;)V

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/google/android/gms/internal/sb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->a:Lcom/google/android/gms/internal/ti;

    check-cast p1, Lcom/google/android/gms/internal/sb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ti;->a(Lcom/google/android/gms/internal/sb;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->a:Lcom/google/android/gms/internal/ti;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ti;->a(Lcom/google/android/gms/internal/sb;)V

    goto :goto_0
.end method

.method public setAdSize(Lcom/google/android/gms/ads/d;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->a:Lcom/google/android/gms/internal/ti;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/ads/d;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ti;->a([Lcom/google/android/gms/ads/d;)V

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->a:Lcom/google/android/gms/internal/ti;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ti;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setInAppPurchaseListener(Lcom/google/android/gms/ads/purchase/a;)V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->a:Lcom/google/android/gms/internal/ti;

    .line 18000
    iget-object v1, v0, Lcom/google/android/gms/internal/ti;->l:Lcom/google/android/gms/ads/purchase/b;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Play store purchase parameter has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iput-object p1, v0, Lcom/google/android/gms/internal/ti;->j:Lcom/google/android/gms/ads/purchase/a;

    iget-object v1, v0, Lcom/google/android/gms/internal/ti;->i:Lcom/google/android/gms/internal/sw;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ti;->i:Lcom/google/android/gms/internal/sw;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zk;-><init>(Lcom/google/android/gms/ads/purchase/a;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/sw;->a(Lcom/google/android/gms/internal/zf;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to set the InAppPurchaseListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/aeb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
