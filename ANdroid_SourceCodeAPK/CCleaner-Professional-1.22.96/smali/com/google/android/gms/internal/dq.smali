.class public Lcom/google/android/gms/internal/dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/dq$a;
    }
.end annotation


# static fields
.field private static volatile m:Lcom/google/android/gms/internal/dq;


# instance fields
.field private final A:Lcom/google/android/gms/internal/cq;

.field private final B:Z

.field private C:Z

.field private D:Ljava/lang/Boolean;

.field private E:J

.field private F:Ljava/nio/channels/FileLock;

.field private G:Ljava/nio/channels/FileChannel;

.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private I:J

.field final a:Landroid/content/Context;

.field final b:Lcom/google/android/gms/internal/cv;

.field final c:Lcom/google/android/gms/internal/di;

.field final d:Lcom/google/android/gms/internal/dp;

.field final e:Lcom/google/android/gms/internal/dz;

.field public final f:Lcom/google/android/gms/measurement/AppMeasurement;

.field public final g:Lcom/google/firebase/a/a;

.field final h:Lcom/google/android/gms/internal/dg;

.field final i:Lcom/google/android/gms/common/util/d;

.field j:I

.field k:I

.field protected l:J

.field private final n:Lcom/google/android/gms/internal/dm;

.field private final o:Lcom/google/android/gms/internal/do;

.field private final p:Lcom/google/android/gms/internal/ee;

.field private final q:Lcom/google/android/gms/internal/cw;

.field private final r:Lcom/google/android/gms/internal/dj;

.field private final s:Lcom/google/android/gms/internal/dw;

.field private final t:Lcom/google/android/gms/internal/dx;

.field private final u:Lcom/google/android/gms/internal/cy;

.field private final v:Lcom/google/android/gms/internal/dv;

.field private final w:Lcom/google/android/gms/internal/df;

.field private final x:Lcom/google/android/gms/internal/dk;

.field private final y:Lcom/google/android/gms/internal/eb;

