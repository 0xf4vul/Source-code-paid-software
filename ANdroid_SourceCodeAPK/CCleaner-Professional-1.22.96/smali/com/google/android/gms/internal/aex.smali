.class public final Lcom/google/android/gms/internal/aex;
.super Lcom/google/android/gms/internal/te$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field b:I

.field c:Z

.field d:F

.field e:F

.field private final f:Lcom/google/android/gms/internal/aer;

.field private final g:F

.field private h:Lcom/google/android/gms/internal/tf;

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/aer;F)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/te$a;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aex;->a:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aex;->j:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/aex;->f:Lcom/google/android/gms/internal/aer;

    iput p2, p0, Lcom/google/android/gms/internal/aex;->g:F

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/aex;)Lcom/google/android/gms/internal/aer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aex;->f:Lcom/google/android/gms/internal/aer;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    const-string/jumbo v1, "action"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    new-instance v1, Lcom/google/android/gms/internal/aex$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/aex$1;-><init>(Lcom/google/android/gms/internal/aex;Ljava/util/Map;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/adj;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/aex;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/aex;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/aex;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aex;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/aex;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/aex;->i:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/aex;)Lcom/google/android/gms/internal/tf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aex;->h:Lcom/google/android/gms/internal/tf;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 0
    const-string/jumbo v0, "play"

    .line 1000
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/aex;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/tf;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/aex;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/aex;->h:Lcom/google/android/gms/internal/tf;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 0
    if-eqz p1, :cond_0

    const-string/jumbo v0, "mute"

    .line 3000
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/aex;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 0
    return-void

    :cond_0
    const-string/jumbo v0, "unmute"

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 0
    const-string/jumbo v0, "pause"

    .line 2000
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/aex;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 0
    return-void
.end method

.method public final b(Z)V
    .locals 3

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/aex;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/aex;->j:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v1, "initialState"

    const-string/jumbo v2, "muteStart"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "1"

    .line 4000
    :goto_0
    invoke-static {v2, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 0
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/aex;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/aex;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/aex;->c:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d()I
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/aex;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/aex;->b:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final e()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/aex;->g:F

    return v0
.end method

.method public final f()F
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/aex;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/aex;->d:F

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final g()F
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/aex;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/aex;->e:F

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
