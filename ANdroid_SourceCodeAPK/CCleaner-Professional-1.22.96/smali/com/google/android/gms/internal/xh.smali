.class public final Lcom/google/android/gms/internal/xh;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/xh$a;,
        Lcom/google/android/gms/internal/xh$e;,
        Lcom/google/android/gms/internal/xh$c;,
        Lcom/google/android/gms/internal/xh$d;,
        Lcom/google/android/gms/internal/xh$b;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Landroid/content/Context;

.field final c:Ljava/lang/String;

.field final d:Lcom/google/android/gms/internal/zzqh;

.field e:Lcom/google/android/gms/internal/ado;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ado",
            "<",
            "Lcom/google/android/gms/internal/xe;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/google/android/gms/internal/xh$d;

.field g:I

.field private h:Lcom/google/android/gms/internal/ado;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ado",
            "<",
            "Lcom/google/android/gms/internal/xe;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/xh;->a:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/xh;->g:I

    iput-object p3, p0, Lcom/google/android/gms/internal/xh;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/xh;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/xh;->d:Lcom/google/android/gms/internal/zzqh;

    new-instance v0, Lcom/google/android/gms/internal/xh$b;

    invoke-direct {v0}, Lcom/google/android/gms/internal/xh$b;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/xh;->e:Lcom/google/android/gms/internal/ado;

    new-instance v0, Lcom/google/android/gms/internal/xh$b;

    invoke-direct {v0}, Lcom/google/android/gms/internal/xh$b;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/xh;->h:Lcom/google/android/gms/internal/ado;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Ljava/lang/String;Lcom/google/android/gms/internal/ado;Lcom/google/android/gms/internal/ado;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzqh;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ado",
            "<",
            "Lcom/google/android/gms/internal/xe;",
            ">;",
            "Lcom/google/android/gms/internal/ado",
            "<",
            "Lcom/google/android/gms/internal/xe;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/xh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/xh;->e:Lcom/google/android/gms/internal/ado;

    iput-object p5, p0, Lcom/google/android/gms/internal/xh;->h:Lcom/google/android/gms/internal/ado;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/ej;)Lcom/google/android/gms/internal/xh$d;
    .locals 3

    .prologue
    .line 0
    .line 1000
    new-instance v0, Lcom/google/android/gms/internal/xh$d;

    iget-object v1, p0, Lcom/google/android/gms/internal/xh;->h:Lcom/google/android/gms/internal/ado;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/xh$d;-><init>(Lcom/google/android/gms/internal/ado;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    new-instance v1, Lcom/google/android/gms/internal/xh$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/xh$1;-><init>(Lcom/google/android/gms/internal/xh;Lcom/google/android/gms/internal/ej;Lcom/google/android/gms/internal/xh$d;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/adj;->a(Ljava/lang/Runnable;)V

    .line 0
    new-instance v1, Lcom/google/android/gms/internal/xh$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/xh$2;-><init>(Lcom/google/android/gms/internal/xh;Lcom/google/android/gms/internal/xh$d;)V

    new-instance v2, Lcom/google/android/gms/internal/xh$3;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/xh$3;-><init>(Lcom/google/android/gms/internal/xh;Lcom/google/android/gms/internal/xh$d;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/xh$d;->a(Lcom/google/android/gms/internal/aek$c;Lcom/google/android/gms/internal/aek$a;)V

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/internal/ej;)Lcom/google/android/gms/internal/xh$c;
    .locals 4

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/xh;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/xh;->f:Lcom/google/android/gms/internal/xh$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xh;->f:Lcom/google/android/gms/internal/xh$d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xh$d;->b()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/xh;->g:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/xh;->a(Lcom/google/android/gms/internal/ej;)Lcom/google/android/gms/internal/xh$d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/xh;->f:Lcom/google/android/gms/internal/xh$d;

    iget-object v0, p0, Lcom/google/android/gms/internal/xh;->f:Lcom/google/android/gms/internal/xh$d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xh$d;->m_()Lcom/google/android/gms/internal/xh$c;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/xh;->g:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/xh;->f:Lcom/google/android/gms/internal/xh$d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xh$d;->m_()Lcom/google/android/gms/internal/xh$c;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/xh;->g:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/xh;->g:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/xh;->a(Lcom/google/android/gms/internal/ej;)Lcom/google/android/gms/internal/xh$d;

    iget-object v0, p0, Lcom/google/android/gms/internal/xh;->f:Lcom/google/android/gms/internal/xh$d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xh$d;->m_()Lcom/google/android/gms/internal/xh$c;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/xh;->g:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/xh;->f:Lcom/google/android/gms/internal/xh$d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xh$d;->m_()Lcom/google/android/gms/internal/xh$c;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/xh;->f:Lcom/google/android/gms/internal/xh$d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xh$d;->m_()Lcom/google/android/gms/internal/xh$c;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
