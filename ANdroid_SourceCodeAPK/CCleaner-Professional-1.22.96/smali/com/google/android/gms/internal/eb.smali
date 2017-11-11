.class public final Lcom/google/android/gms/internal/eb;
.super Lcom/google/android/gms/internal/dt;


# instance fields
.field private a:Z

.field private final b:Landroid/app/AlarmManager;

.field private final c:Lcom/google/android/gms/internal/cx;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/dq;)V
    .locals 2

    .prologue
    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/dt;-><init>(Lcom/google/android/gms/internal/dq;)V

    .line 1000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->n()Landroid/content/Context;

    move-result-object v0

    .line 0
    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/eb;->b:Landroid/app/AlarmManager;

    new-instance v0, Lcom/google/android/gms/internal/eb$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/eb$1;-><init>(Lcom/google/android/gms/internal/eb;Lcom/google/android/gms/internal/dq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/eb;->c:Lcom/google/android/gms/internal/cx;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/eb;)V
    .locals 3

    .prologue
    .line 11000
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 12000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->n()Landroid/content/Context;

    move-result-object v1

    .line 11000
    invoke-static {}, Lcom/google/android/gms/internal/cv;->V()Z

    const-string/jumbo v2, "com.google.android.gms.measurement.AppMeasurementReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 13000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->n()Landroid/content/Context;

    move-result-object v1

    .line 11000
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 0
    return-void
.end method

.method private y()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 9000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->n()Landroid/content/Context;

    move-result-object v1

    .line 0
    invoke-static {}, Lcom/google/android/gms/internal/cv;->V()Z

    const-string/jumbo v2, "com.google.android.gms.measurement.AppMeasurementReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 10000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->n()Landroid/content/Context;

    move-result-object v1

    .line 0
    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/eb;->b:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/google/android/gms/internal/eb;->y()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public final a(J)V
    .locals 7

    .prologue
    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/eb;->J()V

    invoke-static {}, Lcom/google/android/gms/internal/cv;->V()Z

    .line 2000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->n()Landroid/content/Context;

    move-result-object v0

    .line 0
    invoke-static {v0}, Lcom/google/android/gms/internal/dn;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 4000
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->f:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "Receiver not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/cv;->V()Z

    .line 5000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->n()Landroid/content/Context;

    move-result-object v0

    .line 0
    invoke-static {v0}, Lcom/google/android/gms/internal/dy;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 7000
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->f:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "Service not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/eb;->x()V

    .line 8000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->m()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    .line 0
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v0

    add-long v2, v0, p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/eb;->a:Z

    invoke-static {}, Lcom/google/android/gms/internal/cv;->ao()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/eb;->c:Lcom/google/android/gms/internal/cx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cx;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/eb;->c:Lcom/google/android/gms/internal/cx;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/cx;->a(J)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/eb;->b:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Lcom/google/android/gms/internal/cv;->ap()J

    move-result-wide v4

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-direct {p0}, Lcom/google/android/gms/internal/eb;->y()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
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

.method public final x()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eb;->J()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/eb;->a:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/eb;->b:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/google/android/gms/internal/eb;->y()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/eb;->c:Lcom/google/android/gms/internal/cx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cx;->c()V

    return-void
.end method
