.class public final Lcom/google/android/gms/internal/xt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/xu$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/google/android/gms/internal/xp;

.field c:Lcom/google/android/gms/internal/zzec;

.field final d:Lcom/google/android/gms/internal/zzeg;

.field final e:Landroid/content/Context;

.field final f:Ljava/lang/Object;

.field final g:Lcom/google/android/gms/internal/zzqh;

.field final h:Z

.field final i:Lcom/google/android/gms/internal/zzhc;

.field final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final k:Z

.field l:Lcom/google/android/gms/internal/yb;

.field m:I

.field private final n:Lcom/google/android/gms/internal/ya;

.field private final o:J

.field private final p:Lcom/google/android/gms/internal/xq;

.field private q:Lcom/google/android/gms/internal/yd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ya;Lcom/google/android/gms/internal/xq;Lcom/google/android/gms/internal/xp;Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/zzqh;ZZLcom/google/android/gms/internal/zzhc;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ya;",
            "Lcom/google/android/gms/internal/xq;",
            "Lcom/google/android/gms/internal/xp;",
            "Lcom/google/android/gms/internal/zzec;",
            "Lcom/google/android/gms/internal/zzeg;",
            "Lcom/google/android/gms/internal/zzqh;",
            "ZZ",
            "Lcom/google/android/gms/internal/zzhc;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/xt;->f:Ljava/lang/Object;

    const/4 v2, -0x2

    iput v2, p0, Lcom/google/android/gms/internal/xt;->m:I

    iput-object p1, p0, Lcom/google/android/gms/internal/xt;->e:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/xt;->n:Lcom/google/android/gms/internal/ya;

    iput-object p5, p0, Lcom/google/android/gms/internal/xt;->b:Lcom/google/android/gms/internal/xp;

    const-string/jumbo v2, "com.google.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/xt;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/xt;->a:Ljava/lang/String;

    :goto_0
    iput-object p4, p0, Lcom/google/android/gms/internal/xt;->p:Lcom/google/android/gms/internal/xq;

    iget-wide v2, p4, Lcom/google/android/gms/internal/xq;->b:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-wide v2, p4, Lcom/google/android/gms/internal/xq;->b:J

    :goto_1
    iput-wide v2, p0, Lcom/google/android/gms/internal/xt;->o:J

    iput-object p6, p0, Lcom/google/android/gms/internal/xt;->c:Lcom/google/android/gms/internal/zzec;

    iput-object p7, p0, Lcom/google/android/gms/internal/xt;->d:Lcom/google/android/gms/internal/zzeg;

    iput-object p8, p0, Lcom/google/android/gms/internal/xt;->g:Lcom/google/android/gms/internal/zzqh;

    iput-boolean p9, p0, Lcom/google/android/gms/internal/xt;->h:Z

    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/google/android/gms/internal/xt;->k:Z

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/android/gms/internal/xt;->i:Lcom/google/android/gms/internal/zzhc;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/gms/internal/xt;->j:Ljava/util/List;

    return-void

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/internal/xt;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x2710

    goto :goto_1
.end method

.method private static a(Lcom/google/android/gms/ads/mediation/b;)Lcom/google/android/gms/internal/yb;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/yh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/yh;-><init>(Lcom/google/android/gms/ads/mediation/b;)V

    return-object v0
.end method

