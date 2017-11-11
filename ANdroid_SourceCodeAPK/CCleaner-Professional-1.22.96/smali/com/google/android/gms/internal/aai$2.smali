.class final Lcom/google/android/gms/internal/aai$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/aai;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/aek;

.field final synthetic b:Lcom/google/android/gms/internal/aai;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aai;Lcom/google/android/gms/internal/aek;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aai$2;->b:Lcom/google/android/gms/internal/aai;

    iput-object p2, p0, Lcom/google/android/gms/internal/aai$2;->a:Lcom/google/android/gms/internal/aek;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/aai$2;->b:Lcom/google/android/gms/internal/aai;

    .line 1000
    iget-object v1, v0, Lcom/google/android/gms/internal/aai;->b:Ljava/lang/Object;

    .line 0
    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/aai$2;->b:Lcom/google/android/gms/internal/aai;

    iget-object v3, p0, Lcom/google/android/gms/internal/aai$2;->b:Lcom/google/android/gms/internal/aai;

    iget-object v0, p0, Lcom/google/android/gms/internal/aai$2;->b:Lcom/google/android/gms/internal/aai;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/aai;->a:Lcom/google/android/gms/internal/zzmk$a;

    .line 0
    iget-object v4, v0, Lcom/google/android/gms/internal/zzmk$a;->j:Lcom/google/android/gms/internal/zzqh;

    iget-object v5, p0, Lcom/google/android/gms/internal/aai$2;->a:Lcom/google/android/gms/internal/aek;

    .line 3000
    iget-object v6, v3, Lcom/google/android/gms/internal/aai;->c:Landroid/content/Context;

    .line 4000
    new-instance v0, Lcom/google/android/gms/internal/aaj$1;

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/aaj$1;-><init>(Landroid/content/Context;)V

    .line 5000
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/aaj$b;->a(Lcom/google/android/gms/internal/zzqh;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6000
    const-string/jumbo v0, "Fetching ad response from local ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/aak$a;

    invoke-direct {v0, v6, v5, v3}, Lcom/google/android/gms/internal/aak$a;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/aek;Lcom/google/android/gms/internal/aaj$a;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aak;->c()Ljava/lang/Object;

    .line 0
    :goto_0
    iput-object v0, v2, Lcom/google/android/gms/internal/aai;->e:Lcom/google/android/gms/internal/adl;

    iget-object v0, p0, Lcom/google/android/gms/internal/aai$2;->b:Lcom/google/android/gms/internal/aai;

    iget-object v0, v0, Lcom/google/android/gms/internal/aai;->e:Lcom/google/android/gms/internal/adl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aai$2;->b:Lcom/google/android/gms/internal/aai;

    const-string/jumbo v2, "Could not start the ad request service."

    .line 8000
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/aai;->a(ILjava/lang/String;)V

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/adj;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/aai$2;->b:Lcom/google/android/gms/internal/aai;

    .line 9000
    iget-object v2, v2, Lcom/google/android/gms/internal/aai;->d:Ljava/lang/Runnable;

    .line 0
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    monitor-exit v1

    return-void

    .line 7000
    :cond_1
    const-string/jumbo v0, "Fetching ad response from remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    invoke-static {v6}, Lcom/google/android/gms/internal/aea;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "Failed to connect to remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/aak$b;

    invoke-direct {v0, v6, v4, v5, v3}, Lcom/google/android/gms/internal/aak$b;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/aek;Lcom/google/android/gms/internal/aaj$a;)V

    goto :goto_0

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
