.class final Lcom/google/android/gms/internal/xw$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/xw;->a(Ljava/util/List;)Lcom/google/android/gms/internal/xu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/android/gms/internal/xu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/xt;

.field final synthetic b:Lcom/google/android/gms/internal/xw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/xw;Lcom/google/android/gms/internal/xt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/xw$1;->b:Lcom/google/android/gms/internal/xw;

    iput-object p2, p0, Lcom/google/android/gms/internal/xw$1;->a:Lcom/google/android/gms/internal/xt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Lcom/google/android/gms/internal/xu;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/xw$1;->b:Lcom/google/android/gms/internal/xw;

    .line 1000
    iget-object v1, v0, Lcom/google/android/gms/internal/xw;->c:Ljava/lang/Object;

    .line 0
    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/xw$1;->b:Lcom/google/android/gms/internal/xw;

    .line 2000
    iget-boolean v0, v0, Lcom/google/android/gms/internal/xw;->d:Z

    .line 0
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xw$1;->a:Lcom/google/android/gms/internal/xt;

    iget-object v1, p0, Lcom/google/android/gms/internal/xw$1;->b:Lcom/google/android/gms/internal/xw;

    .line 3000
    iget-wide v2, v1, Lcom/google/android/gms/internal/xw;->a:J

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/xw$1;->b:Lcom/google/android/gms/internal/xw;

    .line 4000
    iget-wide v4, v1, Lcom/google/android/gms/internal/xw;->b:J

    .line 0
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/xt;->a(JJ)Lcom/google/android/gms/internal/xu;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/xw$1;->a()Lcom/google/android/gms/internal/xu;

    move-result-object v0

    return-object v0
.end method
