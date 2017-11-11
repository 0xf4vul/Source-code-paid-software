.class public final Lcom/google/android/gms/internal/aau;
.super Lcom/google/android/gms/internal/ade;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/aau$a;,
        Lcom/google/android/gms/internal/aau$b;,
        Lcom/google/android/gms/internal/aau$c;
    }
.end annotation


# static fields
.field static final a:J

.field static b:Z

.field private static final c:Ljava/lang/Object;

.field private static d:Lcom/google/android/gms/internal/xh;

.field private static e:Lcom/google/android/gms/internal/wc;

.field private static f:Lcom/google/android/gms/internal/wg;

.field private static g:Lcom/google/android/gms/internal/wb;


# instance fields
.field private final h:Lcom/google/android/gms/internal/aah$a;

.field private final i:Lcom/google/android/gms/internal/zzmk$a;

.field private final j:Ljava/lang/Object;

.field private final l:Landroid/content/Context;

.field private m:Lcom/google/android/gms/internal/xh$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/aau;->a:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/aau;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/aau;->b:Z

    sput-object v4, Lcom/google/android/gms/internal/aau;->d:Lcom/google/android/gms/internal/xh;

    sput-object v4, Lcom/google/android/gms/internal/aau;->e:Lcom/google/android/gms/internal/wc;

    sput-object v4, Lcom/google/android/gms/internal/aau;->f:Lcom/google/android/gms/internal/wg;

    sput-object v4, Lcom/google/android/gms/internal/aau;->g:Lcom/google/android/gms/internal/wb;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzmk$a;Lcom/google/android/gms/internal/aah$a;)V
    .locals 7

    .prologue
    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ade;-><init>(B)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aau;->j:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/aau;->h:Lcom/google/android/gms/internal/aah$a;

    iput-object p1, p0, Lcom/google/android/gms/internal/aau;->l:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/aau;->i:Lcom/google/android/gms/internal/zzmk$a;

    sget-object v6, Lcom/google/android/gms/internal/aau;->c:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    sget-boolean v0, Lcom/google/android/gms/internal/aau;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/wg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/wg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/aau;->f:Lcom/google/android/gms/internal/wg;

    new-instance v0, Lcom/google/android/gms/internal/wc;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/internal/zzmk$a;->j:Lcom/google/android/gms/internal/zzqh;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/wc;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;)V

    sput-object v0, Lcom/google/android/gms/internal/aau;->e:Lcom/google/android/gms/internal/wc;

    new-instance v0, Lcom/google/android/gms/internal/aau$c;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aau$c;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/aau;->g:Lcom/google/android/gms/internal/wb;

    new-instance v0, Lcom/google/android/gms/internal/xh;

    iget-object v1, p0, Lcom/google/android/gms/internal/aau;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/aau;->i:Lcom/google/android/gms/internal/zzmk$a;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmk$a;->j:Lcom/google/android/gms/internal/zzqh;

    sget-object v3, Lcom/google/android/gms/internal/ud;->b:Lcom/google/android/gms/internal/ty;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v3

    .line 0
    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/internal/aau$b;

    invoke-direct {v4}, Lcom/google/android/gms/internal/aau$b;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/aau$a;

    invoke-direct {v5}, Lcom/google/android/gms/internal/aau$a;-><init>()V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/xh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Ljava/lang/String;Lcom/google/android/gms/internal/ado;Lcom/google/android/gms/internal/ado;)V

    sput-object v0, Lcom/google/android/gms/internal/aau;->d:Lcom/google/android/gms/internal/xh;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/aau;->b:Z

    :cond_0
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/aau;)Lcom/google/android/gms/internal/aah$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aau;->h:Lcom/google/android/gms/internal/aah$a;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/aau;Lcom/google/android/gms/internal/xh$c;)Lcom/google/android/gms/internal/xh$c;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aau;->m:Lcom/google/android/gms/internal/xh$c;

    return-object p1
.end method

