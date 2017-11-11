.class public final Lcom/google/android/gms/internal/dz;
.super Lcom/google/android/gms/internal/dt;


# instance fields
.field protected a:J

.field private b:Landroid/os/Handler;

.field private final c:Lcom/google/android/gms/internal/cx;

.field private final d:Lcom/google/android/gms/internal/cx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/dq;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/dt;-><init>(Lcom/google/android/gms/internal/dq;)V

    new-instance v0, Lcom/google/android/gms/internal/dz$1;

    iget-object v1, p0, Lcom/google/android/gms/internal/dz;->n:Lcom/google/android/gms/internal/dq;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/dz$1;-><init>(Lcom/google/android/gms/internal/dz;Lcom/google/android/gms/internal/dq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/dz;->c:Lcom/google/android/gms/internal/cx;

    new-instance v0, Lcom/google/android/gms/internal/dz$2;

    iget-object v1, p0, Lcom/google/android/gms/internal/dz;->n:Lcom/google/android/gms/internal/dq;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/dz$2;-><init>(Lcom/google/android/gms/internal/dz;Lcom/google/android/gms/internal/dq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/dz;->d:Lcom/google/android/gms/internal/cx;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/dz;)V
    .locals 4

    .prologue
    .line 0
    .line 18000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->e()V

    .line 17000
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/dz;->a(Z)Z

    .line 19000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->f()Lcom/google/android/gms/internal/cq;

    move-result-object v0

    .line 20000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->m()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    .line 17000
    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/cq;->a(J)V

    .line 0
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/dz;J)V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const-wide/16 v6, 0x0

    .line 0
    .line 22000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->e()V

    .line 21000
    invoke-direct {p0}, Lcom/google/android/gms/internal/dz;->y()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dz;->c:Lcom/google/android/gms/internal/cx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cx;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dz;->d:Lcom/google/android/gms/internal/cx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cx;->c()V

    .line 23000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 24000
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->g:Lcom/google/android/gms/internal/di$a;

    .line 21000
    const-string/jumbo v1, "Activity resumed, time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iput-wide p1, p0, Lcom/google/android/gms/internal/dz;->a:J

    .line 25000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->m()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    .line 21000
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v0

    .line 26000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->v()Lcom/google/android/gms/internal/dm;

    move-result-object v2

    .line 21000
    iget-object v2, v2, Lcom/google/android/gms/internal/dm;->i:Lcom/google/android/gms/internal/dm$b;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dm$b;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 27000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->v()Lcom/google/android/gms/internal/dm;

    move-result-object v2

    .line 21000
    iget-object v2, v2, Lcom/google/android/gms/internal/dm;->k:Lcom/google/android/gms/internal/dm$b;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dm$b;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 28000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->v()Lcom/google/android/gms/internal/dm;

    move-result-object v0

    .line 21000
    iget-object v0, v0, Lcom/google/android/gms/internal/dm;->j:Lcom/google/android/gms/internal/dm$a;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/dm$a;->a(Z)V

    .line 29000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->v()Lcom/google/android/gms/internal/dm;

    move-result-object v0

    .line 21000
    iget-object v0, v0, Lcom/google/android/gms/internal/dm;->l:Lcom/google/android/gms/internal/dm$b;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/dm$b;->a(J)V

    .line 30000
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->v()Lcom/google/android/gms/internal/dm;

    move-result-object v0

    .line 21000
    iget-object v0, v0, Lcom/google/android/gms/internal/dm;->j:Lcom/google/android/gms/internal/dm$a;

    .line 32000
    iget-boolean v1, v0, Lcom/google/android/gms/internal/dm$a;->c:Z

    if-nez v1, :cond_1

    iput-boolean v4, v0, Lcom/google/android/gms/internal/dm$a;->c:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/dm$a;->e:Lcom/google/android/gms/internal/dm;

    invoke-static {v1}, Lcom/google/android/gms/internal/dm;->a(Lcom/google/android/gms/internal/dm;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/dm$a;->a:Ljava/lang/String;

    iget-boolean v3, v0, Lcom/google/android/gms/internal/dm$a;->b:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/dm$a;->d:Z

    .line 31000
    :cond_1
    iget-boolean v0, v0, Lcom/google/android/gms/internal/dm$a;->d:Z

    .line 21000
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/dz;->c:Lcom/google/android/gms/internal/cx;

    .line 33000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->v()Lcom/google/android/gms/internal/dm;

    move-result-object v1

    .line 21000
    iget-object v1, v1, Lcom/google/android/gms/internal/dm;->h:Lcom/google/android/gms/internal/dm$b;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/dm$b;->a()J

    move-result-wide v2

    .line 34000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->v()Lcom/google/android/gms/internal/dm;

    move-result-object v1

    .line 21000
    iget-object v1, v1, Lcom/google/android/gms/internal/dm;->l:Lcom/google/android/gms/internal/dm$b;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/dm$b;->a()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/cx;->a(J)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/dz;->d:Lcom/google/android/gms/internal/cx;

    const-wide/32 v2, 0x36ee80

    .line 35000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->v()Lcom/google/android/gms/internal/dm;

    move-result-object v1

    .line 21000
    iget-object v1, v1, Lcom/google/android/gms/internal/dm;->l:Lcom/google/android/gms/internal/dm$b;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/dm$b;->a()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/cx;->a(J)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/dz;J)V
    .locals 7

    .prologue
    .line 0
    .line 37000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->e()V

    .line 36000
    invoke-direct {p0}, Lcom/google/android/gms/internal/dz;->y()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dz;->c:Lcom/google/android/gms/internal/cx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cx;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dz;->d:Lcom/google/android/gms/internal/cx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cx;->c()V

    .line 38000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 39000
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->g:Lcom/google/android/gms/internal/di$a;

    .line 36000
    const-string/jumbo v1, "Activity paused, time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/dz;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 40000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->v()Lcom/google/android/gms/internal/dm;

    move-result-object v0

    .line 36000
    iget-object v0, v0, Lcom/google/android/gms/internal/dm;->l:Lcom/google/android/gms/internal/dm$b;

    .line 41000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->v()Lcom/google/android/gms/internal/dm;

    move-result-object v1

    .line 36000
    iget-object v1, v1, Lcom/google/android/gms/internal/dm;->l:Lcom/google/android/gms/internal/dm$b;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/dm$b;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/dz;->a:J

    sub-long v4, p1, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/dm$b;->a(J)V

    .line 42000
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->v()Lcom/google/android/gms/internal/dm;

    move-result-object v0

    .line 36000
    iget-object v0, v0, Lcom/google/android/gms/internal/dm;->k:Lcom/google/android/gms/internal/dm$b;

    .line 43000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->m()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    .line 36000
    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/dm$b;->a(J)V

    .line 0
    return-void
