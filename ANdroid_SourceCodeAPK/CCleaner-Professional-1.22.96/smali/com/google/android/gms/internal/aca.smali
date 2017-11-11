.class public final Lcom/google/android/gms/internal/aca;
.super Lcom/google/android/gms/internal/ade;

# interfaces
.implements Lcom/google/android/gms/internal/acc;
.implements Lcom/google/android/gms/internal/acf;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Lcom/google/android/gms/internal/xp;

.field private final e:Lcom/google/android/gms/internal/acw$a;

.field private final f:Lcom/google/android/gms/internal/ach;

.field private final g:Lcom/google/android/gms/internal/acf;

.field private final h:Ljava/lang/Object;

.field private final i:J

.field private j:I

.field private l:I

.field private m:Lcom/google/android/gms/internal/acb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/xp;Lcom/google/android/gms/internal/acw$a;Lcom/google/android/gms/internal/ach;Lcom/google/android/gms/internal/acf;J)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ade;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/aca;->j:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/aca;->l:I

    iput-object p1, p0, Lcom/google/android/gms/internal/aca;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/aca;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/aca;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/aca;->d:Lcom/google/android/gms/internal/xp;

    iput-object p5, p0, Lcom/google/android/gms/internal/aca;->e:Lcom/google/android/gms/internal/acw$a;

    iput-object p6, p0, Lcom/google/android/gms/internal/aca;->f:Lcom/google/android/gms/internal/ach;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aca;->h:Ljava/lang/Object;

    iput-object p7, p0, Lcom/google/android/gms/internal/aca;->g:Lcom/google/android/gms/internal/acf;

    iput-wide p8, p0, Lcom/google/android/gms/internal/aca;->i:J

    return-void
.end method

