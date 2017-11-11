.class public final Lcom/google/android/gms/internal/zy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zy$b;,
        Lcom/google/android/gms/internal/zy$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/android/gms/internal/acw;",
        ">;"
    }
.end annotation


# static fields
.field static a:J


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/adq;

.field private final d:Lcom/google/android/gms/ads/internal/r;

.field private final e:Lcom/google/android/gms/internal/ej;

.field private final f:Lcom/google/android/gms/internal/zx;

.field private final g:Ljava/lang/Object;

.field private final h:Lcom/google/android/gms/internal/acw$a;

.field private final i:Lcom/google/android/gms/internal/ul;

.field private j:Z

.field private k:I

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lorg/json/JSONObject;

.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/zy;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/r;Lcom/google/android/gms/internal/adq;Lcom/google/android/gms/internal/ej;Lcom/google/android/gms/internal/acw$a;Lcom/google/android/gms/internal/ul;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zy;->g:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zy;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zy;->d:Lcom/google/android/gms/ads/internal/r;

    iput-object p3, p0, Lcom/google/android/gms/internal/zy;->c:Lcom/google/android/gms/internal/adq;

    iput-object p5, p0, Lcom/google/android/gms/internal/zy;->h:Lcom/google/android/gms/internal/acw$a;

    iput-object p4, p0, Lcom/google/android/gms/internal/zy;->e:Lcom/google/android/gms/internal/ej;

    iput-object p6, p0, Lcom/google/android/gms/internal/zy;->i:Lcom/google/android/gms/internal/ul;

    .line 1000
    new-instance v0, Lcom/google/android/gms/internal/zx;

    invoke-direct {v0, p1, p5, p2, p4}, Lcom/google/android/gms/internal/zx;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/acw$a;Lcom/google/android/gms/ads/internal/r;Lcom/google/android/gms/internal/ej;)V

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/internal/zy;->f:Lcom/google/android/gms/internal/zx;

    iget-object v0, p0, Lcom/google/android/gms/internal/zy;->f:Lcom/google/android/gms/internal/zx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zx;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zy;->j:Z

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/zy;->k:I

    iput-object v1, p0, Lcom/google/android/gms/internal/zy;->l:Ljava/util/List;

    iput-object v1, p0, Lcom/google/android/gms/internal/zy;->n:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zy;)Lcom/google/android/gms/internal/acw$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zy;->h:Lcom/google/android/gms/internal/acw$a;

    return-object v0
.end method

