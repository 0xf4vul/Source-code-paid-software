.class public final Lcom/google/android/gms/internal/hm;
.super Lcom/google/android/gms/internal/qo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/fe;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bv$a;I)V
    .locals 7

    const/16 v6, 0x18

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/qo;-><init>(Lcom/google/android/gms/internal/fe;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bv$a;II)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/hm;->b:Lcom/google/android/gms/internal/fe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fe;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/hm;->b:Lcom/google/android/gms/internal/fe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fe;->g()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getInfo()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/fg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/hm;->e:Lcom/google/android/gms/internal/bv$a;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/internal/hm;->e:Lcom/google/android/gms/internal/bv$a;

    iput-object v1, v3, Lcom/google/android/gms/internal/bv$a;->aa:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/hm;->e:Lcom/google/android/gms/internal/bv$a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/bv$a;->ac:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/internal/hm;->e:Lcom/google/android/gms/internal/bv$a;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/bv$a;->ab:Ljava/lang/Integer;

    monitor-exit v2

    .line 2000
    :cond_0
    :goto_0
    return-void

    .line 1000
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 2000
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/hm;->e:Lcom/google/android/gms/internal/bv$a;

    monitor-enter v1

    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/internal/hm;->e:Lcom/google/android/gms/internal/bv$a;

    iget-object v0, p0, Lcom/google/android/gms/internal/hm;->f:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/hm;->b:Lcom/google/android/gms/internal/fe;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/fe;->b()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/internal/bv$a;->aa:Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