.method private a(J)Z
    .locals 7

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/internal/aca;->i:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->k()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v4

    sub-long/2addr v4, p1

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v1, 0x4

    iput v1, p0, Lcom/google/android/gms/internal/aca;->l:I

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aca;->h:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    const/4 v1, 0x5

    iput v1, p0, Lcom/google/android/gms/internal/aca;->l:I

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/aca;->f:Lcom/google/android/gms/internal/ach;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aca;->f:Lcom/google/android/gms/internal/ach;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/ach;->b:Lcom/google/android/gms/internal/ace;

    .line 0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aca;->f:Lcom/google/android/gms/internal/ach;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/ach;->a:Lcom/google/android/gms/internal/yb;

    .line 0
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aca;->f:Lcom/google/android/gms/internal/ach;

    .line 3000
    iget-object v1, v0, Lcom/google/android/gms/internal/ach;->b:Lcom/google/android/gms/internal/ace;

    .line 4000
    iput-object v8, v1, Lcom/google/android/gms/internal/ace;->b:Lcom/google/android/gms/internal/acf;

    .line 5000
    iput-object p0, v1, Lcom/google/android/gms/internal/ace;->a:Lcom/google/android/gms/internal/acc;

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/aca;->e:Lcom/google/android/gms/internal/acw$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw$a;->a:Lcom/google/android/gms/internal/zzmk;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmk;->c:Lcom/google/android/gms/internal/zzec;

    iget-object v2, p0, Lcom/google/android/gms/internal/aca;->f:Lcom/google/android/gms/internal/ach;

    .line 6000
    iget-object v2, v2, Lcom/google/android/gms/internal/ach;->a:Lcom/google/android/gms/internal/yb;

    .line 0
    :try_start_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/yb;->g()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/google/android/gms/internal/aea;->a:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/internal/aca$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/google/android/gms/internal/aca$1;-><init>(Lcom/google/android/gms/internal/aca;Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/yb;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->k()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v2

    .line 7000
    :goto_2
    iget-object v4, p0, Lcom/google/android/gms/internal/aca;->h:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/aca;->j:I

    if-eqz v0, :cond_4

    new-instance v5, Lcom/google/android/gms/internal/acb$a;

    invoke-direct {v5}, Lcom/google/android/gms/internal/acb$a;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->k()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v6

    sub-long v2, v6, v2

    .line 8000
    iput-wide v2, v5, Lcom/google/android/gms/internal/acb$a;->d:J

    .line 7000
    iget v0, p0, Lcom/google/android/gms/internal/aca;->j:I

    if-ne v9, v0, :cond_3

    const/4 v0, 0x6

    .line 9000
    :goto_3
    iput v0, v5, Lcom/google/android/gms/internal/acb$a;->c:I

    .line 7000
    iget-object v0, p0, Lcom/google/android/gms/internal/aca;->b:Ljava/lang/String;

    .line 10000
    iput-object v0, v5, Lcom/google/android/gms/internal/acb$a;->a:Ljava/lang/String;

    .line 7000
    iget-object v0, p0, Lcom/google/android/gms/internal/aca;->d:Lcom/google/android/gms/internal/xp;

    iget-object v0, v0, Lcom/google/android/gms/internal/xp;->d:Ljava/lang/String;

    .line 11000
    iput-object v0, v5, Lcom/google/android/gms/internal/acb$a;->b:Ljava/lang/String;

    .line 7000
    invoke-virtual {v5}, Lcom/google/android/gms/internal/acb$a;->a()Lcom/google/android/gms/internal/acb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aca;->m:Lcom/google/android/gms/internal/acb;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16000
    :goto_4
    iput-object v8, v1, Lcom/google/android/gms/internal/ace;->b:Lcom/google/android/gms/internal/acf;

    .line 17000
    iput-object v8, v1, Lcom/google/android/gms/internal/ace;->a:Lcom/google/android/gms/internal/acc;

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/aca;->j:I

    if-ne v0, v9, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/aca;->g:Lcom/google/android/gms/internal/acf;

    iget-object v1, p0, Lcom/google/android/gms/internal/aca;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/acf;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_2
    sget-object v3, Lcom/google/android/gms/internal/aea;->a:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/internal/aca$2;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/google/android/gms/internal/aca$2;-><init>(Lcom/google/android/gms/internal/aca;Lcom/google/android/gms/internal/yb;Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/ace;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Fail to check if adapter is initialized."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/aca;->a(I)V

    goto :goto_1

    .line 7000
    :cond_3
    :try_start_3
    iget v0, p0, Lcom/google/android/gms/internal/aca;->l:I

    goto :goto_3

    :cond_4
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/aca;->a(J)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/acb$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/acb$a;-><init>()V

    iget v5, p0, Lcom/google/android/gms/internal/aca;->l:I

    .line 12000
    iput v5, v0, Lcom/google/android/gms/internal/acb$a;->c:I

    .line 7000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->k()Lcom/google/android/gms/common/util/d;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v6

    sub-long v2, v6, v2

    .line 13000
    iput-wide v2, v0, Lcom/google/android/gms/internal/acb$a;->d:J

    .line 7000
    iget-object v2, p0, Lcom/google/android/gms/internal/aca;->b:Ljava/lang/String;

    .line 14000
    iput-object v2, v0, Lcom/google/android/gms/internal/acb$a;->a:Ljava/lang/String;

    .line 7000
    iget-object v2, p0, Lcom/google/android/gms/internal/aca;->d:Lcom/google/android/gms/internal/xp;

    iget-object v2, v2, Lcom/google/android/gms/internal/xp;->d:Ljava/lang/String;

    .line 15000
    iput-object v2, v0, Lcom/google/android/gms/internal/acb$a;->b:Ljava/lang/String;

    .line 7000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/acb$a;->a()Lcom/google/android/gms/internal/acb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aca;->m:Lcom/google/android/gms/internal/acb;

    monitor-exit v4

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_5
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 0
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/aca;->g:Lcom/google/android/gms/internal/acf;

    iget v1, p0, Lcom/google/android/gms/internal/aca;->l:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/acf;->a(I)V

    goto/16 :goto_0
.end method

.method public final a(I)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/aca;->h:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Lcom/google/android/gms/internal/aca;->j:I

    iput p1, p0, Lcom/google/android/gms/internal/aca;->l:I

    iget-object v0, p0, Lcom/google/android/gms/internal/aca;->h:Ljava/lang/Object;

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

.method final a(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/yb;)V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/aca;->f:Lcom/google/android/gms/internal/ach;

    .line 19000
    iget-object v0, v0, Lcom/google/android/gms/internal/ach;->b:Lcom/google/android/gms/internal/ace;

    .line 20000
    iput-object p0, v0, Lcom/google/android/gms/internal/ace;->b:Lcom/google/android/gms/internal/acf;

    .line 0
    :try_start_0
    const-string/jumbo v0, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v1, p0, Lcom/google/android/gms/internal/aca;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aca;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/aca;->d:Lcom/google/android/gms/internal/xp;

    iget-object v1, v1, Lcom/google/android/gms/internal/xp;->a:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1}, Lcom/google/android/gms/internal/yb;->a(Lcom/google/android/gms/internal/zzec;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aca;->c:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/yb;->a(Lcom/google/android/gms/internal/zzec;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Fail to load ad from adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/aca;->a(I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/aca;->h:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/google/android/gms/internal/aca;->j:I

    iget-object v0, p0, Lcom/google/android/gms/internal/aca;->h:Ljava/lang/Object;

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

.method public final d()Lcom/google/android/gms/internal/acb;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/aca;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aca;->m:Lcom/google/android/gms/internal/acb;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/aca;->e:Lcom/google/android/gms/internal/acw$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw$a;->a:Lcom/google/android/gms/internal/zzmk;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmk;->c:Lcom/google/android/gms/internal/zzec;

    iget-object v1, p0, Lcom/google/android/gms/internal/aca;->f:Lcom/google/android/gms/internal/ach;

    .line 18000
    iget-object v1, v1, Lcom/google/android/gms/internal/ach;->a:Lcom/google/android/gms/internal/yb;

    .line 0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/aca;->a(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/yb;)V

    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/aca;->a(I)V

    return-void
.end method

.method public final g_()V
    .locals 0

    return-void
.end method
