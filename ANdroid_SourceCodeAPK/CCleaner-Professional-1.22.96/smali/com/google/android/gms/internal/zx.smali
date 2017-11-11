.class public final Lcom/google/android/gms/internal/zx;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zx$a;
    }
.end annotation


# static fields
.field private static final a:J

.field private static final b:Ljava/lang/Object;

.field private static c:Z

.field private static d:Lcom/google/android/gms/internal/xh;


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Lcom/google/android/gms/internal/zzqh;

.field private final g:Lcom/google/android/gms/ads/internal/r;

.field private final h:Lcom/google/android/gms/internal/ej;

.field private i:Lcom/google/android/gms/internal/xf;

.field private j:Lcom/google/android/gms/internal/xh$e;

.field private k:Lcom/google/android/gms/internal/xe;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/zx;->a:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zx;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/zx;->c:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zx;->d:Lcom/google/android/gms/internal/xh;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/r;Lcom/google/android/gms/internal/ej;Lcom/google/android/gms/internal/zzqh;)V
    .locals 2

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zx;->l:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zx;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zx;->g:Lcom/google/android/gms/ads/internal/r;

    iput-object p3, p0, Lcom/google/android/gms/internal/zx;->h:Lcom/google/android/gms/internal/ej;

    iput-object p4, p0, Lcom/google/android/gms/internal/zx;->f:Lcom/google/android/gms/internal/zzqh;

    sget-object v0, Lcom/google/android/gms/internal/ud;->cg:Lcom/google/android/gms/internal/ty;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zx;->l:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/acw$a;Lcom/google/android/gms/ads/internal/r;Lcom/google/android/gms/internal/ej;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/internal/acw$a;->a:Lcom/google/android/gms/internal/zzmk;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/internal/acw$a;->a:Lcom/google/android/gms/internal/zzmk;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmk;->k:Lcom/google/android/gms/internal/zzqh;

    :goto_0
    invoke-direct {p0, p1, p3, p4, v0}, Lcom/google/android/gms/internal/zx;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/r;Lcom/google/android/gms/internal/ej;Lcom/google/android/gms/internal/zzqh;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zx;)Lcom/google/android/gms/ads/internal/r;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zx;->g:Lcom/google/android/gms/ads/internal/r;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zx;->l:Z

    if-eqz v0, :cond_2

    .line 2000
    sget-object v6, Lcom/google/android/gms/internal/zx;->b:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    sget-boolean v0, Lcom/google/android/gms/internal/zx;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/xh;

    iget-object v1, p0, Lcom/google/android/gms/internal/zx;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zx;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zx;->f:Lcom/google/android/gms/internal/zzqh;

    sget-object v3, Lcom/google/android/gms/internal/ud;->cd:Lcom/google/android/gms/internal/ty;

    .line 3000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v3

    .line 2000
    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/internal/zx$3;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zx$3;-><init>(Lcom/google/android/gms/internal/zx;)V

    new-instance v5, Lcom/google/android/gms/internal/xh$b;

    invoke-direct {v5}, Lcom/google/android/gms/internal/xh$b;-><init>()V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/xh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Ljava/lang/String;Lcom/google/android/gms/internal/ado;Lcom/google/android/gms/internal/ado;)V

    sput-object v0, Lcom/google/android/gms/internal/zx;->d:Lcom/google/android/gms/internal/xh;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/zx;->c:Z

    :cond_0
    monitor-exit v6

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zx;->e:Landroid/content/Context;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4000
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/xf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/xf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zx;->i:Lcom/google/android/gms/internal/xf;

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/internal/zx$a;)V
    .locals 3

    .prologue
    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zx;->l:Z

    if-eqz v0, :cond_1

    .line 11000
    iget-object v0, p0, Lcom/google/android/gms/internal/zx;->j:Lcom/google/android/gms/internal/xh$e;

    .line 0
    if-nez v0, :cond_0

    const-string/jumbo v0, "SharedJavascriptEngine not initialized"

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zx$1;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zx$1;-><init>(Lcom/google/android/gms/internal/zx$a;)V

    new-instance v2, Lcom/google/android/gms/internal/zx$2;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/zx$2;-><init>(Lcom/google/android/gms/internal/zx$a;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/xh$e;->a(Lcom/google/android/gms/internal/aek$c;Lcom/google/android/gms/internal/aek$a;)V

    goto :goto_0

    .line 12000
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zx;->k:Lcom/google/android/gms/internal/xe;

    .line 0
    if-nez v0, :cond_2

    const-string/jumbo v0, "JavascriptEngine not initialized"

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zx$a;->a(Lcom/google/android/gms/internal/xi;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zx;->l:Z

    if-eqz v0, :cond_0

    .line 5000
    new-instance v0, Lcom/google/android/gms/internal/xh$e;

    .line 6000
    sget-object v1, Lcom/google/android/gms/internal/zx;->d:Lcom/google/android/gms/internal/xh;

    .line 5000
    iget-object v2, p0, Lcom/google/android/gms/internal/zx;->h:Lcom/google/android/gms/internal/ej;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/xh;->b(Lcom/google/android/gms/internal/ej;)Lcom/google/android/gms/internal/xh$c;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/xh$e;-><init>(Lcom/google/android/gms/internal/xh$c;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zx;->j:Lcom/google/android/gms/internal/xh$e;

    .line 0
    :goto_0
    return-void

    .line 8000
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zx;->i:Lcom/google/android/gms/internal/xf;

    .line 7000
    iget-object v2, p0, Lcom/google/android/gms/internal/zx;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/zx;->f:Lcom/google/android/gms/internal/zzqh;

    sget-object v0, Lcom/google/android/gms/internal/ud;->cd:Lcom/google/android/gms/internal/ty;

    .line 9000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v7

    .line 7000
    check-cast v7, Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zx;->h:Lcom/google/android/gms/internal/ej;

    iget-object v0, p0, Lcom/google/android/gms/internal/zx;->g:Lcom/google/android/gms/ads/internal/r;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/r;->g()Lcom/google/android/gms/ads/internal/e;

    move-result-object v6

    .line 10000
    new-instance v4, Lcom/google/android/gms/internal/xf$a;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/xf$a;-><init>(B)V

    sget-object v8, Lcom/google/android/gms/internal/adj;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/xf$1;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/xf$1;-><init>(Lcom/google/android/gms/internal/xf;Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/xf$a;Lcom/google/android/gms/internal/ej;Lcom/google/android/gms/ads/internal/e;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7000
    sget-wide v0, Lcom/google/android/gms/internal/zx;->a:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/xe;

    iput-object v0, p0, Lcom/google/android/gms/internal/zx;->k:Lcom/google/android/gms/internal/xe;

    iget-object v0, p0, Lcom/google/android/gms/internal/zx;->k:Lcom/google/android/gms/internal/xe;

    iget-object v1, p0, Lcom/google/android/gms/internal/zx;->g:Lcom/google/android/gms/ads/internal/r;

    iget-object v2, p0, Lcom/google/android/gms/internal/zx;->g:Lcom/google/android/gms/ads/internal/r;

    iget-object v3, p0, Lcom/google/android/gms/internal/zx;->g:Lcom/google/android/gms/ads/internal/r;

    iget-object v4, p0, Lcom/google/android/gms/internal/zx;->g:Lcom/google/android/gms/ads/internal/r;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/xe;->a(Lcom/google/android/gms/internal/sb;Lcom/google/android/gms/ads/internal/overlay/i;Lcom/google/android/gms/internal/vw;Lcom/google/android/gms/ads/internal/overlay/r;)V

    goto :goto_0
.end method