.method static b(Ljava/lang/String;)Lcom/google/android/gms/ads/formats/b;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 0
    new-instance v1, Lcom/google/android/gms/ads/formats/b$a;

    invoke-direct {v1}, Lcom/google/android/gms/ads/formats/b$a;-><init>()V

    if-nez p0, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/b$a;->a()Lcom/google/android/gms/ads/formats/b;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "multiple_images"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 6000
    iput-boolean v3, v1, Lcom/google/android/gms/ads/formats/b$a;->c:Z

    .line 0
    const-string/jumbo v3, "only_urls"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 7000
    iput-boolean v3, v1, Lcom/google/android/gms/ads/formats/b$a;->a:Z

    .line 0
    const-string/jumbo v3, "native_image_orientation"

    const-string/jumbo v4, "any"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8000
    const-string/jumbo v3, "landscape"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x2

    .line 9000
    :cond_1
    :goto_1
    iput v0, v1, Lcom/google/android/gms/ads/formats/b$a;->b:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 0
    :goto_2
    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/b$a;->a()Lcom/google/android/gms/ads/formats/b;

    move-result-object v0

    goto :goto_0

    .line 8000
    :cond_2
    :try_start_1
    const-string/jumbo v3, "portrait"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .line 0
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Exception occurred when creating native ad options"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private d()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/xt;->b:Lcom/google/android/gms/internal/xp;

    iget-object v0, v0, Lcom/google/android/gms/internal/xp;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/xt;->n:Lcom/google/android/gms/internal/ya;

    iget-object v1, p0, Lcom/google/android/gms/internal/xt;->b:Lcom/google/android/gms/internal/xp;

    iget-object v1, v1, Lcom/google/android/gms/internal/xp;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ya;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "com.google.ads.mediation.customevent.CustomEventAdapter"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Fail to determine the custom event\'s version, assuming the old one."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v0, "com.google.ads.mediation.customevent.CustomEventAdapter"

    goto :goto_0
.end method

.method private e()Lcom/google/android/gms/internal/yd;
    .locals 2

    .prologue
    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/xt;->m:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/xt;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/xt;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/xt;->q:Lcom/google/android/gms/internal/yd;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/xt;->q:Lcom/google/android/gms/internal/yd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/yd;->a()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/xt;->q:Lcom/google/android/gms/internal/yd;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Could not get cpm value from MediationResponseMetadata"

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/xt;->f()I

    move-result v1

    .line 3000
    new-instance v0, Lcom/google/android/gms/internal/xt$2;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/xt$2;-><init>(I)V

    goto :goto_0
.end method

