.class public final Lcom/google/android/gms/internal/aaz;
.super Lcom/google/android/gms/internal/aar$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/google/android/gms/internal/aaz;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/internal/aay;

.field private final e:Lcom/google/android/gms/internal/tv;

.field private final f:Lcom/google/android/gms/internal/xh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/aaz;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/tv;Lcom/google/android/gms/internal/aay;)V
    .locals 6

    .prologue
    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/aar$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/aaz;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/aaz;->d:Lcom/google/android/gms/internal/aay;

    iput-object p2, p0, Lcom/google/android/gms/internal/aaz;->e:Lcom/google/android/gms/internal/tv;

    new-instance v0, Lcom/google/android/gms/internal/xh;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/zzqh;->a()Lcom/google/android/gms/internal/zzqh;

    move-result-object v2

    .line 34000
    iget-object v3, p2, Lcom/google/android/gms/internal/tv;->a:Ljava/lang/String;

    .line 0
    new-instance v4, Lcom/google/android/gms/internal/aaz$4;

    invoke-direct {v4}, Lcom/google/android/gms/internal/aaz$4;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/xh$b;

    invoke-direct {v5}, Lcom/google/android/gms/internal/xh$b;-><init>()V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/xh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Ljava/lang/String;Lcom/google/android/gms/internal/ado;Lcom/google/android/gms/internal/ado;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/aaz;->f:Lcom/google/android/gms/internal/xh;

    return-void

    :cond_0
    move-object v1, p1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/tv;Lcom/google/android/gms/internal/aay;)Lcom/google/android/gms/internal/aaz;
    .locals 3

    sget-object v1, Lcom/google/android/gms/internal/aaz;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/aaz;->b:Lcom/google/android/gms/internal/aaz;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/aaz;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/aaz;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/tv;Lcom/google/android/gms/internal/aay;)V

    sput-object v0, Lcom/google/android/gms/internal/aaz;->b:Lcom/google/android/gms/internal/aaz;

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/aaz;->b:Lcom/google/android/gms/internal/aaz;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Landroid/content/Context;Lcom/google/android/gms/internal/xh;Lcom/google/android/gms/internal/aay;Lcom/google/android/gms/internal/zzmk;)Lcom/google/android/gms/internal/zzmn;
    .locals 22

    .prologue
    .line 0
    const-string/jumbo v4, "Starting ad request from service using: AFMA_getAd"

    invoke-static {v4}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ud;->a(Landroid/content/Context;)V

    new-instance v7, Lcom/google/android/gms/internal/ul;

    sget-object v4, Lcom/google/android/gms/internal/ud;->T:Lcom/google/android/gms/internal/ty;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v4

    .line 0
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string/jumbo v5, "load_ad"

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/google/android/gms/internal/zzmk;->d:Lcom/google/android/gms/internal/zzeg;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzeg;->a:Ljava/lang/String;

    invoke-direct {v7, v4, v5, v6}, Lcom/google/android/gms/internal/ul;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/gms/internal/zzmk;->a:I

    const/16 v5, 0xa

    if-le v4, v5, :cond_0

    move-object/from16 v0, p3

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzmk;->A:J

    const-wide/16 v8, -0x1

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    move-object/from16 v0, p3

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzmk;->A:J

    invoke-virtual {v7, v4, v5}, Lcom/google/android/gms/internal/ul;->a(J)Lcom/google/android/gms/internal/uj;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v8, "cts"

    aput-object v8, v5, v6

    invoke-virtual {v7, v4, v5}, Lcom/google/android/gms/internal/ul;->a(Lcom/google/android/gms/internal/uj;[Ljava/lang/String;)Z

    :cond_0
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ul;->a()Lcom/google/android/gms/internal/uj;

    move-result-object v16

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/android/gms/internal/aay;->i:Lcom/google/android/gms/internal/zd;

    invoke-interface {v4}, Lcom/google/android/gms/internal/zd;->a()Lcom/google/android/gms/internal/aeh;

    move-result-object v8

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/android/gms/internal/aay;->h:Lcom/google/android/gms/internal/abj;

    invoke-interface {v4}, Lcom/google/android/gms/internal/abj;->a()Ljava/util/concurrent/Future;

    move-result-object v12

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/android/gms/internal/aay;->c:Lcom/google/android/gms/internal/acr;

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/google/android/gms/internal/zzmk;->g:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4}, Lcom/google/android/gms/internal/acr;->a()Ljava/util/concurrent/Future;

    move-result-object v15

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/android/gms/internal/aay;->j:Lcom/google/android/gms/internal/acv;

    move-object/from16 v0, p3

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/acv;->a(Lcom/google/android/gms/internal/zzmk;)Lcom/google/android/gms/internal/aeh;

    move-result-object v14

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->n()Lcom/google/android/gms/internal/abg;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/abg;->a(Landroid/content/Context;)Ljava/util/concurrent/Future;

    move-result-object v17

    new-instance v5, Lcom/google/android/gms/internal/aef;

    const/4 v4, 0x0

    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/aef;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzmk;->c:Lcom/google/android/gms/internal/zzec;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzec;->c:Landroid/os/Bundle;

    if-eqz v4, :cond_3

    const-string/jumbo v6, "_ad"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p3

    iget-boolean v6, v0, Lcom/google/android/gms/internal/zzmk;->H:Z

    if-eqz v6, :cond_14

    if-nez v4, :cond_14

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/android/gms/internal/aay;->f:Lcom/google/android/gms/internal/xm;

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/google/android/gms/internal/zzmk;->f:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v4}, Lcom/google/android/gms/internal/xm;->a()Lcom/google/android/gms/internal/aeh;

    move-result-object v4

    move-object v9, v4

    :goto_1
    new-instance v5, Lcom/google/android/gms/internal/aef;

    const/4 v4, 0x0

    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/aef;-><init>(Ljava/lang/Object;)V

    sget-object v4, Lcom/google/android/gms/internal/ud;->aM:Lcom/google/android/gms/internal/ty;

    .line 2000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v4

    .line 0
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_13

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/android/gms/internal/aay;->j:Lcom/google/android/gms/internal/acv;

    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/acv;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/aeh;

    move-result-object v4

    move-object v10, v4

    :goto_2
    const/4 v4, 0x0

    move-object/from16 v0, p3

    iget v5, v0, Lcom/google/android/gms/internal/zzmk;->a:I

    const/4 v6, 0x4

    if-lt v5, v6, :cond_12

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/google/android/gms/internal/zzmk;->o:Landroid/os/Bundle;

    if-eqz v5, :cond_12

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzmk;->o:Landroid/os/Bundle;

    move-object v5, v4

    :goto_3
    const/4 v6, 0x0

    sget-object v4, Lcom/google/android/gms/internal/ud;->aj:Lcom/google/android/gms/internal/ty;

    .line 3000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v11

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v4

    .line 0
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_11

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/android/gms/internal/aay;->a:Lcom/google/android/gms/internal/abd;

    if-eqz v4, :cond_11

    if-nez v5, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/ud;->ak:Lcom/google/android/gms/internal/ty;

    .line 4000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v11

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v4

    .line 0
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "contentInfo is not present, but we\'ll still launch the app index task"

    invoke-static {v4}, Lcom/google/android/gms/internal/adf;->a(Ljava/lang/String;)V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    :cond_1
    if-eqz v5, :cond_10

    new-instance v4, Lcom/google/android/gms/internal/aaz$1;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v4, v0, v1, v2, v5}, Lcom/google/android/gms/internal/aaz$1;-><init>(Lcom/google/android/gms/internal/aay;Landroid/content/Context;Lcom/google/android/gms/internal/zzmk;Landroid/os/Bundle;)V

    invoke-static {v4}, Lcom/google/android/gms/internal/adi;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/aeh;

    move-result-object v4

    move-object v11, v5

    move-object v5, v4

    :goto_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "android.permission.ACCESS_NETWORK_STATE"

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6}, Lcom/google/android/gms/internal/adj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "Device is offline."

    invoke-static {v4}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/gms/internal/zzmk;->a:I

    const/4 v6, 0x7

    if-lt v4, v6, :cond_4

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzmk;->v:Ljava/lang/String;

    move-object v13, v4

    :goto_5
    new-instance v6, Lcom/google/android/gms/internal/abb;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzmk;->f:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v6, v13, v4}, Lcom/google/android/gms/internal/abb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzmk;->c:Lcom/google/android/gms/internal/zzec;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzec;->c:Landroid/os/Bundle;

    if-eqz v4, :cond_5

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzmk;->c:Lcom/google/android/gms/internal/zzec;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzec;->c:Landroid/os/Bundle;

    const-string/jumbo v18, "_ad"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1, v4}, Lcom/google/android/gms/internal/aba;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzmk;Ljava/lang/String;)Lcom/google/android/gms/internal/zzmn;

    move-result-object v4

    :goto_6
    return-object v4

    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v13, v4

    goto :goto_5

    :cond_5
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/android/gms/internal/aay;->d:Lcom/google/android/gms/internal/tx;

    move-object/from16 v0, p3

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/tx;->a(Lcom/google/android/gms/internal/zzmk;)Ljava/util/List;

    move-result-object v18

    if-eqz v5, :cond_6

    :try_start_0
    const-string/jumbo v4, "Waiting for app index fetching task."

    invoke-static {v4}, Lcom/google/android/gms/internal/adf;->a(Ljava/lang/String;)V

    sget-object v4, Lcom/google/android/gms/internal/ud;->al:Lcom/google/android/gms/internal/ty;

    .line 5000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v4

    .line 0
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v20

    invoke-interface {v5, v0, v1, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    const-string/jumbo v4, "App index fetching task completed."

    invoke-static {v4}, Lcom/google/android/gms/internal/adf;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_6
    :goto_7
    sget-object v4, Lcom/google/android/gms/internal/ud;->cR:Lcom/google/android/gms/internal/ty;

    .line 6000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v4

    .line 0
    check-cast v4, Ljava/lang/Long;

    invoke-static {v8, v4}, Lcom/google/android/gms/internal/aaz;->a(Ljava/util/concurrent/Future;Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    sget-object v5, Lcom/google/android/gms/internal/ud;->bB:Lcom/google/android/gms/internal/ty;

    .line 7000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v5

    .line 0
    check-cast v5, Ljava/lang/Long;

    invoke-static {v12, v5}, Lcom/google/android/gms/internal/aaz;->a(Ljava/util/concurrent/Future;Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/abj$a;

    sget-object v8, Lcom/google/android/gms/internal/ud;->cz:Lcom/google/android/gms/internal/ty;

    .line 8000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v12

    invoke-virtual {v12, v8}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v8

    .line 0
    check-cast v8, Ljava/lang/Long;

    invoke-static {v9, v8}, Lcom/google/android/gms/internal/aaz;->a(Ljava/util/concurrent/Future;Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/location/Location;

    sget-object v9, Lcom/google/android/gms/internal/ud;->aN:Lcom/google/android/gms/internal/ty;

    .line 9000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v9

    .line 0
    check-cast v9, Ljava/lang/Long;

    invoke-static {v10, v9}, Lcom/google/android/gms/internal/aaz;->a(Ljava/util/concurrent/Future;Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    const/4 v12, 0x0

    :try_start_1
    invoke-interface {v14}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v14, v10

    :goto_8
    const/4 v12, 0x0

    :try_start_2
    invoke-interface {v15}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v12, v10

    :goto_9
    :try_start_3
    invoke-interface/range {v17 .. v17}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/abf;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    new-instance v15, Lcom/google/android/gms/internal/aax;

    invoke-direct {v15}, Lcom/google/android/gms/internal/aax;-><init>()V

    .line 10000
    move-object/from16 v0, p3

    iput-object v0, v15, Lcom/google/android/gms/internal/aax;->i:Lcom/google/android/gms/internal/zzmk;

    .line 11000
    iput-object v10, v15, Lcom/google/android/gms/internal/aax;->j:Lcom/google/android/gms/internal/abf;

    .line 12000
    iput-object v5, v15, Lcom/google/android/gms/internal/aax;->e:Lcom/google/android/gms/internal/abj$a;

    .line 13000
    iput-object v8, v15, Lcom/google/android/gms/internal/aax;->d:Landroid/location/Location;

    .line 14000
    iput-object v4, v15, Lcom/google/android/gms/internal/aax;->b:Landroid/os/Bundle;

    .line 15000
    iput-object v14, v15, Lcom/google/android/gms/internal/aax;->g:Ljava/lang/String;

    .line 16000
    iput-object v9, v15, Lcom/google/android/gms/internal/aax;->h:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .line 17000
    if-nez v18, :cond_7

    iget-object v4, v15, Lcom/google/android/gms/internal/aax;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    :cond_7
    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/google/android/gms/internal/aax;->c:Ljava/util/List;

    .line 18000
    iput-object v11, v15, Lcom/google/android/gms/internal/aax;->a:Landroid/os/Bundle;

    .line 19000
    iput-object v12, v15, Lcom/google/android/gms/internal/aax;->f:Ljava/lang/String;

    .line 0
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/android/gms/internal/aay;->b:Lcom/google/android/gms/internal/ry;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ry;->a()Lorg/json/JSONObject;

    move-result-object v4

    .line 20000
    iput-object v4, v15, Lcom/google/android/gms/internal/aax;->k:Lorg/json/JSONObject;

    .line 0
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/google/android/gms/internal/aba;->a(Landroid/content/Context;Lcom/google/android/gms/internal/aax;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_8

    new-instance v4, Lcom/google/android/gms/internal/zzmn;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/zzmn;-><init>(I)V

    goto/16 :goto_6

    :catch_0
    move-exception v4

    :goto_a
    const-string/jumbo v5, "Failed to fetch app index signal"

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :catch_1
    move-exception v4

    const-string/jumbo v4, "Timed out waiting for app index fetching task"

    invoke-static {v4}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;)V

    goto/16 :goto_7

    :catch_2
    move-exception v10

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-result-object v14

    const-string/jumbo v19, "AdRequestServiceImpl.loadAdAsync.qs"

    move-object/from16 v0, v19

    invoke-virtual {v14, v10, v0}, Lcom/google/android/gms/internal/acz;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string/jumbo v14, "Error fetching qs signals. Continuing."

    invoke-static {v14, v10}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v14, v12

    goto :goto_8

    :catch_3
    move-exception v10

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-result-object v15

    const-string/jumbo v19, "AdRequestServiceImpl.loadAdAsync.ds"

    move-object/from16 v0, v19

    invoke-virtual {v15, v10, v0}, Lcom/google/android/gms/internal/acz;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string/jumbo v15, "Error fetching drt signals. Continuing."

    invoke-static {v15, v10}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :catch_4
    move-exception v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-result-object v5

    const-string/jumbo v6, "AdRequestServiceImpl.loadAdAsync.di"

    invoke-virtual {v5, v4, v6}, Lcom/google/android/gms/internal/acz;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string/jumbo v5, "Error fetching device info. This is not recoverable."

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v4, Lcom/google/android/gms/internal/zzmn;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/zzmn;-><init>(I)V

    goto/16 :goto_6

    :cond_8
    move-object/from16 v0, p3

    iget v5, v0, Lcom/google/android/gms/internal/zzmk;->a:I

    const/4 v8, 0x7

    if-ge v5, v8, :cond_9

    :try_start_4
    const-string/jumbo v5, "request_id"

    invoke-virtual {v4, v5, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_6

    :cond_9
    :goto_b
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v8, "arc"

    aput-object v8, v4, v5

    move-object/from16 v0, v16

    invoke-virtual {v7, v0, v4}, Lcom/google/android/gms/internal/ul;->a(Lcom/google/android/gms/internal/uj;[Ljava/lang/String;)Z

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ul;->a()Lcom/google/android/gms/internal/uj;

    move-result-object v8

    sget-object v10, Lcom/google/android/gms/internal/adj;->a:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/internal/aaz$2;

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/aaz$2;-><init>(Lcom/google/android/gms/internal/xh;Lcom/google/android/gms/internal/abb;Lcom/google/android/gms/internal/ul;Lcom/google/android/gms/internal/uj;Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21000
    :try_start_5
    iget-object v4, v6, Lcom/google/android/gms/internal/abb;->d:Lcom/google/android/gms/internal/aee;

    .line 0
    const-wide/16 v8, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v8, v9, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/abe;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v13, :cond_a

    :try_start_6
    new-instance v4, Lcom/google/android/gms/internal/zzmn;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/zzmn;-><init>(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sget-object v5, Lcom/google/android/gms/internal/adj;->a:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/aaz$3;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v7, v0, v1, v6, v2}, Lcom/google/android/gms/internal/aaz$3;-><init>(Lcom/google/android/gms/internal/aay;Landroid/content/Context;Lcom/google/android/gms/internal/abb;Lcom/google/android/gms/internal/zzmk;)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    :catch_5
    move-exception v4

    :try_start_7
    new-instance v4, Lcom/google/android/gms/internal/zzmn;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/zzmn;-><init>(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sget-object v5, Lcom/google/android/gms/internal/adj;->a:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/aaz$3;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v7, v0, v1, v6, v2}, Lcom/google/android/gms/internal/aaz$3;-><init>(Lcom/google/android/gms/internal/aay;Landroid/content/Context;Lcom/google/android/gms/internal/abb;Lcom/google/android/gms/internal/zzmk;)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 22000
    :cond_a
    :try_start_8
    iget v4, v13, Lcom/google/android/gms/internal/abe;->i:I

    .line 0
    const/4 v5, -0x2

    if-eq v4, v5, :cond_b

    new-instance v4, Lcom/google/android/gms/internal/zzmn;

    .line 23000
    iget v5, v13, Lcom/google/android/gms/internal/abe;->i:I

    .line 0
    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/zzmn;-><init>(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    sget-object v5, Lcom/google/android/gms/internal/adj;->a:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/aaz$3;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v7, v0, v1, v6, v2}, Lcom/google/android/gms/internal/aaz$3;-><init>(Lcom/google/android/gms/internal/aay;Landroid/content/Context;Lcom/google/android/gms/internal/abb;Lcom/google/android/gms/internal/zzmk;)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    :cond_b
    :try_start_9
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ul;->d()Lcom/google/android/gms/internal/uj;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ul;->d()Lcom/google/android/gms/internal/uj;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "rur"

    aput-object v9, v5, v8

    invoke-virtual {v7, v4, v5}, Lcom/google/android/gms/internal/ul;->a(Lcom/google/android/gms/internal/uj;[Ljava/lang/String;)Z

    :cond_c
    const/4 v4, 0x0

    .line 24000
    iget-object v5, v13, Lcom/google/android/gms/internal/abe;->g:Ljava/lang/String;

    .line 0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 25000
    iget-object v4, v13, Lcom/google/android/gms/internal/abe;->g:Ljava/lang/String;

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1, v4}, Lcom/google/android/gms/internal/aba;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzmk;Ljava/lang/String;)Lcom/google/android/gms/internal/zzmn;

    move-result-object v4

    :cond_d
    if-nez v4, :cond_e

    .line 26000
    iget-object v5, v13, Lcom/google/android/gms/internal/abe;->h:Ljava/lang/String;

    .line 0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzmk;->k:Lcom/google/android/gms/internal/zzqh;

    iget-object v10, v4, Lcom/google/android/gms/internal/zzqh;->a:Ljava/lang/String;

    .line 27000
    iget-object v11, v13, Lcom/google/android/gms/internal/abe;->h:Ljava/lang/String;

    move-object/from16 v8, p3

    move-object/from16 v9, p0

    move-object v14, v7

    move-object/from16 v15, p2

    .line 0
    invoke-static/range {v8 .. v15}, Lcom/google/android/gms/internal/aaz;->a(Lcom/google/android/gms/internal/zzmk;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/abe;Lcom/google/android/gms/internal/ul;Lcom/google/android/gms/internal/aay;)Lcom/google/android/gms/internal/zzmn;

    move-result-object v4

    :cond_e
    if-nez v4, :cond_f

    new-instance v4, Lcom/google/android/gms/internal/zzmn;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/zzmn;-><init>(I)V

    :cond_f
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "tts"

    aput-object v9, v5, v8

    move-object/from16 v0, v16

    invoke-virtual {v7, v0, v5}, Lcom/google/android/gms/internal/ul;->a(Lcom/google/android/gms/internal/uj;[Ljava/lang/String;)Z

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ul;->b()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gms/internal/zzmn;->y:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    sget-object v5, Lcom/google/android/gms/internal/adj;->a:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/aaz$3;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v7, v0, v1, v6, v2}, Lcom/google/android/gms/internal/aaz$3;-><init>(Lcom/google/android/gms/internal/aay;Landroid/content/Context;Lcom/google/android/gms/internal/abb;Lcom/google/android/gms/internal/zzmk;)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    :catchall_0
    move-exception v4

    sget-object v5, Lcom/google/android/gms/internal/adj;->a:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/aaz$3;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v7, v0, v1, v6, v2}, Lcom/google/android/gms/internal/aaz$3;-><init>(Lcom/google/android/gms/internal/aay;Landroid/content/Context;Lcom/google/android/gms/internal/abb;Lcom/google/android/gms/internal/zzmk;)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v4

    :catch_6
    move-exception v5

    goto/16 :goto_b

    :catch_7
    move-exception v4

    goto/16 :goto_a

    :cond_10
    move-object v11, v5

    move-object v5, v6

    goto/16 :goto_4

    :cond_11
    move-object v11, v5

    move-object v5, v6

    goto/16 :goto_4

    :cond_12
    move-object v5, v4

    goto/16 :goto_3

    :cond_13
    move-object v10, v5

    goto/16 :goto_2

    :cond_14
    move-object v9, v5

    goto/16 :goto_1
.end method

.method public static a(Lcom/google/android/gms/internal/zzmk;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/abe;Lcom/google/android/gms/internal/ul;Lcom/google/android/gms/internal/aay;)Lcom/google/android/gms/internal/zzmn;
    .locals 44

    .prologue
    .line 0
    if-eqz p6, :cond_4

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/internal/ul;->a()Lcom/google/android/gms/internal/uj;

    move-result-object v4

    move-object v5, v4

    :goto_0
    :try_start_0
    new-instance v42, Lcom/google/android/gms/internal/abc;

    .line 28000
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/google/android/gms/internal/abe;->b:Ljava/lang/String;

    .line 0
    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/abc;-><init>(Lcom/google/android/gms/internal/zzmk;Ljava/lang/String;)V

    const-string/jumbo v6, "AdRequestServiceImpl: Sending request: "

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {v4}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;)V

    new-instance v6, Ljava/net/URL;

    move-object/from16 v0, p3

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->k()Lcom/google/android/gms/common/util/d;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v18

    move v8, v4

    move-object v9, v6

    :goto_2
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object/from16 v43, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v43

    invoke-virtual {v4, v0, v1, v2}, Lcom/google/android/gms/internal/adj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/net/HttpURLConnection;)V

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 29000
    move-object/from16 v0, p5

    iget-boolean v4, v0, Lcom/google/android/gms/internal/abe;->e:Z

    .line 0
    if-eqz v4, :cond_0

    const-string/jumbo v4, "x-afma-drt-cookie"

    move-object/from16 v0, v43

    move-object/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/zzmk;->I:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "Sending webview cookie in ad request header."

    invoke-static {v6}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;)V

    const-string/jumbo v6, "Cookie"

    move-object/from16 v0, v43

    invoke-virtual {v0, v6, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p5, :cond_2

    .line 30000
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/google/android/gms/internal/abe;->c:Ljava/lang/String;

    .line 0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 31000
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/google/android/gms/internal/abe;->c:Ljava/lang/String;

    .line 0
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v6, v4

    move-object/from16 v0, v43

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v7, 0x0

    :try_start_2
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-virtual/range {v43 .. v43}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v6, v4}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-static {v6}, Lcom/google/android/gms/common/util/i;->a(Ljava/io/Closeable;)V

    :cond_2
    invoke-virtual/range {v43 .. v43}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual/range {v43 .. v43}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v10

    const/16 v6, 0xc8

    if-lt v4, v6, :cond_6

    const/16 v6, 0x12c

    if-ge v4, v6, :cond_6

    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v8

    const/4 v7, 0x0

    :try_start_5
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual/range {v43 .. v43}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    invoke-static {v6}, Lcom/google/android/gms/internal/adj;->a(Ljava/io/InputStreamReader;)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v7

    :try_start_7
    invoke-static {v6}, Lcom/google/android/gms/common/util/i;->a(Ljava/io/Closeable;)V

    invoke-static {v8, v10, v7, v4}, Lcom/google/android/gms/internal/aaz;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    .line 32000
    move-object/from16 v0, v42

    iput-object v7, v0, Lcom/google/android/gms/internal/abc;->c:Ljava/lang/String;

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/abc;->a(Ljava/util/Map;)V

    .line 0
    if-eqz p6, :cond_3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "ufe"

    aput-object v7, v4, v6

    move-object/from16 v0, p6

    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/internal/ul;->a(Lcom/google/android/gms/internal/uj;[Ljava/lang/String;)Z

    .line 33000
    :cond_3
    new-instance v4, Lcom/google/android/gms/internal/zzmn;

    move-object/from16 v0, v42

    iget-object v5, v0, Lcom/google/android/gms/internal/abc;->H:Lcom/google/android/gms/internal/zzmk;

    move-object/from16 v0, v42

    iget-object v6, v0, Lcom/google/android/gms/internal/abc;->b:Ljava/lang/String;

    move-object/from16 v0, v42

    iget-object v7, v0, Lcom/google/android/gms/internal/abc;->c:Ljava/lang/String;

    move-object/from16 v0, v42

    iget-object v8, v0, Lcom/google/android/gms/internal/abc;->d:Ljava/util/List;

    move-object/from16 v0, v42

    iget-object v9, v0, Lcom/google/android/gms/internal/abc;->h:Ljava/util/List;

    move-object/from16 v0, v42

    iget-wide v10, v0, Lcom/google/android/gms/internal/abc;->i:J

    move-object/from16 v0, v42

    iget-boolean v12, v0, Lcom/google/android/gms/internal/abc;->j:Z

    move-object/from16 v0, v42

    iget-object v13, v0, Lcom/google/android/gms/internal/abc;->k:Ljava/util/List;

    move-object/from16 v0, v42

    iget-wide v14, v0, Lcom/google/android/gms/internal/abc;->l:J

    move-object/from16 v0, v42

    iget v0, v0, Lcom/google/android/gms/internal/abc;->m:I

    move/from16 v16, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/gms/internal/abc;->a:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/gms/internal/abc;->f:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/gms/internal/abc;->g:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/google/android/gms/internal/abc;->n:Z

    move/from16 v22, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/google/android/gms/internal/abc;->o:Z

    move/from16 v23, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/google/android/gms/internal/abc;->p:Z

    move/from16 v24, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/google/android/gms/internal/abc;->q:Z

    move/from16 v25, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/gms/internal/abc;->s:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/google/android/gms/internal/abc;->t:Z

    move/from16 v27, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/google/android/gms/internal/abc;->u:Z

    move/from16 v28, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/gms/internal/abc;->v:Lcom/google/android/gms/internal/zzoo;

    move-object/from16 v29, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/gms/internal/abc;->w:Ljava/util/List;

    move-object/from16 v30, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/gms/internal/abc;->x:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/google/android/gms/internal/abc;->y:Z

    move/from16 v32, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/gms/internal/abc;->z:Lcom/google/android/gms/internal/zzmp;

    move-object/from16 v33, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/google/android/gms/internal/abc;->A:Z

    move/from16 v34, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/gms/internal/abc;->B:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/gms/internal/abc;->C:Ljava/util/List;

    move-object/from16 v36, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/google/android/gms/internal/abc;->D:Z

    move/from16 v37, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/gms/internal/abc;->E:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/gms/internal/abc;->F:Lcom/google/android/gms/internal/zzor;

    move-object/from16 v39, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/google/android/gms/internal/abc;->e:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/google/android/gms/internal/abc;->r:Z

    move/from16 v41, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/google/android/gms/internal/abc;->G:Z

    move/from16 v42, v0

    invoke-direct/range {v4 .. v42}, Lcom/google/android/gms/internal/zzmn;-><init>(Lcom/google/android/gms/internal/zzmk;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZLjava/util/List;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;ZZLcom/google/android/gms/internal/zzoo;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zzmp;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/google/android/gms/internal/zzor;Ljava/lang/String;ZZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 0
    :try_start_8
    invoke-virtual/range {v43 .. v43}, Ljava/net/HttpURLConnection;->disconnect()V

    :goto_3
    return-object v4

    :cond_4
    const/4 v4, 0x0

    move-object v5, v4

    goto/16 :goto_0

    :cond_5
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v4

    const-string/jumbo v5, "Error while connecting to ad server: "

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-static {v4}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/internal/zzmn;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/zzmn;-><init>(I)V

    goto :goto_3

    :catchall_0
    move-exception v4

    move-object v5, v7

    :goto_5
    :try_start_9
    invoke-static {v5}, Lcom/google/android/gms/common/util/i;->a(Ljava/io/Closeable;)V

    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v4

    :try_start_a
    invoke-virtual/range {v43 .. v43}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v4
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :catchall_2
    move-exception v4

    move-object v5, v7

    :goto_6
    :try_start_b
    invoke-static {v5}, Lcom/google/android/gms/common/util/i;->a(Ljava/io/Closeable;)V

    throw v4

    :cond_6
    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v10, v7, v4}, Lcom/google/android/gms/internal/aaz;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    const/16 v6, 0x12c

    if-lt v4, v6, :cond_8

    const/16 v6, 0x190

    if-ge v4, v6, :cond_8

    const-string/jumbo v4, "Location"

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string/jumbo v4, "No location header to follow redirect."

    invoke-static {v4}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/internal/zzmn;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/zzmn;-><init>(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    invoke-virtual/range {v43 .. v43}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_3

    :cond_7
    :try_start_d
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v8, 0x1

    const/4 v7, 0x5

    if-le v4, v7, :cond_9

    const-string/jumbo v4, "Too many redirects."

    invoke-static {v4}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/internal/zzmn;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/zzmn;-><init>(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    invoke-virtual/range {v43 .. v43}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_3

    :cond_8
    const/16 v5, 0x2e

    :try_start_f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "Received error HTTP response code: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/internal/zzmn;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/zzmn;-><init>(I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    invoke-virtual/range {v43 .. v43}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0

    goto/16 :goto_3

    :cond_9
    :try_start_11
    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/abc;->a(Ljava/util/Map;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :try_start_12
    invoke-virtual/range {v43 .. v43}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0

    if-eqz p7, :cond_a

    move v8, v4

    move-object v9, v6

    goto/16 :goto_2

    :cond_a
    move v8, v4

    move-object v9, v6

    goto/16 :goto_2

    :cond_b
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :catchall_3
    move-exception v4

    move-object v5, v6

    goto/16 :goto_6

    :catchall_4
    move-exception v4

    move-object v5, v6

    goto/16 :goto_5
.end method

.method private static a(Ljava/util/concurrent/Future;Ljava/lang/Long;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TT;>;",
            "Ljava/lang/Long;",
            ")TT;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v2, v3, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "InterruptedException caught while resolving future."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    const-string/jumbo v2, "Exception caught while resolving future"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v0, "Http Response: {\n  URL:\n    "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n  Headers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "    "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/adf;->a(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "      "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "  Body:"

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0x186a0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v2, v0, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/adf;->a(Ljava/lang/String;)V

    add-int/lit16 v0, v0, 0x3e8

    goto :goto_2

    :cond_3
    const-string/jumbo v0, "    null"

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->a(Ljava/lang/String;)V

    :cond_4
    const/16 v0, 0x22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v0, "  Response Code:\n    "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->a(Ljava/lang/String;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/zzmk;)Lcom/google/android/gms/internal/zzmn;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/aaz;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/aaz;->f:Lcom/google/android/gms/internal/xh;

    iget-object v2, p0, Lcom/google/android/gms/internal/aaz;->d:Lcom/google/android/gms/internal/aay;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/aaz;->a(Landroid/content/Context;Lcom/google/android/gms/internal/xh;Lcom/google/android/gms/internal/aay;Lcom/google/android/gms/internal/zzmk;)Lcom/google/android/gms/internal/zzmn;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/zzmk;Lcom/google/android/gms/internal/aas;)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/aaz;->c:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzmk;->k:Lcom/google/android/gms/internal/zzqh;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/acz;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;)V

    new-instance v0, Lcom/google/android/gms/internal/aaz$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/aaz$5;-><init>(Lcom/google/android/gms/internal/aaz;Lcom/google/android/gms/internal/zzmk;Lcom/google/android/gms/internal/aas;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/adi;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/aeh;

    return-void
.end method
