.class public final Lcom/google/android/gms/internal/dv;
.super Lcom/google/android/gms/internal/dt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/dv$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/google/android/gms/internal/dv$a;

.field private b:Lcom/google/android/gms/measurement/AppMeasurement$b;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/measurement/AppMeasurement$c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/dq;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/dt;-><init>(Lcom/google/android/gms/internal/dq;)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dv;->c:Ljava/util/Set;

    iput-object v1, p0, Lcom/google/android/gms/internal/dv;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/dv;->f:Ljava/lang/String;

    return-void
.end method

.method private B()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 0
    .line 25000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->t()Lcom/google/android/gms/internal/dp;

    move-result-object v1

    .line 26000
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/internal/dp;->a:Lcom/google/android/gms/internal/dp$d;

    if-ne v2, v1, :cond_0

    const/4 v1, 0x1

    .line 0
    :goto_0
    if-eqz v1, :cond_1

    .line 27000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v1

    .line 28000
    iget-object v1, v1, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v2, "Cannot retrieve app instance id from analytics worker thread"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    :goto_1
    return-object v0

    .line 26000
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 29000
    :cond_1
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->t()Lcom/google/android/gms/internal/dp;

    .line 0
    invoke-static {}, Lcom/google/android/gms/internal/dp;->x()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v1

    .line 31000
    iget-object v1, v1, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v2, "Cannot retrieve app instance id from main thread"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    monitor-enter v1

    .line 32000
    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->t()Lcom/google/android/gms/internal/dp;

    move-result-object v2

    .line 0
    new-instance v3, Lcom/google/android/gms/internal/dv$2;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/dv$2;-><init>(Lcom/google/android/gms/internal/dv;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/dp;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x7530

    :try_start_1
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v2

    .line 33000
    :try_start_3
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 34000
    iget-object v2, v2, Lcom/google/android/gms/internal/di;->c:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v3, "Interrupted waiting for app instance id"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/dv;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 19

    .prologue
    .line 0
    .line 51059
    invoke-super/range {p0 .. p0}, Lcom/google/android/gms/internal/dt;->e()V

    .line 51058
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dv;->J()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/dv;->n:Lcom/google/android/gms/internal/dq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dq;->r()Z

    move-result v2

    if-nez v2, :cond_0

    .line 51060
    invoke-super/range {p0 .. p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 51061
    iget-object v2, v2, Lcom/google/android/gms/internal/di;->f:Lcom/google/android/gms/internal/di$a;

    .line 51058
    const-string/jumbo v3, "Conditional property not sent since Firebase Analytics is disabled"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/zzauq;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredTimestamp:J

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzauq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 51062
    :try_start_0
    invoke-super/range {p0 .. p0}, Lcom/google/android/gms/internal/dt;->q()Lcom/google/android/gms/internal/ee;

    move-result-object v4

    .line 51058
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventParams:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    const-wide/16 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ee;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;J)Lcom/google/android/gms/internal/zzatq;

    move-result-object v15

    .line 51063
    invoke-super/range {p0 .. p0}, Lcom/google/android/gms/internal/dt;->q()Lcom/google/android/gms/internal/ee;

    move-result-object v4

    .line 51058
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventParams:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    const-wide/16 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ee;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;J)Lcom/google/android/gms/internal/zzatq;

    move-result-object v12

    .line 51064
    invoke-super/range {p0 .. p0}, Lcom/google/android/gms/internal/dt;->q()Lcom/google/android/gms/internal/ee;

    move-result-object v4

    .line 51058
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    const-wide/16 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ee;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;J)Lcom/google/android/gms/internal/zzatq;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    new-instance v4, Lcom/google/android/gms/internal/zzatg;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    const/4 v10, 0x0

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerEventName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    move-wide/from16 v16, v0

    move-object v7, v2

    invoke-direct/range {v4 .. v18}, Lcom/google/android/gms/internal/zzatg;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzauq;JZLjava/lang/String;Lcom/google/android/gms/internal/zzatq;JLcom/google/android/gms/internal/zzatq;JLcom/google/android/gms/internal/zzatq;)V

    .line 51065
    invoke-super/range {p0 .. p0}, Lcom/google/android/gms/internal/dt;->k()Lcom/google/android/gms/internal/dx;

    move-result-object v2

    .line 51058
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/dx;->a(Lcom/google/android/gms/internal/zzatg;)V

    goto :goto_0

    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/dv;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 11

    .prologue
    .line 0
    .line 51027
    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static/range {p5 .. p5}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51028
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->e()V

    .line 51027
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dv;->J()V

    iget-object v2, p0, Lcom/google/android/gms/internal/dv;->n:Lcom/google/android/gms/internal/dq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dq;->r()Z

    move-result v2

    if-nez v2, :cond_1

    .line 51029
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 51030
    iget-object v2, v2, Lcom/google/android/gms/internal/di;->f:Lcom/google/android/gms/internal/di$a;

    .line 51027
    const-string/jumbo v3, "Event not sent since app measurement is disabled"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/dv;->d:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/dv;->d:Z

    .line 51032
    :try_start_0
    const-string/jumbo v2, "com.google.android.gms.tagmanager.TagManagerService"

    .line 51031
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 51033
    :try_start_1
    const-string/jumbo v3, "initialize"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 51034
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->n()Landroid/content/Context;

    move-result-object v6

    .line 51033
    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 51027
    :cond_2
    :goto_1
    const-string/jumbo v2, "am"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {p2}, Lcom/google/android/gms/internal/ee;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz p6, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/dv;->b:Lcom/google/android/gms/measurement/AppMeasurement$b;

    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    if-nez v9, :cond_3

    .line 51039
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 51040
    iget-object v2, v2, Lcom/google/android/gms/internal/di;->f:Lcom/google/android/gms/internal/di$a;

    .line 51027
    const-string/jumbo v3, "Passing event to registered event handler (FE)"

    move-object/from16 v0, p5

    invoke-virtual {v2, v3, p2, v0}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 51033
    :catch_0
    move-exception v2

    .line 51035
    :try_start_2
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v3

    .line 51036
    iget-object v3, v3, Lcom/google/android/gms/internal/di;->c:Lcom/google/android/gms/internal/di$a;

    .line 51033
    const-string/jumbo v4, "Failed to invoke Tag Manager\'s initialize() method"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 51031
    :catch_1
    move-exception v2

    .line 51037
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 51038
    iget-object v2, v2, Lcom/google/android/gms/internal/di;->e:Lcom/google/android/gms/internal/di$a;

    .line 51031
    const-string/jumbo v3, "Tag Manager is not found and thus will not be used"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 51027
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/dv;->n:Lcom/google/android/gms/internal/dq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dq;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51041
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->q()Lcom/google/android/gms/internal/ee;

    move-result-object v2

    .line 51027
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ee;->c(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_5

    .line 51042
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->q()Lcom/google/android/gms/internal/ee;

    .line 51027
    invoke-static {}, Lcom/google/android/gms/internal/cv;->y()I

    move-result v2

    const/4 v4, 0x1

    invoke-static {p2, v2, v4}, Lcom/google/android/gms/internal/ee;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    :goto_2
    iget-object v5, p0, Lcom/google/android/gms/internal/dv;->n:Lcom/google/android/gms/internal/dq;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v5

    const-string/jumbo v6, "_ev"

    invoke-virtual {v5, v3, v6, v4, v2}, Lcom/google/android/gms/internal/ee;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    const-string/jumbo v2, "_o"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "_o"

    .line 51043
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 51044
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->q()Lcom/google/android/gms/internal/ee;

    move-result-object v3

    .line 51027
    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {v3, p2, v0, v2, v1}, Lcom/google/android/gms/internal/ee;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "_sc"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {}, Lcom/google/android/gms/internal/cv;->V()Z

    .line 51045
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->l()Lcom/google/android/gms/internal/dw;

    move-result-object v3

    .line 51027
    invoke-virtual {v3}, Lcom/google/android/gms/internal/dw;->x()Lcom/google/android/gms/internal/dw$a;

    move-result-object v3

    if-eqz v3, :cond_6

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/android/gms/internal/dw$a;->a:Z

    :cond_6
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/dw;->a(Lcom/google/android/gms/measurement/AppMeasurement$f;Landroid/os/Bundle;)V

    :cond_7
    if-eqz p7, :cond_8

    .line 51046
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->q()Lcom/google/android/gms/internal/ee;

    move-result-object v3

    .line 51027
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ee;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    move-object v8, v2

    .line 51047
    :goto_3
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 51048
    iget-object v2, v2, Lcom/google/android/gms/internal/di;->f:Lcom/google/android/gms/internal/di$a;

    .line 51027
    const-string/jumbo v3, "Logging event (FE)"

    invoke-virtual {v2, v3, p2, v8}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/zzatq;

    new-instance v4, Lcom/google/android/gms/internal/zzato;

    invoke-direct {v4, v8}, Lcom/google/android/gms/internal/zzato;-><init>(Landroid/os/Bundle;)V

    move-object v3, p2

    move-object v5, p1

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzatq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzato;Ljava/lang/String;J)V

    .line 51049
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->k()Lcom/google/android/gms/internal/dx;

    move-result-object v3

    .line 51027
    move-object/from16 v0, p9

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/internal/dx;->a(Lcom/google/android/gms/internal/zzatq;Ljava/lang/String;)V

    if-nez v9, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/dv;->c:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/AppMeasurement$c;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v3, p1

    move-object v4, p2

    move-wide v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/measurement/AppMeasurement$c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    goto :goto_4

    :cond_8
    move-object v8, v2

    goto :goto_3
