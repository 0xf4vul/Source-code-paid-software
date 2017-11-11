.class public final Lcom/google/android/gms/internal/xw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/xo;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# instance fields
.field final a:J

.field final b:J

.field final c:Ljava/lang/Object;

.field d:Z

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/aeh",
            "<",
            "Lcom/google/android/gms/internal/xu;",
            ">;",
            "Lcom/google/android/gms/internal/xt;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/internal/zzmk;

.field private final g:Lcom/google/android/gms/internal/ya;

.field private final h:Landroid/content/Context;

.field private final i:Lcom/google/android/gms/internal/xq;

.field private final j:Z

.field private final k:I

.field private final l:Z

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/xu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzmk;Lcom/google/android/gms/internal/ya;Lcom/google/android/gms/internal/xq;ZZJJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/xw;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/xw;->d:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/xw;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/xw;->m:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/xw;->h:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/xw;->f:Lcom/google/android/gms/internal/zzmk;

    iput-object p3, p0, Lcom/google/android/gms/internal/xw;->g:Lcom/google/android/gms/internal/ya;

    iput-object p4, p0, Lcom/google/android/gms/internal/xw;->i:Lcom/google/android/gms/internal/xq;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/xw;->j:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/xw;->l:Z

    iput-wide p7, p0, Lcom/google/android/gms/internal/xw;->a:J

    iput-wide p9, p0, Lcom/google/android/gms/internal/xw;->b:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/xw;->k:I

    return-void
.end method

