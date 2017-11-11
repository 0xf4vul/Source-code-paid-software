.class public final Lcom/google/android/gms/internal/acz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/adh$b;
.implements Lcom/google/android/gms/internal/rj$b;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# instance fields
.field private A:Z

.field private B:Ljava/lang/String;

.field private C:J

.field private D:J

.field private E:J

.field private F:I

.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/String;

.field public c:Lcom/google/android/gms/internal/qx;

.field public final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/acx;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/adc;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/lang/Boolean;

.field public g:Z

.field public h:Z

.field final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final j:Lcom/google/android/gms/internal/ada;

.field private k:Ljava/math/BigInteger;

.field private l:Z

.field private m:Z

.field private n:I

.field private o:Z

.field private p:Landroid/content/Context;

.field private q:Lcom/google/android/gms/internal/zzqh;

.field private r:Lcom/google/android/gms/internal/uf;

.field private s:Z

.field private t:Z

.field private u:Lcom/google/android/gms/internal/rk;

.field private v:Lcom/google/android/gms/internal/ri;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/acz;->a:Ljava/lang/Object;

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/android/gms/internal/acz;->k:Ljava/math/BigInteger;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/acz;->d:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/acz;->e:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/acz;->l:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/acz;->m:Z

    iput v1, p0, Lcom/google/android/gms/internal/acz;->n:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/acz;->o:Z

    iput-object v2, p0, Lcom/google/android/gms/internal/acz;->r:Lcom/google/android/gms/internal/uf;

    iput-boolean v3, p0, Lcom/google/android/gms/internal/acz;->s:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/acz;->t:Z

    iput-object v2, p0, Lcom/google/android/gms/internal/acz;->u:Lcom/google/android/gms/internal/rk;

    iput-object v2, p0, Lcom/google/android/gms/internal/acz;->v:Lcom/google/android/gms/internal/ri;

    iput-object v2, p0, Lcom/google/android/gms/internal/acz;->f:Ljava/lang/Boolean;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/acz;->g:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/acz;->z:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/acz;->A:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/acz;->h:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/acz;->B:Ljava/lang/String;

    iput-wide v4, p0, Lcom/google/android/gms/internal/acz;->C:J

    iput-wide v4, p0, Lcom/google/android/gms/internal/acz;->D:J

    iput-wide v4, p0, Lcom/google/android/gms/internal/acz;->E:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/acz;->F:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/acz;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Lcom/google/android/gms/internal/adj;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/acz;->b:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ada;

    iget-object v1, p0, Lcom/google/android/gms/internal/acz;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ada;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/acz;->j:Lcom/google/android/gms/internal/ada;

    return-void
.end method

