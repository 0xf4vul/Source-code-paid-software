.class public final Lcom/google/android/gms/ads/internal/k;
.super Lcom/google/android/gms/internal/st$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lcom/google/android/gms/internal/ya;

.field final c:Ljava/lang/String;

.field final d:Lcom/google/android/gms/internal/zzqh;

.field final e:Lcom/google/android/gms/ads/internal/e;

.field private final f:Lcom/google/android/gms/internal/ss;

.field private final g:Lcom/google/android/gms/internal/vo;

.field private final h:Lcom/google/android/gms/internal/vp;

.field private final i:Landroid/support/v4/h/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/h/k",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/vr;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroid/support/v4/h/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/h/k",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/vq;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/google/android/gms/internal/zzhc;

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lcom/google/android/gms/internal/ta;

.field private n:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/ads/internal/r;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ya;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/ss;Lcom/google/android/gms/internal/vo;Lcom/google/android/gms/internal/vp;Landroid/support/v4/h/k;Landroid/support/v4/h/k;Lcom/google/android/gms/internal/zzhc;Lcom/google/android/gms/internal/ta;Lcom/google/android/gms/ads/internal/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ya;",
            "Lcom/google/android/gms/internal/zzqh;",
            "Lcom/google/android/gms/internal/ss;",
            "Lcom/google/android/gms/internal/vo;",
            "Lcom/google/android/gms/internal/vp;",
            "Landroid/support/v4/h/k",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/vr;",
            ">;",
            "Landroid/support/v4/h/k",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/vq;",
            ">;",
            "Lcom/google/android/gms/internal/zzhc;",
            "Lcom/google/android/gms/internal/ta;",
            "Lcom/google/android/gms/ads/internal/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/st$a;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/k;->o:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/k;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/k;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/k;->b:Lcom/google/android/gms/internal/ya;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/k;->d:Lcom/google/android/gms/internal/zzqh;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/internal/ss;

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/k;->h:Lcom/google/android/gms/internal/vp;

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/k;->g:Lcom/google/android/gms/internal/vo;

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/k;->i:Landroid/support/v4/h/k;

    iput-object p9, p0, Lcom/google/android/gms/ads/internal/k;->j:Landroid/support/v4/h/k;

    iput-object p10, p0, Lcom/google/android/gms/ads/internal/k;->k:Lcom/google/android/gms/internal/zzhc;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/k;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/k;->l:Ljava/util/List;

    iput-object p11, p0, Lcom/google/android/gms/ads/internal/k;->m:Lcom/google/android/gms/internal/ta;

    iput-object p12, p0, Lcom/google/android/gms/ads/internal/k;->e:Lcom/google/android/gms/ads/internal/e;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/k;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->o:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/k;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/k;->n:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gms/ads/internal/k;)Lcom/google/android/gms/internal/vo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->g:Lcom/google/android/gms/internal/vo;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/ads/internal/k;)Lcom/google/android/gms/internal/vp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->h:Lcom/google/android/gms/internal/vp;

    return-object v0
.end method

.method private c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/k;->h:Lcom/google/android/gms/internal/vp;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/k;->g:Lcom/google/android/gms/internal/vo;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/k;->i:Landroid/support/v4/h/k;

    invoke-virtual {v1}, Landroid/support/v4/h/k;->size()I

    move-result v1

    if-lez v1, :cond_2

    const-string/jumbo v1, "3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/ads/internal/k;)Landroid/support/v4/h/k;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->i:Landroid/support/v4/h/k;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/ads/internal/k;)Lcom/google/android/gms/internal/ss;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/internal/ss;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/ads/internal/k;)Landroid/support/v4/h/k;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->j:Landroid/support/v4/h/k;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/ads/internal/k;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/k;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gms/ads/internal/k;)Lcom/google/android/gms/internal/zzhc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->k:Lcom/google/android/gms/internal/zzhc;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/gms/ads/internal/k;)Lcom/google/android/gms/internal/ta;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->m:Lcom/google/android/gms/internal/ta;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/k;->o:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->n:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/r;->F()Ljava/lang/String;

    move-result-object v0

    :goto_0
    monitor-exit v2

    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    monitor-exit v2

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/zzec;)V
    .locals 2

    .prologue
    .line 0
    new-instance v0, Lcom/google/android/gms/ads/internal/k$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/internal/k$1;-><init>(Lcom/google/android/gms/ads/internal/k;Lcom/google/android/gms/internal/zzec;)V

    .line 1000
    sget-object v1, Lcom/google/android/gms/internal/adj;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 0
    return-void
.end method

.method public final b()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/k;->o:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->n:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/r;->p()Z

    move-result v0

    :goto_0
    monitor-exit v2

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    monitor-exit v2

    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