.end method

.method private y()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dz;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/dz;->b:Landroid/os/Handler;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected final a()V
    .locals 0

    return-void
.end method

.method public final a(Z)Z
    .locals 12

    .prologue
    const-wide/32 v10, 0x36ee80

    const-wide/16 v8, 0x0

    .line 0
    .line 7000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->e()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dz;->J()V

    .line 8000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->m()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    .line 0
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/dz;->a:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_0

    sub-long v2, v0, v10

    iput-wide v2, p0, Lcom/google/android/gms/internal/dz;->a:J

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/dz;->a:J

    sub-long v2, v0, v2

    if-nez p1, :cond_1

    const-wide/16 v4, 0x3e8

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 9000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 10000
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->g:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "Screen exposed for less than 1000 ms. Event not sent. time"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    .line 11000
    :cond_1
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->v()Lcom/google/android/gms/internal/dm;

    move-result-object v4

    .line 0
    iget-object v4, v4, Lcom/google/android/gms/internal/dm;->l:Lcom/google/android/gms/internal/dm$b;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/dm$b;->a(J)V

    .line 12000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v4

    .line 13000
    iget-object v4, v4, Lcom/google/android/gms/internal/di;->g:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v5, "Recording user engagement, ms"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "_et"

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 14000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->l()Lcom/google/android/gms/internal/dw;

    move-result-object v2

    .line 0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/dw;->x()Lcom/google/android/gms/internal/dw$a;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/dw;->a(Lcom/google/android/gms/measurement/AppMeasurement$f;Landroid/os/Bundle;)V

    .line 15000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->h()Lcom/google/android/gms/internal/dv;

    move-result-object v2

    .line 0
    const-string/jumbo v3, "auto"

    const-string/jumbo v5, "_e"

    invoke-virtual {v2, v3, v5, v4}, Lcom/google/android/gms/internal/dv;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-wide v0, p0, Lcom/google/android/gms/internal/dz;->a:J

    iget-object v0, p0, Lcom/google/android/gms/internal/dz;->d:Lcom/google/android/gms/internal/cx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cx;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dz;->d:Lcom/google/android/gms/internal/cx;

    .line 16000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->v()Lcom/google/android/gms/internal/dm;

    move-result-object v1

    .line 0
    iget-object v1, v1, Lcom/google/android/gms/internal/dm;->l:Lcom/google/android/gms/internal/dm$b;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/dm$b;->a()J

    move-result-wide v2

    sub-long v2, v10, v2

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/cx;->a(J)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final bridge synthetic b()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->b()V

    return-void
