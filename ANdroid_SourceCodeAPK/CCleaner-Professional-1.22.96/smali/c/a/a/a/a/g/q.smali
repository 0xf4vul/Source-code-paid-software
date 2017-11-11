.class public final Lc/a/a/a/a/g/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/a/a/g/q$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lc/a/a/a/a/g/t;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/CountDownLatch;

.field private c:Lc/a/a/a/a/g/s;

.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lc/a/a/a/a/g/q;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 42
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lc/a/a/a/a/g/q;->b:Ljava/util/concurrent/CountDownLatch;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/a/a/a/a/g/q;->d:Z

    .line 60
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lc/a/a/a/a/g/q;-><init>()V

    return-void
.end method

.method private a(Lc/a/a/a/a/g/t;)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lc/a/a/a/a/g/q;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lc/a/a/a/a/g/q;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 180
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lc/a/a/a/i;Lc/a/a/a/a/b/o;Lc/a/a/a/a/e/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc/a/a/a/a/g/q;
    .locals 21

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lc/a/a/a/a/g/q;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    move-object/from16 v4, p0

    .line 109
    :goto_0
    monitor-exit p0

    return-object v4

    .line 75
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lc/a/a/a/a/g/q;->c:Lc/a/a/a/a/g/s;

    if-nez v4, :cond_1

    .line 1116
    move-object/from16 v0, p1

    iget-object v4, v0, Lc/a/a/a/i;->h:Landroid/content/Context;

    .line 1177
    move-object/from16 v0, p2

    iget-object v6, v0, Lc/a/a/a/a/b/o;->d:Ljava/lang/String;

    .line 78
    new-instance v5, Lc/a/a/a/a/b/g;

    invoke-direct {v5}, Lc/a/a/a/a/b/g;-><init>()V

    invoke-static {v4}, Lc/a/a/a/a/b/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 79
    invoke-virtual/range {p2 .. p2}, Lc/a/a/a/a/b/o;->d()Ljava/lang/String;

    move-result-object v13

    .line 80
    new-instance v17, Lc/a/a/a/a/b/s;

    invoke-direct/range {v17 .. v17}, Lc/a/a/a/a/b/s;-><init>()V

    .line 81
    new-instance v18, Lc/a/a/a/a/g/k;

    invoke-direct/range {v18 .. v18}, Lc/a/a/a/a/g/k;-><init>()V

    .line 82
    new-instance v19, Lc/a/a/a/a/g/i;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lc/a/a/a/a/g/i;-><init>(Lc/a/a/a/i;)V

    .line 83
    invoke-static {v4}, Lc/a/a/a/a/b/i;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 84
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v8, "https://settings.crashlytics.com/spi/v2/platforms/android/apps/%s/settings"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 86
    new-instance v20, Lc/a/a/a/a/g/l;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v6, v3}, Lc/a/a/a/a/g/l;-><init>(Lc/a/a/a/i;Ljava/lang/String;Ljava/lang/String;Lc/a/a/a/a/e/e;)V

    .line 89
    invoke-static {}, Lc/a/a/a/a/b/o;->b()Ljava/lang/String;

    move-result-object v6

    .line 1201
    sget-object v7, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v7}, Lc/a/a/a/a/b/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2193
    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v8}, Lc/a/a/a/a/b/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 92
    invoke-virtual/range {p2 .. p2}, Lc/a/a/a/a/b/o;->f()Ljava/lang/String;

    move-result-object v9

    .line 93
    invoke-virtual/range {p2 .. p2}, Lc/a/a/a/a/b/o;->a()Ljava/lang/String;

    move-result-object v10

    .line 94
    invoke-virtual/range {p2 .. p2}, Lc/a/a/a/a/b/o;->g()Ljava/lang/String;

    move-result-object v11

    .line 95
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v4}, Lc/a/a/a/a/b/i;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v14

    invoke-static {v12}, Lc/a/a/a/a/b/i;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 97
    invoke-static {v13}, Lc/a/a/a/a/b/l;->a(Ljava/lang/String;)Lc/a/a/a/a/b/l;

    move-result-object v4

    .line 3038
    iget v15, v4, Lc/a/a/a/a/b/l;->e:I

    .line 100
    new-instance v4, Lc/a/a/a/a/g/w;

    move-object/from16 v13, p5

    move-object/from16 v14, p4

    invoke-direct/range {v4 .. v16}, Lc/a/a/a/a/g/w;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 104
    new-instance v5, Lc/a/a/a/a/g/j;

    move-object/from16 v6, p1

    move-object v7, v4

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    move-object/from16 v11, v20

    invoke-direct/range {v5 .. v11}, Lc/a/a/a/a/g/j;-><init>(Lc/a/a/a/i;Lc/a/a/a/a/g/w;Lc/a/a/a/a/b/k;Lc/a/a/a/a/g/v;Lc/a/a/a/a/g/g;Lc/a/a/a/a/g/x;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lc/a/a/a/a/g/q;->c:Lc/a/a/a/a/g/s;

    .line 108
    :cond_1
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lc/a/a/a/a/g/q;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v4, p0

    .line 109
    goto/16 :goto_0

    .line 71
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public final a()Lc/a/a/a/a/g/t;
    .locals 3

    .prologue
    .line 141
    :try_start_0
    iget-object v0, p0, Lc/a/a/a/a/g/q;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 142
    iget-object v0, p0, Lc/a/a/a/a/g/q;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/a/a/g/t;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-object v0

    .line 144
    :catch_0
    move-exception v0

    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v1, "Fabric"

    const-string/jumbo v2, "Interrupted while waiting for settings data."

    invoke-interface {v0, v1, v2}, Lc/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized b()Z
    .locals 1

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc/a/a/a/a/g/q;->c:Lc/a/a/a/a/g/s;

    invoke-interface {v0}, Lc/a/a/a/a/g/s;->a()Lc/a/a/a/a/g/t;

    move-result-object v0

    .line 156
    invoke-direct {p0, v0}, Lc/a/a/a/a/g/q;->a(Lc/a/a/a/a/g/t;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Z
    .locals 5

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc/a/a/a/a/g/q;->c:Lc/a/a/a/a/g/s;

    sget-object v1, Lc/a/a/a/a/g/r;->b:Lc/a/a/a/a/g/r;

    invoke-interface {v0, v1}, Lc/a/a/a/a/g/s;->a(Lc/a/a/a/a/g/r;)Lc/a/a/a/a/g/t;

    move-result-object v0

    .line 167
    invoke-direct {p0, v0}, Lc/a/a/a/a/g/q;->a(Lc/a/a/a/a/g/t;)V

    .line 169
    if-nez v0, :cond_0

    .line 170
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v1

    const-string/jumbo v2, "Fabric"

    const-string/jumbo v3, "Failed to force reload of settings from Crashlytics."

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lc/a/a/a/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
