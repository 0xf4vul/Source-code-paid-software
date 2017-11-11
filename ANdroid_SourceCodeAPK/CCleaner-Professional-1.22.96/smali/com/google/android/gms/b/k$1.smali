.class final Lcom/google/android/gms/b/k$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/b/k;->a(Lcom/google/android/gms/b/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/e;

.field final synthetic b:Lcom/google/android/gms/b/k;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/k;Lcom/google/android/gms/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/k$1;->b:Lcom/google/android/gms/b/k;

    iput-object p2, p0, Lcom/google/android/gms/b/k$1;->a:Lcom/google/android/gms/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/b/k$1;->b:Lcom/google/android/gms/b/k;

    .line 1000
    iget-object v1, v0, Lcom/google/android/gms/b/k;->a:Ljava/lang/Object;

    .line 0
    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/k$1;->b:Lcom/google/android/gms/b/k;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/b/k;->b:Lcom/google/android/gms/b/c;

    .line 0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/k$1;->b:Lcom/google/android/gms/b/k;

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/b/k;->b:Lcom/google/android/gms/b/c;

    .line 0
    iget-object v2, p0, Lcom/google/android/gms/b/k$1;->a:Lcom/google/android/gms/b/e;

    invoke-virtual {v2}, Lcom/google/android/gms/b/e;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/b/c;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
