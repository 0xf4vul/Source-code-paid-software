.class public final Lcom/google/android/gms/internal/qx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/qz;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/google/android/gms/internal/acw;",
            "Lcom/google/android/gms/internal/qy;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/qy;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/android/gms/internal/zzqh;

.field private final f:Lcom/google/android/gms/internal/xh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/xh;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/qx;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/qx;->b:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/qx;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/qx;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/qx;->e:Lcom/google/android/gms/internal/zzqh;

    iput-object p3, p0, Lcom/google/android/gms/internal/qx;->f:Lcom/google/android/gms/internal/xh;

    return-void
.end method

.method private d(Lcom/google/android/gms/internal/acw;)Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/qx;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/qx;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/qy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qy;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/acw;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/qx;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/qx;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/qy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qy;->a()V

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

.method public final a(Lcom/google/android/gms/internal/qy;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/qx;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/qy;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/qx;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/qx;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/acw;)V
    .locals 1

    iget-object v0, p2, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/qx;->a(Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/acw;Landroid/view/View;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/acw;Landroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/qy$d;

    invoke-direct {v0, p3, p2}, Lcom/google/android/gms/internal/qy$d;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/acw;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/qx;->a(Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/acw;Lcom/google/android/gms/internal/rg;Lcom/google/android/gms/internal/xi;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/acw;Landroid/view/View;Lcom/google/android/gms/internal/xi;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/qy$d;

    invoke-direct {v0, p3, p2}, Lcom/google/android/gms/internal/qy$d;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/acw;)V

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/google/android/gms/internal/qx;->a(Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/acw;Lcom/google/android/gms/internal/rg;Lcom/google/android/gms/internal/xi;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/acw;Lcom/google/android/gms/internal/rg;Lcom/google/android/gms/internal/xi;)V
    .locals 7

    iget-object v6, p0, Lcom/google/android/gms/internal/qx;->a:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/qx;->d(Lcom/google/android/gms/internal/acw;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/qx;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/qy;

    :goto_0
    if-eqz p4, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/ra;

    invoke-direct {v1, v0, p4}, Lcom/google/android/gms/internal/ra;-><init>(Lcom/google/android/gms/internal/qy;Lcom/google/android/gms/internal/xi;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qy;->b(Lcom/google/android/gms/internal/rc;)V

    :goto_1
    monitor-exit v6

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/qy;

    iget-object v1, p0, Lcom/google/android/gms/internal/qx;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/qx;->e:Lcom/google/android/gms/internal/zzqh;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/qy;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/acw;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/rg;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/qy;->a(Lcom/google/android/gms/internal/qz;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/qx;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/qx;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/rb;

    iget-object v2, p0, Lcom/google/android/gms/internal/qx;->f:Lcom/google/android/gms/internal/xh;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/rb;-><init>(Lcom/google/android/gms/internal/qy;Lcom/google/android/gms/internal/xh;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qy;->b(Lcom/google/android/gms/internal/rc;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final b(Lcom/google/android/gms/internal/acw;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/qx;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/qx;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/qy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qy;->e()V

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

.method public final c(Lcom/google/android/gms/internal/acw;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/qx;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/qx;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/qy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qy;->f()V

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