.method private a(Lcom/google/android/gms/internal/vb$a;)Lcom/google/android/gms/internal/acw;
    .locals 39

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zy;->g:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/internal/zy;->k:I

    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/zy;->k:I

    const/4 v4, -0x2

    if-ne v2, v4, :cond_0

    const/4 v6, 0x0

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x2

    if-eq v6, v2, :cond_1

    const/16 v30, 0x0

    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/acw;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zy;->h:Lcom/google/android/gms/internal/acw$a;

    iget-object v3, v3, Lcom/google/android/gms/internal/acw$a;->a:Lcom/google/android/gms/internal/zzmk;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzmk;->c:Lcom/google/android/gms/internal/zzec;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zy;->h:Lcom/google/android/gms/internal/acw$a;

    iget-object v5, v5, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzmn;->d:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/zy;->h:Lcom/google/android/gms/internal/acw$a;

    iget-object v7, v7, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    iget-object v7, v7, Lcom/google/android/gms/internal/zzmn;->f:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/zy;->l:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/zy;->h:Lcom/google/android/gms/internal/acw$a;

    iget-object v9, v9, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    iget v9, v9, Lcom/google/android/gms/internal/zzmn;->l:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/zy;->h:Lcom/google/android/gms/internal/acw$a;

    iget-object v10, v10, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    iget-wide v10, v10, Lcom/google/android/gms/internal/zzmn;->k:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/zy;->h:Lcom/google/android/gms/internal/acw$a;

    iget-object v12, v12, Lcom/google/android/gms/internal/acw$a;->a:Lcom/google/android/gms/internal/zzmk;

    iget-object v12, v12, Lcom/google/android/gms/internal/zzmk;->i:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zy;->h:Lcom/google/android/gms/internal/acw$a;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/gms/internal/acw$a;->d:Lcom/google/android/gms/internal/zzeg;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zy;->h:Lcom/google/android/gms/internal/acw$a;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzmn;->g:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zy;->h:Lcom/google/android/gms/internal/acw$a;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/google/android/gms/internal/acw$a;->f:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zy;->h:Lcom/google/android/gms/internal/acw$a;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/google/android/gms/internal/acw$a;->g:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zy;->h:Lcom/google/android/gms/internal/acw$a;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmn;->o:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zy;->m:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zy;->h:Lcom/google/android/gms/internal/acw$a;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmn;->F:Z

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zy;->h:Lcom/google/android/gms/internal/acw$a;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmn;->G:Lcom/google/android/gms/internal/zzmp;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zy;->h:Lcom/google/android/gms/internal/acw$a;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmn;->J:Ljava/util/List;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zy;->n:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-direct/range {v2 .. v38}, Lcom/google/android/gms/internal/acw;-><init>(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/aer;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/xp;Lcom/google/android/gms/internal/yb;Ljava/lang/String;Lcom/google/android/gms/internal/xq;Lcom/google/android/gms/internal/xs;JLcom/google/android/gms/internal/zzeg;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/vb$a;Lcom/google/android/gms/internal/zzoo;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zzmp;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v2

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_1
    move-object/from16 v30, p1

    goto/16 :goto_0
.end method

.method static a(Lcom/google/android/gms/internal/aeh;)Lcom/google/android/gms/internal/aer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/aeh",
            "<",
            "Lcom/google/android/gms/internal/aer;",
            ">;)",
            "Lcom/google/android/gms/internal/aer;"
        }
    .end annotation

    .prologue
    .line 0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ud;->cm:Lcom/google/android/gms/internal/ty;

    .line 11000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, v2}, Lcom/google/android/gms/internal/aeh;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aer;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "InterruptedException occurred while waiting for video to load"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_2
    const-string/jumbo v1, "Exception occurred while waiting for video to load"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method static synthetic a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 13000
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/uu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/uu;->a()Lcom/google/android/gms/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/a/b;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 0
    :cond_0
    return-object v1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zy;Lcom/google/android/gms/internal/vn;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 12000
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zy;->d:Lcom/google/android/gms/ads/internal/r;

    invoke-interface {p1}, Lcom/google/android/gms/internal/vn;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/r;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/vq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/vq;->a(Lcom/google/android/gms/internal/vn;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "Failed to call onCustomClick for asset "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/zy;)Lcom/google/android/gms/ads/internal/r;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zy;->d:Lcom/google/android/gms/ads/internal/r;

    return-object v0
.end method