.method private a(Lcom/google/android/gms/internal/aeh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/aeh",
            "<",
            "Lcom/google/android/gms/internal/xu;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/adj;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/xw$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/xw$2;-><init>(Lcom/google/android/gms/internal/xw;Lcom/google/android/gms/internal/aeh;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private b(Ljava/util/List;)Lcom/google/android/gms/internal/xu;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/aeh",
            "<",
            "Lcom/google/android/gms/internal/xu;",
            ">;>;)",
            "Lcom/google/android/gms/internal/xu;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/xw;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/xw;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/xu;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/xu;-><init>(I)V

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/aeh;

    :try_start_1
    invoke-interface {v1}, Lcom/google/android/gms/internal/aeh;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/xu;

    iget-object v3, p0, Lcom/google/android/gms/internal/xw;->m:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1

    iget v3, v0, Lcom/google/android/gms/internal/xu;->a:I

    if-nez v3, :cond_1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/xw;->a(Lcom/google/android/gms/internal/aeh;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    const-string/jumbo v1, "Exception while processing an adapter; continuing with other adapters"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/xw;->a(Lcom/google/android/gms/internal/aeh;)V

    new-instance v0, Lcom/google/android/gms/internal/xu;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/xu;-><init>(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private c(Ljava/util/List;)Lcom/google/android/gms/internal/xu;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/aeh",
            "<",
            "Lcom/google/android/gms/internal/xu;",
            ">;>;)",
            "Lcom/google/android/gms/internal/xu;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/xw;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/xw;->d:Z

    if-eqz v0, :cond_1

    new-instance v2, Lcom/google/android/gms/internal/xu;

    const/4 v0, -0x1

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/xu;-><init>(I)V

    monitor-exit v1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/xw;->i:Lcom/google/android/gms/internal/xq;

    iget-wide v0, v0, Lcom/google/android/gms/internal/xq;->m:J

    const-wide/16 v6, -0x1

    cmp-long v0, v0, v6

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/xw;->i:Lcom/google/android/gms/internal/xq;

    iget-wide v0, v0, Lcom/google/android/gms/internal/xq;->m:J

    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v6, v0

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aeh;

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->k()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v1, v6, v12

    if-nez v1, :cond_3

    :try_start_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/aeh;->isDone()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lcom/google/android/gms/internal/aeh;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/xu;

    :goto_3
    iget-object v5, p0, Lcom/google/android/gms/internal/xw;->m:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_5

    iget v5, v1, Lcom/google/android/gms/internal/xu;->a:I

    if-nez v5, :cond_5

    iget-object v5, v1, Lcom/google/android/gms/internal/xu;->f:Lcom/google/android/gms/internal/yd;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Lcom/google/android/gms/internal/yd;->a()I

    move-result v9

    if-le v9, v4, :cond_5

    invoke-interface {v5}, Lcom/google/android/gms/internal/yd;->a()I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    move-object v14, v1

    move-object v1, v0

    move-object v0, v14

    :goto_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->k()Lcom/google/android/gms/common/util/d;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v4

    sub-long/2addr v4, v10

    sub-long v4, v6, v4

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-wide v6, v4

    move-object v3, v1

    move v4, v2

    move-object v2, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    const-wide/16 v0, 0x2710

    goto :goto_1

    :cond_3
    :try_start_3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v6, v7, v1}, Lcom/google/android/gms/internal/aeh;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/xu;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catch_0
    move-exception v0

    :goto_5
    :try_start_4
    const-string/jumbo v1, "Exception while processing an adapter; continuing with other adapters"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->k()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v0

    sub-long/2addr v0, v10

    sub-long v0, v6, v0

    const-wide/16 v6, 0x0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v6, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->k()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v2

    sub-long/2addr v2, v10

    sub-long v2, v6, v2

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    throw v0

    :cond_4
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/xw;->a(Lcom/google/android/gms/internal/aeh;)V

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/xu;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/xu;-><init>(I)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_5

    :cond_5
    move-object v0, v2

    move-object v1, v3

    move v2, v4

    goto :goto_4
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/google/android/gms/internal/xu;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/xp;",
            ">;)",
            "Lcom/google/android/gms/internal/xu;"
        }
    .end annotation

    const-string/jumbo v1, "Starting mediation."

    invoke-static {v1}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/xp;

    const-string/jumbo v2, "Trying mediation network: "

    iget-object v1, v6, Lcom/google/android/gms/internal/xp;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/adf;->d(Ljava/lang/String;)V

    iget-object v1, v6, Lcom/google/android/gms/internal/xp;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/xt;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/xw;->h:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/xw;->g:Lcom/google/android/gms/internal/ya;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/xw;->i:Lcom/google/android/gms/internal/xq;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/xw;->f:Lcom/google/android/gms/internal/zzmk;

    iget-object v7, v7, Lcom/google/android/gms/internal/zzmk;->c:Lcom/google/android/gms/internal/zzec;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/xw;->f:Lcom/google/android/gms/internal/zzmk;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzmk;->d:Lcom/google/android/gms/internal/zzeg;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/xw;->f:Lcom/google/android/gms/internal/zzmk;

    iget-object v9, v9, Lcom/google/android/gms/internal/zzmk;->k:Lcom/google/android/gms/internal/zzqh;

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/gms/internal/xw;->j:Z

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/gms/internal/xw;->l:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/xw;->f:Lcom/google/android/gms/internal/zzmk;

    iget-object v12, v12, Lcom/google/android/gms/internal/zzmk;->y:Lcom/google/android/gms/internal/zzhc;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/internal/xw;->f:Lcom/google/android/gms/internal/zzmk;

    iget-object v13, v13, Lcom/google/android/gms/internal/zzmk;->n:Ljava/util/List;

    invoke-direct/range {v1 .. v13}, Lcom/google/android/gms/internal/xt;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ya;Lcom/google/android/gms/internal/xq;Lcom/google/android/gms/internal/xp;Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/zzqh;ZZLcom/google/android/gms/internal/zzhc;Ljava/util/List;)V

    new-instance v2, Lcom/google/android/gms/internal/xw$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/xw$1;-><init>(Lcom/google/android/gms/internal/xw;Lcom/google/android/gms/internal/xt;)V

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/adi;->a(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/aeh;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/xw;->e:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/gms/internal/xw;->k:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/xw;->b(Ljava/util/List;)Lcom/google/android/gms/internal/xu;

    move-result-object v1

    :goto_2
    return-object v1

    :pswitch_0
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/xw;->c(Ljava/util/List;)Lcom/google/android/gms/internal/xu;

    move-result-object v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final a()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/xw;->c:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/xw;->d:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/xw;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/xt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xt;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/xu;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/xw;->m:Ljava/util/List;

    return-object v0
.end method
