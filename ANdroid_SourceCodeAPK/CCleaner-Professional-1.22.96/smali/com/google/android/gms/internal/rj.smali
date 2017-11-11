.class public final Lcom/google/android/gms/internal/rj;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/rj$a;,
        Lcom/google/android/gms/internal/rj$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lcom/google/android/gms/internal/rj$a;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/rj;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/rj;->b:Lcom/google/android/gms/internal/rj$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/rj;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/rj;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 4000
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/rj;->b:Lcom/google/android/gms/internal/rj$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/rj;->b:Lcom/google/android/gms/internal/rj$a;

    .line 5000
    iget-object v0, v0, Lcom/google/android/gms/internal/rj$a;->a:Landroid/app/Activity;

    .line 0
    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/rj$b;)V
    .locals 3

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/rj;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1000
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ud;->aJ:Lcom/google/android/gms/internal/ty;

    .line 2000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/rj;->b:Lcom/google/android/gms/internal/rj$a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/rj$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/rj$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/rj;->b:Lcom/google/android/gms/internal/rj$a;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/rj;->b:Lcom/google/android/gms/internal/rj$a;

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/internal/rj$a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()Landroid/content/Context;
    .locals 2

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/rj;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 6000
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/rj;->b:Lcom/google/android/gms/internal/rj$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/rj;->b:Lcom/google/android/gms/internal/rj$a;

    .line 7000
    iget-object v0, v0, Lcom/google/android/gms/internal/rj$a;->b:Landroid/content/Context;

    .line 0
    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