.method private a(I)Ljava/util/concurrent/Future;
    .locals 3

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/acz;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/acz;->F:I

    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->p:Landroid/content/Context;

    .line 12000
    new-instance v2, Lcom/google/android/gms/internal/adh$18;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/adh$18;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ade;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private b(J)Ljava/util/concurrent/Future;
    .locals 3

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/acz;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/acz;->D:J

    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->p:Landroid/content/Context;

    .line 10000
    new-instance v2, Lcom/google/android/gms/internal/adh$16;

    invoke-direct {v2, v0, p1, p2}, Lcom/google/android/gms/internal/adh$16;-><init>(Landroid/content/Context;J)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ade;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/google/android/gms/internal/adb;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    iget-object v2, p0, Lcom/google/android/gms/internal/acz;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "app"

    iget-object v1, p0, Lcom/google/android/gms/internal/acz;->j:Lcom/google/android/gms/internal/ada;

    invoke-virtual {v1, p1, p3}, Lcom/google/android/gms/internal/ada;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/acz;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/adc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/adc;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "slots"

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/acx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/acx;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "ads"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->d:Ljava/util/HashSet;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/adb;->a(Ljava/util/HashSet;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3
.end method

.method public final a(Landroid/content/Context;)Lcom/google/android/gms/internal/rk;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ud;->W:Lcom/google/android/gms/internal/ty;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    .line 2000
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ud;->ae:Lcom/google/android/gms/internal/ty;

    .line 3000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ud;->ac:Lcom/google/android/gms/internal/ty;

    .line 4000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/acz;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/acz;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/acz;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_4

    :cond_3
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->v:Lcom/google/android/gms/internal/ri;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/ri;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ri;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/acz;->v:Lcom/google/android/gms/internal/ri;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->u:Lcom/google/android/gms/internal/rk;

    if-nez v0, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/rk;

    iget-object v1, p0, Lcom/google/android/gms/internal/acz;->v:Lcom/google/android/gms/internal/ri;

    iget-object v3, p0, Lcom/google/android/gms/internal/acz;->p:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/acz;->q:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/aae;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;)Lcom/google/android/gms/internal/aaf;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/rk;-><init>(Lcom/google/android/gms/internal/ri;Lcom/google/android/gms/internal/aaf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/acz;->u:Lcom/google/android/gms/internal/rk;

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->u:Lcom/google/android/gms/internal/rk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/rk;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->u:Lcom/google/android/gms/internal/rk;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(J)Ljava/util/concurrent/Future;
    .locals 3

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/acz;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/acz;->E:J

    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->p:Landroid/content/Context;

    .line 11000
    new-instance v2, Lcom/google/android/gms/internal/adh$4;

    invoke-direct {v2, v0, p1, p2}, Lcom/google/android/gms/internal/adh$4;-><init>(Landroid/content/Context;J)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ade;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 4

    .prologue
    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->k()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/acz;->C:J

    iget-object v1, p0, Lcom/google/android/gms/internal/acz;->a:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->B:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/google/android/gms/internal/acz;->B:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/acz;->C:J

    .line 9000
    new-instance v0, Lcom/google/android/gms/internal/adh$14;

    invoke-direct {v0, p1, p2, v2, v3}, Lcom/google/android/gms/internal/adh$14;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ade;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

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

.method public final a(Landroid/content/Context;Z)Ljava/util/concurrent/Future;
    .locals 2

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/acz;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/acz;->m:Z

    if-eq p2, v0, :cond_0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/acz;->m:Z

    .line 5000
    new-instance v0, Lcom/google/android/gms/internal/adh$1;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/adh$1;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ade;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

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

.method public final a(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 3

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/acz;->a:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/acz;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->p:Landroid/content/Context;

    .line 6000
    new-instance v2, Lcom/google/android/gms/internal/adh$9;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/adh$9;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ade;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

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

.method public final a(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/acz;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/acz;->o:Z

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/acz;->p:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/acz;->q:Lcom/google/android/gms/internal/zzqh;

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->h()Lcom/google/android/gms/internal/rj;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/rj;->a(Lcom/google/android/gms/internal/rj$b;)V

    .line 13000
    new-instance v2, Lcom/google/android/gms/internal/adh$2;

    invoke-direct {v2, p1, p0}, Lcom/google/android/gms/internal/adh$2;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/adh$b;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ade;->c()Ljava/lang/Object;

    .line 14000
    new-instance v2, Lcom/google/android/gms/internal/adh$6;

    invoke-direct {v2, p1, p0}, Lcom/google/android/gms/internal/adh$6;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/adh$b;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ade;->c()Ljava/lang/Object;

    .line 15000
    new-instance v2, Lcom/google/android/gms/internal/adh$8;

    invoke-direct {v2, p1, p0}, Lcom/google/android/gms/internal/adh$8;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/adh$b;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ade;->c()Ljava/lang/Object;

    .line 16000
    new-instance v2, Lcom/google/android/gms/internal/adh$10;

    invoke-direct {v2, p1, p0}, Lcom/google/android/gms/internal/adh$10;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/adh$b;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ade;->c()Ljava/lang/Object;

    .line 17000
    new-instance v2, Lcom/google/android/gms/internal/adh$13;

    invoke-direct {v2, p1, p0}, Lcom/google/android/gms/internal/adh$13;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/adh$b;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ade;->c()Ljava/lang/Object;

    .line 18000
    new-instance v2, Lcom/google/android/gms/internal/adh$15;

    invoke-direct {v2, p1, p0}, Lcom/google/android/gms/internal/adh$15;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/adh$b;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ade;->c()Ljava/lang/Object;

    .line 19000
    new-instance v2, Lcom/google/android/gms/internal/adh$17;

    invoke-direct {v2, p1, p0}, Lcom/google/android/gms/internal/adh$17;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/adh$b;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ade;->c()Ljava/lang/Object;

    .line 20000
    new-instance v2, Lcom/google/android/gms/internal/adh$3;

    invoke-direct {v2, p1, p0}, Lcom/google/android/gms/internal/adh$3;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/adh$b;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ade;->c()Ljava/lang/Object;

    .line 21000
    new-instance v2, Lcom/google/android/gms/internal/adh$5;

    invoke-direct {v2, p1, p0}, Lcom/google/android/gms/internal/adh$5;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/adh$b;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ade;->c()Ljava/lang/Object;

    .line 22000
    iget-object v2, p0, Lcom/google/android/gms/internal/acz;->p:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/acz;->q:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/aae;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;)Lcom/google/android/gms/internal/aaf;

    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gms/internal/zzqh;->a:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/internal/adj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/acz;->y:Ljava/lang/String;

    .line 23000
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    .line 0
    :goto_0
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/acz;->z:Z

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/qx;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/acz;->q:Lcom/google/android/gms/internal/zzqh;

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/google/android/gms/internal/adj;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;)Lcom/google/android/gms/internal/xh;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/internal/qx;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/xh;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/acz;->c:Lcom/google/android/gms/internal/qx;

    .line 24000
    new-instance v2, Lcom/google/android/gms/internal/ue;

    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->p:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/acz;->q:Lcom/google/android/gms/internal/zzqh;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzqh;->a:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ue;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->l()Lcom/google/android/gms/internal/ug;

    .line 26000
    iget-boolean v0, v2, Lcom/google/android/gms/internal/ue;->a:Z

    .line 25000
    if-nez v0, :cond_3

    const-string/jumbo v0, "CsiReporterFactory: CSI is not enabled. No CSI reporter created."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 24000
    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/acz;->r:Lcom/google/android/gms/internal/uf;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 0
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->s()Lcom/google/android/gms/ads/internal/purchase/i;

    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->p:Landroid/content/Context;

    .line 33000
    new-instance v2, Lcom/google/android/gms/ads/internal/purchase/i$1;

    invoke-direct {v2, v0}, Lcom/google/android/gms/ads/internal/purchase/i$1;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/adj;->b(Ljava/lang/Runnable;)V

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/acz;->o:Z

    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 23000
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 27000
    :cond_3
    :try_start_3
    iget-object v0, v2, Lcom/google/android/gms/internal/ue;->d:Landroid/content/Context;

    .line 25000
    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Context can\'t be null. Please set up context in CsiConfiguration."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 24000
    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "Cannot initialize CSI reporter."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 28000
    :cond_4
    :try_start_5
    iget-object v0, v2, Lcom/google/android/gms/internal/ue;->e:Ljava/lang/String;

    .line 25000
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "AfmaVersion can\'t be null or empty. Please set up afmaVersion in CsiConfiguration."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/uf;

    .line 29000
    iget-object v3, v2, Lcom/google/android/gms/internal/ue;->d:Landroid/content/Context;

    .line 30000
    iget-object v4, v2, Lcom/google/android/gms/internal/ue;->e:Ljava/lang/String;

    .line 31000
    iget-object v5, v2, Lcom/google/android/gms/internal/ue;->b:Ljava/lang/String;

    .line 32000
    iget-object v2, v2, Lcom/google/android/gms/internal/ue;->c:Ljava/util/Map;

    .line 25000
    invoke-direct {v0, v3, v4, v5, v2}, Lcom/google/android/gms/internal/uf;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/acz;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "use_https"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/acz;->m:Z

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/acz;->m:Z

    const-string/jumbo v0, "webview_cache_version"

    iget v2, p0, Lcom/google/android/gms/internal/acz;->n:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/acz;->n:I

    const-string/jumbo v0, "content_url_opted_out"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "content_url_opted_out"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/acz;->b(Z)V

    :cond_0
    const-string/jumbo v0, "content_url_hashes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "content_url_hashes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/acz;->w:Ljava/lang/String;

    :cond_1
    const-string/jumbo v0, "auto_collect_location"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/acz;->A:Z

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/acz;->A:Z

    const-string/jumbo v0, "content_vertical_opted_out"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "content_vertical_opted_out"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/acz;->c(Z)V

    :cond_2
    const-string/jumbo v0, "content_vertical_hashes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "content_vertical_hashes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/acz;->x:Ljava/lang/String;

    :cond_3
    const-string/jumbo v0, "app_settings_json"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "app_settings_json"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/acz;->B:Ljava/lang/String;

    const-string/jumbo v0, "app_settings_last_update_ms"

    iget-wide v2, p0, Lcom/google/android/gms/internal/acz;->C:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/acz;->C:J

    const-string/jumbo v0, "app_last_background_time_ms"

    iget-wide v2, p0, Lcom/google/android/gms/internal/acz;->D:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/acz;->D:J

    const-string/jumbo v0, "request_in_session_count"

    iget v2, p0, Lcom/google/android/gms/internal/acz;->F:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/acz;->F:I

    const-string/jumbo v0, "first_ad_req_time_ms"

    iget-wide v2, p0, Lcom/google/android/gms/internal/acz;->E:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/acz;->E:J

    monitor-exit v1

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->B:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/acx;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/acz;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->p:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/acz;->q:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/aae;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;)Lcom/google/android/gms/internal/aaf;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/aaf;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->k()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v0

    if-eqz p1, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/internal/acz;->D:J

    sub-long v2, v0, v2

    sget-object v0, Lcom/google/android/gms/internal/ud;->aL:Lcom/google/android/gms/internal/ty;

    .line 35000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->j:Lcom/google/android/gms/internal/ada;

    .line 36000
    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/gms/internal/ada;->d:I

    .line 0
    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->j:Lcom/google/android/gms/internal/ada;

    iget v1, p0, Lcom/google/android/gms/internal/acz;->F:I

    .line 37000
    iput v1, v0, Lcom/google/android/gms/internal/ada;->d:I

    goto :goto_0

    .line 0
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/acz;->b(J)Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->j:Lcom/google/android/gms/internal/ada;

    .line 38000
    iget v0, v0, Lcom/google/android/gms/internal/ada;->d:I

    .line 0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/acz;->a(I)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/acz;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/acz;->s:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Landroid/content/Context;Z)Ljava/util/concurrent/Future;
    .locals 2

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/acz;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/acz;->A:Z

    if-eq p2, v0, :cond_0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/acz;->A:Z

    .line 8000
    new-instance v0, Lcom/google/android/gms/internal/adh$12;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/adh$12;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ade;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

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

