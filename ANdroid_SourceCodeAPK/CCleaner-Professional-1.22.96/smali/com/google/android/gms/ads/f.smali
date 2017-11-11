.class public final Lcom/google/android/gms/ads/f;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/android/gms/internal/tj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/tj;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/tj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/internal/tj;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/internal/tj;

    .line 9000
    :try_start_0
    const-string/jumbo v1, "show"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/tj;->a(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/tj;->e:Lcom/google/android/gms/internal/sw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/sw;->G()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to show interstitial."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/aeb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/ads/c;)V
    .locals 9

    .prologue
    .line 0
    iget-object v6, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/internal/tj;

    .line 1000
    iget-object v7, p1, Lcom/google/android/gms/ads/c;->a:Lcom/google/android/gms/internal/th;

    .line 2000
    :try_start_0
    iget-object v0, v6, Lcom/google/android/gms/internal/tj;->e:Lcom/google/android/gms/internal/sw;

    if-nez v0, :cond_8

    const-string/jumbo v0, "loadAd"

    .line 3000
    iget-object v1, v6, Lcom/google/android/gms/internal/tj;->f:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/tj;->a(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, v6, Lcom/google/android/gms/internal/tj;->n:Z

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/google/android/gms/internal/zzeg;->b()Lcom/google/android/gms/internal/zzeg;

    move-result-object v3

    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/so;->b()Lcom/google/android/gms/internal/sn;

    move-result-object v1

    iget-object v2, v6, Lcom/google/android/gms/internal/tj;->b:Landroid/content/Context;

    iget-object v4, v6, Lcom/google/android/gms/internal/tj;->f:Ljava/lang/String;

    iget-object v5, v6, Lcom/google/android/gms/internal/tj;->a:Lcom/google/android/gms/internal/xy;

    .line 4000
    const/4 v8, 0x0

    new-instance v0, Lcom/google/android/gms/internal/sn$3;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/sn$3;-><init>(Lcom/google/android/gms/internal/sn;Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/ya;)V

    invoke-static {v2, v8, v0}, Lcom/google/android/gms/internal/sn;->a(Landroid/content/Context;ZLcom/google/android/gms/internal/sn$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/sw;

    .line 3000
    iput-object v0, v6, Lcom/google/android/gms/internal/tj;->e:Lcom/google/android/gms/internal/sw;

    iget-object v0, v6, Lcom/google/android/gms/internal/tj;->c:Lcom/google/android/gms/ads/a;

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/google/android/gms/internal/tj;->e:Lcom/google/android/gms/internal/sw;

    new-instance v1, Lcom/google/android/gms/internal/sd;

    iget-object v2, v6, Lcom/google/android/gms/internal/tj;->c:Lcom/google/android/gms/ads/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/sd;-><init>(Lcom/google/android/gms/ads/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/sw;->a(Lcom/google/android/gms/internal/ss;)V

    :cond_1
    iget-object v0, v6, Lcom/google/android/gms/internal/tj;->d:Lcom/google/android/gms/internal/sb;

    if-eqz v0, :cond_2

    iget-object v0, v6, Lcom/google/android/gms/internal/tj;->e:Lcom/google/android/gms/internal/sw;

    new-instance v1, Lcom/google/android/gms/internal/sc;

    iget-object v2, v6, Lcom/google/android/gms/internal/tj;->d:Lcom/google/android/gms/internal/sb;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/sc;-><init>(Lcom/google/android/gms/internal/sb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/sw;->a(Lcom/google/android/gms/internal/sr;)V

    :cond_2
    iget-object v0, v6, Lcom/google/android/gms/internal/tj;->h:Lcom/google/android/gms/ads/doubleclick/a;

    if-eqz v0, :cond_3

    iget-object v0, v6, Lcom/google/android/gms/internal/tj;->e:Lcom/google/android/gms/internal/sw;

    new-instance v1, Lcom/google/android/gms/internal/sl;

    iget-object v2, v6, Lcom/google/android/gms/internal/tj;->h:Lcom/google/android/gms/ads/doubleclick/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/sl;-><init>(Lcom/google/android/gms/ads/doubleclick/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/sw;->a(Lcom/google/android/gms/internal/sy;)V

    :cond_3
    iget-object v0, v6, Lcom/google/android/gms/internal/tj;->j:Lcom/google/android/gms/ads/purchase/a;

    if-eqz v0, :cond_4

    iget-object v0, v6, Lcom/google/android/gms/internal/tj;->e:Lcom/google/android/gms/internal/sw;

    new-instance v1, Lcom/google/android/gms/internal/zk;

    iget-object v2, v6, Lcom/google/android/gms/internal/tj;->j:Lcom/google/android/gms/ads/purchase/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zk;-><init>(Lcom/google/android/gms/ads/purchase/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/sw;->a(Lcom/google/android/gms/internal/zf;)V

    :cond_4
    iget-object v0, v6, Lcom/google/android/gms/internal/tj;->i:Lcom/google/android/gms/ads/purchase/b;

    if-eqz v0, :cond_5

    iget-object v0, v6, Lcom/google/android/gms/internal/tj;->e:Lcom/google/android/gms/internal/sw;

    new-instance v1, Lcom/google/android/gms/internal/zo;

    iget-object v2, v6, Lcom/google/android/gms/internal/tj;->i:Lcom/google/android/gms/ads/purchase/b;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zo;-><init>(Lcom/google/android/gms/ads/purchase/b;)V

    iget-object v2, v6, Lcom/google/android/gms/internal/tj;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/sw;->a(Lcom/google/android/gms/internal/zj;Ljava/lang/String;)V

    :cond_5
    iget-object v0, v6, Lcom/google/android/gms/internal/tj;->k:Lcom/google/android/gms/ads/doubleclick/b;

    if-eqz v0, :cond_6

    iget-object v0, v6, Lcom/google/android/gms/internal/tj;->e:Lcom/google/android/gms/internal/sw;

    new-instance v1, Lcom/google/android/gms/internal/uq;

    iget-object v2, v6, Lcom/google/android/gms/internal/tj;->k:Lcom/google/android/gms/ads/doubleclick/b;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/uq;-><init>(Lcom/google/android/gms/ads/doubleclick/b;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/sw;->a(Lcom/google/android/gms/internal/up;)V

    :cond_6
    iget-object v0, v6, Lcom/google/android/gms/internal/tj;->l:Lcom/google/android/gms/ads/e;

    if-eqz v0, :cond_7

    iget-object v0, v6, Lcom/google/android/gms/internal/tj;->e:Lcom/google/android/gms/internal/sw;

    iget-object v1, v6, Lcom/google/android/gms/internal/tj;->l:Lcom/google/android/gms/ads/e;

    .line 5000
    iget-object v1, v1, Lcom/google/android/gms/ads/e;->a:Lcom/google/android/gms/internal/sp;

    .line 3000
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/sw;->a(Lcom/google/android/gms/internal/ta;)V

    :cond_7
    iget-object v0, v6, Lcom/google/android/gms/internal/tj;->m:Lcom/google/android/gms/ads/a/c;

    if-eqz v0, :cond_8

    iget-object v0, v6, Lcom/google/android/gms/internal/tj;->e:Lcom/google/android/gms/internal/sw;

    new-instance v1, Lcom/google/android/gms/internal/abw;

    iget-object v2, v6, Lcom/google/android/gms/internal/tj;->m:Lcom/google/android/gms/ads/a/c;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/abw;-><init>(Lcom/google/android/gms/ads/a/c;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/sw;->a(Lcom/google/android/gms/internal/abt;)V

    .line 2000
    :cond_8
    iget-object v0, v6, Lcom/google/android/gms/internal/tj;->e:Lcom/google/android/gms/internal/sw;

    iget-object v1, v6, Lcom/google/android/gms/internal/tj;->b:Landroid/content/Context;

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/sj;->a(Landroid/content/Context;Lcom/google/android/gms/internal/th;)Lcom/google/android/gms/internal/zzec;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/sw;->a(Lcom/google/android/gms/internal/zzec;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v6, Lcom/google/android/gms/internal/tj;->a:Lcom/google/android/gms/internal/xy;

    .line 6000
    iget-object v1, v7, Lcom/google/android/gms/internal/th;->h:Ljava/util/Map;

    .line 7000
    iput-object v1, v0, Lcom/google/android/gms/internal/xy;->a:Ljava/util/Map;

    .line 2000
    :cond_9
    :goto_1
    return-void

    .line 3000
    :cond_a
    new-instance v3, Lcom/google/android/gms/internal/zzeg;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzeg;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2000
    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to load ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/aeb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/internal/tj;

    .line 8000
    iget-object v1, v0, Lcom/google/android/gms/internal/tj;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The ad unit ID can only be set once on InterstitialAd."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, v0, Lcom/google/android/gms/internal/tj;->f:Ljava/lang/String;

    .line 0
    return-void
.end method