.method private b()Lcom/google/android/gms/internal/acw;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zy;->f:Lcom/google/android/gms/internal/zx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zx;->b()V

    .line 2000
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3000
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zy;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v7, v11

    .line 4000
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zy;->a()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v7, :cond_4

    :cond_0
    move-object v3, v11

    .line 5000
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zy;->a()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v3, :cond_1

    if-nez v7, :cond_d

    :cond_1
    move-object v3, v11

    .line 6000
    :goto_2
    instance-of v2, v3, Lcom/google/android/gms/internal/ux;

    if-eqz v2, :cond_2

    move-object v0, v3

    check-cast v0, Lcom/google/android/gms/internal/ux;

    move-object v2, v0

    new-instance v4, Lcom/google/android/gms/internal/zy$b;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zy$b;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/zy$3;

    invoke-direct {v5, p0, v2}, Lcom/google/android/gms/internal/zy$3;-><init>(Lcom/google/android/gms/internal/zy;Lcom/google/android/gms/internal/ux;)V

    iput-object v5, v4, Lcom/google/android/gms/internal/zy$b;->a:Lcom/google/android/gms/internal/wb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zy;->f:Lcom/google/android/gms/internal/zx;

    new-instance v4, Lcom/google/android/gms/internal/zy$4;

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/zy$4;-><init>(Lcom/google/android/gms/internal/wb;)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zx;->a(Lcom/google/android/gms/internal/zx$a;)V

    .line 0
    :cond_2
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zy;->a(Lcom/google/android/gms/internal/vb$a;)Lcom/google/android/gms/internal/acw;

    move-result-object v2

    :goto_3
    return-object v2

    .line 3000
    :cond_3
    new-instance v2, Lcom/google/android/gms/internal/aee;

    invoke-direct {v2}, Lcom/google/android/gms/internal/aee;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/zy$b;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zy$b;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/zy$1;

    invoke-direct {v4, p0, v10, v3, v2}, Lcom/google/android/gms/internal/zy$1;-><init>(Lcom/google/android/gms/internal/zy;Ljava/lang/String;Lcom/google/android/gms/internal/zy$b;Lcom/google/android/gms/internal/aee;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zy;->f:Lcom/google/android/gms/internal/zx;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zx;->a(Lcom/google/android/gms/internal/zx$a;)V

    sget-wide v4, Lcom/google/android/gms/internal/zy;->a:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Lcom/google/android/gms/internal/aee;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    move-object v7, v2

    goto :goto_0

    .line 4000
    :cond_4
    const-string/jumbo v2, "template_id"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/google/android/gms/internal/zy;->h:Lcom/google/android/gms/internal/acw$a;

    iget-object v2, v2, Lcom/google/android/gms/internal/acw$a;->a:Lcom/google/android/gms/internal/zzmk;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmk;->y:Lcom/google/android/gms/internal/zzhc;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zy;->h:Lcom/google/android/gms/internal/acw$a;

    iget-object v2, v2, Lcom/google/android/gms/internal/acw$a;->a:Lcom/google/android/gms/internal/zzmk;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmk;->y:Lcom/google/android/gms/internal/zzhc;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzhc;->b:Z

    move v4, v2

    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zy;->h:Lcom/google/android/gms/internal/acw$a;

    iget-object v2, v2, Lcom/google/android/gms/internal/acw$a;->a:Lcom/google/android/gms/internal/zzmk;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmk;->y:Lcom/google/android/gms/internal/zzhc;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/zy;->h:Lcom/google/android/gms/internal/acw$a;

    iget-object v2, v2, Lcom/google/android/gms/internal/acw$a;->a:Lcom/google/android/gms/internal/zzmk;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmk;->y:Lcom/google/android/gms/internal/zzhc;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzhc;->d:Z

    move v3, v2

    :goto_5
    const-string/jumbo v2, "2"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lcom/google/android/gms/internal/aaa;

    invoke-direct {v2, v4, v3}, Lcom/google/android/gms/internal/aaa;-><init>(ZZ)V

    move-object v3, v2

    goto/16 :goto_1

    :cond_5
    move v4, v12

    goto :goto_4

    :cond_6
    move v3, v12

    goto :goto_5

    :cond_7
    const-string/jumbo v2, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Lcom/google/android/gms/internal/aac;

    invoke-direct {v2, v4, v3}, Lcom/google/android/gms/internal/aac;-><init>(ZZ)V

    move-object v3, v2

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v2, "3"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string/jumbo v2, "custom_template_id"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/aee;

    invoke-direct {v3}, Lcom/google/android/gms/internal/aee;-><init>()V

    sget-object v5, Lcom/google/android/gms/internal/adj;->a:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/gms/internal/zy$2;

    invoke-direct {v6, p0, v3, v2}, Lcom/google/android/gms/internal/zy$2;-><init>(Lcom/google/android/gms/internal/zy;Lcom/google/android/gms/internal/aee;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-wide v8, Lcom/google/android/gms/internal/zy;->a:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v8, v9, v2}, Lcom/google/android/gms/internal/aee;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    new-instance v2, Lcom/google/android/gms/internal/aad;

    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/aad;-><init>(Z)V

    move-object v3, v2

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v3, "No handler for custom template: "

    const-string/jumbo v2, "custom_template_id"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-static {v2}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;)V

    :goto_7
    move-object v3, v11

    goto/16 :goto_1

    :cond_a
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_6

    .line 0
    :catch_0
    move-exception v2

    :goto_8
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zy;->j:Z

    if-nez v2, :cond_b

    invoke-virtual {p0, v12}, Lcom/google/android/gms/internal/zy;->a(I)V

    :cond_b
    invoke-direct {p0, v11}, Lcom/google/android/gms/internal/zy;->a(Lcom/google/android/gms/internal/vb$a;)Lcom/google/android/gms/internal/acw;

    move-result-object v2

    goto/16 :goto_3

    .line 4000
    :cond_c
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zy;->a(I)V

    goto :goto_7

    .line 0
    :catch_1
    move-exception v2

    goto :goto_8

    .line 5000
    :cond_d
    const-string/jumbo v2, "tracking_urls_and_actions"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v2, "impression_tracking_urls"

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/zy;->c(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    move-object v2, v11

    :goto_9
    iput-object v2, p0, Lcom/google/android/gms/internal/zy;->l:Ljava/util/List;

    const-string/jumbo v2, "active_view"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zy;->m:Lorg/json/JSONObject;

    const-string/jumbo v2, "debug_signals"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zy;->n:Ljava/lang/String;

    invoke-interface {v3, p0, v7}, Lcom/google/android/gms/internal/zy$a;->a(Lcom/google/android/gms/internal/zy;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/vb$a;

    move-result-object v8

    new-instance v2, Lcom/google/android/gms/internal/vc;

    iget-object v3, p0, Lcom/google/android/gms/internal/zy;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/zy;->d:Lcom/google/android/gms/ads/internal/r;

    iget-object v5, p0, Lcom/google/android/gms/internal/zy;->f:Lcom/google/android/gms/internal/zx;

    iget-object v6, p0, Lcom/google/android/gms/internal/zy;->e:Lcom/google/android/gms/internal/ej;

    iget-object v9, p0, Lcom/google/android/gms/internal/zy;->h:Lcom/google/android/gms/internal/acw$a;

    iget-object v9, v9, Lcom/google/android/gms/internal/acw$a;->a:Lcom/google/android/gms/internal/zzmk;

    iget-object v9, v9, Lcom/google/android/gms/internal/zzmk;->k:Lcom/google/android/gms/internal/zzqh;

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/vc;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/r;Lcom/google/android/gms/internal/zx;Lcom/google/android/gms/internal/ej;Lorg/json/JSONObject;Lcom/google/android/gms/internal/vb$a;Lcom/google/android/gms/internal/zzqh;Ljava/lang/String;)V

    invoke-interface {v8, v2}, Lcom/google/android/gms/internal/vb$a;->a(Lcom/google/android/gms/internal/vb;)V

    move-object v3, v8

    goto/16 :goto_2

    :cond_e
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    goto :goto_9

    .line 0
    :catch_2
    move-exception v2

    const-string/jumbo v3, "Malformed native JSON response."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :catch_3
    move-exception v2

    const-string/jumbo v3, "Timeout when loading native ad."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :catch_4
    move-exception v2

    goto :goto_8
.end method

.method private static b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "r"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "g"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "b"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/aeh;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/aeh",
            "<",
            "Lcom/google/android/gms/internal/us;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 0
    const-string/jumbo v1, "attribution"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/aef;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/aef;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, "text"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v1, "text_size"

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    const-string/jumbo v1, "text_color"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zy;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    const-string/jumbo v1, "bg_color"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zy;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    const-string/jumbo v1, "animation_ms"

    const/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v1, "presentation_ms"

    const/16 v3, 0xfa0

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/zy;->h:Lcom/google/android/gms/internal/acw$a;

    iget-object v1, v1, Lcom/google/android/gms/internal/acw$a;->a:Lcom/google/android/gms/internal/zzmk;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzmk;->y:Lcom/google/android/gms/internal/zzhc;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/zy;->h:Lcom/google/android/gms/internal/acw$a;

    iget-object v1, v1, Lcom/google/android/gms/internal/acw$a;->a:Lcom/google/android/gms/internal/zzmk;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzmk;->y:Lcom/google/android/gms/internal/zzhc;

    iget v1, v1, Lcom/google/android/gms/internal/zzhc;->a:I

    const/4 v3, 0x2

    if-lt v1, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/zy;->h:Lcom/google/android/gms/internal/acw$a;

    iget-object v1, v1, Lcom/google/android/gms/internal/acw$a;->a:Lcom/google/android/gms/internal/zzmk;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzmk;->y:Lcom/google/android/gms/internal/zzhc;

    iget v8, v1, Lcom/google/android/gms/internal/zzhc;->e:I

    :goto_1
    const-string/jumbo v1, "allow_pub_rendering"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v3, "images"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "images"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zy;->a(Lorg/json/JSONObject;Ljava/lang/String;ZZZ)Ljava/util/List;

    move-result-object v1

    :goto_2
    invoke-static {v1}, Lcom/google/android/gms/internal/aeg;->a(Ljava/util/List;)Lcom/google/android/gms/internal/aeh;

    move-result-object v15

    new-instance v1, Lcom/google/android/gms/internal/zy$5;

    move-object v2, v10

    move-object v3, v13

    move-object v4, v12

    move v5, v11

    move v6, v14

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/zy$5;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;IIIIZ)V

    .line 7000
    new-instance v2, Lcom/google/android/gms/internal/aee;

    invoke-direct {v2}, Lcom/google/android/gms/internal/aee;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/aeg$1;

    invoke-direct {v3, v2, v1, v15}, Lcom/google/android/gms/internal/aeg$1;-><init>(Lcom/google/android/gms/internal/aee;Lcom/google/android/gms/internal/aeg$a;Lcom/google/android/gms/internal/aeh;)V

    invoke-interface {v15, v3}, Lcom/google/android/gms/internal/aeh;->a(Ljava/lang/Runnable;)V

    move-object v1, v2

    .line 0
    goto/16 :goto_0

    :cond_1
    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v3, "image"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zy;->a(Lorg/json/JSONObject;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/aeh;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public final a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/aeh;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/aeh",
            "<",
            "Lcom/google/android/gms/internal/aer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/aef;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/aef;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "vast_xml"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Required field \'vast_xml\' is missing"

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/aef;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/aef;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zy;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zy;->e:Lcom/google/android/gms/internal/ej;

    iget-object v3, p0, Lcom/google/android/gms/internal/zy;->h:Lcom/google/android/gms/internal/acw$a;

    iget-object v4, p0, Lcom/google/android/gms/internal/zy;->i:Lcom/google/android/gms/internal/ul;

    iget-object v5, p0, Lcom/google/android/gms/internal/zy;->d:Lcom/google/android/gms/ads/internal/r;

    .line 9000
    new-instance v0, Lcom/google/android/gms/internal/zz;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zz;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ej;Lcom/google/android/gms/internal/acw$a;Lcom/google/android/gms/internal/ul;Lcom/google/android/gms/ads/internal/r;)V

    .line 10000
    new-instance v1, Lcom/google/android/gms/internal/aee;

    invoke-direct {v1}, Lcom/google/android/gms/internal/aee;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    new-instance v2, Lcom/google/android/gms/internal/zz$1;

    invoke-direct {v2, v0, v6, v1}, Lcom/google/android/gms/internal/zz$1;-><init>(Lcom/google/android/gms/internal/zz;Lorg/json/JSONObject;Lcom/google/android/gms/internal/aee;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/adj;->a(Ljava/lang/Runnable;)V

    move-object v0, v1

    .line 0
    goto :goto_0
.end method

.method public final a(Lorg/json/JSONObject;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/aeh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/google/android/gms/internal/aeh",
            "<",
            "Lcom/google/android/gms/internal/uu;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p3, :cond_1

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    invoke-virtual {p0, v0, p3, p4}, Lcom/google/android/gms/internal/zy;->a(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/aeh;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method final a(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/aeh;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "ZZ)",
            "Lcom/google/android/gms/internal/aeh",
            "<",
            "Lcom/google/android/gms/internal/uu;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 0
    if-eqz p2, :cond_0

    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_0
    const-string/jumbo v0, "scale"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    const-string/jumbo v0, "is_transparent"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v8, p2}, Lcom/google/android/gms/internal/zy;->a(IZ)V

    new-instance v0, Lcom/google/android/gms/internal/aef;

    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/aef;-><init>(Ljava/lang/Object;)V

    :goto_1
    return-object v0

    :cond_0
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/aef;

    new-instance v1, Lcom/google/android/gms/internal/uu;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v9, v2, v4, v5}, Lcom/google/android/gms/internal/uu;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/aef;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/zy$6;

    move-object v2, p0

    move v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zy$6;-><init>(Lcom/google/android/gms/internal/zy;ZDZLjava/lang/String;)V

    .line 8000
    new-instance v0, Lcom/google/android/gms/internal/adq$c;

    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/adq$c;-><init>(B)V

    sget-object v2, Lcom/google/android/gms/internal/adq;->a:Lcom/google/android/gms/internal/aab;

    new-instance v3, Lcom/google/android/gms/internal/adq$b;

    invoke-direct {v3, v7, v1, v0}, Lcom/google/android/gms/internal/adq$b;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/adq$a;Lcom/google/android/gms/internal/aaw$b;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/aab;->a(Lcom/google/android/gms/internal/za;)Lcom/google/android/gms/internal/za;

    goto :goto_1
.end method

.method public final a(Lorg/json/JSONObject;Ljava/lang/String;ZZZ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "ZZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/aeh",
            "<",
            "Lcom/google/android/gms/internal/uu;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {p0, v2, p3}, Lcom/google/android/gms/internal/zy;->a(IZ)V

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_4

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_2
    move v4, v2

    :goto_3
    if-ge v4, v1, :cond_5

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :cond_3
    invoke-virtual {p0, v2, p3, p4}, Lcom/google/android/gms/internal/zy;->a(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/aeh;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_3

    :cond_4
    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    move-object v0, v3

    goto :goto_1
.end method

.method public final a(I)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zy;->g:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zy;->j:Z

    iput p1, p0, Lcom/google/android/gms/internal/zy;->k:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zy;->a(I)V

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zy;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zy;->j:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zy;->b()Lcom/google/android/gms/internal/acw;

    move-result-object v0

    return-object v0
.end method
