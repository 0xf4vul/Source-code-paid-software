.class public final Lcom/google/android/gms/internal/aak$b;
.super Lcom/google/android/gms/internal/aak;

# interfaces
.implements Lcom/google/android/gms/common/internal/n$b;
.implements Lcom/google/android/gms/common/internal/n$c;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/aak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field protected a:Lcom/google/android/gms/internal/aal;

.field private b:Landroid/content/Context;

.field private c:Lcom/google/android/gms/internal/zzqh;

.field private d:Lcom/google/android/gms/internal/aek;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/aek",
            "<",
            "Lcom/google/android/gms/internal/zzmk;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/internal/aaj$a;

.field private final f:Ljava/lang/Object;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/aek;Lcom/google/android/gms/internal/aaj$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzqh;",
            "Lcom/google/android/gms/internal/aek",
            "<",
            "Lcom/google/android/gms/internal/zzmk;",
            ">;",
            "Lcom/google/android/gms/internal/aaj$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 0
    invoke-direct {p0, p3, p4}, Lcom/google/android/gms/internal/aak;-><init>(Lcom/google/android/gms/internal/aek;Lcom/google/android/gms/internal/aaj$a;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aak$b;->f:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/aak$b;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/aak$b;->c:Lcom/google/android/gms/internal/zzqh;

    iput-object p3, p0, Lcom/google/android/gms/internal/aak$b;->d:Lcom/google/android/gms/internal/aek;

    iput-object p4, p0, Lcom/google/android/gms/internal/aak$b;->e:Lcom/google/android/gms/internal/aaj$a;

    sget-object v0, Lcom/google/android/gms/internal/ud;->N:Lcom/google/android/gms/internal/ty;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aak$b;->g:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->u()Lcom/google/android/gms/internal/adr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/adr;->a()Landroid/os/Looper;

    move-result-object v2

    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/aal;

    iget-object v1, p0, Lcom/google/android/gms/internal/aak$b;->c:Lcom/google/android/gms/internal/zzqh;

    iget v5, v1, Lcom/google/android/gms/internal/zzqh;->c:I

    move-object v1, p1

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/aal;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/n$b;Lcom/google/android/gms/common/internal/n$c;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/aak$b;->a:Lcom/google/android/gms/internal/aal;

    .line 2000
    iget-object v0, p0, Lcom/google/android/gms/internal/aak$b;->a:Lcom/google/android/gms/internal/aal;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aal;->j_()V

    .line 0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aak;->c()Ljava/lang/Object;

    return-void
.end method

.method public final a(I)V
    .locals 1

    const-string/jumbo v0, "Disconnected from remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 5

    .prologue
    .line 0
    const-string/jumbo v0, "Cannot connect to remote service, fallback to local instance."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;)V

    .line 3000
    new-instance v0, Lcom/google/android/gms/internal/aak$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/aak$b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/aak$b;->d:Lcom/google/android/gms/internal/aek;

    iget-object v3, p0, Lcom/google/android/gms/internal/aak$b;->e:Lcom/google/android/gms/internal/aaj$a;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/aak$a;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/aek;Lcom/google/android/gms/internal/aaj$a;)V

    .line 0
    invoke-interface {v0}, Lcom/google/android/gms/internal/adl;->c()Ljava/lang/Object;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "action"

    const-string/jumbo v2, "gms_connection_failed_fallback_to_local"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    iget-object v1, p0, Lcom/google/android/gms/internal/aak$b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/aak$b;->c:Lcom/google/android/gms/internal/zzqh;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzqh;->a:Ljava/lang/String;

    const-string/jumbo v3, "gmob-apps"

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/adj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/aak$b;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aak$b;->a:Lcom/google/android/gms/internal/aal;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aal;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aak$b;->a:Lcom/google/android/gms/internal/aal;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aal;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aak$b;->a:Lcom/google/android/gms/internal/aal;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aal;->a()V

    :cond_1
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/aak$b;->g:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->u()Lcom/google/android/gms/internal/adr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/adr;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aak$b;->g:Z

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final e()Lcom/google/android/gms/internal/aar;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/aak$b;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aak$b;->a:Lcom/google/android/gms/internal/aal;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aal;->p()Lcom/google/android/gms/internal/aar;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    monitor-exit v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