.method private a(Lcom/google/android/gms/internal/zzmk;)Lcom/google/android/gms/internal/zzmn;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    invoke-static {}, Lcom/google/android/gms/internal/adj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/aau;->a(Lcom/google/android/gms/internal/zzmk;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzmn;

    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/zzmn;-><init>(I)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->k()Lcom/google/android/gms/common/util/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/aau;->f:Lcom/google/android/gms/internal/wg;

    .line 2000
    new-instance v5, Lcom/google/android/gms/internal/aee;

    invoke-direct {v5}, Lcom/google/android/gms/internal/aee;-><init>()V

    iget-object v4, v4, Lcom/google/android/gms/internal/wg;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 0
    sget-object v4, Lcom/google/android/gms/internal/aea;->a:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/gms/internal/aau$2;

    invoke-direct {v6, p0, v1, v0}, Lcom/google/android/gms/internal/aau$2;-><init>(Lcom/google/android/gms/internal/aau;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-wide v0, Lcom/google/android/gms/internal/aau;->a:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->k()Lcom/google/android/gms/common/util/d;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v6

    sub-long v2, v6, v2

    sub-long/2addr v0, v2

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzmn;

    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/zzmn;-><init>(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/zzmn;

    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/zzmn;-><init>(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/zzmn;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzmn;-><init>(I)V

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/zzmn;

    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/zzmn;-><init>(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/aau;->l:Landroid/content/Context;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/aba;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzmk;Ljava/lang/String;)Lcom/google/android/gms/internal/zzmn;

    move-result-object v0

    iget v1, v0, Lcom/google/android/gms/internal/zzmn;->e:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/zzmn;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzmn;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzmn;-><init>(I)V

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private a(Lcom/google/android/gms/internal/zzmk;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 0
    iget-object v0, p1, Lcom/google/android/gms/internal/zzmk;->c:Lcom/google/android/gms/internal/zzec;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzec;->c:Landroid/os/Bundle;

    const-string/jumbo v2, "sdk_less_server_data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->n()Lcom/google/android/gms/internal/abg;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/aau;->l:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/abg;->a(Landroid/content/Context;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/abf;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/aau;->l:Landroid/content/Context;

    new-instance v4, Lcom/google/android/gms/internal/aax;

    invoke-direct {v4}, Lcom/google/android/gms/internal/aax;-><init>()V

    .line 3000
    iput-object p1, v4, Lcom/google/android/gms/internal/aax;->i:Lcom/google/android/gms/internal/zzmk;

    .line 4000
    iput-object v0, v4, Lcom/google/android/gms/internal/aax;->j:Lcom/google/android/gms/internal/abf;

    .line 0
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/aba;->a(Landroid/content/Context;Lcom/google/android/gms/internal/aax;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aau;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/google/android/gms/common/c; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/gms/common/d; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    :goto_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v5, "request_id"

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "request_param"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "data"

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_2

    const-string/jumbo v2, "adid"

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "lat"

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/adj;->a(Ljava/util/Map;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "Error grabbing device info: "

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_4
    const-string/jumbo v4, "Cannot get advertising id info"

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_4
.end method

.method protected static a(Lcom/google/android/gms/internal/xe;)V
    .locals 2

    const-string/jumbo v0, "/loadAd"

    sget-object v1, Lcom/google/android/gms/internal/aau;->f:Lcom/google/android/gms/internal/wg;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/xe;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v0, "/fetchHttpRequest"

    sget-object v1, Lcom/google/android/gms/internal/aau;->e:Lcom/google/android/gms/internal/wc;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/xe;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v0, "/invalidRequest"

    sget-object v1, Lcom/google/android/gms/internal/aau;->g:Lcom/google/android/gms/internal/wb;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/xe;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/aau;)Lcom/google/android/gms/internal/xh$c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aau;->m:Lcom/google/android/gms/internal/xh$c;

    return-object v0
.end method

.method protected static b(Lcom/google/android/gms/internal/xe;)V
    .locals 2

    const-string/jumbo v0, "/loadAd"

    sget-object v1, Lcom/google/android/gms/internal/aau;->f:Lcom/google/android/gms/internal/wg;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/xe;->b(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v0, "/fetchHttpRequest"

    sget-object v1, Lcom/google/android/gms/internal/aau;->e:Lcom/google/android/gms/internal/wc;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/xe;->b(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v0, "/invalidRequest"

    sget-object v1, Lcom/google/android/gms/internal/aau;->g:Lcom/google/android/gms/internal/wb;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/xe;->b(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    return-void
.end method

.method static synthetic d()Lcom/google/android/gms/internal/wg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/aau;->f:Lcom/google/android/gms/internal/wg;

    return-object v0
.end method

.method static synthetic e()Lcom/google/android/gms/internal/xh;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/aau;->d:Lcom/google/android/gms/internal/xh;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 14

    const/4 v13, 0x0

    const-string/jumbo v0, "SdkLessAdLoaderBackgroundTask started."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->D()Lcom/google/android/gms/internal/acq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/aau;->l:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/acq;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/google/android/gms/internal/zzmk;

    iget-object v1, p0, Lcom/google/android/gms/internal/aau;->i:Lcom/google/android/gms/internal/zzmk$a;

    const-wide/16 v2, -0x1

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->D()Lcom/google/android/gms/internal/acq;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/aau;->l:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/acq;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->D()Lcom/google/android/gms/internal/acq;

    move-result-object v5

    iget-object v7, p0, Lcom/google/android/gms/internal/aau;->l:Landroid/content/Context;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/acq;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzmk;-><init>(Lcom/google/android/gms/internal/zzmk$a;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->D()Lcom/google/android/gms/internal/acq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/aau;->l:Landroid/content/Context;

    invoke-virtual {v1, v2, v6}, Lcom/google/android/gms/internal/acq;->c(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/aau;->a(Lcom/google/android/gms/internal/zzmk;)Lcom/google/android/gms/internal/zzmn;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->k()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v8

    new-instance v2, Lcom/google/android/gms/internal/acw$a;

    iget v7, v4, Lcom/google/android/gms/internal/zzmn;->e:I

    iget-wide v10, v4, Lcom/google/android/gms/internal/zzmn;->n:J

    move-object v3, v0

    move-object v5, v13

    move-object v6, v13

    move-object v12, v13

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/internal/acw$a;-><init>(Lcom/google/android/gms/internal/zzmk;Lcom/google/android/gms/internal/zzmn;Lcom/google/android/gms/internal/xq;Lcom/google/android/gms/internal/zzeg;IJJLorg/json/JSONObject;)V

    sget-object v0, Lcom/google/android/gms/internal/aea;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/aau$1;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/aau$1;-><init>(Lcom/google/android/gms/internal/aau;Lcom/google/android/gms/internal/acw$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final g_()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/aau;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/aea;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/aau$3;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/aau$3;-><init>(Lcom/google/android/gms/internal/aau;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