.end method

.method static synthetic a(Lcom/google/android/gms/internal/dv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 6

    .prologue
    .line 0
    .line 51050
    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 51051
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->e()V

    .line 51052
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->c()V

    .line 51050
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dv;->J()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dv;->n:Lcom/google/android/gms/internal/dq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->r()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51053
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 51054
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->f:Lcom/google/android/gms/internal/di$a;

    .line 51050
    const-string/jumbo v1, "User property not set since app measurement is disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/dv;->n:Lcom/google/android/gms/internal/dq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51055
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 51056
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->f:Lcom/google/android/gms/internal/di$a;

    .line 51050
    const-string/jumbo v1, "Setting user property (FE)"

    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/zzauq;

    move-object v1, p2

    move-wide v2, p4

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzauq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 51057
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->k()Lcom/google/android/gms/internal/dx;

    move-result-object v1

    .line 51050
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/dx;->a(Lcom/google/android/gms/internal/zzauq;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 9

    .prologue
    .line 0
    .line 16000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->t()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    .line 0
    new-instance v1, Lcom/google/android/gms/internal/dv$8;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/dv$8;-><init>(Lcom/google/android/gms/internal/dv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dp;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V
    .locals 10

    .prologue
    .line 0
    .line 7000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->m()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    .line 0
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v4

    .line 8000
    if-eqz p3, :cond_0

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 9000
    :goto_0
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->t()Lcom/google/android/gms/internal/dp;

    move-result-object v9

    .line 8000
    new-instance v0, Lcom/google/android/gms/internal/dv$7;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/dv$7;-><init>(Lcom/google/android/gms/internal/dv;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZ)V

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/dp;->a(Ljava/lang/Runnable;)V

    .line 0
    return-void

    .line 8000
    :cond_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 0
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dv;->n:Lcom/google/android/gms/internal/dq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v6

    new-instance v0, Lcom/google/android/gms/internal/dv$5;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/dv$5;-><init>(Lcom/google/android/gms/internal/dv;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/dp;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x1388

    :try_start_1
    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 51019
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 51020
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->c:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "Timed out waiting for get conditional user properties"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    .line 51017
    :try_start_3
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v1

    .line 51018
    iget-object v1, v1, Lcom/google/android/gms/internal/di;->c:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v3, "Interrupted waiting for get conditional user properties"

    invoke-virtual {v1, v3, p1, v0}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzatg;

    new-instance v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v3}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>()V

    iput-object p1, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iput-object p2, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzatg;->e:J

    iput-wide v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    iput-object v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzauq;->a()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    iget-boolean v4, v0, Lcom/google/android/gms/internal/zzatg;->f:Z

    iput-boolean v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mActive:Z

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->g:Ljava/lang/String;

    iput-object v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerEventName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->h:Lcom/google/android/gms/internal/zzatq;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->h:Lcom/google/android/gms/internal/zzatq;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    iput-object v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->h:Lcom/google/android/gms/internal/zzatq;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzatq;->b:Lcom/google/android/gms/internal/zzato;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->h:Lcom/google/android/gms/internal/zzatq;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzatq;->b:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzato;->a()Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventParams:Landroid/os/Bundle;

    :cond_1
    iget-wide v4, v0, Lcom/google/android/gms/internal/zzatg;->i:J

    iput-wide v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->j:Lcom/google/android/gms/internal/zzatq;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->j:Lcom/google/android/gms/internal/zzatq;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    iput-object v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->j:Lcom/google/android/gms/internal/zzatq;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzatq;->b:Lcom/google/android/gms/internal/zzato;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->j:Lcom/google/android/gms/internal/zzatq;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzatq;->b:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzato;->a()Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventParams:Landroid/os/Bundle;

    :cond_2
    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->d:Lcom/google/android/gms/internal/zzauq;

    iget-wide v4, v4, Lcom/google/android/gms/internal/zzauq;->c:J

    iput-wide v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredTimestamp:J

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzatg;->k:J

    iput-wide v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->l:Lcom/google/android/gms/internal/zzatq;

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->l:Lcom/google/android/gms/internal/zzatq;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzatq;->a:Ljava/lang/String;

    iput-object v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->l:Lcom/google/android/gms/internal/zzatq;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzatq;->b:Lcom/google/android/gms/internal/zzato;

    if-eqz v4, :cond_3

    iget-object v0, v0, Lcom/google/android/gms/internal/zzatg;->l:Lcom/google/android/gms/internal/zzatq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzatq;->b:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzato;->a()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    :cond_3
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_4
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 0
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dv;->n:Lcom/google/android/gms/internal/dq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/internal/dv$6;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/dv$6;-><init>(Lcom/google/android/gms/internal/dv;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/dp;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x1388

    :try_start_1
    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 51025
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 51026
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->c:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "Timed out waiting for get user properties"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    .line 51023
    :try_start_3
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v1

    .line 51024
    iget-object v1, v1, Lcom/google/android/gms/internal/di;->c:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v3, "Interrupted waiting for get user properties"

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_0
    new-instance v1, Landroid/support/v4/h/a;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/support/v4/h/a;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzauq;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzauq;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauq;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/dv;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 19

    .prologue
    .line 0
    .line 51067
    invoke-super/range {p0 .. p0}, Lcom/google/android/gms/internal/dt;->e()V

    .line 51066
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/dv;->J()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/dv;->n:Lcom/google/android/gms/internal/dq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dq;->r()Z

    move-result v2

    if-nez v2, :cond_0

    .line 51068
    invoke-super/range {p0 .. p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 51069
    iget-object v2, v2, Lcom/google/android/gms/internal/di;->f:Lcom/google/android/gms/internal/di$a;

    .line 51066
    const-string/jumbo v3, "Conditional property not cleared since Firebase Analytics is disabled"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/zzauq;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzauq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 51070
    :try_start_0
    invoke-super/range {p0 .. p0}, Lcom/google/android/gms/internal/dt;->q()Lcom/google/android/gms/internal/ee;

    move-result-object v4

    .line 51066
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ee;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;J)Lcom/google/android/gms/internal/zzatq;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    new-instance v4, Lcom/google/android/gms/internal/zzatg;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    move-object/from16 v0, p1

    iget-boolean v10, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mActive:Z

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerEventName:Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    move-wide/from16 v16, v0

    move-object v7, v2

    invoke-direct/range {v4 .. v18}, Lcom/google/android/gms/internal/zzatg;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzauq;JZLjava/lang/String;Lcom/google/android/gms/internal/zzatq;JLcom/google/android/gms/internal/zzatq;JLcom/google/android/gms/internal/zzatq;)V

    .line 51071
    invoke-super/range {p0 .. p0}, Lcom/google/android/gms/internal/dt;->k()Lcom/google/android/gms/internal/dx;

    move-result-object v2

    .line 51066
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/dx;->a(Lcom/google/android/gms/internal/zzatg;)V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 0
    .line 51013
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->m()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    .line 0
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v0

    invoke-static {p2}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v2}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>()V

    iput-object p1, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iput-object p2, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    iput-wide v0, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    if-eqz p3, :cond_0

    iput-object p3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    iput-object p4, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    .line 51014
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->t()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    .line 0
    new-instance v1, Lcom/google/android/gms/internal/dv$4;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/dv$4;-><init>(Lcom/google/android/gms/internal/dv;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dp;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1

    .line 0
    .line 47000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->m()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    .line 0
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-wide v0, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    iget-object v0, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    .line 48000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->q()Lcom/google/android/gms/internal/ee;

    move-result-object v2

    .line 0
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ee;->e(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 49000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v1

    .line 50000
    iget-object v1, v1, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v2, "Invalid conditional user property name"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 51000
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->q()Lcom/google/android/gms/internal/ee;

    move-result-object v2

    .line 0
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ee;->b(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 51001
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 51002
    iget-object v2, v2, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v3, "Invalid conditional user property value"

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 51003
    :cond_1
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->q()Lcom/google/android/gms/internal/ee;

    .line 0
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ee;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 51004
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 51005
    iget-object v2, v2, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v3, "Unable to normalize conditional user property value"

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iput-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    iget-wide v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    invoke-static {}, Lcom/google/android/gms/internal/cv;->M()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_3

    cmp-long v1, v2, v6

    if-gez v1, :cond_4

    .line 51006
    :cond_3
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v1

    .line 51007
    iget-object v1, v1, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v4, "Invalid conditional user property timeout"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v0, v2}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-wide v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    invoke-static {}, Lcom/google/android/gms/internal/cv;->N()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_5

    cmp-long v1, v2, v6

    if-gez v1, :cond_6

    .line 51008
    :cond_5
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v1

    .line 51009
    iget-object v1, v1, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v4, "Invalid conditional user property time to live"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v0, v2}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 51010
    :cond_6
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->t()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    .line 0
    new-instance v1, Lcom/google/android/gms/internal/dv$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/dv$3;-><init>(Lcom/google/android/gms/internal/dv;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dp;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public final A()V
    .locals 3

    .prologue
    .line 0
    .line 35000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->e()V

    .line 36000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->c()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dv;->J()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dv;->n:Lcom/google/android/gms/internal/dq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    .line 37000
    :cond_1
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->k()Lcom/google/android/gms/internal/dx;

    move-result-object v0

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dx;->y()V

    .line 38000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->v()Lcom/google/android/gms/internal/dm;

    move-result-object v0

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dm;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 39000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->j()Lcom/google/android/gms/internal/cy;

    move-result-object v1

    .line 0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cy;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "_po"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "auto"

    const-string/jumbo v2, "_ou"

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/gms/internal/dv;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 0
    .line 51015
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->c()V

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/dv;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 51016
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->b()V

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/dv;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 51022
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->b()V

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/dv;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 0
    .line 51021
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->c()V

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/dv;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 3

    .prologue
    .line 0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->c()V

    .line 0
    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    iget-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 44000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v1

    .line 45000
    iget-object v1, v1, Lcom/google/android/gms/internal/di;->c:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v2, "Package name should be null when calling setConditionalUserProperty"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/dv;->c(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/measurement/AppMeasurement$c;)V
    .locals 2

    .prologue
    .line 0
    .line 40000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->c()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dv;->J()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/dv;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 42000
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->c:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "OnEventListener already registered"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 0
    .line 5000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->c()V

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/dv;->b:Lcom/google/android/gms/measurement/AppMeasurement$b;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/ee;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v4, v5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/dv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V

    return-void

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 10000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->m()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    .line 0
    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v4

    .line 11000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->q()Lcom/google/android/gms/internal/ee;

    move-result-object v1

    .line 0
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ee;->e(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 12000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->q()Lcom/google/android/gms/internal/ee;

    .line 0
    invoke-static {}, Lcom/google/android/gms/internal/cv;->z()I

    move-result v2

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ee;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/dv;->n:Lcom/google/android/gms/internal/dq;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v3

    const-string/jumbo v4, "_ev"

    invoke-virtual {v3, v1, v4, v2, v0}, Lcom/google/android/gms/internal/ee;->a(ILjava/lang/String;Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p3, :cond_6

    .line 13000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->q()Lcom/google/android/gms/internal/ee;

    move-result-object v1

    .line 0
    invoke-virtual {v1, p2, p3}, Lcom/google/android/gms/internal/ee;->b(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_5

    .line 14000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->q()Lcom/google/android/gms/internal/ee;

    .line 0
    invoke-static {}, Lcom/google/android/gms/internal/cv;->z()I

    move-result v2

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ee;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    instance-of v3, p3, Ljava/lang/String;

    if-nez v3, :cond_3

    instance-of v3, p3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_4

    :cond_3
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_4
    iget-object v3, p0, Lcom/google/android/gms/internal/dv;->n:Lcom/google/android/gms/internal/dq;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v3

    const-string/jumbo v4, "_ev"

    invoke-virtual {v3, v1, v4, v2, v0}, Lcom/google/android/gms/internal/ee;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 15000
    :cond_5
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->q()Lcom/google/android/gms/internal/ee;

    .line 0
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ee;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/dv;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_0

    :cond_6
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/dv;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 51012
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->b()V

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/dv;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final bridge synthetic b()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->b()V

    return-void
.end method

.method public final b(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 1

    .prologue
    .line 0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 46000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->b()V

    .line 0
    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/dv;->c(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 0
    .line 6000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->c()V

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/dv;->b:Lcom/google/android/gms/measurement/AppMeasurement$b;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/ee;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/dv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V

    return-void

    :cond_1
    move v4, v5

    goto :goto_0
.end method

.method public final bridge synthetic c()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->c()V

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 0
    .line 51011
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->c()V

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/dv;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

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
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 0
    .line 1000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->n()Landroid/content/Context;

    move-result-object v0

    .line 0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 2000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->n()Landroid/content/Context;

    move-result-object v0

    .line 0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/google/android/gms/internal/dv;->a:Lcom/google/android/gms/internal/dv$a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/dv$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/dv$a;-><init>(Lcom/google/android/gms/internal/dv;B)V

    iput-object v1, p0, Lcom/google/android/gms/internal/dv;->a:Lcom/google/android/gms/internal/dv$a;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/dv;->a:Lcom/google/android/gms/internal/dv$a;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/dv;->a:Lcom/google/android/gms/internal/dv$a;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 3000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 4000
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->g:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "Registered activity lifecycle callback"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final y()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzauq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 0
    .line 17000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->c()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dv;->J()V

    .line 18000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 19000
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->f:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "Fetching user attributes (FE)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dv;->n:Lcom/google/android/gms/internal/dq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/dv$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/dv$1;-><init>(Lcom/google/android/gms/internal/dv;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/dp;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x1388

    :try_start_1
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 22000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 23000
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->c:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "Timed out waiting for get user properties"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 20000
    :try_start_3
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->u()Lcom/google/android/gms/internal/di;

    move-result-object v2

    .line 21000
    iget-object v2, v2, Lcom/google/android/gms/internal/di;->c:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v3, "Interrupted waiting for get user properties"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final declared-synchronized z()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dv;->J()V

    .line 24000
    invoke-super {p0}, Lcom/google/android/gms/internal/dt;->c()V

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/dv;->B()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/google/android/gms/internal/dv;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/dv;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/dv;->e:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
