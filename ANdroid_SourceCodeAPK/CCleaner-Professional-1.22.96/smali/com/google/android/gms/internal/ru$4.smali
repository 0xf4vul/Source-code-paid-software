.class final Lcom/google/android/gms/internal/ru$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/n$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ru;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ru;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ru;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ru$4;->a:Lcom/google/android/gms/internal/ru;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ru$4;->a:Lcom/google/android/gms/internal/ru;

    .line 1000
    iget-object v1, v0, Lcom/google/android/gms/internal/ru;->b:Ljava/lang/Object;

    .line 0
    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ru$4;->a:Lcom/google/android/gms/internal/ru;

    .line 2000
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/internal/ru;->d:Lcom/google/android/gms/internal/rz;

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ru$4;->a:Lcom/google/android/gms/internal/ru;

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/internal/ru;->c:Lcom/google/android/gms/internal/rw;

    .line 0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ru$4;->a:Lcom/google/android/gms/internal/ru;

    .line 4000
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/internal/ru;->c:Lcom/google/android/gms/internal/rw;

    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->u()Lcom/google/android/gms/internal/adr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/adr;->b()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ru$4;->a:Lcom/google/android/gms/internal/ru;

    .line 5000
    iget-object v0, v0, Lcom/google/android/gms/internal/ru;->b:Ljava/lang/Object;

    .line 0
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
