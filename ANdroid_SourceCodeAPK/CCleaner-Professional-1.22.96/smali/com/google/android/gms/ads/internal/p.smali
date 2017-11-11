.class public final Lcom/google/android/gms/ads/internal/p;
.super Lcom/google/android/gms/internal/tb$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# static fields
.field private static final b:Ljava/lang/Object;

.field private static c:Lcom/google/android/gms/ads/internal/p;


# instance fields
.field private final a:Landroid/content/Context;

.field private final d:Ljava/lang/Object;

.field private e:Z

.field private f:Z

.field private g:F

.field private h:Lcom/google/android/gms/internal/zzqh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/p;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/tb$a;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/p;->d:Ljava/lang/Object;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/gms/ads/internal/p;->g:F

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/p;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/p;->h:Lcom/google/android/gms/internal/zzqh;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/p;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/p;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/p;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a()Lcom/google/android/gms/ads/internal/p;
    .locals 2

    sget-object v1, Lcom/google/android/gms/ads/internal/p;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/ads/internal/p;->c:Lcom/google/android/gms/ads/internal/p;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;)Lcom/google/android/gms/ads/internal/p;
    .locals 3

    sget-object v1, Lcom/google/android/gms/ads/internal/p;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/ads/internal/p;->c:Lcom/google/android/gms/ads/internal/p;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/p;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/google/android/gms/ads/internal/p;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;)V

    sput-object v0, Lcom/google/android/gms/ads/internal/p;->c:Lcom/google/android/gms/ads/internal/p;

    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/internal/p;->c:Lcom/google/android/gms/ads/internal/p;

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
.method public final a(F)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/p;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/ads/internal/p;->g:F

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/a/a;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 0
    if-nez p1, :cond_0

    const-string/jumbo v0, "Wrapped context is null. Failed to open debug menu."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/a/b;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    const-string/jumbo v0, "Context is null. Failed to open debug menu."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 5000
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/adm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/adm;-><init>(Landroid/content/Context;)V

    .line 6000
    iput-object p2, v1, Lcom/google/android/gms/internal/adm;->c:Ljava/lang/String;

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/p;->h:Lcom/google/android/gms/internal/zzqh;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqh;->a:Ljava/lang/String;

    .line 7000
    iput-object v0, v1, Lcom/google/android/gms/internal/adm;->d:Ljava/lang/String;

    .line 0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/adm;->a()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/p;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ud;->a(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ud;->cD:Lcom/google/android/gms/internal/ty;

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

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->A()Lcom/google/android/gms/ads/internal/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/p;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/p;->h:Lcom/google/android/gms/internal/zzqh;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/google/android/gms/ads/internal/h;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/a/a;)V
    .locals 4

    .prologue
    .line 0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/p;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ud;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/internal/ud;->cD:Lcom/google/android/gms/internal/ty;

    .line 2000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-object v0, Lcom/google/android/gms/internal/ud;->aH:Lcom/google/android/gms/internal/ty;

    .line 3000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    or-int v2, v1, v0

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/internal/ud;->aH:Lcom/google/android/gms/internal/ty;

    .line 4000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    invoke-static {p2}, Lcom/google/android/gms/a/b;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    new-instance v1, Lcom/google/android/gms/ads/internal/p$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/internal/p$1;-><init>(Lcom/google/android/gms/ads/internal/p;Ljava/lang/Runnable;)V

    move-object v0, v1

    move v1, v2

    :goto_1
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->A()Lcom/google/android/gms/ads/internal/h;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/p;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/p;->h:Lcom/google/android/gms/internal/zzqh;

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/google/android/gms/ads/internal/h;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    move v1, v2

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/p;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/p;->f:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()V
    .locals 3

    sget-object v1, Lcom/google/android/gms/ads/internal/p;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/p;->e:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Mobile ads is initialized already."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/p;->e:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/p;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ud;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/p;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/p;->h:Lcom/google/android/gms/internal/zzqh;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/acz;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->j()Lcom/google/android/gms/internal/ru;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/p;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ru;->a(Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c()F
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/p;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/ads/internal/p;->g:F

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d()Z
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/p;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/ads/internal/p;->g:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

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

.method public final e()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/p;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/p;->f:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