.field private final z:Lcom/google/android/gms/internal/ct;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/du;)V
    .locals 4

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/du;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/dq;->a:Landroid/content/Context;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/dq;->I:J

    .line 1000
    invoke-static {}, Lcom/google/android/gms/common/util/f;->d()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/internal/dq;->i:Lcom/google/android/gms/common/util/d;

    .line 2000
    new-instance v0, Lcom/google/android/gms/internal/cv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cv;-><init>(Lcom/google/android/gms/internal/dq;)V

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/internal/dq;->b:Lcom/google/android/gms/internal/cv;

    .line 3000
    new-instance v0, Lcom/google/android/gms/internal/dm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/dm;-><init>(Lcom/google/android/gms/internal/dq;)V

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dm;->K()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dq;->n:Lcom/google/android/gms/internal/dm;

    .line 4000
    new-instance v0, Lcom/google/android/gms/internal/di;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/di;-><init>(Lcom/google/android/gms/internal/dq;)V

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/di;->K()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dq;->c:Lcom/google/android/gms/internal/di;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 5000
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->e:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "App measurement is starting up, version"

    invoke-static {}, Lcom/google/android/gms/internal/cv;->U()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/gms/internal/cv;->V()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 6000
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->e:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    .line 7000
    new-instance v0, Lcom/google/android/gms/internal/ee;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ee;-><init>(Lcom/google/android/gms/internal/dq;)V

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ee;->K()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dq;->p:Lcom/google/android/gms/internal/ee;

    .line 8000
    new-instance v0, Lcom/google/android/gms/internal/cy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cy;-><init>(Lcom/google/android/gms/internal/dq;)V

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cy;->K()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dq;->u:Lcom/google/android/gms/internal/cy;

    .line 9000
    new-instance v0, Lcom/google/android/gms/internal/df;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/df;-><init>(Lcom/google/android/gms/internal/dq;)V

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/df;->K()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dq;->w:Lcom/google/android/gms/internal/df;

    invoke-static {}, Lcom/google/android/gms/internal/cv;->V()Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/df;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ee;->j(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 10000
    iget-object v1, v0, Lcom/google/android/gms/internal/di;->e:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v0, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 12000
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->f:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "Debug-level message logging enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    .line 13000
    new-instance v0, Lcom/google/android/gms/internal/cw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cw;-><init>(Lcom/google/android/gms/internal/dq;)V

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cw;->K()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dq;->q:Lcom/google/android/gms/internal/cw;

    .line 14000
    new-instance v0, Lcom/google/android/gms/internal/dg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/dg;-><init>(Lcom/google/android/gms/internal/dq;)V

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dg;->K()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dq;->h:Lcom/google/android/gms/internal/dg;

    .line 15000
    new-instance v0, Lcom/google/android/gms/internal/ct;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ct;-><init>(Lcom/google/android/gms/internal/dq;)V

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ct;->K()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dq;->z:Lcom/google/android/gms/internal/ct;

    .line 16000
    new-instance v0, Lcom/google/android/gms/internal/cq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cq;-><init>(Lcom/google/android/gms/internal/dq;)V

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/internal/dq;->A:Lcom/google/android/gms/internal/cq;

    .line 17000
    new-instance v0, Lcom/google/android/gms/internal/dj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/dj;-><init>(Lcom/google/android/gms/internal/dq;)V

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dj;->K()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dq;->r:Lcom/google/android/gms/internal/dj;

    .line 18000
    new-instance v0, Lcom/google/android/gms/internal/dw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/dw;-><init>(Lcom/google/android/gms/internal/dq;)V

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dw;->K()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dq;->s:Lcom/google/android/gms/internal/dw;

    invoke-static {p0}, Lcom/google/android/gms/internal/du;->b(Lcom/google/android/gms/internal/dq;)Lcom/google/android/gms/internal/dx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dx;->K()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dq;->t:Lcom/google/android/gms/internal/dx;

    invoke-static {p0}, Lcom/google/android/gms/internal/du;->a(Lcom/google/android/gms/internal/dq;)Lcom/google/android/gms/internal/dv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dv;->K()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dq;->v:Lcom/google/android/gms/internal/dv;

    invoke-static {p0}, Lcom/google/android/gms/internal/du;->c(Lcom/google/android/gms/internal/dq;)Lcom/google/android/gms/internal/eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/eb;->K()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dq;->y:Lcom/google/android/gms/internal/eb;

    .line 19000
    new-instance v0, Lcom/google/android/gms/internal/dk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/dk;-><init>(Lcom/google/android/gms/internal/dq;)V

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/internal/dq;->x:Lcom/google/android/gms/internal/dk;

    .line 20000
    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/AppMeasurement;-><init>(Lcom/google/android/gms/internal/dq;)V

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/internal/dq;->f:Lcom/google/android/gms/measurement/AppMeasurement;

    .line 21000
    new-instance v0, Lcom/google/firebase/a/a;

    invoke-direct {v0, p0}, Lcom/google/firebase/a/a;-><init>(Lcom/google/android/gms/internal/dq;)V

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/internal/dq;->g:Lcom/google/firebase/a/a;

    .line 22000
    new-instance v0, Lcom/google/android/gms/internal/dz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/dz;-><init>(Lcom/google/android/gms/internal/dq;)V

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dz;->K()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dq;->e:Lcom/google/android/gms/internal/dz;

    .line 23000
    new-instance v0, Lcom/google/android/gms/internal/do;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/do;-><init>(Lcom/google/android/gms/internal/dq;)V

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/do;->K()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dq;->o:Lcom/google/android/gms/internal/do;

    .line 24000
    new-instance v0, Lcom/google/android/gms/internal/dp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/dp;-><init>(Lcom/google/android/gms/internal/dq;)V

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->K()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dq;->d:Lcom/google/android/gms/internal/dp;

    iget v0, p0, Lcom/google/android/gms/internal/dq;->j:I

    iget v1, p0, Lcom/google/android/gms/internal/dq;->k:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 25000
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "Not all components initialized"

    iget v2, p0, Lcom/google/android/gms/internal/dq;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/dq;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dq;->B:Z

    invoke-static {}, Lcom/google/android/gms/internal/cv;->V()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->h()Lcom/google/android/gms/internal/dv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dv;->x()V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->d:Lcom/google/android/gms/internal/dp;

    new-instance v1, Lcom/google/android/gms/internal/dq$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/dq$1;-><init>(Lcom/google/android/gms/internal/dq;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dp;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v1

    .line 11000
    iget-object v1, v1, Lcom/google/android/gms/internal/di;->e:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v2, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 26000
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->c:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "Application context is not an Application"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private A()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 0
    .line 51127
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->a()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    .line 51128
    const-string/jumbo v3, "select count(1) > 0 from raw_events"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/cw;->a(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    move v2, v1

    .line 0
    :goto_0
    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cw;->A()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    .line 51128
    goto :goto_0
.end method

.method private B()Z
    .locals 1

    .prologue
    .line 0
    .line 51174
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->a()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dq;->C:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/nio/channels/FileChannel;)I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x0

    .line 0
    .line 51001
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v1

    .line 51002
    iget-object v1, v1, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v2, "Bad chanel to read from"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-eq v2, v4, :cond_3

    const/4 v1, -0x1

    if-eq v2, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v1

    .line 51003
    iget-object v1, v1, Lcom/google/android/gms/internal/di;->c:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v3, "Unexpected data length. Bytes read"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 51004
    iget-object v2, v2, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v3, "Failed to read from channel"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/internal/dq;
    .locals 3

    .prologue
    .line 0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/dq;->m:Lcom/google/android/gms/internal/dq;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/dq;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/dq;->m:Lcom/google/android/gms/internal/dq;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/du;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/du;-><init>(Landroid/content/Context;)V

    .line 44000
    new-instance v2, Lcom/google/android/gms/internal/dq;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/dq;-><init>(Lcom/google/android/gms/internal/du;)V

    .line 0
    sput-object v2, Lcom/google/android/gms/internal/dq;->m:Lcom/google/android/gms/internal/dq;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/dq;->m:Lcom/google/android/gms/internal/dq;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lcom/google/android/gms/internal/cr;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/cr;->a()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xcc

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/dq;->a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/cr;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 51093
    iget-object v2, v2, Lcom/google/android/gms/internal/di;->g:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v4, "Fetching remote configuration"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/cr;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->g()Lcom/google/android/gms/internal/do;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/cr;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/do;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/eg$b;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->g()Lcom/google/android/gms/internal/do;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/cr;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/do;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v3, Landroid/support/v4/h/a;

    invoke-direct {v3}, Landroid/support/v4/h/a;-><init>()V

    const-string/jumbo v2, "If-Modified-Since"

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->k()Lcom/google/android/gms/internal/dj;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/cr;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/dq$4;

    invoke-direct {v5, p0}, Lcom/google/android/gms/internal/dq$4;-><init>(Lcom/google/android/gms/internal/dq;)V

    invoke-virtual {v2, v4, v1, v3, v5}, Lcom/google/android/gms/internal/dj;->a(Ljava/lang/String;Ljava/net/URL;Ljava/util/Map;Lcom/google/android/gms/internal/dj$a;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v1

    .line 51094
    iget-object v1, v1, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v2, "Failed to parse config URL. Not fetching. appId"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/cr;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/di;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/internal/cz;Lcom/google/android/gms/internal/zzatd;)V
    .locals 13

    .prologue
    .line 0
    .line 51064
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->a()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/cz;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/cz;->a:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Z)V

    new-instance v2, Lcom/google/android/gms/internal/eh$e;

    invoke-direct {v2}, Lcom/google/android/gms/internal/eh$e;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/eh$e;->a:Ljava/lang/Integer;

    const-string/jumbo v0, "android"

    iput-object v0, v2, Lcom/google/android/gms/internal/eh$e;->i:Ljava/lang/String;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/internal/eh$e;->o:Ljava/lang/String;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzatd;->d:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/internal/eh$e;->n:Ljava/lang/String;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzatd;->c:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/internal/eh$e;->p:Ljava/lang/String;

    iget-wide v0, p2, Lcom/google/android/gms/internal/zzatd;->j:J

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/eh$e;->C:Ljava/lang/Integer;

    iget-wide v0, p2, Lcom/google/android/gms/internal/zzatd;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/eh$e;->q:Ljava/lang/Long;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzatd;->b:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/internal/eh$e;->y:Ljava/lang/String;

    iget-wide v0, p2, Lcom/google/android/gms/internal/zzatd;->f:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iput-object v0, v2, Lcom/google/android/gms/internal/eh$e;->v:Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->d()Lcom/google/android/gms/internal/dm;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dm;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/internal/eh$e;->s:Ljava/lang/String;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, v2, Lcom/google/android/gms/internal/eh$e;->t:Ljava/lang/Boolean;

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->n()Lcom/google/android/gms/internal/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cy;->x()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/eh$e;->k:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->n()Lcom/google/android/gms/internal/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cy;->y()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/eh$e;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->n()Lcom/google/android/gms/internal/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cy;->z()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/eh$e;->m:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->n()Lcom/google/android/gms/internal/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cy;->A()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/eh$e;->l:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, v2, Lcom/google/android/gms/internal/eh$e;->r:Ljava/lang/Long;

    const/4 v0, 0x0

    iput-object v0, v2, Lcom/google/android/gms/internal/eh$e;->d:Ljava/lang/Long;

    const/4 v0, 0x0

    iput-object v0, v2, Lcom/google/android/gms/internal/eh$e;->e:Ljava/lang/Long;

    const/4 v0, 0x0

    iput-object v0, v2, Lcom/google/android/gms/internal/eh$e;->f:Ljava/lang/Long;

    iget-wide v0, p2, Lcom/google/android/gms/internal/zzatd;->l:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/eh$e;->H:Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cw;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/cr;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/cr;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/cr;-><init>(Lcom/google/android/gms/internal/dq;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->d()Lcom/google/android/gms/internal/dm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/dm;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cr;->a(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/google/android/gms/internal/zzatd;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cr;->d(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/google/android/gms/internal/zzatd;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cr;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->d()Lcom/google/android/gms/internal/dm;

    move-result-object v1

    iget-object v3, p2, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/dm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cr;->c(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/cr;->f(J)V

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/cr;->a(J)V

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/cr;->b(J)V

    iget-object v1, p2, Lcom/google/android/gms/internal/zzatd;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cr;->e(Ljava/lang/String;)V

    iget-wide v4, p2, Lcom/google/android/gms/internal/zzatd;->j:J

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/cr;->c(J)V

    iget-object v1, p2, Lcom/google/android/gms/internal/zzatd;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cr;->f(Ljava/lang/String;)V

    iget-wide v4, p2, Lcom/google/android/gms/internal/zzatd;->e:J

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/cr;->d(J)V

    iget-wide v4, p2, Lcom/google/android/gms/internal/zzatd;->f:J

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/cr;->e(J)V

    iget-boolean v1, p2, Lcom/google/android/gms/internal/zzatd;->h:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cr;->a(Z)V

    iget-wide v4, p2, Lcom/google/android/gms/internal/zzatd;->l:J

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/cr;->i(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/cw;->a(Lcom/google/android/gms/internal/cr;)V

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cr;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/google/android/gms/internal/eh$e;->u:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cr;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/eh$e;->B:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cw;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/eh$g;

    iput-object v0, v2, Lcom/google/android/gms/internal/eh$e;->c:[Lcom/google/android/gms/internal/eh$g;

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    new-instance v4, Lcom/google/android/gms/internal/eh$g;

    invoke-direct {v4}, Lcom/google/android/gms/internal/eh$g;-><init>()V

    iget-object v0, v2, Lcom/google/android/gms/internal/eh$e;->c:[Lcom/google/android/gms/internal/eh$g;

    aput-object v4, v0, v1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ed;

    iget-object v0, v0, Lcom/google/android/gms/internal/ed;->c:Ljava/lang/String;

    iput-object v0, v4, Lcom/google/android/gms/internal/eh$g;->b:Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ed;

    iget-wide v6, v0, Lcom/google/android/gms/internal/ed;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/gms/internal/eh$g;->a:Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v5

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ed;

    iget-object v0, v0, Lcom/google/android/gms/internal/ed;->e:Ljava/lang/Object;

    invoke-virtual {v5, v4, v0}, Lcom/google/android/gms/internal/ee;->a(Lcom/google/android/gms/internal/eh$g;Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    iget-wide v0, p2, Lcom/google/android/gms/internal/zzatd;->f:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->n()Lcom/google/android/gms/internal/cy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/dq;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cy;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 51065
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->c:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "null secure ID. appId"

    iget-object v3, v2, Lcom/google/android/gms/internal/eh$e;->o:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/di;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "null"

    :cond_4
    :goto_3
    iput-object v0, v2, Lcom/google/android/gms/internal/eh$e;->F:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v1

    .line 51066
    iget-object v1, v1, Lcom/google/android/gms/internal/di;->c:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v3, "empty secure ID. appId"

    iget-object v4, v2, Lcom/google/android/gms/internal/eh$e;->o:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/di;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/cw;->a(Lcom/google/android/gms/internal/eh$e;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v12

    .line 51068
    iget-object v0, p1, Lcom/google/android/gms/internal/cz;->f:Lcom/google/android/gms/internal/zzato;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/google/android/gms/internal/cz;->f:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzato;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "_r"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    .line 0
    :goto_4
    invoke-virtual {v12, p1, v10, v11, v0}, Lcom/google/android/gms/internal/cw;->a(Lcom/google/android/gms/internal/cz;JZ)Z

    move-result v0

    if-eqz v0, :cond_8

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/dq;->l:J

    :cond_8
    :goto_5
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v1

    .line 51067
    iget-object v1, v1, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v3, "Data loss. Failed to insert raw event metadata. appId"

    iget-object v2, v2, Lcom/google/android/gms/internal/eh$e;->o:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/di;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    .line 51068
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->g()Lcom/google/android/gms/internal/do;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/cz;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/cz;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/do;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/dq;->z()J

    move-result-wide v2

    iget-object v4, p1, Lcom/google/android/gms/internal/cz;->a:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/internal/cw;->a(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/cw$a;

    move-result-object v1

    if-eqz v0, :cond_a

    iget-wide v0, v1, Lcom/google/android/gms/internal/cw$a;->e:J

    .line 51069
    iget-object v2, p0, Lcom/google/android/gms/internal/dq;->b:Lcom/google/android/gms/internal/cv;

    .line 51068
    iget-object v3, p1, Lcom/google/android/gms/internal/cz;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/cv;->a(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private static a(Lcom/google/android/gms/internal/ds;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static a(Lcom/google/android/gms/internal/dt;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dt;->I()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Component not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private a(ILjava/nio/channels/FileChannel;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 0
    .line 51005
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 51006
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v2, "Bad chanel to read from"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v4, 0x0

    :try_start_0
    invoke-virtual {p2, v4, v5}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p2, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 51007
    iget-object v2, v2, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v3, "Error writing to channel. Bytes written"

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 51008
    iget-object v2, v2, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v3, "Failed to write to channel"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0
.end method

.method private a(J)Z
    .locals 21

    .prologue
    .line 0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cw;->x()V

    :try_start_0
    new-instance v8, Lcom/google/android/gms/internal/dq$a;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v2}, Lcom/google/android/gms/internal/dq$a;-><init>(Lcom/google/android/gms/internal/dq;B)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/gms/internal/dq;->I:J

    move-wide/from16 v4, p1

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/cw;->a(Ljava/lang/String;JJLcom/google/android/gms/internal/cw$b;)V

    .line 51095
    iget-object v2, v8, Lcom/google/android/gms/internal/dq$a;->c:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, v8, Lcom/google/android/gms/internal/dq$a;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 0
    :goto_0
    if-nez v2, :cond_25

    const/4 v5, 0x0

    iget-object v0, v8, Lcom/google/android/gms/internal/dq$a;->a:Lcom/google/android/gms/internal/eh$e;

    move-object/from16 v19, v0

    iget-object v2, v8, Lcom/google/android/gms/internal/dq$a;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/eh$b;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/eh$e;->b:[Lcom/google/android/gms/internal/eh$b;

    const/4 v6, 0x0

    const/4 v2, 0x0

    move v7, v2

    :goto_1
    iget-object v2, v8, Lcom/google/android/gms/internal/dq$a;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v7, v2, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->g()Lcom/google/android/gms/internal/do;

    move-result-object v3

    iget-object v2, v8, Lcom/google/android/gms/internal/dq$a;->a:Lcom/google/android/gms/internal/eh$e;

    iget-object v4, v2, Lcom/google/android/gms/internal/eh$e;->o:Ljava/lang/String;

    iget-object v2, v8, Lcom/google/android/gms/internal/dq$a;->c:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/eh$b;

    iget-object v2, v2, Lcom/google/android/gms/internal/eh$b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/do;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 51096
    iget-object v3, v2, Lcom/google/android/gms/internal/di;->c:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v4, "Dropping blacklisted raw event. appId"

    iget-object v2, v8, Lcom/google/android/gms/internal/dq$a;->a:Lcom/google/android/gms/internal/eh$e;

    iget-object v2, v2, Lcom/google/android/gms/internal/eh$e;->o:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/di;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    iget-object v2, v8, Lcom/google/android/gms/internal/dq$a;->c:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/eh$b;

    iget-object v2, v2, Lcom/google/android/gms/internal/eh$b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v9, v2}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v2

    iget-object v3, v8, Lcom/google/android/gms/internal/dq$a;->a:Lcom/google/android/gms/internal/eh$e;

    iget-object v3, v3, Lcom/google/android/gms/internal/eh$e;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ee;->l(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v2

    iget-object v3, v8, Lcom/google/android/gms/internal/dq$a;->a:Lcom/google/android/gms/internal/eh$e;

    iget-object v3, v3, Lcom/google/android/gms/internal/eh$e;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ee;->m(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_27

    const-string/jumbo v3, "_err"

    iget-object v2, v8, Lcom/google/android/gms/internal/dq$a;->c:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/eh$b;

    iget-object v2, v2, Lcom/google/android/gms/internal/eh$b;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v3

    const/16 v4, 0xb

    const-string/jumbo v9, "_ev"

    iget-object v2, v8, Lcom/google/android/gms/internal/dq$a;->c:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/eh$b;

    iget-object v2, v2, Lcom/google/android/gms/internal/eh$b;->b:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v3, v4, v9, v2, v10}, Lcom/google/android/gms/internal/ee;->a(ILjava/lang/String;Ljava/lang/String;I)V

    move v2, v6

    move v3, v5

    :goto_3
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move v6, v2

    move v5, v3

    goto/16 :goto_1

    .line 51095
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 0
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->g()Lcom/google/android/gms/internal/do;

    move-result-object v3

    iget-object v2, v8, Lcom/google/android/gms/internal/dq$a;->a:Lcom/google/android/gms/internal/eh$e;

    iget-object v4, v2, Lcom/google/android/gms/internal/eh$e;->o:Ljava/lang/String;

    iget-object v2, v8, Lcom/google/android/gms/internal/dq$a;->c:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/eh$b;

    iget-object v2, v2, Lcom/google/android/gms/internal/eh$b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/do;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    iget-object v2, v8, Lcom/google/android/gms/internal/dq$a;->c:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/eh$b;

    iget-object v3, v2, Lcom/google/android/gms/internal/eh$b;->b:Ljava/lang/String;

    .line 51097
    invoke-static {v3}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_5
    :goto_4
    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x0

    .line 0
    :goto_5
    if-eqz v2, :cond_2b

    :cond_6
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v2, v8, Lcom/google/android/gms/internal/dq$a;->c:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/eh$b;

    iget-object v2, v2, Lcom/google/android/gms/internal/eh$b;->a:[Lcom/google/android/gms/internal/eh$c;

    if-nez v2, :cond_7

    iget-object v2, v8, Lcom/google/android/gms/internal/dq$a;->c:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/eh$b;

    const/4 v9, 0x0

    new-array v9, v9, [Lcom/google/android/gms/internal/eh$c;

    iput-object v9, v2, Lcom/google/android/gms/internal/eh$b;->a:[Lcom/google/android/gms/internal/eh$c;

    :cond_7
    iget-object v2, v8, Lcom/google/android/gms/internal/dq$a;->c:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/eh$b;

    iget-object v10, v2, Lcom/google/android/gms/internal/eh$b;->a:[Lcom/google/android/gms/internal/eh$c;

    array-length v11, v10

    const/4 v2, 0x0

    move v9, v2

    :goto_6
    if-ge v9, v11, :cond_9

    aget-object v2, v10, v9

    const-string/jumbo v12, "_c"

    iget-object v13, v2, Lcom/google/android/gms/internal/eh$c;->a:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const-wide/16 v12, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/eh$c;->c:Ljava/lang/Long;

    const/4 v2, 0x1

    move v3, v2

    move v2, v4

    :goto_7
    add-int/lit8 v4, v9, 0x1

    move v9, v4

    move v4, v2

    goto :goto_6

    .line 51097
    :sswitch_0
    const-string/jumbo v4, "_in"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x0

    goto :goto_4

    :sswitch_1
    const-string/jumbo v4, "_ui"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :sswitch_2
    const-string/jumbo v4, "_ug"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x2

    goto :goto_4

    :pswitch_0
    const/4 v2, 0x1

    goto :goto_5

    .line 0
    :cond_8
    const-string/jumbo v12, "_r"

    iget-object v13, v2, Lcom/google/android/gms/internal/eh$c;->a:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2a

    const-wide/16 v12, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gms/internal/eh$c;->c:Ljava/lang/Long;

    const/4 v2, 0x1

    goto :goto_7

    :cond_9
    if-nez v3, :cond_a

    if-eqz v20, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 51098
    iget-object v3, v2, Lcom/google/android/gms/internal/di;->g:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v9, "Marking event as conversion"

    iget-object v2, v8, Lcom/google/android/gms/internal/dq$a;->c:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/eh$b;

    iget-object v2, v2, Lcom/google/android/gms/internal/eh$b;->b:Ljava/lang/String;

    invoke-virtual {v3, v9, v2}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v8, Lcom/google/android/gms/internal/dq$a;->c:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/eh$b;

    iget-object v3, v2, Lcom/google/android/gms/internal/eh$b;->a:[Lcom/google/android/gms/internal/eh$c;

    iget-object v2, v8, Lcom/google/android/gms/internal/dq$a;->c:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/eh$b;

    iget-object v2, v2, Lcom/google/android/gms/internal/eh$b;->a:[Lcom/google/android/gms/internal/eh$c;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/internal/eh$c;

    new-instance v3, Lcom/google/android/gms/internal/eh$c;

    invoke-direct {v3}, Lcom/google/android/gms/internal/eh$c;-><init>()V

    const-string/jumbo v9, "_c"

    iput-object v9, v3, Lcom/google/android/gms/internal/eh$c;->a:Ljava/lang/String;

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v3, Lcom/google/android/gms/internal/eh$c;->c:Ljava/lang/Long;

    array-length v9, v2

    add-int/lit8 v9, v9, -0x1

    aput-object v3, v2, v9

    iget-object v3, v8, Lcom/google/android/gms/internal/dq$a;->c:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/eh$b;

    iput-object v2, v3, Lcom/google/android/gms/internal/eh$b;->a:[Lcom/google/android/gms/internal/eh$c;

    :cond_a
    if-nez v4, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 51099
    iget-object v3, v2, Lcom/google/android/gms/internal/di;->g:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v4, "Marking event as real-time"

    iget-object v2, v8, Lcom/google/android/gms/internal/dq$a;->c:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/eh$b;

    iget-object v2, v2, Lcom/google/android/gms/internal/eh$b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v8, Lcom/google/android/gms/internal/dq$a;->c:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/eh$b;

    iget-object v3, v2, Lcom/google/android/gms/internal/eh$b;->a:[Lcom/google/android/gms/internal/eh$c;

    iget-object v2, v8, Lcom/google/android/gms/internal/dq$a;->c:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/eh$b;

    iget-object v2, v2, Lcom/google/android/gms/internal/eh$b;->a:[Lcom/google/android/gms/internal/eh$c;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/internal/eh$c;

    new-instance v3, Lcom/google/android/gms/internal/eh$c;

    invoke-direct {v3}, Lcom/google/android/gms/internal/eh$c;-><init>()V

    const-string/jumbo v4, "_r"

    iput-object v4, v3, Lcom/google/android/gms/internal/eh$c;->a:Ljava/lang/String;

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/internal/eh$c;->c:Ljava/lang/Long;

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aput-object v3, v2, v4

    iget-object v3, v8, Lcom/google/android/gms/internal/dq$a;->c:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/eh$b;

    iput-object v2, v3, Lcom/google/android/gms/internal/eh$b;->a:[Lcom/google/android/gms/internal/eh$c;

    :cond_b
    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v9

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->z()J

    move-result-wide v10

    iget-object v2, v8, Lcom/google/android/gms/internal/dq$a;->a:Lcom/google/android/gms/internal/eh$e;

    iget-object v12, v2, Lcom/google/android/gms/internal/eh$e;->o:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-virtual/range {v9 .. v17}, Lcom/google/android/gms/internal/cw;->a(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/cw$a;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/gms/internal/cw$a;->e:J

    .line 51100
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/dq;->b:Lcom/google/android/gms/internal/cv;

    .line 0
    iget-object v9, v8, Lcom/google/android/gms/internal/dq$a;->a:Lcom/google/android/gms/internal/eh$e;

    iget-object v9, v9, Lcom/google/android/gms/internal/eh$e;->o:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/cv;->a(Ljava/lang/String;)I

    move-result v4

    int-to-long v10, v4

    cmp-long v2, v2, v10

    if-lez v2, :cond_f

    iget-object v2, v8, Lcom/google/android/gms/internal/dq$a;->c:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/eh$b;

    const/4 v3, 0x0

    :goto_8
    iget-object v4, v2, Lcom/google/android/gms/internal/eh$b;->a:[Lcom/google/android/gms/internal/eh$c;

    array-length v4, v4

    if-ge v3, v4, :cond_e

    const-string/jumbo v4, "_r"

    iget-object v9, v2, Lcom/google/android/gms/internal/eh$b;->a:[Lcom/google/android/gms/internal/eh$c;

    aget-object v9, v9, v3

    iget-object v9, v9, Lcom/google/android/gms/internal/eh$c;->a:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, v2, Lcom/google/android/gms/internal/eh$b;->a:[Lcom/google/android/gms/internal/eh$c;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    new-array v4, v4, [Lcom/google/android/gms/internal/eh$c;

    if-lez v3, :cond_c

    iget-object v9, v2, Lcom/google/android/gms/internal/eh$b;->a:[Lcom/google/android/gms/internal/eh$c;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v4, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    array-length v9, v4

    if-ge v3, v9, :cond_d

    iget-object v9, v2, Lcom/google/android/gms/internal/eh$b;->a:[Lcom/google/android/gms/internal/eh$c;

    add-int/lit8 v10, v3, 0x1

    array-length v11, v4

    sub-int/2addr v11, v3

    invoke-static {v9, v10, v4, v3, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    iput-object v4, v2, Lcom/google/android/gms/internal/eh$b;->a:[Lcom/google/android/gms/internal/eh$c;

    :cond_e
    move/from16 v18, v5

    :cond_f
    iget-object v2, v8, Lcom/google/android/gms/internal/dq$a;->c:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/eh$b;

    iget-object v2, v2, Lcom/google/android/gms/internal/eh$b;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/ee;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    if-eqz v20, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v9

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->z()J

    move-result-wide v10

    iget-object v2, v8, Lcom/google/android/gms/internal/dq$a;->a:Lcom/google/android/gms/internal/eh$e;

    iget-object v12, v2, Lcom/google/android/gms/internal/eh$e;->o:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v9 .. v17}, Lcom/google/android/gms/internal/cw;->a(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/cw$a;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/gms/internal/cw$a;->c:J

    .line 51101
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/dq;->b:Lcom/google/android/gms/internal/cv;

    .line 0
    iget-object v5, v8, Lcom/google/android/gms/internal/dq$a;->a:Lcom/google/android/gms/internal/eh$e;

    iget-object v5, v5, Lcom/google/android/gms/internal/eh$e;->o:Ljava/lang/String;

    .line 51102
    sget-object v9, Lcom/google/android/gms/internal/dd;->t:Lcom/google/android/gms/internal/dd$a;

    invoke-virtual {v4, v5, v9}, Lcom/google/android/gms/internal/cv;->b(Ljava/lang/String;Lcom/google/android/gms/internal/dd$a;)I

    move-result v4

    .line 0
    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 51103
    iget-object v2, v2, Lcom/google/android/gms/internal/di;->c:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v3, "Too many conversions. Not logging as conversion. appId"

    iget-object v4, v8, Lcom/google/android/gms/internal/dq$a;->a:Lcom/google/android/gms/internal/eh$e;

    iget-object v4, v4, Lcom/google/android/gms/internal/eh$e;->o:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/di;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v8, Lcom/google/android/gms/internal/dq$a;->c:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/eh$b;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v10, v2, Lcom/google/android/gms/internal/eh$b;->a:[Lcom/google/android/gms/internal/eh$c;

    array-length v11, v10

    const/4 v3, 0x0

    move v9, v3

    move v3, v4

    :goto_9
    if-ge v9, v11, :cond_12

    aget-object v4, v10, v9

    const-string/jumbo v12, "_c"

    iget-object v13, v4, Lcom/google/android/gms/internal/eh$c;->a:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    :goto_a
    add-int/lit8 v5, v9, 0x1

    move v9, v5

    move-object v5, v4

    goto :goto_9

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    :cond_11
    const-string/jumbo v12, "_err"

    iget-object v4, v4, Lcom/google/android/gms/internal/eh$c;->a:Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    const/4 v3, 0x1

    move-object v4, v5

    goto :goto_a

    :cond_12
    if-eqz v3, :cond_14

    if-eqz v5, :cond_14

    iget-object v3, v2, Lcom/google/android/gms/internal/eh$b;->a:[Lcom/google/android/gms/internal/eh$c;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    new-array v10, v3, [Lcom/google/android/gms/internal/eh$c;

    const/4 v4, 0x0

    iget-object v11, v2, Lcom/google/android/gms/internal/eh$b;->a:[Lcom/google/android/gms/internal/eh$c;

    array-length v12, v11

    const/4 v3, 0x0

    move v9, v3

    :goto_b
    if-ge v9, v12, :cond_13

    aget-object v13, v11, v9

    if-eq v13, v5, :cond_28

    add-int/lit8 v3, v4, 0x1

    aput-object v13, v10, v4

    :goto_c
    add-int/lit8 v4, v9, 0x1

    move v9, v4

    move v4, v3

    goto :goto_b

    :cond_13
    iput-object v10, v2, Lcom/google/android/gms/internal/eh$b;->a:[Lcom/google/android/gms/internal/eh$c;

    move/from16 v4, v18

    :goto_d
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/google/android/gms/internal/eh$e;->b:[Lcom/google/android/gms/internal/eh$b;

    add-int/lit8 v3, v6, 0x1

    iget-object v2, v8, Lcom/google/android/gms/internal/dq$a;->c:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/eh$b;

    aput-object v2, v5, v6

    move v2, v3

    move v3, v4

    goto/16 :goto_3

    :cond_14
    if-eqz v5, :cond_15

    const-string/jumbo v2, "_err"

    iput-object v2, v5, Lcom/google/android/gms/internal/eh$c;->a:Ljava/lang/String;

    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v5, Lcom/google/android/gms/internal/eh$c;->c:Ljava/lang/Long;

    move/from16 v4, v18

    goto :goto_d

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 51104
    iget-object v2, v2, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v3, "Did not find conversion parameter. appId"

    iget-object v4, v8, Lcom/google/android/gms/internal/dq$a;->a:Lcom/google/android/gms/internal/eh$e;

    iget-object v4, v4, Lcom/google/android/gms/internal/eh$e;->o:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/di;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_16
    move/from16 v4, v18

    goto :goto_d

    :cond_17
    iget-object v2, v8, Lcom/google/android/gms/internal/dq$a;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_18

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/google/android/gms/internal/eh$e;->b:[Lcom/google/android/gms/internal/eh$b;

    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/internal/eh$b;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/eh$e;->b:[Lcom/google/android/gms/internal/eh$b;

    :cond_18
    iget-object v2, v8, Lcom/google/android/gms/internal/dq$a;->a:Lcom/google/android/gms/internal/eh$e;

    iget-object v2, v2, Lcom/google/android/gms/internal/eh$e;->o:Ljava/lang/String;

    iget-object v3, v8, Lcom/google/android/gms/internal/dq$a;->a:Lcom/google/android/gms/internal/eh$e;

    iget-object v3, v3, Lcom/google/android/gms/internal/eh$e;->c:[Lcom/google/android/gms/internal/eh$g;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/google/android/gms/internal/eh$e;->b:[Lcom/google/android/gms/internal/eh$b;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/internal/dq;->a(Ljava/lang/String;[Lcom/google/android/gms/internal/eh$g;[Lcom/google/android/gms/internal/eh$b;)[Lcom/google/android/gms/internal/eh$a;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/eh$e;->A:[Lcom/google/android/gms/internal/eh$a;

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/eh$e;->e:Ljava/lang/Long;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/eh$e;->f:Ljava/lang/Long;

    const/4 v2, 0x0

    :goto_e
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/google/android/gms/internal/eh$e;->b:[Lcom/google/android/gms/internal/eh$b;

    array-length v3, v3

    if-ge v2, v3, :cond_1b

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/google/android/gms/internal/eh$e;->b:[Lcom/google/android/gms/internal/eh$b;

    aget-object v3, v3, v2

    iget-object v4, v3, Lcom/google/android/gms/internal/eh$b;->c:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/google/android/gms/internal/eh$e;->e:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v4, v6, v10

    if-gez v4, :cond_19

    iget-object v4, v3, Lcom/google/android/gms/internal/eh$b;->c:Ljava/lang/Long;

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/google/android/gms/internal/eh$e;->e:Ljava/lang/Long;

    :cond_19
    iget-object v4, v3, Lcom/google/android/gms/internal/eh$b;->c:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/google/android/gms/internal/eh$e;->f:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v4, v6, v10

    if-lez v4, :cond_1a

    iget-object v3, v3, Lcom/google/android/gms/internal/eh$b;->c:Ljava/lang/Long;

    move-object/from16 v0, v19

    iput-object v3, v0, Lcom/google/android/gms/internal/eh$e;->f:Ljava/lang/Long;

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1b
    iget-object v2, v8, Lcom/google/android/gms/internal/dq$a;->a:Lcom/google/android/gms/internal/eh$e;

    iget-object v9, v2, Lcom/google/android/gms/internal/eh$e;->o:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/cw;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/cr;

    move-result-object v10

    if-nez v10, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 51105
    iget-object v2, v2, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v3, "Bundling raw events w/o app info. appId"

    iget-object v4, v8, Lcom/google/android/gms/internal/dq$a;->a:Lcom/google/android/gms/internal/eh$e;

    iget-object v4, v4, Lcom/google/android/gms/internal/eh$e;->o:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/di;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1c
    :goto_f
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/google/android/gms/internal/eh$e;->b:[Lcom/google/android/gms/internal/eh$b;

    array-length v2, v2

    if-lez v2, :cond_1e

    invoke-static {}, Lcom/google/android/gms/internal/cv;->V()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->g()Lcom/google/android/gms/internal/do;

    move-result-object v2

    iget-object v3, v8, Lcom/google/android/gms/internal/dq$a;->a:Lcom/google/android/gms/internal/eh$e;

    iget-object v3, v3, Lcom/google/android/gms/internal/eh$e;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/do;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/eg$b;

    move-result-object v2

    if-eqz v2, :cond_1d

    iget-object v3, v2, Lcom/google/android/gms/internal/eg$b;->a:Ljava/lang/Long;

    if-nez v3, :cond_23

    :cond_1d
    iget-object v2, v8, Lcom/google/android/gms/internal/dq$a;->a:Lcom/google/android/gms/internal/eh$e;

    iget-object v2, v2, Lcom/google/android/gms/internal/eh$e;->y:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/eh$e;->G:Ljava/lang/Long;

    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v5}, Lcom/google/android/gms/internal/cw;->a(Lcom/google/android/gms/internal/eh$e;Z)Z

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    iget-object v3, v8, Lcom/google/android/gms/internal/dq$a;->b:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/cw;->a(Ljava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/cw;->h(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cw;->y()V

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/google/android/gms/internal/eh$e;->b:[Lcom/google/android/gms/internal/eh$b;

    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v2, :cond_24

    const/4 v2, 0x1

    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/cw;->z()V

    :goto_12
    return v2

    :cond_1f
    :try_start_1
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/google/android/gms/internal/eh$e;->b:[Lcom/google/android/gms/internal/eh$b;

    array-length v2, v2

    if-lez v2, :cond_1c

    invoke-virtual {v10}, Lcom/google/android/gms/internal/cr;->g()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-eqz v4, :cond_20

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_13
    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/google/android/gms/internal/eh$e;->h:Ljava/lang/Long;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/cr;->f()J

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmp-long v4, v6, v12

    if-nez v4, :cond_26

    :goto_14
    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-eqz v4, :cond_21

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_15
    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/eh$e;->g:Ljava/lang/Long;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/cr;->q()V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/cr;->n()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/eh$e;->w:Ljava/lang/Integer;

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/google/android/gms/internal/eh$e;->e:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v10, v2, v3}, Lcom/google/android/gms/internal/cr;->a(J)V

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/google/android/gms/internal/eh$e;->f:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v10, v2, v3}, Lcom/google/android/gms/internal/cr;->b(J)V

    .line 51106
    iget-object v2, v10, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 51107
    invoke-virtual {v2}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dp;->e()V

    .line 51106
    iget-object v2, v10, Lcom/google/android/gms/internal/cr;->h:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/cr;->g(Ljava/lang/String;)V

    .line 0
    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/eh$e;->x:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/cw;->a(Lcom/google/android/gms/internal/cr;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_f

    :catchall_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/cw;->z()V

    throw v2

    :cond_20
    const/4 v4, 0x0

    goto :goto_13

    :cond_21
    const/4 v2, 0x0

    goto :goto_15

    :cond_22
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 51108
    iget-object v2, v2, Lcom/google/android/gms/internal/di;->c:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v3, "Did not find measurement config or missing version info. appId"

    iget-object v4, v8, Lcom/google/android/gms/internal/dq$a;->a:Lcom/google/android/gms/internal/eh$e;

    iget-object v4, v4, Lcom/google/android/gms/internal/eh$e;->o:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/di;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_10

    :cond_23
    iget-object v2, v2, Lcom/google/android/gms/internal/eg$b;->a:Ljava/lang/Long;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/eh$e;->G:Ljava/lang/Long;

    goto/16 :goto_10

    :cond_24
    const/4 v2, 0x0

    goto/16 :goto_11

    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cw;->y()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cw;->z()V

    const/4 v2, 0x0

    goto/16 :goto_12

    :cond_26
    move-wide v2, v6

    goto/16 :goto_14

    :cond_27
    move v2, v6

    move v3, v5

    goto/16 :goto_3

    :cond_28
    move v3, v4

    goto/16 :goto_c

    :cond_29
    move-object v4, v5

    goto/16 :goto_a

    :cond_2a
    move v2, v4

    goto/16 :goto_7

    :cond_2b
    move v4, v5

    goto/16 :goto_d

    .line 51097
    nop

    :sswitch_data_0
    .sparse-switch
        0x171c4 -> :sswitch_0
        0x17331 -> :sswitch_2
        0x17333 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/String;[Lcom/google/android/gms/internal/eh$g;[Lcom/google/android/gms/internal/eh$b;)[Lcom/google/android/gms/internal/eh$a;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->p()Lcom/google/android/gms/internal/ct;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/google/android/gms/internal/ct;->a(Ljava/lang/String;[Lcom/google/android/gms/internal/eh$b;[Lcom/google/android/gms/internal/eh$g;)[Lcom/google/android/gms/internal/eh$a;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatd;
    .locals 20

    .prologue
    .line 0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/cw;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/cr;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 51014
    iget-object v2, v2, Lcom/google/android/gms/internal/di;->f:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v3, "No app data available; dropping"

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x0

    :goto_0
    return-object v3

    .line 51015
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/dq;->a:Landroid/content/Context;

    .line 0
    invoke-static {v3}, Lcom/google/android/gms/internal/be;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/bd;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/bd;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->h()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v3

    .line 51016
    iget-object v3, v3, Lcom/google/android/gms/internal/di;->c:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v4, "App version does not match; dropping. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/di;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v3

    :cond_2
    new-instance v3, Lcom/google/android/gms/internal/zzatd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->i()J

    move-result-wide v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->j()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->k()J

    move-result-wide v10

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->l()J

    move-result-wide v12

    const/4 v14, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->m()Z

    move-result v15

    const/16 v16, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->e()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->s()J

    move-result-wide v18

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/internal/zzatd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;J)V

    goto :goto_0
.end method

.method private b(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V
    .locals 18

    .prologue
    .line 0
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    .line 51026
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->a()V

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/internal/ee;->a(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/google/android/gms/internal/zzatd;->h:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dq;->b(Lcom/google/android/gms/internal/zzatd;)V

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->g()Lcom/google/android/gms/internal/do;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/do;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 51027
    iget-object v2, v2, Lcom/google/android/gms/internal/di;->c:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v4, "Dropping blacklisted event. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/di;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v6}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ee;->l(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ee;->m(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_4

    const-string/jumbo v4, "_err"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v4

    const/16 v5, 0xb

    const-string/jumbo v6, "_ev"

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/internal/ee;->a(ILjava/lang/String;Ljava/lang/String;I)V

    :cond_4
    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/cw;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/cr;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->p()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->o()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 51028
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/dq;->i:Lcom/google/android/gms/common/util/d;

    .line 0
    invoke-interface {v3}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-static {}, Lcom/google/android/gms/internal/cv;->ab()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v3

    .line 51029
    iget-object v3, v3, Lcom/google/android/gms/internal/di;->f:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v4, "Fetching config for blacklisted app"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/dq;->a(Lcom/google/android/gms/internal/cr;)V

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/di;->a(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 51030
    iget-object v2, v2, Lcom/google/android/gms/internal/di;->g:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v4, "Logging event"

    move-object/from16 v0, p1

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cw;->x()V

    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzatq;->b:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzato;->a()Landroid/os/Bundle;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dq;->b(Lcom/google/android/gms/internal/zzatd;)V

    const-string/jumbo v2, "_iap"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "ecommerce_purchase"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_8
    const-string/jumbo v2, "currency"

    invoke-virtual {v14, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "ecommerce_purchase"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string/jumbo v4, "value"

    invoke-virtual {v14, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-nez v6, :cond_9

    const-string/jumbo v4, "value"

    invoke-virtual {v14, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v4, v6

    :cond_9
    const-wide/high16 v6, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v6, v4, v6

    if-gtz v6, :cond_d

    const-wide/high16 v6, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v6, v4, v6

    if-ltz v6, :cond_d

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    move-wide v8, v4

    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "[A-Z]{3}"

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string/jumbo v4, "_ltv_"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/internal/cw;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ed;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v4, v2, Lcom/google/android/gms/internal/ed;->e:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Long;

    if-nez v4, :cond_10

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    .line 51032
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/dq;->b:Lcom/google/android/gms/internal/cv;

    .line 51033
    sget-object v6, Lcom/google/android/gms/internal/dd;->K:Lcom/google/android/gms/internal/dd$a;

    invoke-virtual {v4, v3, v6}, Lcom/google/android/gms/internal/cv;->b(Ljava/lang/String;Lcom/google/android/gms/internal/dd$a;)I

    move-result v4

    .line 0
    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/cw;->a(Ljava/lang/String;I)V

    new-instance v2, Lcom/google/android/gms/internal/ed;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatq;->c:Ljava/lang/String;

    .line 51034
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/dq;->i:Lcom/google/android/gms/common/util/d;

    .line 0
    invoke-interface {v6}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/cw;->a(Lcom/google/android/gms/internal/ed;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v4

    .line 51036
    iget-object v4, v4, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v5, "Too many unique user properties are set. Ignoring user property. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/di;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/internal/ed;->c:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ed;->e:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7, v2}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v2

    const/16 v4, 0x9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ee;->a(ILjava/lang/String;Ljava/lang/String;I)V

    :cond_b
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/ee;->a(Ljava/lang/String;)Z

    move-result v10

    const-string/jumbo v2, "_err"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->z()J

    move-result-wide v6

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v8, v3

    invoke-virtual/range {v5 .. v13}, Lcom/google/android/gms/internal/cw;->a(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/cw$a;

    move-result-object v2

    iget-wide v4, v2, Lcom/google/android/gms/internal/cw$a;->b:J

    invoke-static {}, Lcom/google/android/gms/internal/cv;->G()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_11

    const-wide/16 v6, 0x3e8

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v4

    .line 51037
    iget-object v4, v4, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v5, "Data loss. Too many events logged. appId, count"

    invoke-static {v3}, Lcom/google/android/gms/internal/di;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v6, v2, Lcom/google/android/gms/internal/cw$a;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v3, v2}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v2

    const/16 v3, 0x10

    const-string/jumbo v4, "_ev"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ee;->a(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cw;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cw;->z()V

    goto/16 :goto_0

    :cond_d
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 51031
    iget-object v2, v2, Lcom/google/android/gms/internal/di;->c:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v6, "Data lost. Currency value is too big. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/di;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v6, v3, v4}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cw;->y()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cw;->z()V

    goto/16 :goto_0

    :cond_e
    :try_start_2
    const-string/jumbo v4, "value"

    invoke-virtual {v14, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    move-wide v8, v4

    goto/16 :goto_2

    :cond_f
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/cw;->z()V

    throw v2

    :cond_10
    :try_start_3
    iget-object v2, v2, Lcom/google/android/gms/internal/ed;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    new-instance v2, Lcom/google/android/gms/internal/ed;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatq;->c:Ljava/lang/String;

    .line 51035
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/dq;->i:Lcom/google/android/gms/common/util/d;

    .line 0
    invoke-interface {v6}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v6

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto/16 :goto_4

    :cond_11
    if-eqz v10, :cond_13

    iget-wide v4, v2, Lcom/google/android/gms/internal/cw$a;->a:J

    invoke-static {}, Lcom/google/android/gms/internal/cv;->H()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_13

    const-wide/16 v6, 0x3e8

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v4

    .line 51038
    iget-object v4, v4, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v5, "Data loss. Too many public events logged. appId, count"

    invoke-static {v3}, Lcom/google/android/gms/internal/di;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v6, v2, Lcom/google/android/gms/internal/cw$a;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v3, v2}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v2

    const/16 v3, 0x10

    const-string/jumbo v4, "_ev"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ee;->a(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cw;->y()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cw;->z()V

    goto/16 :goto_0

    :cond_13
    if-eqz v12, :cond_15

    :try_start_4
    iget-wide v4, v2, Lcom/google/android/gms/internal/cw$a;->d:J

    .line 51039
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/dq;->b:Lcom/google/android/gms/internal/cv;

    .line 0
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    .line 51040
    sget-object v8, Lcom/google/android/gms/internal/dd;->r:Lcom/google/android/gms/internal/dd$a;

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/cv;->b(Ljava/lang/String;Lcom/google/android/gms/internal/dd$a;)I

    move-result v6

    const v7, 0xf4240

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 0
    int-to-long v6, v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_15

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v4

    .line 51041
    iget-object v4, v4, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v5, "Too many error events logged. appId, count"

    invoke-static {v3}, Lcom/google/android/gms/internal/di;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v6, v2, Lcom/google/android/gms/internal/cw$a;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v3, v2}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cw;->y()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cw;->z()V

    goto/16 :goto_0

    :cond_15
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v2

    const-string/jumbo v4, "_o"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/zzatq;->c:Ljava/lang/String;

    invoke-virtual {v2, v14, v4, v5}, Lcom/google/android/gms/internal/ee;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ee;->j(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v2

    const-string/jumbo v4, "_dbg"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v14, v4, v5}, Lcom/google/android/gms/internal/ee;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v2

    const-string/jumbo v4, "_r"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v14, v4, v5}, Lcom/google/android/gms/internal/ee;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/cw;->c(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 51042
    iget-object v2, v2, Lcom/google/android/gms/internal/di;->c:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v6, "Data lost. Too many events stored on disk, deleted. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/di;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v6, v7, v4}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    new-instance v5, Lcom/google/android/gms/internal/cz;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/internal/zzatq;->c:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/android/gms/internal/zzatq;->d:J

    const-wide/16 v12, 0x0

    move-object/from16 v6, p0

    move-object v8, v3

    invoke-direct/range {v5 .. v14}, Lcom/google/android/gms/internal/cz;-><init>(Lcom/google/android/gms/internal/dq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    iget-object v4, v5, Lcom/google/android/gms/internal/cz;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/cw;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/da;

    move-result-object v2

    if-nez v2, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    .line 51043
    invoke-static {v3}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v4, "select count(1) from events where app_id=? and name not like \'!_%\' escape \'!\'"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const-wide/16 v8, 0x0

    invoke-virtual {v2, v4, v6, v8, v9}, Lcom/google/android/gms/internal/cw;->a(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v6

    .line 0
    invoke-static {}, Lcom/google/android/gms/internal/cv;->F()I

    const-wide/16 v8, 0x1f4

    cmp-long v2, v6, v8

    if-ltz v2, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 51044
    iget-object v2, v2, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v4, "Too many event names used, ignoring event. appId, name, supported count"

    invoke-static {v3}, Lcom/google/android/gms/internal/di;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v5, v5, Lcom/google/android/gms/internal/cz;->b:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/cv;->F()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v4, v3, v5, v6}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ee;->a(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cw;->z()V

    goto/16 :goto_0

    :cond_18
    :try_start_6
    new-instance v7, Lcom/google/android/gms/internal/da;

    iget-object v9, v5, Lcom/google/android/gms/internal/cz;->b:Ljava/lang/String;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    iget-wide v14, v5, Lcom/google/android/gms/internal/cz;->d:J

    move-object v8, v3

    invoke-direct/range {v7 .. v15}, Lcom/google/android/gms/internal/da;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ)V

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/cw;->a(Lcom/google/android/gms/internal/da;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1}, Lcom/google/android/gms/internal/dq;->a(Lcom/google/android/gms/internal/cz;Lcom/google/android/gms/internal/zzatd;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cw;->y()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/di;->a(I)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 51046
    iget-object v2, v2, Lcom/google/android/gms/internal/di;->g:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v3, "Event recorded"

    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cw;->z()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->u()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 51047
    iget-object v2, v2, Lcom/google/android/gms/internal/di;->g:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v3, "Background event processing time, ms"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v4, v16

    const-wide/32 v6, 0x7a120

    add-long/2addr v4, v6

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1a
    :try_start_7
    iget-wide v10, v2, Lcom/google/android/gms/internal/da;->e:J

    .line 51045
    new-instance v3, Lcom/google/android/gms/internal/cz;

    iget-object v13, v5, Lcom/google/android/gms/internal/cz;->c:Ljava/lang/String;

    iget-object v6, v5, Lcom/google/android/gms/internal/cz;->a:Ljava/lang/String;

    iget-object v7, v5, Lcom/google/android/gms/internal/cz;->b:Ljava/lang/String;

    iget-wide v8, v5, Lcom/google/android/gms/internal/cz;->d:J

    iget-object v12, v5, Lcom/google/android/gms/internal/cz;->f:Lcom/google/android/gms/internal/zzato;

    move-object/from16 v4, p0

    move-object v5, v13

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/internal/cz;-><init>(Lcom/google/android/gms/internal/dq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/gms/internal/zzato;)V

    .line 0
    iget-wide v4, v3, Lcom/google/android/gms/internal/cz;->d:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/da;->a(J)Lcom/google/android/gms/internal/da;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v7

    move-object v5, v3

    goto :goto_5
.end method

.method static s()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/cv;->V()Z

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private w()Lcom/google/android/gms/internal/dk;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->x:Lcom/google/android/gms/internal/dk;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->x:Lcom/google/android/gms/internal/dk;

    return-object v0
.end method

.method private x()Lcom/google/android/gms/internal/eb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->y:Lcom/google/android/gms/internal/eb;

    invoke-static {v0}, Lcom/google/android/gms/internal/dq;->a(Lcom/google/android/gms/internal/dt;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->y:Lcom/google/android/gms/internal/eb;

    return-object v0
.end method

.method private y()Z
    .locals 3

    .prologue
    .line 0
    .line 45000
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 46000
    invoke-static {}, Lcom/google/android/gms/internal/cv;->S()Ljava/lang/String;

    move-result-object v0

    .line 47000
    iget-object v1, p0, Lcom/google/android/gms/internal/dq;->a:Landroid/content/Context;

    .line 0
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "rw"

    invoke-direct {v0, v2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/dq;->G:Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->G:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/dq;->F:Ljava/nio/channels/FileLock;

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->F:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 48000
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->g:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "Storage concurrent access okay"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 49000
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v1

    .line 50000
    iget-object v1, v1, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v2, "Failed to acquire storage lock"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v1

    .line 51000
    iget-object v1, v1, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v2, "Failed to access storage lock file"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private z()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x3c

    .line 0
    .line 51013
    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->i:Lcom/google/android/gms/common/util/d;

    .line 0
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->d()Lcom/google/android/gms/internal/dm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dm;->z()J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    div-long/2addr v0, v4

    div-long/2addr v0, v4

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/dq$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/dq$2;-><init>(Lcom/google/android/gms/internal/dq;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dp;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v2, 0x7530

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v1

    .line 51070
    iget-object v1, v1, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v2, "Failed to get app instance id. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/di;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method final a()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dq;->B:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "AppMeasurement is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected final a(ILjava/lang/Throwable;[B)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 0
    .line 51118
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->a()V

    if-nez p3, :cond_0

    new-array p3, v0, [B

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/dq;->H:Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/dq;->H:Ljava/util/List;

    const/16 v2, 0xc8

    if-eq p1, v2, :cond_1

    const/16 v2, 0xcc

    if-ne p1, v2, :cond_4

    :cond_1
    if-nez p2, :cond_4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->d()Lcom/google/android/gms/internal/dm;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/dm;->c:Lcom/google/android/gms/internal/dm$b;

    .line 51119
    iget-object v2, p0, Lcom/google/android/gms/internal/dq;->i:Lcom/google/android/gms/common/util/d;

    .line 0
    invoke-interface {v2}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/dm$b;->a(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->d()Lcom/google/android/gms/internal/dm;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/dm;->d:Lcom/google/android/gms/internal/dm$b;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/dm$b;->a(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->u()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 51120
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->g:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v2, "Successful upload. Got network response. code, size"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    array-length v4, p3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cw;->x()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/cw;->a(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/cw;->z()V

    throw v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v1

    .line 51121
    iget-object v1, v1, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v2, "Database error while trying to delete uploaded bundles"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51122
    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->i:Lcom/google/android/gms/common/util/d;

    .line 0
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/dq;->l:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 51123
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->g:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "Disable upload, time"

    iget-wide v2, p0, Lcom/google/android/gms/internal/dq;->l:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cw;->y()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cw;->z()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->k()Lcom/google/android/gms/internal/dj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dj;->x()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/dq;->A()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->t()V

    :goto_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/dq;->l:J

    goto :goto_1

    :cond_3
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/dq;->I:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->u()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v1

    .line 51124
    iget-object v1, v1, Lcom/google/android/gms/internal/di;->g:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v2, "Network upload failed. Will retry later. code, error"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->d()Lcom/google/android/gms/internal/dm;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/dm;->d:Lcom/google/android/gms/internal/dm$b;

    .line 51125
    iget-object v2, p0, Lcom/google/android/gms/internal/dq;->i:Lcom/google/android/gms/common/util/d;

    .line 0
    invoke-interface {v2}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/dm$b;->a(J)V

    const/16 v1, 0x1f7

    if-eq p1, v1, :cond_5

    const/16 v1, 0x1ad

    if-ne p1, v1, :cond_6

    :cond_5
    const/4 v0, 0x1

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->d()Lcom/google/android/gms/internal/dm;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/dm;->e:Lcom/google/android/gms/internal/dm$b;

    .line 51126
    iget-object v1, p0, Lcom/google/android/gms/internal/dq;->i:Lcom/google/android/gms/common/util/d;

    .line 0
    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/dm$b;->a(J)V

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->u()V

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/internal/zzatd;)V
    .locals 14

    .prologue
    const-wide/32 v12, 0x36ee80

    const/4 v8, 0x0

    const-wide/16 v6, 0x1

    const-wide/16 v10, 0x0

    .line 0
    .line 51148
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->a()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatd;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzatd;->h:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/dq;->b(Lcom/google/android/gms/internal/zzatd;)V

    goto :goto_0

    .line 51149
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->i:Lcom/google/android/gms/common/util/d;

    .line 0
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cw;->x()V

    .line 51150
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cw;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/cr;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cr;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cr;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatd;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v1

    .line 51151
    iget-object v1, v1, Lcom/google/android/gms/internal/di;->c:Lcom/google/android/gms/internal/di$a;

    .line 51150
    const-string/jumbo v2, "New GMP App Id passed in. Removing cached database data. appId"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cr;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/di;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cr;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/cw;->f(Ljava/lang/String;)V

    move-object v0, v8

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cr;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cr;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatd;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "_pv"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cr;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzatq;

    const-string/jumbo v1, "_au"

    new-instance v2, Lcom/google/android/gms/internal/zzato;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzato;-><init>(Landroid/os/Bundle;)V

    const-string/jumbo v3, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzatq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzato;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/dq;->a(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    .line 0
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/dq;->b(Lcom/google/android/gms/internal/zzatd;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    const-string/jumbo v2, "_f"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cw;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/da;

    move-result-object v0

    if-nez v0, :cond_b

    const-wide/32 v0, 0x36ee80

    div-long v0, v4, v0

    add-long/2addr v0, v6

    mul-long/2addr v0, v12

    new-instance v2, Lcom/google/android/gms/internal/zzauq;

    const-string/jumbo v3, "_fot"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v7, "auto"

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzauq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/dq;->a(Lcom/google/android/gms/internal/zzauq;Lcom/google/android/gms/internal/zzatd;)V

    .line 51153
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 51152
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->a()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cw;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/cr;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cr;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatd;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/cr;->g(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/cw;->a(Lcom/google/android/gms/internal/cr;)V

    :cond_4
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "_c"

    const-wide/16 v6, 0x1

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v0, "_r"

    const-wide/16 v6, 0x1

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v0, "_uwa"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v0, "_pfo"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v0, "_sys"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v0, "_sysu"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 51154
    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->a:Landroid/content/Context;

    .line 51152
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 51155
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 51152
    const-string/jumbo v1, "PackageManager is null, first open report might be inaccurate. appId"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/di;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cw;->g(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, v10

    if-ltz v2, :cond_6

    const-string/jumbo v2, "_pfo"

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/zzatq;

    const-string/jumbo v1, "_f"

    new-instance v2, Lcom/google/android/gms/internal/zzato;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzato;-><init>(Landroid/os/Bundle;)V

    const-string/jumbo v3, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzatq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzato;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/dq;->a(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    .line 51160
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "_et"

    const-wide/16 v6, 0x1

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v0, Lcom/google/android/gms/internal/zzatq;

    const-string/jumbo v1, "_e"

    new-instance v2, Lcom/google/android/gms/internal/zzato;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzato;-><init>(Landroid/os/Bundle;)V

    const-string/jumbo v3, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzatq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzato;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/dq;->a(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    .line 0
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cw;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cw;->z()V

    goto/16 :goto_0

    .line 51156
    :cond_8
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->a:Landroid/content/Context;

    .line 51152
    invoke-static {v0}, Lcom/google/android/gms/internal/be;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/bd;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/bd;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_9

    :try_start_2
    iget-wide v6, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    cmp-long v1, v6, v10

    if-eqz v1, :cond_9

    iget-wide v6, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v6, v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "_uwa"

    const-wide/16 v6, 0x1

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51158
    :cond_9
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->a:Landroid/content/Context;

    .line 51152
    invoke-static {v0}, Lcom/google/android/gms/internal/be;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/bd;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/bd;->a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_5

    :try_start_4
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_a

    const-string/jumbo v1, "_sys"

    const-wide/16 v6, 0x1

    invoke-virtual {v3, v1, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_a
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    const-string/jumbo v0, "_sysu"

    const-wide/16 v6, 0x1

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 0
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/cw;->z()V

    throw v0

    .line 51152
    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v1

    .line 51157
    iget-object v1, v1, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 51152
    const-string/jumbo v2, "Package info is null, first open report might be inaccurate. appId"

    iget-object v6, p1, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/di;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v2, v6, v0}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v8

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v1

    .line 51159
    iget-object v1, v1, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 51152
    const-string/jumbo v2, "Application info is null, first open report might be inaccurate. appId"

    iget-object v6, p1, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/di;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v2, v6, v0}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v8

    goto :goto_4

    .line 0
    :cond_b
    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzatd;->i:Z

    if-eqz v0, :cond_7

    .line 51161
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzatq;

    const-string/jumbo v1, "_cd"

    new-instance v2, Lcom/google/android/gms/internal/zzato;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzato;-><init>(Landroid/os/Bundle;)V

    const-string/jumbo v3, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzatq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzato;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/dq;->a(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2
.end method

.method final a(Lcom/google/android/gms/internal/zzatg;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/dq;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/dq;->a(Lcom/google/android/gms/internal/zzatg;Lcom/google/android/gms/internal/zzatd;)V

    :cond_0
    return-void
.end method

.method final a(Lcom/google/android/gms/internal/zzatg;Lcom/google/android/gms/internal/zzatd;)V
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 51048
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->a()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzatd;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzatd;->h:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/dq;->b(Lcom/google/android/gms/internal/zzatd;)V

    goto :goto_0

    :cond_1
    new-instance v8, Lcom/google/android/gms/internal/zzatg;

    invoke-direct {v8, p1}, Lcom/google/android/gms/internal/zzatg;-><init>(Lcom/google/android/gms/internal/zzatg;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cw;->x()V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v1

    iget-object v2, v8, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    iget-object v3, v8, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/cw;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzatg;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-boolean v2, v1, Lcom/google/android/gms/internal/zzatg;->f:Z

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/google/android/gms/internal/zzatg;->c:Ljava/lang/String;

    iput-object v2, v8, Lcom/google/android/gms/internal/zzatg;->c:Ljava/lang/String;

    iget-wide v2, v1, Lcom/google/android/gms/internal/zzatg;->e:J

    iput-wide v2, v8, Lcom/google/android/gms/internal/zzatg;->e:J

    iget-object v2, v1, Lcom/google/android/gms/internal/zzatg;->g:Ljava/lang/String;

    iput-object v2, v8, Lcom/google/android/gms/internal/zzatg;->g:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzatg;->j:Lcom/google/android/gms/internal/zzatq;

    iput-object v1, v8, Lcom/google/android/gms/internal/zzatg;->j:Lcom/google/android/gms/internal/zzatq;

    move v7, v0

    :goto_1
    iget-boolean v0, v8, Lcom/google/android/gms/internal/zzatg;->f:Z

    if-eqz v0, :cond_2

    iget-object v6, v8, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    new-instance v0, Lcom/google/android/gms/internal/ed;

    iget-object v1, v8, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    iget-object v2, v8, Lcom/google/android/gms/internal/zzatg;->c:Ljava/lang/String;

    iget-object v3, v6, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    iget-wide v4, v6, Lcom/google/android/gms/internal/zzauq;->c:J

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzauq;->a()Ljava/lang/Object;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/cw;->a(Lcom/google/android/gms/internal/ed;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v1

    .line 51049
    iget-object v1, v1, Lcom/google/android/gms/internal/di;->f:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v2, "User property updated immediately"

    iget-object v3, v8, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/ed;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ed;->e:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    if-eqz v7, :cond_2

    iget-object v0, v8, Lcom/google/android/gms/internal/zzatg;->j:Lcom/google/android/gms/internal/zzatq;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzatq;

    iget-object v1, v8, Lcom/google/android/gms/internal/zzatg;->j:Lcom/google/android/gms/internal/zzatq;

    iget-wide v2, v8, Lcom/google/android/gms/internal/zzatg;->e:J

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzatq;-><init>(Lcom/google/android/gms/internal/zzatq;J)V

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/dq;->b(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/cw;->a(Lcom/google/android/gms/internal/zzatg;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 51051
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->f:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "Conditional property added"

    iget-object v2, v8, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    iget-object v3, v8, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    iget-object v4, v8, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzauq;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cw;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cw;->z()V

    goto/16 :goto_0

    :cond_3
    :try_start_1
    iget-object v1, v8, Lcom/google/android/gms/internal/zzatg;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v5, v8, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    new-instance v0, Lcom/google/android/gms/internal/zzauq;

    iget-object v1, v5, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    iget-wide v2, v8, Lcom/google/android/gms/internal/zzatg;->e:J

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzauq;->a()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v5, Lcom/google/android/gms/internal/zzauq;->g:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzauq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v8, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/google/android/gms/internal/zzatg;->f:Z

    move v7, v6

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v1

    .line 51050
    iget-object v1, v1, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v8, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/di;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/ed;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ed;->e:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/cw;->z()V

    throw v0

    :cond_5
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 51052
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "Too many conditional properties, ignoring"

    iget-object v2, v8, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/di;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v8, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    iget-object v4, v8, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzauq;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_6
    move v7, v0

    goto/16 :goto_1
.end method

.method final a(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V
    .locals 13

    .prologue
    .line 0
    invoke-static {p2}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p2, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 51021
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->a()V

    iget-object v3, p2, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    iget-wide v6, p1, Lcom/google/android/gms/internal/zzatq;->d:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ee;->a(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, p2, Lcom/google/android/gms/internal/zzatd;->h:Z

    if-nez v2, :cond_1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/dq;->b(Lcom/google/android/gms/internal/zzatd;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cw;->x()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual {v2, v3, v6, v7}, Lcom/google/android/gms/internal/cw;->a(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzatg;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v5

    .line 51022
    iget-object v5, v5, Lcom/google/android/gms/internal/di;->f:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v8, "User property timed out"

    iget-object v9, v2, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    iget-object v10, v2, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    iget-object v10, v10, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    iget-object v11, v2, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/zzauq;->a()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v5, v8, v9, v10, v11}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v5, v2, Lcom/google/android/gms/internal/zzatg;->h:Lcom/google/android/gms/internal/zzatq;

    if-eqz v5, :cond_3

    new-instance v5, Lcom/google/android/gms/internal/zzatq;

    iget-object v8, v2, Lcom/google/android/gms/internal/zzatg;->h:Lcom/google/android/gms/internal/zzatq;

    invoke-direct {v5, v8, v6, v7}, Lcom/google/android/gms/internal/zzatq;-><init>(Lcom/google/android/gms/internal/zzatq;J)V

    invoke-direct {p0, v5, p2}, Lcom/google/android/gms/internal/dq;->b(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v5

    iget-object v2, v2, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-virtual {v5, v3, v2}, Lcom/google/android/gms/internal/cw;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/cw;->z()V

    throw v2

    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual {v2, v3, v6, v7}, Lcom/google/android/gms/internal/cw;->b(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzatg;

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v8

    .line 51023
    iget-object v8, v8, Lcom/google/android/gms/internal/di;->f:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v9, "User property expired"

    iget-object v10, v2, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    iget-object v11, v2, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    iget-object v11, v11, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    iget-object v12, v2, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzauq;->a()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    iget-object v9, v9, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-virtual {v8, v3, v9}, Lcom/google/android/gms/internal/cw;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v2, Lcom/google/android/gms/internal/zzatg;->l:Lcom/google/android/gms/internal/zzatq;

    if-eqz v8, :cond_6

    iget-object v8, v2, Lcom/google/android/gms/internal/zzatg;->l:Lcom/google/android/gms/internal/zzatq;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v8

    iget-object v2, v2, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-virtual {v8, v3, v2}, Lcom/google/android/gms/internal/cw;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzatq;

    new-instance v5, Lcom/google/android/gms/internal/zzatq;

    invoke-direct {v5, v2, v6, v7}, Lcom/google/android/gms/internal/zzatq;-><init>(Lcom/google/android/gms/internal/zzatq;J)V

    invoke-direct {p0, v5, p2}, Lcom/google/android/gms/internal/dq;->b(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    iget-object v4, p1, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/google/android/gms/internal/cw;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v2

    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v10, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_9
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/zzatg;

    move-object v9, v0

    if-eqz v9, :cond_9

    iget-object v8, v9, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    new-instance v2, Lcom/google/android/gms/internal/ed;

    iget-object v3, v9, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    iget-object v4, v9, Lcom/google/android/gms/internal/zzatg;->c:Ljava/lang/String;

    iget-object v5, v8, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzauq;->a()Ljava/lang/Object;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/cw;->a(Lcom/google/android/gms/internal/ed;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v3

    .line 51024
    iget-object v3, v3, Lcom/google/android/gms/internal/di;->f:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v4, "User property triggered"

    iget-object v5, v9, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    iget-object v8, v2, Lcom/google/android/gms/internal/ed;->c:Ljava/lang/String;

    iget-object v12, v2, Lcom/google/android/gms/internal/ed;->e:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v8, v12}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_5
    iget-object v3, v9, Lcom/google/android/gms/internal/zzatg;->j:Lcom/google/android/gms/internal/zzatq;

    if-eqz v3, :cond_a

    iget-object v3, v9, Lcom/google/android/gms/internal/zzatg;->j:Lcom/google/android/gms/internal/zzatq;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    new-instance v3, Lcom/google/android/gms/internal/zzauq;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/zzauq;-><init>(Lcom/google/android/gms/internal/ed;)V

    iput-object v3, v9, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    const/4 v2, 0x1

    iput-boolean v2, v9, Lcom/google/android/gms/internal/zzatg;->f:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/cw;->a(Lcom/google/android/gms/internal/zzatg;)Z

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v3

    .line 51025
    iget-object v3, v3, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v4, "Too many active user properties, ignoring"

    iget-object v5, v9, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/internal/di;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-object v8, v2, Lcom/google/android/gms/internal/ed;->c:Ljava/lang/String;

    iget-object v12, v2, Lcom/google/android/gms/internal/ed;->e:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v8, v12}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/dq;->b(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzatq;

    new-instance v4, Lcom/google/android/gms/internal/zzatq;

    invoke-direct {v4, v2, v6, v7}, Lcom/google/android/gms/internal/zzatq;-><init>(Lcom/google/android/gms/internal/zzatq;J)V

    invoke-direct {p0, v4, p2}, Lcom/google/android/gms/internal/dq;->b(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    goto :goto_6

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cw;->y()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cw;->z()V

    goto/16 :goto_0
.end method

.method final a(Lcom/google/android/gms/internal/zzatq;Ljava/lang/String;)V
    .locals 20

    .prologue
    .line 0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/cw;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/cr;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 51017
    iget-object v2, v2, Lcom/google/android/gms/internal/di;->f:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v3, "No app data available; dropping event"

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 51018
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/dq;->a:Landroid/content/Context;

    .line 0
    invoke-static {v3}, Lcom/google/android/gms/internal/be;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/bd;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/bd;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->h()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v3

    .line 51019
    iget-object v3, v3, Lcom/google/android/gms/internal/di;->c:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v4, "App version does not match; dropping event. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/di;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v3, "_ui"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v3

    .line 51020
    iget-object v3, v3, Lcom/google/android/gms/internal/di;->c:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v4, "Could not find package. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/di;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    new-instance v3, Lcom/google/android/gms/internal/zzatd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->i()J

    move-result-wide v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->j()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->k()J

    move-result-wide v10

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->l()J

    move-result-wide v12

    const/4 v14, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->m()Z

    move-result v15

    const/16 v16, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->e()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->s()J

    move-result-wide v18

    move-object/from16 v4, p2

    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/internal/zzatd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;J)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/dq;->a(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    goto/16 :goto_0
.end method

.method final a(Lcom/google/android/gms/internal/zzauq;Lcom/google/android/gms/internal/zzatd;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 0
    .line 51071
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->a()V

    iget-object v1, p2, Lcom/google/android/gms/internal/zzatd;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p2, Lcom/google/android/gms/internal/zzatd;->h:Z

    if-nez v1, :cond_2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/dq;->b(Lcom/google/android/gms/internal/zzatd;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ee;->e(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/cv;->z()I

    move-result v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ee;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v3

    const-string/jumbo v4, "_ev"

    invoke-virtual {v3, v1, v4, v2, v0}, Lcom/google/android/gms/internal/ee;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzauq;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ee;->b(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/cv;->z()I

    move-result v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ee;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzauq;->a()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_5

    instance-of v4, v3, Ljava/lang/CharSequence;

    if-eqz v4, :cond_6

    :cond_5
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v3

    const-string/jumbo v4, "_ev"

    invoke-virtual {v3, v1, v4, v2, v0}, Lcom/google/android/gms/internal/ee;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzauq;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ee;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ed;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauq;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzauq;->c:J

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v1

    .line 51072
    iget-object v1, v1, Lcom/google/android/gms/internal/di;->f:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v2, "Setting user property"

    iget-object v3, v0, Lcom/google/android/gms/internal/ed;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v6}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/cw;->x()V

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/dq;->b(Lcom/google/android/gms/internal/zzatd;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/cw;->a(Lcom/google/android/gms/internal/ed;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cw;->y()V

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v1

    .line 51073
    iget-object v1, v1, Lcom/google/android/gms/internal/di;->f:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v2, "User property set"

    iget-object v3, v0, Lcom/google/android/gms/internal/ed;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ed;->e:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cw;->z()V

    goto/16 :goto_0

    :cond_8
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v1

    .line 51074
    iget-object v1, v1, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v2, "Too many unique user properties are set. Ignoring user property"

    iget-object v3, v0, Lcom/google/android/gms/internal/ed;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ed;->e:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ee;->a(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/cw;->z()V

    throw v0
.end method

.method final a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/16 v6, 0x130

    const/4 v1, 0x1

    const/16 v5, 0x194

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 0
    .line 51109
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->a()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    if-nez p4, :cond_0

    new-array p4, v0, [B

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/cw;->x()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/cw;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/cr;

    move-result-object v4

    const/16 v3, 0xc8

    if-eq p2, v3, :cond_1

    const/16 v3, 0xcc

    if-eq p2, v3, :cond_1

    if-ne p2, v6, :cond_2

    :cond_1
    if-nez p3, :cond_2

    move v3, v1

    :goto_0
    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 51110
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->c:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "App does not exist in onConfigFetched. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/di;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cw;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cw;->z()V

    :goto_2
    return-void

    :cond_2
    move v3, v0

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    if-ne p2, v5, :cond_c

    :cond_4
    if-eqz p5, :cond_6

    :try_start_1
    const-string/jumbo v0, "Last-Modified"

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_3
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_4
    if-eq p2, v5, :cond_5

    if-ne p2, v6, :cond_8

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->g()Lcom/google/android/gms/internal/do;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/do;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/eg$b;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->g()Lcom/google/android/gms/internal/do;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/do;->a(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cw;->z()V

    goto :goto_2

    :cond_6
    move-object v0, v2

    goto :goto_3

    :cond_7
    move-object v0, v2

    goto :goto_4

    :cond_8
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->g()Lcom/google/android/gms/internal/do;

    move-result-object v1

    invoke-virtual {v1, p1, p4, v0}, Lcom/google/android/gms/internal/do;->a(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cw;->z()V

    goto :goto_2

    .line 51111
    :cond_9
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->i:Lcom/google/android/gms/common/util/d;

    .line 0
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/google/android/gms/internal/cr;->g(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/cw;->a(Lcom/google/android/gms/internal/cr;)V

    if-ne p2, v5, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 51112
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->d:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "Config not found. Using empty config. appId"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->k()Lcom/google/android/gms/internal/dj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dj;->x()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/google/android/gms/internal/dq;->A()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->t()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/cw;->z()V

    throw v0

    :cond_a
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 51113
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->g:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "Successfully fetched config. Got network response. code, size"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    array-length v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->u()V

    goto/16 :goto_1

    .line 51114
    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/internal/dq;->i:Lcom/google/android/gms/common/util/d;

    .line 0
    invoke-interface {v2}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/cr;->h(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/cw;->a(Lcom/google/android/gms/internal/cr;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 51115
    iget-object v2, v2, Lcom/google/android/gms/internal/di;->g:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v3, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->g()Lcom/google/android/gms/internal/do;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/do;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->d()Lcom/google/android/gms/internal/dm;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/dm;->d:Lcom/google/android/gms/internal/dm$b;

    .line 51116
    iget-object v3, p0, Lcom/google/android/gms/internal/dq;->i:Lcom/google/android/gms/common/util/d;

    .line 0
    invoke-interface {v3}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/dm$b;->a(J)V

    const/16 v2, 0x1f7

    if-eq p2, v2, :cond_d

    const/16 v2, 0x1ad

    if-ne p2, v2, :cond_e

    :cond_d
    move v0, v1

    :cond_e
    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->d()Lcom/google/android/gms/internal/dm;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/dm;->e:Lcom/google/android/gms/internal/dm$b;

    .line 51117
    iget-object v1, p0, Lcom/google/android/gms/internal/dq;->i:Lcom/google/android/gms/common/util/d;

    .line 0
    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/dm$b;->a(J)V

    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->u()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method

.method final b(Lcom/google/android/gms/internal/zzatd;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 0
    .line 51162
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->a()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/cw;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/cr;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->d()Lcom/google/android/gms/internal/dm;

    move-result-object v0

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/dm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    if-nez v2, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/cr;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/internal/cr;-><init>(Lcom/google/android/gms/internal/dq;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->d()Lcom/google/android/gms/internal/dm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dm;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/cr;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/cr;->c(Ljava/lang/String;)V

    move-object v2, v0

    move v0, v1

    :cond_0
    :goto_0
    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->b:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatd;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/cr;->b(Ljava/lang/String;)V

    move v0, v1

    :cond_1
    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->k:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->k:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatd;->k:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/cr;->d(Ljava/lang/String;)V

    move v0, v1

    :cond_2
    iget-wide v4, p1, Lcom/google/android/gms/internal/zzatd;->e:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzatd;->e:J

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->k()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzatd;->e:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/cr;->d(J)V

    move v0, v1

    :cond_3
    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->c:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatd;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/cr;->e(Ljava/lang/String;)V

    move v0, v1

    :cond_4
    iget-wide v4, p1, Lcom/google/android/gms/internal/zzatd;->j:J

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->i()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_5

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzatd;->j:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/cr;->c(J)V

    move v0, v1

    :cond_5
    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->d:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->d:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatd;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/cr;->f(Ljava/lang/String;)V

    move v0, v1

    :cond_6
    iget-wide v4, p1, Lcom/google/android/gms/internal/zzatd;->f:J

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->l()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_7

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzatd;->f:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/cr;->e(J)V

    move v0, v1

    :cond_7
    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzatd;->h:Z

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->m()Z

    move-result v4

    if-eq v3, v4, :cond_8

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzatd;->h:Z

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/cr;->a(Z)V

    move v0, v1

    :cond_8
    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->g:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->g:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->r()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatd;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/cr;->g(Ljava/lang/String;)V

    move v0, v1

    :cond_9
    iget-wide v4, p1, Lcom/google/android/gms/internal/zzatd;->l:J

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->s()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_c

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzatd;->l:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/cr;->i(J)V

    :goto_1
    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/cw;->a(Lcom/google/android/gms/internal/cr;)V

    :cond_a
    return-void

    :cond_b
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cr;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/cr;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->d()Lcom/google/android/gms/internal/dm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dm;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/cr;->a(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_c
    move v1, v0

    goto :goto_1
.end method

.method final b(Lcom/google/android/gms/internal/zzatg;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/dq;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/dq;->b(Lcom/google/android/gms/internal/zzatg;Lcom/google/android/gms/internal/zzatd;)V

    :cond_0
    return-void
.end method

.method final b(Lcom/google/android/gms/internal/zzatg;Lcom/google/android/gms/internal/zzatd;)V
    .locals 6

    .prologue
    .line 0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 51053
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->a()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzatd;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzatd;->h:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/dq;->b(Lcom/google/android/gms/internal/zzatd;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cw;->x()V

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/dq;->b(Lcom/google/android/gms/internal/zzatd;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cw;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzatg;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 51054
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->f:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "Removing conditional user property"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cw;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v3, Lcom/google/android/gms/internal/zzatg;->f:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cw;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->l:Lcom/google/android/gms/internal/zzatq;

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->l:Lcom/google/android/gms/internal/zzatq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzatq;->b:Lcom/google/android/gms/internal/zzato;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->l:Lcom/google/android/gms/internal/zzatq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzatq;->b:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzato;->a()Landroid/os/Bundle;

    move-result-object v2

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatg;->l:Lcom/google/android/gms/internal/zzatq;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzatg;->c:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/internal/zzatg;->l:Lcom/google/android/gms/internal/zzatq;

    iget-wide v4, v4, Lcom/google/android/gms/internal/zzatq;->d:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ee;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;J)Lcom/google/android/gms/internal/zzatq;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/dq;->b(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cw;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cw;->z()V

    goto/16 :goto_0

    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 51055
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->c:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "Conditional user property doesn\'t exist"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatg;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/di;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/cw;->z()V

    throw v0
.end method

.method protected final b()Z
    .locals 4

    .prologue
    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->a()V

    .line 27000
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->D:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/dq;->E:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->D:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->D:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 28000
    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->i:Lcom/google/android/gms/common/util/d;

    .line 0
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/dq;->E:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 29000
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->i:Lcom/google/android/gms/common/util/d;

    .line 0
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/dq;->E:J

    invoke-static {}, Lcom/google/android/gms/internal/cv;->V()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v0

    const-string/jumbo v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ee;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v0

    const-string/jumbo v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ee;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 30000
    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->a:Landroid/content/Context;

    .line 0
    invoke-static {v0}, Lcom/google/android/gms/internal/be;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 31000
    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->a:Landroid/content/Context;

    .line 0
    invoke-static {v0}, Lcom/google/android/gms/internal/dn;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32000
    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->a:Landroid/content/Context;

    .line 0
    invoke-static {v0}, Lcom/google/android/gms/internal/dy;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/dq;->D:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->D:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->o()Lcom/google/android/gms/internal/df;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/df;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ee;->f(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/dq;->D:Ljava/lang/Boolean;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->D:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/internal/zzatq;Ljava/lang/String;)[B
    .locals 18

    .prologue
    .line 0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->a()V

    .line 51056
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    invoke-static {}, Lcom/google/android/gms/internal/dq;->s()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    new-instance v13, Lcom/google/android/gms/internal/eh$d;

    invoke-direct {v13}, Lcom/google/android/gms/internal/eh$d;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cw;->x()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/cw;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/cr;

    move-result-object v16

    if-nez v16, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 51057
    iget-object v2, v2, Lcom/google/android/gms/internal/di;->f:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v3, "Log and bundle not available. package_name"

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    new-array v2, v2, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/cw;->z()V

    :goto_0
    return-object v2

    :cond_0
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/cr;->m()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 51058
    iget-object v2, v2, Lcom/google/android/gms/internal/di;->f:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v3, "Log and bundle disabled. package_name"

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    new-array v2, v2, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/cw;->z()V

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v17, Lcom/google/android/gms/internal/eh$e;

    invoke-direct/range {v17 .. v17}, Lcom/google/android/gms/internal/eh$e;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/internal/eh$e;

    const/4 v3, 0x0

    aput-object v17, v2, v3

    iput-object v2, v13, Lcom/google/android/gms/internal/eh$d;->a:[Lcom/google/android/gms/internal/eh$e;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/eh$e;->a:Ljava/lang/Integer;

    const-string/jumbo v2, "android"

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/eh$e;->i:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/cr;->a()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/eh$e;->o:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/cr;->j()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/eh$e;->n:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/cr;->h()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/eh$e;->p:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/cr;->i()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/eh$e;->C:Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/cr;->k()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/eh$e;->q:Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/cr;->c()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/eh$e;->y:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/cr;->l()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/eh$e;->v:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->d()Lcom/google/android/gms/internal/dm;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/cr;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/dm;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/eh$e;->s:Ljava/lang/String;

    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/eh$e;->t:Ljava/lang/Boolean;

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->n()Lcom/google/android/gms/internal/cy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cy;->x()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/eh$e;->k:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->n()Lcom/google/android/gms/internal/cy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cy;->y()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/eh$e;->j:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->n()Lcom/google/android/gms/internal/cy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cy;->z()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/eh$e;->m:Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->n()Lcom/google/android/gms/internal/cy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cy;->A()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/eh$e;->l:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/cr;->b()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/eh$e;->u:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/cr;->e()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/eh$e;->B:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/cr;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/cw;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/eh$g;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/eh$e;->c:[Lcom/google/android/gms/internal/eh$g;

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_3

    new-instance v5, Lcom/google/android/gms/internal/eh$g;

    invoke-direct {v5}, Lcom/google/android/gms/internal/eh$g;-><init>()V

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/google/android/gms/internal/eh$e;->c:[Lcom/google/android/gms/internal/eh$g;

    aput-object v5, v2, v3

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ed;

    iget-object v2, v2, Lcom/google/android/gms/internal/ed;->c:Ljava/lang/String;

    iput-object v2, v5, Lcom/google/android/gms/internal/eh$g;->b:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ed;

    iget-wide v6, v2, Lcom/google/android/gms/internal/ed;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v5, Lcom/google/android/gms/internal/eh$g;->a:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v6

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ed;

    iget-object v2, v2, Lcom/google/android/gms/internal/ed;->e:Ljava/lang/Object;

    invoke-virtual {v6, v5, v2}, Lcom/google/android/gms/internal/ee;->a(Lcom/google/android/gms/internal/eh$g;Ljava/lang/Object;)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzatq;->b:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzato;->a()Landroid/os/Bundle;

    move-result-object v12

    const-string/jumbo v2, "_iap"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "_c"

    const-wide/16 v4, 0x1

    invoke-virtual {v12, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 51059
    iget-object v2, v2, Lcom/google/android/gms/internal/di;->f:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v3, "Marking in-app purchase as real-time"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    const-string/jumbo v2, "_r"

    const-wide/16 v4, 0x1

    invoke-virtual {v12, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_4
    const-string/jumbo v2, "_o"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/internal/zzatq;->c:Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v2

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/google/android/gms/internal/eh$e;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ee;->j(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v2

    const-string/jumbo v3, "_dbg"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v12, v3, v4}, Lcom/google/android/gms/internal/ee;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v2

    const-string/jumbo v3, "_r"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v12, v3, v4}, Lcom/google/android/gms/internal/ee;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/cw;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/da;

    move-result-object v2

    if-nez v2, :cond_6

    const-wide/16 v14, 0x0

    new-instance v3, Lcom/google/android/gms/internal/da;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/android/gms/internal/zzatq;->d:J

    move-object/from16 v4, p2

    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/internal/da;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/cw;->a(Lcom/google/android/gms/internal/da;)V

    move-wide v10, v14

    :goto_2
    new-instance v3, Lcom/google/android/gms/internal/cz;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/zzatq;->c:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/google/android/gms/internal/zzatq;->d:J

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/internal/cz;-><init>(Lcom/google/android/gms/internal/dq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    new-instance v6, Lcom/google/android/gms/internal/eh$b;

    invoke-direct {v6}, Lcom/google/android/gms/internal/eh$b;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/internal/eh$b;

    const/4 v4, 0x0

    aput-object v6, v2, v4

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/eh$e;->b:[Lcom/google/android/gms/internal/eh$b;

    iget-wide v4, v3, Lcom/google/android/gms/internal/cz;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v6, Lcom/google/android/gms/internal/eh$b;->c:Ljava/lang/Long;

    iget-object v2, v3, Lcom/google/android/gms/internal/cz;->b:Ljava/lang/String;

    iput-object v2, v6, Lcom/google/android/gms/internal/eh$b;->b:Ljava/lang/String;

    iget-wide v4, v3, Lcom/google/android/gms/internal/cz;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v6, Lcom/google/android/gms/internal/eh$b;->d:Ljava/lang/Long;

    iget-object v2, v3, Lcom/google/android/gms/internal/cz;->f:Lcom/google/android/gms/internal/zzato;

    .line 51060
    iget-object v2, v2, Lcom/google/android/gms/internal/zzato;->a:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v2

    .line 0
    new-array v2, v2, [Lcom/google/android/gms/internal/eh$c;

    iput-object v2, v6, Lcom/google/android/gms/internal/eh$b;->a:[Lcom/google/android/gms/internal/eh$c;

    const/4 v2, 0x0

    iget-object v4, v3, Lcom/google/android/gms/internal/cz;->f:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzato;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v4, v2

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v8, Lcom/google/android/gms/internal/eh$c;

    invoke-direct {v8}, Lcom/google/android/gms/internal/eh$c;-><init>()V

    iget-object v9, v6, Lcom/google/android/gms/internal/eh$b;->a:[Lcom/google/android/gms/internal/eh$c;

    add-int/lit8 v5, v4, 0x1

    aput-object v8, v9, v4

    iput-object v2, v8, Lcom/google/android/gms/internal/eh$c;->a:Ljava/lang/String;

    iget-object v4, v3, Lcom/google/android/gms/internal/cz;->f:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/zzato;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v4

    invoke-virtual {v4, v8, v2}, Lcom/google/android/gms/internal/ee;->a(Lcom/google/android/gms/internal/eh$c;Ljava/lang/Object;)V

    move v4, v5

    goto :goto_3

    :cond_6
    iget-wide v10, v2, Lcom/google/android/gms/internal/da;->e:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzatq;->d:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/da;->a(J)Lcom/google/android/gms/internal/da;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/da;->a()Lcom/google/android/gms/internal/da;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/cw;->a(Lcom/google/android/gms/internal/da;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/cw;->z()V

    throw v2

    :cond_7
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/cr;->a()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/google/android/gms/internal/eh$e;->c:[Lcom/google/android/gms/internal/eh$g;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/eh$e;->b:[Lcom/google/android/gms/internal/eh$b;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/internal/dq;->a(Ljava/lang/String;[Lcom/google/android/gms/internal/eh$g;[Lcom/google/android/gms/internal/eh$b;)[Lcom/google/android/gms/internal/eh$a;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/eh$e;->A:[Lcom/google/android/gms/internal/eh$a;

    iget-object v2, v6, Lcom/google/android/gms/internal/eh$b;->c:Ljava/lang/Long;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/eh$e;->e:Ljava/lang/Long;

    iget-object v2, v6, Lcom/google/android/gms/internal/eh$b;->c:Ljava/lang/Long;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/eh$e;->f:Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/cr;->g()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_4
    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/google/android/gms/internal/eh$e;->h:Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/cr;->f()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_a

    :goto_5
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_6
    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/eh$e;->g:Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/cr;->q()V

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/cr;->n()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/eh$e;->w:Ljava/lang/Integer;

    invoke-static {}, Lcom/google/android/gms/internal/cv;->U()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/eh$e;->r:Ljava/lang/Long;

    .line 51061
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/dq;->i:Lcom/google/android/gms/common/util/d;

    .line 0
    invoke-interface {v2}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/eh$e;->d:Ljava/lang/Long;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/eh$e;->z:Ljava/lang/Boolean;

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/google/android/gms/internal/eh$e;->e:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/cr;->a(J)V

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/google/android/gms/internal/eh$e;->f:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/cr;->b(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/cw;->a(Lcom/google/android/gms/internal/cr;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cw;->y()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cw;->z()V

    :try_start_4
    invoke-virtual {v13}, Lcom/google/android/gms/internal/eh$d;->f()I

    move-result v2

    new-array v2, v2, [B

    .line 51062
    array-length v3, v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/pv;->a([BI)Lcom/google/android/gms/internal/pv;

    move-result-object v3

    .line 0
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/eh$d;->a(Lcom/google/android/gms/internal/pv;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/pv;->a()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ee;->a([B)[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v2

    goto/16 :goto_0

    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_6

    :catch_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v3

    .line 51063
    iget-object v3, v3, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v4, "Data loss. Failed to bundle and serialize. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/di;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_a
    move-wide v2, v4

    goto/16 :goto_5
.end method

.method protected final c()V
    .locals 4

    .prologue
    .line 0
    .line 33000
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cw;->B()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->d()Lcom/google/android/gms/internal/dm;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/dm;->c:Lcom/google/android/gms/internal/dm$b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dm$b;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->d()Lcom/google/android/gms/internal/dm;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/dm;->c:Lcom/google/android/gms/internal/dm$b;

    .line 34000
    iget-object v1, p0, Lcom/google/android/gms/internal/dq;->i:Lcom/google/android/gms/common/util/d;

    .line 0
    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/dm$b;->a(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->b()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->r()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v0

    const-string/jumbo v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ee;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 35000
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "App is missing INTERNET permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v0

    const-string/jumbo v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ee;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 36000
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/cv;->V()Z

    .line 37000
    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->a:Landroid/content/Context;

    .line 0
    invoke-static {v0}, Lcom/google/android/gms/internal/be;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 38000
    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->a:Landroid/content/Context;

    .line 0
    invoke-static {v0}, Lcom/google/android/gms/internal/dn;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 39000
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    .line 40000
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->a:Landroid/content/Context;

    .line 0
    invoke-static {v0}, Lcom/google/android/gms/internal/dy;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 41000
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "AppMeasurementService not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 42000
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "Uploading is not possible. App measurement disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->u()V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/cv;->V()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->o()Lcom/google/android/gms/internal/df;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/df;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->d()Lcom/google/android/gms/internal/dm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dm;->A()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->d()Lcom/google/android/gms/internal/dm;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->o()Lcom/google/android/gms/internal/df;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/df;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dm;->c(Ljava/lang/String;)V

    :cond_7
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/cv;->V()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->o()Lcom/google/android/gms/internal/df;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/df;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->h()Lcom/google/android/gms/internal/dv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dv;->A()V

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->o()Lcom/google/android/gms/internal/df;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/df;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 43000
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->e:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->d()Lcom/google/android/gms/internal/dm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dm;->C()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->t:Lcom/google/android/gms/internal/dx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dx;->A()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->t:Lcom/google/android/gms/internal/dx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dx;->z()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->d()Lcom/google/android/gms/internal/dm;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->o()Lcom/google/android/gms/internal/df;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/df;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dm;->c(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final d()Lcom/google/android/gms/internal/dm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->n:Lcom/google/android/gms/internal/dm;

    invoke-static {v0}, Lcom/google/android/gms/internal/dq;->a(Lcom/google/android/gms/internal/ds;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->n:Lcom/google/android/gms/internal/dm;

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/internal/di;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->c:Lcom/google/android/gms/internal/di;

    invoke-static {v0}, Lcom/google/android/gms/internal/dq;->a(Lcom/google/android/gms/internal/dt;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->c:Lcom/google/android/gms/internal/di;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/internal/dp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->d:Lcom/google/android/gms/internal/dp;

    invoke-static {v0}, Lcom/google/android/gms/internal/dq;->a(Lcom/google/android/gms/internal/dt;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->d:Lcom/google/android/gms/internal/dp;

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/internal/do;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->o:Lcom/google/android/gms/internal/do;

    invoke-static {v0}, Lcom/google/android/gms/internal/dq;->a(Lcom/google/android/gms/internal/dt;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->o:Lcom/google/android/gms/internal/do;

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/internal/dv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->v:Lcom/google/android/gms/internal/dv;

    invoke-static {v0}, Lcom/google/android/gms/internal/dq;->a(Lcom/google/android/gms/internal/dt;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->v:Lcom/google/android/gms/internal/dv;

    return-object v0
.end method

.method public final i()Lcom/google/android/gms/internal/ee;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->p:Lcom/google/android/gms/internal/ee;

    invoke-static {v0}, Lcom/google/android/gms/internal/dq;->a(Lcom/google/android/gms/internal/ds;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->p:Lcom/google/android/gms/internal/ee;

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/internal/cw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->q:Lcom/google/android/gms/internal/cw;

    invoke-static {v0}, Lcom/google/android/gms/internal/dq;->a(Lcom/google/android/gms/internal/dt;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->q:Lcom/google/android/gms/internal/cw;

    return-object v0
.end method

.method public final k()Lcom/google/android/gms/internal/dj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->r:Lcom/google/android/gms/internal/dj;

    invoke-static {v0}, Lcom/google/android/gms/internal/dq;->a(Lcom/google/android/gms/internal/dt;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->r:Lcom/google/android/gms/internal/dj;

    return-object v0
.end method

.method public final l()Lcom/google/android/gms/internal/dw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->s:Lcom/google/android/gms/internal/dw;

    invoke-static {v0}, Lcom/google/android/gms/internal/dq;->a(Lcom/google/android/gms/internal/dt;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->s:Lcom/google/android/gms/internal/dw;

    return-object v0
.end method

.method public final m()Lcom/google/android/gms/internal/dx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->t:Lcom/google/android/gms/internal/dx;

    invoke-static {v0}, Lcom/google/android/gms/internal/dq;->a(Lcom/google/android/gms/internal/dt;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->t:Lcom/google/android/gms/internal/dx;

    return-object v0
.end method

.method public final n()Lcom/google/android/gms/internal/cy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->u:Lcom/google/android/gms/internal/cy;

    invoke-static {v0}, Lcom/google/android/gms/internal/dq;->a(Lcom/google/android/gms/internal/dt;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->u:Lcom/google/android/gms/internal/cy;

    return-object v0
.end method

.method public final o()Lcom/google/android/gms/internal/df;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->w:Lcom/google/android/gms/internal/df;

    invoke-static {v0}, Lcom/google/android/gms/internal/dq;->a(Lcom/google/android/gms/internal/dt;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->w:Lcom/google/android/gms/internal/df;

    return-object v0
.end method

.method public final p()Lcom/google/android/gms/internal/ct;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->z:Lcom/google/android/gms/internal/ct;

    invoke-static {v0}, Lcom/google/android/gms/internal/dq;->a(Lcom/google/android/gms/internal/dt;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->z:Lcom/google/android/gms/internal/ct;

    return-object v0
.end method

.method public final q()Lcom/google/android/gms/internal/cq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->A:Lcom/google/android/gms/internal/cq;

    invoke-static {v0}, Lcom/google/android/gms/internal/dq;->a(Lcom/google/android/gms/internal/ds;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->A:Lcom/google/android/gms/internal/cq;

    return-object v0
.end method

.method public final r()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 0
    .line 51009
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->a()V

    .line 51010
    iget-object v1, p0, Lcom/google/android/gms/internal/dq;->b:Lcom/google/android/gms/internal/cv;

    .line 0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cv;->X()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    .line 51011
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/dq;->b:Lcom/google/android/gms/internal/cv;

    .line 51012
    const-string/jumbo v2, "firebase_analytics_collection_enabled"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/cv;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->d()Lcom/google/android/gms/internal/dm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/dm;->b(Z)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/cv;->Y()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final t()V
    .locals 14

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v10, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 0
    .line 51075
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->a()V

    invoke-static {}, Lcom/google/android/gms/internal/cv;->V()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->d()Lcom/google/android/gms/internal/dm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dm;->B()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 51076
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->c:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "Upload data called on the client side before use of service was decided"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 51077
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "Upload called in the client side when service should be used"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/google/android/gms/internal/dq;->l:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->u()V

    goto :goto_0

    .line 51079
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 51078
    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->H:Ljava/util/List;

    if-eqz v0, :cond_4

    move v0, v5

    .line 0
    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 51080
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->c:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "Uploading requested multiple times"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 51078
    goto :goto_1

    .line 0
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->k()Lcom/google/android/gms/internal/dj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dj;->x()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 51081
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->c:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->u()V

    goto :goto_0

    .line 51082
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->i:Lcom/google/android/gms/common/util/d;

    .line 0
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v8

    invoke-static {}, Lcom/google/android/gms/internal/cv;->ai()J

    move-result-wide v0

    sub-long v0, v8, v0

    .line 51083
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/dq;->a(J)Z

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->d()Lcom/google/android/gms/internal/dm;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/dm;->c:Lcom/google/android/gms/internal/dm$b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dm$b;->a()J

    move-result-wide v0

    cmp-long v3, v0, v6

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v3

    .line 51084
    iget-object v3, v3, Lcom/google/android/gms/internal/di;->f:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v6, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v0, v8, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cw;->A()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-wide v0, p0, Lcom/google/android/gms/internal/dq;->I:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cw;->C()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/dq;->I:J

    .line 51085
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->b:Lcom/google/android/gms/internal/cv;

    .line 51086
    sget-object v1, Lcom/google/android/gms/internal/dd;->m:Lcom/google/android/gms/internal/dd$a;

    invoke-virtual {v0, v7, v1}, Lcom/google/android/gms/internal/cv;->b(Ljava/lang/String;Lcom/google/android/gms/internal/dd$a;)I

    move-result v0

    .line 51087
    iget-object v1, p0, Lcom/google/android/gms/internal/dq;->b:Lcom/google/android/gms/internal/cv;

    .line 51088
    sget-object v3, Lcom/google/android/gms/internal/dd;->n:Lcom/google/android/gms/internal/dd$a;

    invoke-virtual {v1, v7, v3}, Lcom/google/android/gms/internal/cv;->b(Ljava/lang/String;Lcom/google/android/gms/internal/dd$a;)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v3

    invoke-virtual {v3, v7, v0, v1}, Lcom/google/android/gms/internal/cw;->a(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/eh$e;

    iget-object v6, v0, Lcom/google/android/gms/internal/eh$e;->s:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v0, v0, Lcom/google/android/gms/internal/eh$e;->s:Ljava/lang/String;

    move-object v6, v0

    :goto_2
    if-eqz v6, :cond_11

    move v1, v2

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_11

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/eh$e;

    iget-object v10, v0, Lcom/google/android/gms/internal/eh$e;->s:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    iget-object v0, v0, Lcom/google/android/gms/internal/eh$e;->s:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-interface {v3, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    :goto_4
    new-instance v6, Lcom/google/android/gms/internal/eh$d;

    invoke-direct {v6}, Lcom/google/android/gms/internal/eh$d;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/eh$e;

    iput-object v0, v6, Lcom/google/android/gms/internal/eh$d;->a:[Lcom/google/android/gms/internal/eh$e;

    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v2

    :goto_5
    iget-object v0, v6, Lcom/google/android/gms/internal/eh$d;->a:[Lcom/google/android/gms/internal/eh$e;

    array-length v0, v0

    if-ge v3, v0, :cond_b

    iget-object v11, v6, Lcom/google/android/gms/internal/eh$d;->a:[Lcom/google/android/gms/internal/eh$e;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/eh$e;

    aput-object v0, v11, v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lcom/google/android/gms/internal/eh$d;->a:[Lcom/google/android/gms/internal/eh$e;

    aget-object v0, v0, v3

    invoke-static {}, Lcom/google/android/gms/internal/cv;->U()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iput-object v11, v0, Lcom/google/android/gms/internal/eh$e;->r:Ljava/lang/Long;

    iget-object v0, v6, Lcom/google/android/gms/internal/eh$d;->a:[Lcom/google/android/gms/internal/eh$e;

    aget-object v0, v0, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iput-object v11, v0, Lcom/google/android/gms/internal/eh$e;->d:Ljava/lang/Long;

    iget-object v0, v6, Lcom/google/android/gms/internal/eh$d;->a:[Lcom/google/android/gms/internal/eh$e;

    aget-object v0, v0, v3

    invoke-static {}, Lcom/google/android/gms/internal/cv;->V()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iput-object v11, v0, Lcom/google/android/gms/internal/eh$e;->z:Ljava/lang/Boolean;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    :cond_a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/di;->a(I)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {v6}, Lcom/google/android/gms/internal/ee;->b(Lcom/google/android/gms/internal/eh$d;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ee;->a(Lcom/google/android/gms/internal/eh$d;)[B

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/cv;->ah()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 51089
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    move v2, v5

    :cond_c
    invoke-static {v2}, Lcom/google/android/gms/common/internal/c;->b(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/dq;->H:Ljava/util/List;

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v1

    .line 51090
    iget-object v1, v1, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 51089
    const-string/jumbo v2, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    .line 0
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->d()Lcom/google/android/gms/internal/dm;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/dm;->d:Lcom/google/android/gms/internal/dm$b;

    invoke-virtual {v1, v8, v9}, Lcom/google/android/gms/internal/dm$b;->a(J)V

    const-string/jumbo v1, "?"

    iget-object v2, v6, Lcom/google/android/gms/internal/eh$d;->a:[Lcom/google/android/gms/internal/eh$e;

    array-length v2, v2

    if-lez v2, :cond_d

    iget-object v1, v6, Lcom/google/android/gms/internal/eh$d;->a:[Lcom/google/android/gms/internal/eh$e;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/google/android/gms/internal/eh$e;->o:Ljava/lang/String;

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 51091
    iget-object v2, v2, Lcom/google/android/gms/internal/di;->g:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v5, "Uploading data. app, uncompressed size, data"

    array-length v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v1, v6, v0}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->k()Lcom/google/android/gms/internal/dj;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/dq$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/dq$3;-><init>(Lcom/google/android/gms/internal/dq;)V

    invoke-virtual {v0, v7, v11, v3, v1}, Lcom/google/android/gms/internal/dj;->a(Ljava/lang/String;Ljava/net/URL;[BLcom/google/android/gms/internal/dj$a;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 51092
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "Failed to parse upload URL. Not uploading. appId"

    invoke-static {v7}, Lcom/google/android/gms/internal/di;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 51089
    :cond_e
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/dq;->H:Ljava/util/List;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    .line 0
    :cond_f
    iput-wide v10, p0, Lcom/google/android/gms/internal/dq;->I:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/cv;->ai()J

    move-result-wide v2

    sub-long v2, v8, v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/cw;->b(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/cw;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/cr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/dq;->a(Lcom/google/android/gms/internal/cr;)V

    goto/16 :goto_0

    :cond_10
    move-object v0, v4

    goto/16 :goto_6

    :cond_11
    move-object v1, v3

    goto/16 :goto_4

    :cond_12
    move-object v6, v4

    goto/16 :goto_2
.end method

.method final u()V
    .locals 22

    .prologue
    .line 0
    .line 51129
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->a()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->B()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/gms/internal/dq;->l:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 51130
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/dq;->i:Lcom/google/android/gms/common/util/d;

    .line 0
    invoke-interface {v4}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v4

    const-wide/32 v6, 0x36ee80

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/gms/internal/dq;->l:J

    sub-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sub-long v4, v6, v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v6

    .line 51131
    iget-object v6, v6, Lcom/google/android/gms/internal/di;->g:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v7, "Upload has been suspended. Will update scheduling later in approximately ms"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->w()Lcom/google/android/gms/internal/dk;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/dk;->a()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->x()Lcom/google/android/gms/internal/eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/eb;->x()V

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/gms/internal/dq;->l:J

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->A()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->w()Lcom/google/android/gms/internal/dk;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/dk;->a()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->x()Lcom/google/android/gms/internal/eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/eb;->x()V

    goto :goto_0

    .line 51133
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/dq;->i:Lcom/google/android/gms/common/util/d;

    .line 51132
    invoke-interface {v4}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v6

    invoke-static {}, Lcom/google/android/gms/internal/cv;->aq()J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v4

    .line 51134
    const-string/jumbo v5, "select count(1) > 0 from raw_events where realtime = 1"

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Lcom/google/android/gms/internal/cw;->a(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    .line 51132
    :goto_1
    if-nez v4, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v4

    .line 51135
    const-string/jumbo v5, "select count(1) > 0 from queue where has_realtime = 1"

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Lcom/google/android/gms/internal/cw;->a(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    .line 51132
    :goto_2
    if-eqz v4, :cond_9

    :cond_5
    const/4 v4, 0x1

    move v8, v4

    :goto_3
    if-eqz v8, :cond_b

    .line 51136
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/dq;->b:Lcom/google/android/gms/internal/cv;

    .line 51132
    invoke-virtual {v4}, Lcom/google/android/gms/internal/cv;->at()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string/jumbo v5, ".none."

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {}, Lcom/google/android/gms/internal/cv;->am()J

    move-result-wide v4

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->d()Lcom/google/android/gms/internal/dm;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/gms/internal/dm;->c:Lcom/google/android/gms/internal/dm$b;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/dm$b;->a()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->d()Lcom/google/android/gms/internal/dm;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/gms/internal/dm;->d:Lcom/google/android/gms/internal/dm$b;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/dm$b;->a()J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v9

    .line 51137
    const-string/jumbo v16, "select max(bundle_end_timestamp) from queue"

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/google/android/gms/internal/cw;->a(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v16

    .line 51132
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->j()Lcom/google/android/gms/internal/cw;

    move-result-object v9

    .line 51138
    const-string/jumbo v18, "select max(timestamp) from raw_events"

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/google/android/gms/internal/cw;->a(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v18

    .line 51132
    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v9, v16, v18

    if-nez v9, :cond_c

    const-wide/16 v4, 0x0

    .line 0
    :cond_6
    :goto_5
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->w()Lcom/google/android/gms/internal/dk;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/dk;->a()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->x()Lcom/google/android/gms/internal/eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/eb;->x()V

    goto/16 :goto_0

    .line 51134
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 51135
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 51132
    :cond_9
    const/4 v4, 0x0

    move v8, v4

    goto/16 :goto_3

    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/cv;->al()J

    move-result-wide v4

    goto :goto_4

    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/cv;->ak()J

    move-result-wide v4

    goto :goto_4

    :cond_c
    sub-long v16, v16, v6

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    sub-long v16, v6, v16

    sub-long/2addr v12, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    sub-long v12, v6, v12

    sub-long/2addr v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    sub-long v14, v6, v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    add-long v6, v16, v10

    if-eqz v8, :cond_d

    const-wide/16 v8, 0x0

    cmp-long v8, v12, v8

    if-lez v8, :cond_d

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    add-long/2addr v6, v4

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v8

    invoke-virtual {v8, v12, v13, v4, v5}, Lcom/google/android/gms/internal/ee;->a(JJ)Z

    move-result v8

    if-nez v8, :cond_14

    add-long/2addr v4, v12

    :goto_6
    const-wide/16 v6, 0x0

    cmp-long v6, v14, v6

    if-eqz v6, :cond_6

    cmp-long v6, v14, v16

    if-ltz v6, :cond_6

    const/4 v6, 0x0

    :goto_7
    invoke-static {}, Lcom/google/android/gms/internal/cv;->as()I

    move-result v7

    if-ge v6, v7, :cond_e

    const/4 v7, 0x1

    shl-int/2addr v7, v6

    int-to-long v8, v7

    invoke-static {}, Lcom/google/android/gms/internal/cv;->ar()J

    move-result-wide v10

    mul-long/2addr v8, v10

    add-long/2addr v4, v8

    cmp-long v7, v4, v14

    if-gtz v7, :cond_6

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_e
    const-wide/16 v4, 0x0

    goto/16 :goto_5

    .line 0
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->k()Lcom/google/android/gms/internal/dj;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/dj;->x()Z

    move-result v6

    if-nez v6, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->w()Lcom/google/android/gms/internal/dk;

    move-result-object v4

    .line 51139
    iget-object v5, v4, Lcom/google/android/gms/internal/dk;->b:Lcom/google/android/gms/internal/dq;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/dq;->a()V

    iget-object v5, v4, Lcom/google/android/gms/internal/dk;->b:Lcom/google/android/gms/internal/dq;

    .line 51140
    invoke-virtual {v5}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/dp;->e()V

    .line 51139
    iget-boolean v5, v4, Lcom/google/android/gms/internal/dk;->c:Z

    if-nez v5, :cond_10

    .line 51141
    iget-object v5, v4, Lcom/google/android/gms/internal/dk;->b:Lcom/google/android/gms/internal/dq;

    .line 51142
    iget-object v5, v5, Lcom/google/android/gms/internal/dq;->a:Landroid/content/Context;

    .line 51139
    new-instance v6, Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v5, v4, Lcom/google/android/gms/internal/dk;->b:Lcom/google/android/gms/internal/dq;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/dq;->k()Lcom/google/android/gms/internal/dj;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/dj;->x()Z

    move-result v5

    iput-boolean v5, v4, Lcom/google/android/gms/internal/dk;->d:Z

    .line 51143
    iget-object v5, v4, Lcom/google/android/gms/internal/dk;->b:Lcom/google/android/gms/internal/dq;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v5

    .line 51144
    iget-object v5, v5, Lcom/google/android/gms/internal/di;->g:Lcom/google/android/gms/internal/di$a;

    .line 51139
    const-string/jumbo v6, "Registering connectivity change receiver. Network connected"

    iget-boolean v7, v4, Lcom/google/android/gms/internal/dk;->d:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/android/gms/internal/dk;->c:Z

    .line 0
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->x()Lcom/google/android/gms/internal/eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/eb;->x()V

    goto/16 :goto_0

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->d()Lcom/google/android/gms/internal/dm;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/internal/dm;->e:Lcom/google/android/gms/internal/dm$b;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/dm$b;->a()J

    move-result-wide v6

    invoke-static {}, Lcom/google/android/gms/internal/cv;->aj()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v10

    invoke-virtual {v10, v6, v7, v8, v9}, Lcom/google/android/gms/internal/ee;->a(JJ)Z

    move-result v10

    if-nez v10, :cond_12

    add-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->w()Lcom/google/android/gms/internal/dk;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/dk;->a()V

    .line 51145
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/dq;->i:Lcom/google/android/gms/common/util/d;

    .line 0
    invoke-interface {v6}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_13

    invoke-static {}, Lcom/google/android/gms/internal/cv;->an()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->d()Lcom/google/android/gms/internal/dm;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/internal/dm;->c:Lcom/google/android/gms/internal/dm$b;

    .line 51146
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/dq;->i:Lcom/google/android/gms/common/util/d;

    .line 0
    invoke-interface {v7}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/google/android/gms/internal/dm$b;->a(J)V

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v6

    .line 51147
    iget-object v6, v6, Lcom/google/android/gms/internal/di;->g:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v7, "Upload scheduled in approximately ms"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/dq;->x()Lcom/google/android/gms/internal/eb;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/google/android/gms/internal/eb;->a(J)V

    goto/16 :goto_0

    :cond_14
    move-wide v4, v6

    goto/16 :goto_6
.end method

.method final v()V
    .locals 4

    .prologue
    .line 0
    .line 51163
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->a()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dq;->C:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 51164
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->e:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "This instance being marked as an uploader"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    .line 51166
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 51165
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->a()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/dq;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/dq;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51167
    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->G:Ljava/nio/channels/FileChannel;

    .line 51165
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/dq;->a(Ljava/nio/channels/FileChannel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->o()Lcom/google/android/gms/internal/df;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/df;->z()I

    move-result v1

    .line 51169
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dp;->e()V

    .line 51168
    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 51170
    iget-object v2, v2, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 51168
    const-string/jumbo v3, "Panic: can\'t downgrade version. Previous, current version"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 0
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dq;->C:Z

    return-void

    .line 51168
    :cond_1
    if-ge v0, v1, :cond_0

    .line 51171
    iget-object v2, p0, Lcom/google/android/gms/internal/dq;->G:Ljava/nio/channels/FileChannel;

    .line 51168
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/dq;->a(ILjava/nio/channels/FileChannel;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 51172
    iget-object v2, v2, Lcom/google/android/gms/internal/di;->g:Lcom/google/android/gms/internal/di$a;

    .line 51168
    const-string/jumbo v3, "Storage version upgraded. Previous, current version"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 51173
    iget-object v2, v2, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 51168
    const-string/jumbo v3, "Storage version upgrade failed. Previous, current version"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