.end method

.method public final bridge synthetic c()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->c()V

    return-void
.end method

.method public final bridge synthetic d()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->d()V

    return-void
.end method

.method public final bridge synthetic e()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->e()V

    return-void
.end method

.method public final bridge synthetic f()Lcom/google/android/gms/internal/cq;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->f()Lcom/google/android/gms/internal/cq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Lcom/google/android/gms/internal/ct;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->g()Lcom/google/android/gms/internal/ct;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h()Lcom/google/android/gms/internal/dv;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->h()Lcom/google/android/gms/internal/dv;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic i()Lcom/google/android/gms/internal/df;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->i()Lcom/google/android/gms/internal/df;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lcom/google/android/gms/internal/cy;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->j()Lcom/google/android/gms/internal/cy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic k()Lcom/google/android/gms/internal/dx;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->k()Lcom/google/android/gms/internal/dx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic l()Lcom/google/android/gms/internal/dw;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->l()Lcom/google/android/gms/internal/dw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic m()Lcom/google/android/gms/common/util/d;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->m()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic n()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->n()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic o()Lcom/google/android/gms/internal/dg;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->o()Lcom/google/android/gms/internal/dg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic p()Lcom/google/android/gms/internal/cw;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->p()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Lcom/google/android/gms/internal/ee;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->q()Lcom/google/android/gms/internal/ee;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lcom/google/android/gms/internal/do;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->r()Lcom/google/android/gms/internal/do;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Lcom/google/android/gms/internal/dz;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->s()Lcom/google/android/gms/internal/dz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t()Lcom/google/android/gms/internal/dp;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->t()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u()Lcom/google/android/gms/internal/di;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic v()Lcom/google/android/gms/internal/dm;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->v()Lcom/google/android/gms/internal/dm;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic w()Lcom/google/android/gms/internal/cv;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->w()Lcom/google/android/gms/internal/cv;

    move-result-object v0

    return-object v0
.end method

.method protected final x()V
    .locals 4

    .prologue
    .line 0
    .line 1000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->e()V

    .line 2000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->m()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    .line 0
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v0

    .line 3000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 4000
    iget-object v2, v2, Lcom/google/android/gms/internal/di;->g:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v3, "Session started, time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->v()Lcom/google/android/gms/internal/dm;

    move-result-object v0

    .line 0
    iget-object v0, v0, Lcom/google/android/gms/internal/dm;->j:Lcom/google/android/gms/internal/dm$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dm$a;->a(Z)V

    .line 6000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->h()Lcom/google/android/gms/internal/dv;

    move-result-object v0

    .line 0
    const-string/jumbo v1, "auto"

    const-string/jumbo v2, "_s"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/dv;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