.method public final b(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 3

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/acz;->a:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/acz;->x:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->p:Landroid/content/Context;

    .line 7000
    new-instance v2, Lcom/google/android/gms/internal/adh$11;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/adh$11;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ade;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

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

.method public final b(Z)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/acz;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/acz;->s:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->p:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/adh;->a(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/acz;->s:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->p:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/acz;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/rk;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/rk;->isAlive()Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "start fetching content..."

    invoke-static {v2}, Lcom/google/android/gms/internal/adf;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/rk;->a()V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/acz;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/acz;->t:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/acz;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->k:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/acz;->k:Ljava/math/BigInteger;

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/acz;->k:Ljava/math/BigInteger;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c(Z)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/acz;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/acz;->t:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->p:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/adh;->a(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->p:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/adh;->a(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/acz;->t:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->p:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/acz;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/rk;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/rk;->isAlive()Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "start fetching content..."

    invoke-static {v2}, Lcom/google/android/gms/internal/adf;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/rk;->a()V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d()Lcom/google/android/gms/internal/ada;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/acz;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->j:Lcom/google/android/gms/internal/ada;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final e()Lcom/google/android/gms/internal/uf;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/acz;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->r:Lcom/google/android/gms/internal/uf;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final f()Z
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/acz;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/acz;->l:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/acz;->l:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final g()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/acz;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/acz;->m:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/acz;->z:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/acz;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->y:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/acz;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->w:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/acz;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->x:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final k()Ljava/lang/Boolean;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/acz;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->f:Ljava/lang/Boolean;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final l()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/acz;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/acz;->A:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final m()J
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/acz;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/acz;->D:J

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final n()J
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/acz;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/acz;->E:J

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final o()I
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/acz;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/acz;->F:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final p()Lcom/google/android/gms/internal/acy;
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/acz;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/acy;

    iget-object v2, p0, Lcom/google/android/gms/internal/acz;->B:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/acz;->C:J

    invoke-direct {v0, v2, v4, v5}, Lcom/google/android/gms/internal/acy;-><init>(Ljava/lang/String;J)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final q()Landroid/content/res/Resources;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/acz;->q:Lcom/google/android/gms/internal/zzqh;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzqh;->d:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->p:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/acz;->p:Landroid/content/Context;

    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->a:Lcom/google/android/gms/dynamite/DynamiteModule$b;

    const-string/jumbo v3, "com.google.android.gms.ads.dynamite"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$b;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 34000
    iget-object v1, v1, Lcom/google/android/gms/dynamite/DynamiteModule;->f:Landroid/content/Context;

    .line 0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "Cannot load resource from dynamite apk or local jar"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final r()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/acz;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/acz;->g:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final s()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/acz;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method
