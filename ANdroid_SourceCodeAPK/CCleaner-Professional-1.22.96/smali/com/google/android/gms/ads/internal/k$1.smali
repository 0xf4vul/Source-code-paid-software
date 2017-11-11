.class final Lcom/google/android/gms/ads/internal/k$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/k;->a(Lcom/google/android/gms/internal/zzec;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/zzec;

.field final synthetic b:Lcom/google/android/gms/ads/internal/k;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/k;Lcom/google/android/gms/internal/zzec;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/k$1;->b:Lcom/google/android/gms/ads/internal/k;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/k$1;->a:Lcom/google/android/gms/internal/zzec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k$1;->b:Lcom/google/android/gms/ads/internal/k;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/k;->a(Lcom/google/android/gms/ads/internal/k;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/google/android/gms/ads/internal/k$1;->b:Lcom/google/android/gms/ads/internal/k;

    .line 1000
    new-instance v0, Lcom/google/android/gms/ads/internal/r;

    iget-object v1, v6, Lcom/google/android/gms/ads/internal/k;->a:Landroid/content/Context;

    iget-object v2, v6, Lcom/google/android/gms/ads/internal/k;->e:Lcom/google/android/gms/ads/internal/e;

    invoke-static {}, Lcom/google/android/gms/internal/zzeg;->a()Lcom/google/android/gms/internal/zzeg;

    move-result-object v3

    iget-object v4, v6, Lcom/google/android/gms/ads/internal/k;->c:Ljava/lang/String;

    iget-object v5, v6, Lcom/google/android/gms/ads/internal/k;->b:Lcom/google/android/gms/internal/ya;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/k;->d:Lcom/google/android/gms/internal/zzqh;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/r;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/e;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/ya;Lcom/google/android/gms/internal/zzqh;)V

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/k$1;->b:Lcom/google/android/gms/ads/internal/k;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/ads/internal/k;->a(Lcom/google/android/gms/ads/internal/k;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/k$1;->b:Lcom/google/android/gms/ads/internal/k;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/k;->b(Lcom/google/android/gms/ads/internal/k;)Lcom/google/android/gms/internal/vo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/r;->a(Lcom/google/android/gms/internal/vo;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/k$1;->b:Lcom/google/android/gms/ads/internal/k;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/k;->c(Lcom/google/android/gms/ads/internal/k;)Lcom/google/android/gms/internal/vp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/r;->a(Lcom/google/android/gms/internal/vp;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/k$1;->b:Lcom/google/android/gms/ads/internal/k;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/k;->d(Lcom/google/android/gms/ads/internal/k;)Landroid/support/v4/h/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/r;->a(Landroid/support/v4/h/k;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/k$1;->b:Lcom/google/android/gms/ads/internal/k;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/k;->e(Lcom/google/android/gms/ads/internal/k;)Lcom/google/android/gms/internal/ss;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/r;->a(Lcom/google/android/gms/internal/ss;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/k$1;->b:Lcom/google/android/gms/ads/internal/k;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/k;->f(Lcom/google/android/gms/ads/internal/k;)Landroid/support/v4/h/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/r;->b(Landroid/support/v4/h/k;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/k$1;->b:Lcom/google/android/gms/ads/internal/k;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/k;->g(Lcom/google/android/gms/ads/internal/k;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/r;->a(Ljava/util/List;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/k$1;->b:Lcom/google/android/gms/ads/internal/k;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/k;->h(Lcom/google/android/gms/ads/internal/k;)Lcom/google/android/gms/internal/zzhc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/r;->a(Lcom/google/android/gms/internal/zzhc;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/k$1;->b:Lcom/google/android/gms/ads/internal/k;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/k;->i(Lcom/google/android/gms/ads/internal/k;)Lcom/google/android/gms/internal/ta;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/r;->a(Lcom/google/android/gms/internal/ta;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/k$1;->a:Lcom/google/android/gms/internal/zzec;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/r;->a(Lcom/google/android/gms/internal/zzec;)Z

    monitor-exit v7

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
