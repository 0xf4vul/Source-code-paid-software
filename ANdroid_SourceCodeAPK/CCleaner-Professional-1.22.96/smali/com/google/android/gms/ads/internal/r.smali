.class public final Lcom/google/android/gms/ads/internal/r;
.super Lcom/google/android/gms/ads/internal/b;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# instance fields
.field public l:Lcom/google/android/gms/internal/aer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/e;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/ya;Lcom/google/android/gms/internal/zzqh;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/ya;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/ads/internal/e;)V

    return-void
.end method

.method private a(Lcom/google/android/gms/internal/uv;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/adj;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/r$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/r$2;-><init>(Lcom/google/android/gms/ads/internal/r;Lcom/google/android/gms/internal/uv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Lcom/google/android/gms/internal/uw;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/adj;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/r$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/r$3;-><init>(Lcom/google/android/gms/ads/internal/r;Lcom/google/android/gms/internal/uw;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final G()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Interstitial is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final J()V
    .locals 5

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->l:Lcom/google/android/gms/internal/aer;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-result-object v0

    .line 9000
    iget-object v0, v0, Lcom/google/android/gms/internal/acz;->c:Lcom/google/android/gms/internal/qx;

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->i:Lcom/google/android/gms/internal/zzeg;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/r;->l:Lcom/google/android/gms/internal/aer;

    invoke-interface {v3}, Lcom/google/android/gms/internal/aer;->b()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/r;->l:Lcom/google/android/gms/internal/aer;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/qx;->a(Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/acw;Landroid/view/View;Lcom/google/android/gms/internal/xi;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "Request to enable ActiveView before adState is available."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final K()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final L()Landroid/support/v4/h/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/h/k",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/vr;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "getOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->v:Landroid/support/v4/h/k;

    return-object v0
.end method

.method public final M()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->l:Lcom/google/android/gms/internal/aer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->l:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->z()Lcom/google/android/gms/internal/aex;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->w:Lcom/google/android/gms/internal/zzhc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->w:Lcom/google/android/gms/internal/zzhc;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhc;->f:Lcom/google/android/gms/internal/zzft;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->l:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->z()Lcom/google/android/gms/internal/aex;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->w:Lcom/google/android/gms/internal/zzhc;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzhc;->f:Lcom/google/android/gms/internal/zzft;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzft;->a:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aex;->b(Z)V

    :cond_0
    return-void
.end method

.method public final N()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/acw;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->r:Lcom/google/android/gms/internal/xq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->r:Lcom/google/android/gms/internal/xq;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/xq;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/support/v4/h/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/h/k",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/vr;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "setOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/w;->v:Landroid/support/v4/h/k;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/acw$a;Lcom/google/android/gms/internal/ul;)V
    .locals 9

    iget-object v0, p1, Lcom/google/android/gms/internal/acw$a;->d:Lcom/google/android/gms/internal/zzeg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, p1, Lcom/google/android/gms/internal/acw$a;->d:Lcom/google/android/gms/internal/zzeg;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/w;->i:Lcom/google/android/gms/internal/zzeg;

    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/acw$a;->e:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/adj;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/r$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/r$1;-><init>(Lcom/google/android/gms/ads/internal/r;Lcom/google/android/gms/internal/acw$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/ads/internal/w;->F:I

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->d()Lcom/google/android/gms/internal/zr;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/w;->d:Lcom/google/android/gms/internal/ej;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/r;->j:Lcom/google/android/gms/internal/ya;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p0

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/zr;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/acw$a;Lcom/google/android/gms/internal/ej;Lcom/google/android/gms/internal/aer;Lcom/google/android/gms/internal/ya;Lcom/google/android/gms/internal/zr$a;Lcom/google/android/gms/internal/ul;)Lcom/google/android/gms/internal/adl;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/gms/ads/internal/w;->h:Lcom/google/android/gms/internal/adl;

    const-string/jumbo v1, "AdRenderer: "

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->h:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/internal/up;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "CustomRendering is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/vb;)V
    .locals 5

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-result-object v0

    .line 7000
    iget-object v0, v0, Lcom/google/android/gms/internal/acz;->c:Lcom/google/android/gms/internal/qx;

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->i:Lcom/google/android/gms/internal/zzeg;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    .line 8000
    new-instance v3, Lcom/google/android/gms/internal/qy$a;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/qy$a;-><init>(Lcom/google/android/gms/internal/vb;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/qx;->a(Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/acw;Lcom/google/android/gms/internal/rg;Lcom/google/android/gms/internal/xi;)V

    .line 0
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/vo;)V
    .locals 1

    const-string/jumbo v0, "setOnAppInstallAdLoadedListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/w;->s:Lcom/google/android/gms/internal/vo;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/vp;)V
    .locals 1

    const-string/jumbo v0, "setOnContentAdLoadedListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/w;->t:Lcom/google/android/gms/internal/vp;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/zf;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "In App Purchase is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/zzhc;)V
    .locals 1

    const-string/jumbo v0, "setNativeAdOptions must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/w;->w:Lcom/google/android/gms/internal/zzhc;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "setNativeTemplates must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/w;->B:Ljava/util/List;

    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/acw;Lcom/google/android/gms/internal/acw;)Z
    .locals 17

    .prologue
    .line 0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/r;->a(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/w;->c()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Native ad DOES NOT have custom rendering mode."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/google/android/gms/internal/acw;->n:Z

    if-eqz v2, :cond_7

    :try_start_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/acw;->p:Lcom/google/android/gms/internal/yb;

    if-eqz v2, :cond_1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/acw;->p:Lcom/google/android/gms/internal/yb;

    invoke-interface {v2}, Lcom/google/android/gms/internal/yb;->h()Lcom/google/android/gms/internal/ye;

    move-result-object v2

    move-object/from16 v16, v2

    :goto_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/acw;->p:Lcom/google/android/gms/internal/yb;

    if-eqz v2, :cond_2

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/acw;->p:Lcom/google/android/gms/internal/yb;

    invoke-interface {v2}, Lcom/google/android/gms/internal/yb;->i()Lcom/google/android/gms/internal/yf;

    move-result-object v2

    move-object v13, v2

    :goto_1
    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->s:Lcom/google/android/gms/internal/vo;

    if-eqz v2, :cond_4

    .line 4000
    new-instance v2, Lcom/google/android/gms/internal/uv;

    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/internal/ye;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/internal/ye;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/internal/ye;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/internal/ye;->d()Lcom/google/android/gms/internal/vf;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/internal/ye;->d()Lcom/google/android/gms/internal/vf;

    move-result-object v6

    :goto_2
    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/internal/ye;->e()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/internal/ye;->f()D

    move-result-wide v8

    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/internal/ye;->g()Ljava/lang/String;

    move-result-object v10

    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/internal/ye;->h()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/internal/ye;->l()Landroid/os/Bundle;

    move-result-object v13

    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/internal/ye;->m()Lcom/google/android/gms/internal/te;

    move-result-object v14

    const/4 v15, 0x0

    invoke-direct/range {v2 .. v15}, Lcom/google/android/gms/internal/uv;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/vf;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/us;Landroid/os/Bundle;Lcom/google/android/gms/internal/te;Landroid/view/View;)V

    .line 0
    new-instance v3, Lcom/google/android/gms/internal/uz;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v6, v5, Lcom/google/android/gms/ads/internal/w;->d:Lcom/google/android/gms/internal/ej;

    move-object/from16 v5, p0

    move-object/from16 v7, v16

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/uz;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/r;Lcom/google/android/gms/internal/ej;Lcom/google/android/gms/internal/ye;Lcom/google/android/gms/internal/vb$a;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/uv;->a(Lcom/google/android/gms/internal/vb;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/r;->a(Lcom/google/android/gms/internal/uv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-super/range {p0 .. p2}, Lcom/google/android/gms/ads/internal/b;->a(Lcom/google/android/gms/internal/acw;Lcom/google/android/gms/internal/acw;)Z

    move-result v2

    :goto_4
    return v2

    :cond_1
    const/4 v2, 0x0

    move-object/from16 v16, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    move-object v13, v2

    goto :goto_1

    .line 4000
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 0
    :cond_4
    if-eqz v13, :cond_6

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->t:Lcom/google/android/gms/internal/vp;

    if-eqz v2, :cond_6

    .line 5000
    new-instance v2, Lcom/google/android/gms/internal/uw;

    invoke-interface {v13}, Lcom/google/android/gms/internal/yf;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13}, Lcom/google/android/gms/internal/yf;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v13}, Lcom/google/android/gms/internal/yf;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v13}, Lcom/google/android/gms/internal/yf;->d()Lcom/google/android/gms/internal/vf;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-interface {v13}, Lcom/google/android/gms/internal/yf;->d()Lcom/google/android/gms/internal/vf;

    move-result-object v6

    :goto_5
    invoke-interface {v13}, Lcom/google/android/gms/internal/yf;->e()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13}, Lcom/google/android/gms/internal/yf;->f()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v13}, Lcom/google/android/gms/internal/yf;->j()Landroid/os/Bundle;

    move-result-object v10

    invoke-interface {v13}, Lcom/google/android/gms/internal/yf;->l()Lcom/google/android/gms/internal/te;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/internal/uw;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/vf;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/us;Landroid/os/Bundle;Lcom/google/android/gms/internal/te;Landroid/view/View;)V

    .line 0
    new-instance v3, Lcom/google/android/gms/internal/uz;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v6, v5, Lcom/google/android/gms/ads/internal/w;->d:Lcom/google/android/gms/internal/ej;

    move-object/from16 v5, p0

    move-object v7, v13

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/uz;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/r;Lcom/google/android/gms/internal/ej;Lcom/google/android/gms/internal/yf;Lcom/google/android/gms/internal/vb$a;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/uw;->a(Lcom/google/android/gms/internal/vb;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/r;->a(Lcom/google/android/gms/internal/uw;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    const-string/jumbo v3, "Failed to get native ad mapper"

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 5000
    :cond_5
    const/4 v6, 0x0

    goto :goto_5

    .line 0
    :cond_6
    :try_start_2
    const-string/jumbo v2, "No matching mapper/listener for retrieved native ad template."

    invoke-static {v2}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/r;->a(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, 0x0

    goto :goto_4

    :cond_7
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/acw;->E:Lcom/google/android/gms/internal/vb$a;

    instance-of v2, v3, Lcom/google/android/gms/internal/uw;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->t:Lcom/google/android/gms/internal/vp;

    if-eqz v2, :cond_8

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/acw;->E:Lcom/google/android/gms/internal/vb$a;

    check-cast v2, Lcom/google/android/gms/internal/uw;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/r;->a(Lcom/google/android/gms/internal/uw;)V

    goto/16 :goto_3

    :cond_8
    instance-of v2, v3, Lcom/google/android/gms/internal/uv;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->s:Lcom/google/android/gms/internal/vo;

    if-eqz v2, :cond_9

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/acw;->E:Lcom/google/android/gms/internal/vb$a;

    check-cast v2, Lcom/google/android/gms/internal/uv;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/r;->a(Lcom/google/android/gms/internal/uv;)V

    goto/16 :goto_3

    :cond_9
    instance-of v2, v3, Lcom/google/android/gms/internal/ux;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->v:Landroid/support/v4/h/k;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v4, v2, Lcom/google/android/gms/ads/internal/w;->v:Landroid/support/v4/h/k;

    move-object v2, v3

    check-cast v2, Lcom/google/android/gms/internal/ux;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ux;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/support/v4/h/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    check-cast v3, Lcom/google/android/gms/internal/ux;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ux;->l()Ljava/lang/String;

    move-result-object v2

    .line 6000
    sget-object v3, Lcom/google/android/gms/internal/adj;->a:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/ads/internal/r$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v2, v1}, Lcom/google/android/gms/ads/internal/r$4;-><init>(Lcom/google/android/gms/ads/internal/r;Ljava/lang/String;Lcom/google/android/gms/internal/acw;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 0
    :cond_a
    const-string/jumbo v2, "No matching listener for retrieved native ad template."

    invoke-static {v2}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/r;->a(I)V

    const/4 v2, 0x0

    goto/16 :goto_4
.end method

.method protected final a(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/acw;Z)Z
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->e:Lcom/google/android/gms/ads/internal/s;

    .line 3000
    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/s;->b:Z

    .line 0
    return v0
.end method

.method public final a(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/ul;)Z
    .locals 4

    .prologue
    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ud;->cg:Lcom/google/android/gms/internal/ty;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ud;->ch:Lcom/google/android/gms/internal/ty;

    .line 2000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zx;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->d:Lcom/google/android/gms/internal/ej;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/w;->e:Lcom/google/android/gms/internal/zzqh;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/google/android/gms/internal/zx;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/r;Lcom/google/android/gms/internal/ej;Lcom/google/android/gms/internal/zzqh;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zx;->a()V

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zx;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/b;->a(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/ul;)Z

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Initializing javascript failed"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/internal/vq;
    .locals 1

    const-string/jumbo v0, "getOnCustomClickListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->u:Landroid/support/v4/h/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/h/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vq;

    return-object v0
.end method

.method public final b(Landroid/support/v4/h/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/h/k",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/vq;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "setOnCustomClickListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/w;->u:Landroid/support/v4/h/k;

    return-void
.end method

.method public final m()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Native Ad DOES NOT support pause()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final n()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Native Ad DOES NOT support resume()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