.method private f()I
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/xt;->b:Lcom/google/android/gms/internal/xp;

    iget-object v0, v0, Lcom/google/android/gms/internal/xp;->i:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/internal/xt;->b:Lcom/google/android/gms/internal/xp;

    iget-object v0, v0, Lcom/google/android/gms/internal/xp;->i:Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v0, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v3, p0, Lcom/google/android/gms/internal/xt;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "cpm_cents"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Could not convert to json. Returning 0"

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/xt;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "cpm_floor_cents"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    :goto_1
    if-nez v0, :cond_0

    const-string/jumbo v0, "penalized_average_cpm_cents"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(JJ)Lcom/google/android/gms/internal/xu;
    .locals 15

    .prologue
    .line 0
    iget-object v10, p0, Lcom/google/android/gms/internal/xt;->f:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v5, Lcom/google/android/gms/internal/xs;

    invoke-direct {v5}, Lcom/google/android/gms/internal/xs;-><init>()V

    sget-object v2, Lcom/google/android/gms/internal/adj;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/xt$1;

    invoke-direct {v3, p0, v5}, Lcom/google/android/gms/internal/xt$1;-><init>(Lcom/google/android/gms/internal/xt;Lcom/google/android/gms/internal/xs;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/xt;->o:J

    .line 1000
    :goto_0
    iget v4, p0, Lcom/google/android/gms/internal/xt;->m:I

    const/4 v6, -0x2

    if-eq v4, v6, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->k()Lcom/google/android/gms/common/util/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v2

    sub-long v8, v2, v0

    .line 0
    new-instance v1, Lcom/google/android/gms/internal/xu;

    iget-object v2, p0, Lcom/google/android/gms/internal/xt;->b:Lcom/google/android/gms/internal/xp;

    iget-object v3, p0, Lcom/google/android/gms/internal/xt;->l:Lcom/google/android/gms/internal/yb;

    iget-object v4, p0, Lcom/google/android/gms/internal/xt;->a:Ljava/lang/String;

    iget v6, p0, Lcom/google/android/gms/internal/xt;->m:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/xt;->e()Lcom/google/android/gms/internal/yd;

    move-result-object v7

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/xu;-><init>(Lcom/google/android/gms/internal/xp;Lcom/google/android/gms/internal/yb;Ljava/lang/String;Lcom/google/android/gms/internal/xs;ILcom/google/android/gms/internal/yd;J)V

    monitor-exit v10

    return-object v1

    .line 2000
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v8, v6, v0

    sub-long v8, v2, v8

    sub-long v6, v6, p1

    sub-long v6, p3, v6

    const-wide/16 v12, 0x0

    cmp-long v4, v8, v12

    if-lez v4, :cond_1

    const-wide/16 v12, 0x0

    cmp-long v4, v6, v12

    if-gtz v4, :cond_2

    :cond_1
    const-string/jumbo v4, "Timed out waiting for adapter."

    invoke-static {v4}, Lcom/google/android/gms/internal/adf;->d(Ljava/lang/String;)V

    const/4 v4, 0x3

    iput v4, p0, Lcom/google/android/gms/internal/xt;->m:I

    goto :goto_0

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2000
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/google/android/gms/internal/xt;->f:Ljava/lang/Object;

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    const/4 v4, -0x1

    :try_start_2
    iput v4, p0, Lcom/google/android/gms/internal/xt;->m:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/xt;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/xt;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "cpm_floor_cents"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Could not remove field. Returning the original value"

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/xt;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/xt;->l:Lcom/google/android/gms/internal/yb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xt;->l:Lcom/google/android/gms/internal/yb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/yb;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :try_start_1
    iput v0, p0, Lcom/google/android/gms/internal/xt;->m:I

    iget-object v0, p0, Lcom/google/android/gms/internal/xt;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Could not destroy mediation adapter."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(I)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/xt;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/xt;->m:I

    iget-object v0, p0, Lcom/google/android/gms/internal/xt;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/yd;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/xt;->f:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/google/android/gms/internal/xt;->m:I

    iput-object p1, p0, Lcom/google/android/gms/internal/xt;->q:Lcom/google/android/gms/internal/yd;

    iget-object v0, p0, Lcom/google/android/gms/internal/xt;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final b()Lcom/google/android/gms/internal/yb;
    .locals 4

    .prologue
    .line 0
    const-string/jumbo v1, "Instantiating mediation adapter: "

    iget-object v0, p0, Lcom/google/android/gms/internal/xt;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/xt;->h:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/ud;->bC:Lcom/google/android/gms/internal/ty;

    .line 4000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v1, p0, Lcom/google/android/gms/internal/xt;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-direct {v0}, Lcom/google/ads/mediation/admob/AdMobAdapter;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/xt;->a(Lcom/google/android/gms/ads/mediation/b;)Lcom/google/android/gms/internal/yb;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ud;->bD:Lcom/google/android/gms/internal/ty;

    .line 5000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "com.google.ads.mediation.AdUrlAdapter"

    iget-object v1, p0, Lcom/google/android/gms/internal/xt;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/ads/mediation/AdUrlAdapter;

    invoke-direct {v0}, Lcom/google/ads/mediation/AdUrlAdapter;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/xt;->a(Lcom/google/android/gms/ads/mediation/b;)Lcom/google/android/gms/internal/yb;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "com.google.ads.mediation.admob.AdMobCustomTabsAdapter"

    iget-object v1, p0, Lcom/google/android/gms/internal/xt;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/yh;

    new-instance v1, Lcom/google/android/gms/internal/yp;

    invoke-direct {v1}, Lcom/google/android/gms/internal/yp;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/yh;-><init>(Lcom/google/android/gms/ads/mediation/b;)V

    goto :goto_1

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/xt;->n:Lcom/google/android/gms/internal/ya;

    iget-object v1, p0, Lcom/google/android/gms/internal/xt;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ya;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/yb;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string/jumbo v2, "Could not instantiate mediation adapter: "

    iget-object v0, p0, Lcom/google/android/gms/internal/xt;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/adf;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method final b(I)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/xt;->h:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/xt;->l:Lcom/google/android/gms/internal/yb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/yb;->l()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    const-string/jumbo v2, "capabilities"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    and-int/2addr v1, p1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_1
    return v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/xt;->d:Lcom/google/android/gms/internal/zzeg;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzeg;->d:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/xt;->l:Lcom/google/android/gms/internal/yb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/yb;->k()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/xt;->l:Lcom/google/android/gms/internal/yb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/yb;->j()Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v1, "Could not get adapter info. Returning false"

    invoke-static {v1}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method final c()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/xt;->p:Lcom/google/android/gms/internal/xq;

    iget v0, v0, Lcom/google/android/gms/internal/xq;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
