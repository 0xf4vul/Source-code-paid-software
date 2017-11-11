.class public final Lcom/google/android/gms/internal/im;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/fe;

.field private final b:Lcom/google/android/gms/internal/bv$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/fe;Lcom/google/android/gms/internal/bv$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/im;->a:Lcom/google/android/gms/internal/fe;

    iput-object p2, p0, Lcom/google/android/gms/internal/im;->b:Lcom/google/android/gms/internal/bv$a;

    return-void
.end method

.method private a()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/im;->a:Lcom/google/android/gms/internal/fe;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/fe;->h:Ljava/util/concurrent/Future;

    .line 0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/im;->a:Lcom/google/android/gms/internal/fe;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/fe;->h:Ljava/util/concurrent/Future;

    .line 0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/im;->a:Lcom/google/android/gms/internal/fe;

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/internal/fe;->g:Lcom/google/android/gms/internal/bv$a;

    .line 0
    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/im;->b:Lcom/google/android/gms/internal/bv$a;

    monitor-enter v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/qb; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/im;->b:Lcom/google/android/gms/internal/bv$a;

    invoke-static {v0}, Lcom/google/android/gms/internal/qc;->a(Lcom/google/android/gms/internal/qc;)[B

    move-result-object v0

    .line 4000
    array-length v3, v0

    invoke-static {v2, v0, v3}, Lcom/google/android/gms/internal/qc;->a(Lcom/google/android/gms/internal/qc;[BI)Lcom/google/android/gms/internal/qc;

    .line 0
    monitor-exit v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/qb; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/im;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
