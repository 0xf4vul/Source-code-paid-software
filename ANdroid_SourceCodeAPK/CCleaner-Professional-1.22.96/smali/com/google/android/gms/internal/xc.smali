.class public final Lcom/google/android/gms/internal/xc;
.super Lcom/google/android/gms/internal/sw$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/internal/wu;

.field private c:Lcom/google/android/gms/ads/internal/m;

.field private final d:Lcom/google/android/gms/internal/ww;

.field private e:Lcom/google/android/gms/internal/zj;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ya;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/ads/internal/e;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/wu;

    invoke-direct {v0, p1, p3, p4, p5}, Lcom/google/android/gms/internal/wu;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ya;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/ads/internal/e;)V

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/xc;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/wu;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/wu;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/sw$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/xc;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/xc;->b:Lcom/google/android/gms/internal/wu;

    new-instance v0, Lcom/google/android/gms/internal/ww;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ww;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/xc;->d:Lcom/google/android/gms/internal/ww;

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->t()Lcom/google/android/gms/internal/wx;

    move-result-object v3

    .line 1000
    iget-object v0, v3, Lcom/google/android/gms/internal/wx;->c:Lcom/google/android/gms/internal/wu;

    if-nez v0, :cond_3

    .line 2000
    new-instance v0, Lcom/google/android/gms/internal/wu;

    .line 3000
    iget-object v1, p2, Lcom/google/android/gms/internal/wu;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2000
    iget-object v4, p2, Lcom/google/android/gms/internal/wu;->b:Lcom/google/android/gms/internal/ya;

    iget-object v5, p2, Lcom/google/android/gms/internal/wu;->c:Lcom/google/android/gms/internal/zzqh;

    iget-object v6, p2, Lcom/google/android/gms/internal/wu;->d:Lcom/google/android/gms/ads/internal/e;

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/google/android/gms/internal/wu;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ya;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/ads/internal/e;)V

    .line 1000
    iput-object v0, v3, Lcom/google/android/gms/internal/wx;->c:Lcom/google/android/gms/internal/wu;

    .line 4000
    iget-object v0, v3, Lcom/google/android/gms/internal/wx;->c:Lcom/google/android/gms/internal/wu;

    if-eqz v0, :cond_3

    iget-object v0, v3, Lcom/google/android/gms/internal/wx;->c:Lcom/google/android/gms/internal/wu;

    .line 5000
    iget-object v0, v0, Lcom/google/android/gms/internal/wu;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 4000
    const-string/jumbo v1, "com.google.android.gms.ads.internal.interstitial.InterstitialAdPool"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 6000
    :goto_0
    iget-object v0, v3, Lcom/google/android/gms/internal/wx;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, v3, Lcom/google/android/gms/internal/wx;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/wz;

    iget-object v1, v3, Lcom/google/android/gms/internal/wx;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/xa;

    const-string/jumbo v5, "Flushing interstitial queue for %s."

    invoke-static {v5, v0}, Lcom/google/android/gms/internal/wx;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wz;)V

    .line 7000
    :goto_1
    iget-object v5, v1, Lcom/google/android/gms/internal/xa;->a:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    .line 6000
    if-lez v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/xa;->a(Lcom/google/android/gms/internal/zzec;)Lcom/google/android/gms/internal/xa$a;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/internal/xa$a;->a:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v5}, Lcom/google/android/gms/ads/internal/m;->O()V

    goto :goto_1

    :cond_0
    iget-object v1, v3, Lcom/google/android/gms/internal/wx;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4000
    :cond_1
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v7, "PoolKeys"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/xd;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/xd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/wz;

    iget-object v7, v0, Lcom/google/android/gms/internal/xd;->a:Lcom/google/android/gms/internal/zzec;

    iget-object v8, v0, Lcom/google/android/gms/internal/xd;->b:Ljava/lang/String;

    iget v9, v0, Lcom/google/android/gms/internal/xd;->c:I

    invoke-direct {v1, v7, v8, v9}, Lcom/google/android/gms/internal/wz;-><init>(Lcom/google/android/gms/internal/zzec;Ljava/lang/String;I)V

    iget-object v7, v3, Lcom/google/android/gms/internal/wx;->a:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v7, Lcom/google/android/gms/internal/xa;

    iget-object v8, v0, Lcom/google/android/gms/internal/xd;->a:Lcom/google/android/gms/internal/zzec;

    iget-object v9, v0, Lcom/google/android/gms/internal/xd;->b:Ljava/lang/String;

    iget v0, v0, Lcom/google/android/gms/internal/xd;->c:I

    invoke-direct {v7, v8, v9, v0}, Lcom/google/android/gms/internal/xa;-><init>(Lcom/google/android/gms/internal/zzec;Ljava/lang/String;I)V

    iget-object v0, v3, Lcom/google/android/gms/internal/wx;->a:Ljava/util/Map;

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wz;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Restored interstitial queue for %s."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/wx;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wz;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-result-object v1

    const-string/jumbo v2, "InterstitialAdPool.restore"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/acz;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string/jumbo v1, "Malformed preferences value for InterstitialAdPool."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, v3, Lcom/google/android/gms/internal/wx;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, v3, Lcom/google/android/gms/internal/wx;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_3
    return-void

    :cond_4
    :try_start_1
    const-string/jumbo v0, "PoolKeys"

    const-string/jumbo v1, ""

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/wx;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    move v1, v2

    :goto_4
    if-ge v1, v6, :cond_3

    aget-object v0, v4, v1

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/wz;

    iget-object v2, v3, Lcom/google/android/gms/internal/wx;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v3, Lcom/google/android/gms/internal/wx;->b:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method private a()V
    .locals 7

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/google/android/gms/internal/xc;->b:Lcom/google/android/gms/internal/wu;

    iget-object v3, p0, Lcom/google/android/gms/internal/xc;->a:Ljava/lang/String;

    .line 25000
    new-instance v0, Lcom/google/android/gms/ads/internal/m;

    iget-object v1, v6, Lcom/google/android/gms/internal/wu;->a:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/internal/zzeg;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzeg;-><init>()V

    iget-object v4, v6, Lcom/google/android/gms/internal/wu;->b:Lcom/google/android/gms/internal/ya;

    iget-object v5, v6, Lcom/google/android/gms/internal/wu;->c:Lcom/google/android/gms/internal/zzqh;

    iget-object v6, v6, Lcom/google/android/gms/internal/wu;->d:Lcom/google/android/gms/ads/internal/e;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/m;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/ya;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/ads/internal/e;)V

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->d:Lcom/google/android/gms/internal/ww;

    iget-object v1, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ww;->a(Lcom/google/android/gms/ads/internal/m;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/xc;->b()V

    goto :goto_0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->e:Lcom/google/android/gms/internal/zj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    iget-object v1, p0, Lcom/google/android/gms/internal/xc;->e:Lcom/google/android/gms/internal/zj;

    iget-object v2, p0, Lcom/google/android/gms/internal/xc;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/m;->a(Lcom/google/android/gms/internal/zj;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final F()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/m;->F()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final G()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/m;->G()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "Interstitial ad must be loaded before showInterstitial()."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/abt;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->d:Lcom/google/android/gms/internal/ww;

    iput-object p1, v0, Lcom/google/android/gms/internal/ww;->f:Lcom/google/android/gms/internal/abt;

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->d:Lcom/google/android/gms/internal/ww;

    iget-object v1, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ww;->a(Lcom/google/android/gms/ads/internal/m;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/sr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->d:Lcom/google/android/gms/internal/ww;

    iput-object p1, v0, Lcom/google/android/gms/internal/ww;->e:Lcom/google/android/gms/internal/sr;

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->d:Lcom/google/android/gms/internal/ww;

    iget-object v1, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ww;->a(Lcom/google/android/gms/ads/internal/m;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ss;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->d:Lcom/google/android/gms/internal/ww;

    iput-object p1, v0, Lcom/google/android/gms/internal/ww;->a:Lcom/google/android/gms/internal/ss;

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->d:Lcom/google/android/gms/internal/ww;

    iget-object v1, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ww;->a(Lcom/google/android/gms/ads/internal/m;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/sy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->d:Lcom/google/android/gms/internal/ww;

    iput-object p1, v0, Lcom/google/android/gms/internal/ww;->b:Lcom/google/android/gms/internal/sy;

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->d:Lcom/google/android/gms/internal/ww;

    iget-object v1, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ww;->a(Lcom/google/android/gms/ads/internal/m;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ta;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/xc;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/m;->a(Lcom/google/android/gms/internal/ta;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/up;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->d:Lcom/google/android/gms/internal/ww;

    iput-object p1, v0, Lcom/google/android/gms/internal/ww;->d:Lcom/google/android/gms/internal/up;

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->d:Lcom/google/android/gms/internal/ww;

    iget-object v1, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ww;->a(Lcom/google/android/gms/ads/internal/m;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/zf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->d:Lcom/google/android/gms/internal/ww;

    iput-object p1, v0, Lcom/google/android/gms/internal/ww;->c:Lcom/google/android/gms/internal/zf;

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->d:Lcom/google/android/gms/internal/ww;

    iget-object v1, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ww;->a(Lcom/google/android/gms/ads/internal/m;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/zj;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/xc;->e:Lcom/google/android/gms/internal/zj;

    iput-object p2, p0, Lcom/google/android/gms/internal/xc;->f:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/xc;->b()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/zzeg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/m;->a(Lcom/google/android/gms/internal/zzeg;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/zzfc;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/zzft;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getVideoController not implemented for interstitials"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/xc;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/m;->a(Z)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/zzec;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 0
    .line 8000
    invoke-static {p1}, Lcom/google/android/gms/internal/wx;->a(Lcom/google/android/gms/internal/zzec;)Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "gw"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 0
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/xc;->a()V

    .line 9000
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/wx;->a(Lcom/google/android/gms/internal/zzec;)Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "_skipMediation"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/xc;->a()V

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->j:Lcom/google/android/gms/internal/zzfp;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/xc;->a()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/m;->a(Lcom/google/android/gms/internal/zzec;)Z

    move-result v0

    :goto_0
    return v0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->t()Lcom/google/android/gms/internal/wx;

    move-result-object v4

    .line 10000
    invoke-static {p1}, Lcom/google/android/gms/internal/wx;->a(Lcom/google/android/gms/internal/zzec;)Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "_ad"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 0
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->a:Ljava/lang/String;

    .line 11000
    iget-object v1, v4, Lcom/google/android/gms/internal/wx;->c:Lcom/google/android/gms/internal/wu;

    if-eqz v1, :cond_5

    iget-object v1, v4, Lcom/google/android/gms/internal/wx;->c:Lcom/google/android/gms/internal/wu;

    .line 12000
    iget-object v1, v1, Lcom/google/android/gms/internal/wu;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 11000
    new-instance v2, Lcom/google/android/gms/internal/abf$a;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/abf$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/abf$a;->a()Lcom/google/android/gms/internal/abf;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/abf;->m:I

    invoke-static {p1}, Lcom/google/android/gms/internal/wx;->b(Lcom/google/android/gms/internal/zzec;)Lcom/google/android/gms/internal/zzec;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/gms/internal/wx;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/wz;

    invoke-direct {v6, v2, v5, v1}, Lcom/google/android/gms/internal/wz;-><init>(Lcom/google/android/gms/internal/zzec;Ljava/lang/String;I)V

    iget-object v0, v4, Lcom/google/android/gms/internal/wx;->a:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/xa;

    if-nez v0, :cond_4

    const-string/jumbo v0, "Interstitial pool created at %s."

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/wx;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wz;)V

    new-instance v0, Lcom/google/android/gms/internal/xa;

    invoke-direct {v0, v2, v5, v1}, Lcom/google/android/gms/internal/xa;-><init>(Lcom/google/android/gms/internal/zzec;Ljava/lang/String;I)V

    iget-object v1, v4, Lcom/google/android/gms/internal/wx;->a:Ljava/util/Map;

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v1, v4, Lcom/google/android/gms/internal/wx;->c:Lcom/google/android/gms/internal/wu;

    .line 13000
    new-instance v2, Lcom/google/android/gms/internal/xa$a;

    invoke-direct {v2, v0, v1, p1}, Lcom/google/android/gms/internal/xa$a;-><init>(Lcom/google/android/gms/internal/xa;Lcom/google/android/gms/internal/wu;Lcom/google/android/gms/internal/zzec;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/xa;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 14000
    iput-boolean v7, v0, Lcom/google/android/gms/internal/xa;->e:Z

    .line 11000
    const-string/jumbo v0, "Inline entry added to the queue at %s."

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/wx;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wz;)V

    .line 0
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->a:Ljava/lang/String;

    .line 15000
    invoke-static {v0}, Lcom/google/android/gms/internal/wx;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, v4, Lcom/google/android/gms/internal/wx;->c:Lcom/google/android/gms/internal/wu;

    .line 16000
    iget-object v1, v1, Lcom/google/android/gms/internal/wu;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 15000
    new-instance v2, Lcom/google/android/gms/internal/abf$a;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/abf$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/abf$a;->a()Lcom/google/android/gms/internal/abf;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/abf;->m:I

    invoke-static {p1}, Lcom/google/android/gms/internal/wx;->b(Lcom/google/android/gms/internal/zzec;)Lcom/google/android/gms/internal/zzec;

    move-result-object v5

    invoke-static {v0}, Lcom/google/android/gms/internal/wx;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcom/google/android/gms/internal/wz;

    invoke-direct {v6, v5, v2, v1}, Lcom/google/android/gms/internal/wz;-><init>(Lcom/google/android/gms/internal/zzec;Ljava/lang/String;I)V

    iget-object v0, v4, Lcom/google/android/gms/internal/wx;->a:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/xa;

    if-nez v0, :cond_e

    const-string/jumbo v0, "Interstitial pool created at %s."

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/wx;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wz;)V

    new-instance v0, Lcom/google/android/gms/internal/xa;

    invoke-direct {v0, v5, v2, v1}, Lcom/google/android/gms/internal/xa;-><init>(Lcom/google/android/gms/internal/zzec;Ljava/lang/String;I)V

    iget-object v1, v4, Lcom/google/android/gms/internal/wx;->a:Ljava/util/Map;

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    :goto_1
    iget-object v0, v4, Lcom/google/android/gms/internal/wx;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v4, Lcom/google/android/gms/internal/wx;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 17000
    iput-boolean v7, v2, Lcom/google/android/gms/internal/xa;->e:Z

    .line 15000
    :goto_2
    iget-object v0, v4, Lcom/google/android/gms/internal/wx;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    sget-object v0, Lcom/google/android/gms/internal/ud;->ba:Lcom/google/android/gms/internal/ty;

    .line 18000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 15000
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v1, v0, :cond_8

    iget-object v0, v4, Lcom/google/android/gms/internal/wx;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/wz;

    iget-object v1, v4, Lcom/google/android/gms/internal/wx;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/xa;

    const-string/jumbo v7, "Evicting interstitial queue for %s."

    invoke-static {v7, v0}, Lcom/google/android/gms/internal/wx;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wz;)V

    .line 19000
    :goto_3
    iget-object v7, v1, Lcom/google/android/gms/internal/xa;->a:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    .line 15000
    if-lez v7, :cond_7

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/xa;->a(Lcom/google/android/gms/internal/zzec;)Lcom/google/android/gms/internal/xa$a;

    move-result-object v7

    iget-boolean v8, v7, Lcom/google/android/gms/internal/xa$a;->e:Z

    if-eqz v8, :cond_6

    invoke-static {}, Lcom/google/android/gms/internal/xb;->a()Lcom/google/android/gms/internal/xb;

    move-result-object v8

    .line 20000
    iget v9, v8, Lcom/google/android/gms/internal/xb;->c:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/google/android/gms/internal/xb;->c:I

    .line 15000
    :cond_6
    iget-object v7, v7, Lcom/google/android/gms/internal/xa$a;->a:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v7}, Lcom/google/android/gms/ads/internal/m;->O()V

    goto :goto_3

    :cond_7
    iget-object v1, v4, Lcom/google/android/gms/internal/wx;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 21000
    :cond_8
    :goto_4
    iget-object v0, v2, Lcom/google/android/gms/internal/xa;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 15000
    if-lez v0, :cond_b

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/xa;->a(Lcom/google/android/gms/internal/zzec;)Lcom/google/android/gms/internal/xa$a;

    move-result-object v1

    iget-boolean v0, v1, Lcom/google/android/gms/internal/xa$a;->e:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->k()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v8

    iget-wide v10, v1, Lcom/google/android/gms/internal/xa$a;->d:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    sget-object v0, Lcom/google/android/gms/internal/ud;->bc:Lcom/google/android/gms/internal/ty;

    .line 22000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 15000
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v12, v0

    mul-long/2addr v10, v12

    cmp-long v0, v8, v10

    if-lez v0, :cond_9

    const-string/jumbo v0, "Expired interstitial at %s."

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/wx;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wz;)V

    invoke-static {}, Lcom/google/android/gms/internal/xb;->a()Lcom/google/android/gms/internal/xb;

    move-result-object v0

    .line 23000
    iget v1, v0, Lcom/google/android/gms/internal/xb;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/xb;->b:I

    goto :goto_4

    .line 15000
    :cond_9
    iget-object v0, v1, Lcom/google/android/gms/internal/xa$a;->b:Lcom/google/android/gms/internal/zzec;

    if-eqz v0, :cond_a

    const-string/jumbo v0, " (inline) "

    :goto_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Pooled interstitial"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "returned at %s."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/wx;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wz;)V

    move-object v0, v1

    .line 0
    :goto_6
    if-eqz v0, :cond_d

    iget-boolean v1, v0, Lcom/google/android/gms/internal/xa$a;->e:Z

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xa$a;->a()Z

    invoke-static {}, Lcom/google/android/gms/internal/xb;->a()Lcom/google/android/gms/internal/xb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/xb;->b()V

    :goto_7
    iget-object v1, v0, Lcom/google/android/gms/internal/xa$a;->a:Lcom/google/android/gms/ads/internal/m;

    iput-object v1, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    iget-object v1, v0, Lcom/google/android/gms/internal/xa$a;->c:Lcom/google/android/gms/internal/wv;

    iget-object v2, p0, Lcom/google/android/gms/internal/xc;->d:Lcom/google/android/gms/internal/ww;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/wv;->a(Lcom/google/android/gms/internal/ww;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/xc;->d:Lcom/google/android/gms/internal/ww;

    iget-object v2, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ww;->a(Lcom/google/android/gms/ads/internal/m;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/xc;->b()V

    iget-boolean v0, v0, Lcom/google/android/gms/internal/xa$a;->f:Z

    goto/16 :goto_0

    .line 15000
    :cond_a
    const-string/jumbo v0, " "

    goto :goto_5

    :cond_b
    move-object v0, v3

    goto :goto_6

    .line 0
    :cond_c
    invoke-static {}, Lcom/google/android/gms/internal/xb;->a()Lcom/google/android/gms/internal/xb;

    move-result-object v1

    .line 24000
    iget v2, v1, Lcom/google/android/gms/internal/xb;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/gms/internal/xb;->d:I

    goto :goto_7

    .line 0
    :cond_d
    invoke-direct {p0}, Lcom/google/android/gms/internal/xc;->a()V

    invoke-static {}, Lcom/google/android/gms/internal/xb;->a()Lcom/google/android/gms/internal/xb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xb;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/m;->a(Lcom/google/android/gms/internal/zzec;)Z

    move-result v0

    goto/16 :goto_0

    :cond_e
    move-object v2, v0

    goto/16 :goto_1
.end method

.method public final h()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/m;->h()V

    :cond_0
    return-void
.end method

.method public final i()Lcom/google/android/gms/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/m;->i()Lcom/google/android/gms/a/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Lcom/google/android/gms/internal/zzeg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/m;->j()Lcom/google/android/gms/internal/zzeg;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/m;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/m;->l()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "Interstitial ad must be loaded before pingManualTrackingUrl()."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final m()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/m;->m()V

    :cond_0
    return-void
.end method

.method public final n()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/m;->n()V

    :cond_0
    return-void
.end method

.method public final o()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/m;->o()V

    :cond_0
    return-void
.end method

.method public final p()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xc;->c:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/m;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()Lcom/google/android/gms/internal/te;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getVideoController not implemented for interstitials"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
