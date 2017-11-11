.class public final Lcom/google/android/gms/internal/fl;
.super Lcom/google/android/gms/internal/qo;


# static fields
.field private static volatile i:Lcom/google/android/gms/internal/by;

.field private static final j:Ljava/lang/Object;


# instance fields
.field private k:Lcom/google/android/gms/internal/bs$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/fl;->i:Lcom/google/android/gms/internal/by;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fl;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/fe;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bv$a;ILcom/google/android/gms/internal/bs$a;)V
    .locals 7

    const/16 v6, 0x1b

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/qo;-><init>(Lcom/google/android/gms/internal/fe;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bv$a;II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/fl;->k:Lcom/google/android/gms/internal/bs$a;

    iput-object p6, p0, Lcom/google/android/gms/internal/fl;->k:Lcom/google/android/gms/internal/bs$a;

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/bs$a;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bs$a;->b:Lcom/google/android/gms/internal/bs$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bs$a;->b:Lcom/google/android/gms/internal/bs$c;

    iget-object v0, v0, Lcom/google/android/gms/internal/bs$c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/fg;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bs$a;->b:Lcom/google/android/gms/internal/bs$c;

    iget-object v0, v0, Lcom/google/android/gms/internal/bs$c;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->b:Lcom/google/android/gms/internal/fe;

    .line 9000
    iget-object v0, v0, Lcom/google/android/gms/internal/fe;->h:Ljava/util/concurrent/Future;

    .line 0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->b:Lcom/google/android/gms/internal/fe;

    .line 10000
    iget-object v0, v0, Lcom/google/android/gms/internal/fe;->h:Ljava/util/concurrent/Future;

    .line 0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->b:Lcom/google/android/gms/internal/fe;

    .line 11000
    iget-object v0, v0, Lcom/google/android/gms/internal/fe;->g:Lcom/google/android/gms/internal/bv$a;

    .line 0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/bv$a;->w:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/internal/bv$a;->w:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected final a()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1000
    sget-object v0, Lcom/google/android/gms/internal/fl;->i:Lcom/google/android/gms/internal/by;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/fl;->i:Lcom/google/android/gms/internal/by;

    iget-object v0, v0, Lcom/google/android/gms/internal/by;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/fg;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/fl;->i:Lcom/google/android/gms/internal/by;

    iget-object v0, v0, Lcom/google/android/gms/internal/by;->a:Ljava/lang/String;

    const-string/jumbo v3, "E"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    move v0, v1

    .line 0
    :goto_0
    if-eqz v0, :cond_4

    sget-object v6, Lcom/google/android/gms/internal/fl;->j:Ljava/lang/Object;

    monitor-enter v6

    .line 2000
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->k:Lcom/google/android/gms/internal/bs$a;

    invoke-static {v0}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/internal/bs$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/fg;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x4

    move v3, v0

    .line 0
    :goto_1
    if-ne v3, v4, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->b:Lcom/google/android/gms/internal/fe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fe;->f()V

    .line 8000
    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/internal/fl;->f:Ljava/lang/reflect/Method;

    const/4 v7, 0x0

    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v9, p0, Lcom/google/android/gms/internal/fl;->b:Lcom/google/android/gms/internal/fe;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/fe;->a()Landroid/content/Context;

    move-result-object v9

    aput-object v9, v8, v0

    const/4 v9, 0x1

    if-ne v3, v5, :cond_b

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v8, v9

    invoke-virtual {v4, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/by;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/by;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/internal/fl;->i:Lcom/google/android/gms/internal/by;

    iget-object v0, v1, Lcom/google/android/gms/internal/by;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/fg;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/fl;->i:Lcom/google/android/gms/internal/by;

    iget-object v0, v0, Lcom/google/android/gms/internal/by;->a:Ljava/lang/String;

    const-string/jumbo v1, "E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    packed-switch v3, :pswitch_data_0

    .line 0
    :cond_3
    :goto_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/fl;->e:Lcom/google/android/gms/internal/bv$a;

    monitor-enter v1

    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/fl;->i:Lcom/google/android/gms/internal/by;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->e:Lcom/google/android/gms/internal/bv$a;

    sget-object v2, Lcom/google/android/gms/internal/fl;->i:Lcom/google/android/gms/internal/by;

    iget-object v2, v2, Lcom/google/android/gms/internal/by;->a:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/bv$a;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->e:Lcom/google/android/gms/internal/bv$a;

    sget-object v2, Lcom/google/android/gms/internal/fl;->i:Lcom/google/android/gms/internal/by;

    iget-wide v2, v2, Lcom/google/android/gms/internal/by;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/bv$a;->C:Ljava/lang/Long;

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->e:Lcom/google/android/gms/internal/bv$a;

    sget-object v2, Lcom/google/android/gms/internal/fl;->i:Lcom/google/android/gms/internal/by;

    iget-object v2, v2, Lcom/google/android/gms/internal/by;->c:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/bv$a;->B:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->e:Lcom/google/android/gms/internal/bv$a;

    sget-object v2, Lcom/google/android/gms/internal/fl;->i:Lcom/google/android/gms/internal/by;

    iget-object v2, v2, Lcom/google/android/gms/internal/by;->d:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/bv$a;->M:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->e:Lcom/google/android/gms/internal/bv$a;

    sget-object v2, Lcom/google/android/gms/internal/fl;->i:Lcom/google/android/gms/internal/by;

    iget-object v2, v2, Lcom/google/android/gms/internal/by;->e:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/bv$a;->N:Ljava/lang/String;

    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_6
    move v0, v2

    .line 1000
    goto/16 :goto_0

    .line 2000
    :cond_7
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->k:Lcom/google/android/gms/internal/bs$a;

    .line 3000
    invoke-static {v0}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/internal/bs$a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/fg;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v0, :cond_8

    iget-object v3, v0, Lcom/google/android/gms/internal/bs$a;->a:Lcom/google/android/gms/internal/bs$b;

    if-eqz v3, :cond_8

    iget-object v0, v0, Lcom/google/android/gms/internal/bs$a;->a:Lcom/google/android/gms/internal/bs$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/bs$b;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_8

    move v0, v1

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2000
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4000
    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->b:Lcom/google/android/gms/internal/fe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fe;->e()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/android/gms/internal/ud;->bQ:Lcom/google/android/gms/internal/ty;

    .line 5000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 4000
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/android/gms/internal/ud;->bR:Lcom/google/android/gms/internal/ty;

    .line 6000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 4000
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/android/gms/internal/ud;->bP:Lcom/google/android/gms/internal/ty;

    .line 7000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 4000
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 2000
    :goto_5
    if-eqz v0, :cond_a

    move v3, v4

    goto/16 :goto_1

    :cond_8
    move v0, v2

    .line 3000
    goto :goto_4

    :cond_9
    move v0, v2

    .line 4000
    goto :goto_5

    :cond_a
    move v3, v5

    .line 2000
    goto/16 :goto_1

    :cond_b
    move v0, v2

    .line 8000
    goto/16 :goto_2

    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/fl;->i:Lcom/google/android/gms/internal/by;

    iget-object v1, p0, Lcom/google/android/gms/internal/fl;->k:Lcom/google/android/gms/internal/bs$a;

    iget-object v1, v1, Lcom/google/android/gms/internal/bs$a;->b:Lcom/google/android/gms/internal/bs$c;

    iget-object v1, v1, Lcom/google/android/gms/internal/bs$c;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/by;->a:Ljava/lang/String;

    goto/16 :goto_3

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 8000
    :pswitch_1
    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/fl;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/fg;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/fl;->i:Lcom/google/android/gms/internal/by;

    iput-object v0, v1, Lcom/google/android/gms/internal/by;->a:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 0
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 8000
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
