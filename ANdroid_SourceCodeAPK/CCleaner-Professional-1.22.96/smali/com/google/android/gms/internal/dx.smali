.class public final Lcom/google/android/gms/internal/dx;
.super Lcom/google/android/gms/internal/dt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/dx$a;
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/dx$a;

.field b:Lcom/google/android/gms/internal/de;

.field private c:Ljava/lang/Boolean;

.field private final d:Lcom/google/android/gms/internal/cx;

.field private final e:Lcom/google/android/gms/internal/ea;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/internal/cx;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/dq;)V
    .locals 2

    .prologue
    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/dt;-><init>(Lcom/google/android/gms/internal/dq;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dx;->f:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/ea;

    .line 1000
    iget-object v1, p1, Lcom/google/android/gms/internal/dq;->i:Lcom/google/android/gms/common/util/d;

    .line 0
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ea;-><init>(Lcom/google/android/gms/common/util/d;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/dx;->e:Lcom/google/android/gms/internal/ea;

    new-instance v0, Lcom/google/android/gms/internal/dx$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/dx$a;-><init>(Lcom/google/android/gms/internal/dx;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/dx;->a:Lcom/google/android/gms/internal/dx$a;

    new-instance v0, Lcom/google/android/gms/internal/dx$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/dx$1;-><init>(Lcom/google/android/gms/internal/dx;Lcom/google/android/gms/internal/dq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/dx;->d:Lcom/google/android/gms/internal/cx;

    new-instance v0, Lcom/google/android/gms/internal/dx$8;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/dx$8;-><init>(Lcom/google/android/gms/internal/dx;Lcom/google/android/gms/internal/dq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/dx;->g:Lcom/google/android/gms/internal/cx;

    return-void
.end method

.method private B()V
    .locals 4

    .prologue
    .line 0
    .line 32000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->e()V

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/dx;->e:Lcom/google/android/gms/internal/ea;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ea;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dx;->d:Lcom/google/android/gms/internal/cx;

    invoke-static {}, Lcom/google/android/gms/internal/cv;->R()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/cx;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/dx;)V
    .locals 2

    .prologue
    .line 0
    .line 51047
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->e()V

    .line 51046
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dx;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51048
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 51049
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->g:Lcom/google/android/gms/internal/di$a;

    .line 51046
    const-string/jumbo v1, "Inactivity, disconnecting from the service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dx;->A()V

    .line 0
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/dx;Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 0
    .line 51041
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->e()V

    .line 51040
    iget-object v0, p0, Lcom/google/android/gms/internal/dx;->b:Lcom/google/android/gms/internal/de;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/dx;->b:Lcom/google/android/gms/internal/de;

    .line 51042
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 51043
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->g:Lcom/google/android/gms/internal/di$a;

    .line 51040
    const-string/jumbo v1, "Disconnected from device MeasurementService"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51045
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->e()V

    .line 51044
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dx;->z()V

    .line 0
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 0
    .line 51037
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->e()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dx;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dx;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Lcom/google/android/gms/internal/cv;->ac()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 51038
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 51039
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "Discarding data. Max runnable queue size reached"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/dx;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/dx;->g:Lcom/google/android/gms/internal/cx;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/cx;->a(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dx;->z()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/dx;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/dx;->B()V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 2

    .prologue
    .line 0
    .line 51035
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->e()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dx;->J()V

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/a/a;->a()Lcom/google/android/gms/common/a/a;

    .line 51036
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->n()Landroid/content/Context;

    move-result-object v0

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/dx;->a:Lcom/google/android/gms/internal/dx$a;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/a;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/dx;->b:Lcom/google/android/gms/internal/de;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected final a()V
    .locals 0

    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/de;)V
    .locals 3

    .prologue
    .line 0
    .line 51029
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->e()V

    .line 0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/dx;->b:Lcom/google/android/gms/internal/de;

    invoke-direct {p0}, Lcom/google/android/gms/internal/dx;->B()V

    .line 51031
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->e()V

    .line 51032
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 51033
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->g:Lcom/google/android/gms/internal/di$a;

    .line 51030
    const-string/jumbo v1, "Processing queued up service tasks"

    iget-object v2, p0, Lcom/google/android/gms/internal/dx;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dx;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 51034
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->t()Lcom/google/android/gms/internal/dp;

    move-result-object v2

    .line 51030
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/dp;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dx;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dx;->g:Lcom/google/android/gms/internal/cx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cx;->c()V

    .line 0
    return-void
.end method

.method final a(Lcom/google/android/gms/internal/de;Lcom/google/android/gms/common/internal/safeparcel/zza;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x64

    .line 0
    .line 3000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->e()V

    .line 4000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->c()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dx;->J()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {}, Lcom/google/android/gms/internal/cv;->V()Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/cv;->ag()I

    move v3, v2

    move v1, v4

    :goto_0
    const/16 v0, 0x3e9

    if-ge v3, v0, :cond_5

    if-ne v1, v4, :cond_5

    .line 5000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->o()Lcom/google/android/gms/internal/dg;

    move-result-object v0

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dg;->x()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_1
    if-eqz p2, :cond_0

    if-ge v1, v4, :cond_0

    invoke-interface {v5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/safeparcel/zza;

    instance-of v7, v0, Lcom/google/android/gms/internal/zzatq;

    if-eqz v7, :cond_1

    :try_start_0
    check-cast v0, Lcom/google/android/gms/internal/zzatq;

    .line 6000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->i()Lcom/google/android/gms/internal/df;

    move-result-object v7

    .line 7000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v8

    .line 0
    invoke-virtual {v8}, Lcom/google/android/gms/internal/di;->x()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/df;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatd;

    move-result-object v7

    invoke-interface {p1, v0, v7}, Lcom/google/android/gms/internal/de;->a(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 8000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v7

    .line 9000
    iget-object v7, v7, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v8, "Failed to send event to the service"

    invoke-virtual {v7, v8, v0}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    instance-of v7, v0, Lcom/google/android/gms/internal/zzauq;

    if-eqz v7, :cond_2

    :try_start_1
    check-cast v0, Lcom/google/android/gms/internal/zzauq;

    .line 10000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->i()Lcom/google/android/gms/internal/df;

    move-result-object v7

    .line 11000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v8

    .line 0
    invoke-virtual {v8}, Lcom/google/android/gms/internal/di;->x()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/df;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatd;

    move-result-object v7

    invoke-interface {p1, v0, v7}, Lcom/google/android/gms/internal/de;->a(Lcom/google/android/gms/internal/zzauq;Lcom/google/android/gms/internal/zzatd;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 12000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v7

    .line 13000
    iget-object v7, v7, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v8, "Failed to send attribute to the service"

    invoke-virtual {v7, v8, v0}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    instance-of v7, v0, Lcom/google/android/gms/internal/zzatg;

    if-eqz v7, :cond_3

    :try_start_2
    check-cast v0, Lcom/google/android/gms/internal/zzatg;

    .line 14000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->i()Lcom/google/android/gms/internal/df;

    move-result-object v7

    .line 15000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v8

    .line 0
    invoke-virtual {v8}, Lcom/google/android/gms/internal/di;->x()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/df;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatd;

    move-result-object v7

    invoke-interface {p1, v0, v7}, Lcom/google/android/gms/internal/de;->a(Lcom/google/android/gms/internal/zzatg;Lcom/google/android/gms/internal/zzatd;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 16000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v7

    .line 17000
    iget-object v7, v7, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v8, "Failed to send conditional property to the service"

    invoke-virtual {v7, v8, v0}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 18000
    :cond_3
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 19000
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v7, "Discarding data. Unrecognized parcel type."

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    :cond_5
    return-void

    :cond_6
    move v1, v2

    goto/16 :goto_1
.end method

.method protected final a(Lcom/google/android/gms/internal/zzatg;)V
    .locals 3

    .prologue
    .line 0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->e()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dx;->J()V

    invoke-static {}, Lcom/google/android/gms/internal/cv;->V()Z

    .line 23000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->o()Lcom/google/android/gms/internal/dg;

    move-result-object v0

    .line 0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/dg;->a(Lcom/google/android/gms/internal/zzatg;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/zzatg;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzatg;-><init>(Lcom/google/android/gms/internal/zzatg;)V

    new-instance v2, Lcom/google/android/gms/internal/dx$10;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/google/android/gms/internal/dx$10;-><init>(Lcom/google/android/gms/internal/dx;ZLcom/google/android/gms/internal/zzatg;Lcom/google/android/gms/internal/zzatg;)V

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/dx;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(Lcom/google/android/gms/internal/zzatq;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->e()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dx;->J()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {}, Lcom/google/android/gms/internal/cv;->V()Z

    .line 21000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->o()Lcom/google/android/gms/internal/dg;

    move-result-object v0

    .line 0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/dg;->a(Lcom/google/android/gms/internal/zzatq;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/dx$9;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/google/android/gms/internal/dx$9;-><init>(Lcom/google/android/gms/internal/dx;ZLcom/google/android/gms/internal/zzatq;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/dx;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(Lcom/google/android/gms/internal/zzauq;)V
    .locals 2

    .prologue
    .line 0
    .line 26000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->e()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dx;->J()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {}, Lcom/google/android/gms/internal/cv;->V()Z

    .line 27000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->o()Lcom/google/android/gms/internal/dg;

    move-result-object v0

    .line 0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/dg;->a(Lcom/google/android/gms/internal/zzauq;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/dx$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/internal/dx$3;-><init>(Lcom/google/android/gms/internal/dx;ZLcom/google/android/gms/internal/zzauq;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/dx;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(Lcom/google/android/gms/measurement/AppMeasurement$f;)V
    .locals 1

    .prologue
    .line 0
    .line 31000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->e()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dx;->J()V

    new-instance v0, Lcom/google/android/gms/internal/dx$7;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/dx$7;-><init>(Lcom/google/android/gms/internal/dx;Lcom/google/android/gms/measurement/AppMeasurement$f;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/dx;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 0
    .line 29000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->e()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dx;->J()V

    new-instance v0, Lcom/google/android/gms/internal/dx$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/dx$5;-><init>(Lcom/google/android/gms/internal/dx;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/dx;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzatg;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 0
    .line 24000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->e()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dx;->J()V

    new-instance v0, Lcom/google/android/gms/internal/dx$11;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/dx$11;-><init>(Lcom/google/android/gms/internal/dx;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/dx;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzauq;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 0
    .line 25000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->e()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dx;->J()V

    new-instance v0, Lcom/google/android/gms/internal/dx$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/dx$2;-><init>(Lcom/google/android/gms/internal/dx;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/dx;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final a(Ljava/util/concurrent/atomic/AtomicReference;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzauq;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    .line 0
    .line 28000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->e()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dx;->J()V

    new-instance v0, Lcom/google/android/gms/internal/dx$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/dx$4;-><init>(Lcom/google/android/gms/internal/dx;Ljava/util/concurrent/atomic/AtomicReference;Z)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/dx;->a(Ljava/lang/Runnable;)V

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

.method public final x()Z
    .locals 1

    .prologue
    .line 0
    .line 2000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->e()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dx;->J()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dx;->b:Lcom/google/android/gms/internal/de;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final y()V
    .locals 1

    .prologue
    .line 0
    .line 30000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->e()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dx;->J()V

    new-instance v0, Lcom/google/android/gms/internal/dx$6;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/dx$6;-><init>(Lcom/google/android/gms/internal/dx;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/dx;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method final z()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 0
    .line 33000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->e()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dx;->J()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dx;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51021
    :goto_0
    return-void

    .line 0
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dx;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 34000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->v()Lcom/google/android/gms/internal/dm;

    move-result-object v0

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dm;->B()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/dx;->c:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/internal/dx;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 35000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 36000
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->g:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v3, "State of service unknown"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    .line 38000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->e()V

    .line 37000
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dx;->J()V

    invoke-static {}, Lcom/google/android/gms/internal/cv;->V()Z

    .line 39000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 40000
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->g:Lcom/google/android/gms/internal/di$a;

    .line 37000
    const-string/jumbo v3, "Checking service availability"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/common/j;->b()Lcom/google/android/gms/common/j;

    move-result-object v0

    .line 41000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->n()Landroid/content/Context;

    move-result-object v3

    .line 37000
    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/j;->a(Landroid/content/Context;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_1
    move v0, v2

    .line 0
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/dx;->c:Ljava/lang/Boolean;

    .line 51003
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->v()Lcom/google/android/gms/internal/dm;

    move-result-object v0

    .line 0
    iget-object v3, p0, Lcom/google/android/gms/internal/dx;->c:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/dm;->a(Z)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/dx;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 51004
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 51005
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->g:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "Using measurement service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/dx;->a:Lcom/google/android/gms/internal/dx$a;

    .line 51006
    iget-object v0, v1, Lcom/google/android/gms/internal/dx$a;->c:Lcom/google/android/gms/internal/dx;

    .line 51007
    invoke-super {v0}, Lcom/google/android/gms/internal/dt;->e()V

    .line 51006
    iget-object v0, v1, Lcom/google/android/gms/internal/dx$a;->c:Lcom/google/android/gms/internal/dx;

    .line 51008
    invoke-super {v0}, Lcom/google/android/gms/internal/dt;->n()Landroid/content/Context;

    move-result-object v0

    .line 51006
    monitor-enter v1

    :try_start_0
    iget-boolean v2, v1, Lcom/google/android/gms/internal/dx$a;->a:Z

    if-eqz v2, :cond_2

    iget-object v0, v1, Lcom/google/android/gms/internal/dx$a;->c:Lcom/google/android/gms/internal/dx;

    .line 51009
    invoke-super {v0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 51010
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->g:Lcom/google/android/gms/internal/di$a;

    .line 51006
    const-string/jumbo v2, "Connection attempt already in progress"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 42000
    :sswitch_0
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 43000
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->g:Lcom/google/android/gms/internal/di$a;

    .line 37000
    const-string/jumbo v3, "Service available"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    move v0, v1

    goto :goto_2

    .line 44000
    :sswitch_1
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 45000
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->g:Lcom/google/android/gms/internal/di$a;

    .line 37000
    const-string/jumbo v3, "Service missing"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 46000
    :sswitch_2
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 47000
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->c:Lcom/google/android/gms/internal/di$a;

    .line 37000
    const-string/jumbo v3, "Service updating"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    move v0, v1

    goto :goto_2

    .line 48000
    :sswitch_3
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 49000
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->f:Lcom/google/android/gms/internal/di$a;

    .line 37000
    const-string/jumbo v3, "Service container out of date"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_2

    .line 50000
    :sswitch_4
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 51000
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->c:Lcom/google/android/gms/internal/di$a;

    .line 37000
    const-string/jumbo v3, "Service disabled"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 51001
    :sswitch_5
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 51002
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->c:Lcom/google/android/gms/internal/di$a;

    .line 37000
    const-string/jumbo v3, "Service invalid"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 51006
    :cond_2
    :try_start_1
    iget-object v2, v1, Lcom/google/android/gms/internal/dx$a;->b:Lcom/google/android/gms/internal/dh;

    if-eqz v2, :cond_3

    iget-object v0, v1, Lcom/google/android/gms/internal/dx$a;->c:Lcom/google/android/gms/internal/dx;

    .line 51011
    invoke-super {v0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 51012
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->g:Lcom/google/android/gms/internal/di$a;

    .line 51006
    const-string/jumbo v2, "Already awaiting connection attempt"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    monitor-exit v1

    goto/16 :goto_0

    :cond_3
    new-instance v2, Lcom/google/android/gms/internal/dh;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v0, v3, v1, v1}, Lcom/google/android/gms/internal/dh;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/n$b;Lcom/google/android/gms/common/internal/n$c;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/dx$a;->b:Lcom/google/android/gms/internal/dh;

    iget-object v0, v1, Lcom/google/android/gms/internal/dx$a;->c:Lcom/google/android/gms/internal/dx;

    .line 51013
    invoke-super {v0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 51014
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->g:Lcom/google/android/gms/internal/di$a;

    .line 51006
    const-string/jumbo v2, "Connecting to remote service"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/google/android/gms/internal/dx$a;->a:Z

    iget-object v0, v1, Lcom/google/android/gms/internal/dx$a;->b:Lcom/google/android/gms/internal/dh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dh;->j_()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 51015
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/cv;->V()Z

    .line 51016
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->n()Landroid/content/Context;

    move-result-object v0

    .line 51015
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 51017
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->n()Landroid/content/Context;

    move-result-object v4

    .line 51015
    const-string/jumbo v5, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 0
    :goto_3
    if-eqz v1, :cond_7

    .line 51018
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 51019
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->g:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "Using local app measurement service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.google.android.gms.measurement.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    .line 51020
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->n()Landroid/content/Context;

    move-result-object v2

    .line 0
    invoke-static {}, Lcom/google/android/gms/internal/cv;->V()Z

    const-string/jumbo v3, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/dx;->a:Lcom/google/android/gms/internal/dx$a;

    .line 51021
    iget-object v2, v1, Lcom/google/android/gms/internal/dx$a;->c:Lcom/google/android/gms/internal/dx;

    .line 51022
    invoke-super {v2}, Lcom/google/android/gms/internal/dt;->e()V

    .line 51021
    iget-object v2, v1, Lcom/google/android/gms/internal/dx$a;->c:Lcom/google/android/gms/internal/dx;

    .line 51023
    invoke-super {v2}, Lcom/google/android/gms/internal/dt;->n()Landroid/content/Context;

    move-result-object v2

    .line 51021
    invoke-static {}, Lcom/google/android/gms/common/a/a;->a()Lcom/google/android/gms/common/a/a;

    monitor-enter v1

    :try_start_2
    iget-boolean v3, v1, Lcom/google/android/gms/internal/dx$a;->a:Z

    if-eqz v3, :cond_6

    iget-object v0, v1, Lcom/google/android/gms/internal/dx$a;->c:Lcom/google/android/gms/internal/dx;

    .line 51024
    invoke-super {v0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 51025
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->g:Lcom/google/android/gms/internal/di$a;

    .line 51021
    const-string/jumbo v2, "Connection attempt already in progress"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_5
    move v1, v2

    .line 51015
    goto :goto_3

    .line 51021
    :cond_6
    const/4 v3, 0x1

    :try_start_3
    iput-boolean v3, v1, Lcom/google/android/gms/internal/dx$a;->a:Z

    iget-object v3, v1, Lcom/google/android/gms/internal/dx$a;->c:Lcom/google/android/gms/internal/dx;

    .line 51026
    iget-object v3, v3, Lcom/google/android/gms/internal/dx;->a:Lcom/google/android/gms/internal/dx$a;

    .line 51021
    const/16 v4, 0x81

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gms/common/a/a;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 51027
    :cond_7
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 51028
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 37000
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x9 -> :sswitch_5
        0x12 -> :sswitch_2
    .end sparse-switch
.end method
