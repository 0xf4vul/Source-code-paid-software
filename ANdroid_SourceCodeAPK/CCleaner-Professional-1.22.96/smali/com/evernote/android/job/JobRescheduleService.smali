.class public final Lcom/evernote/android/job/JobRescheduleService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field static a:Ljava/util/concurrent/CountDownLatch;

.field private static final b:Ld/a/a/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/evernote/android/job/a/d;

    const-string/jumbo v1, "JobRescheduleService"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/a/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/JobRescheduleService;->b:Ld/a/a/a/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    const-string/jumbo v0, "JobRescheduleService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 26
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/evernote/android/job/JobRescheduleService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    invoke-static {p0, v0}, Lcom/evernote/android/job/l;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 28
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/evernote/android/job/JobRescheduleService;->a:Ljava/util/concurrent/CountDownLatch;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 40
    sget-object v1, Lcom/evernote/android/job/JobRescheduleService;->b:Ld/a/a/a/c;

    invoke-virtual {v1, v0}, Ld/a/a/a/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected final onHandleIntent(Landroid/content/Intent;)V
    .locals 16

    .prologue
    .line 60
    :try_start_0
    sget-object v0, Lcom/evernote/android/job/JobRescheduleService;->b:Ld/a/a/a/c;

    const-string/jumbo v1, "Reschedule service started"

    .line 1037
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Ld/a/a/a/c;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/evernote/android/job/e;->a(Landroid/content/Context;)Lcom/evernote/android/job/e;
    :try_end_1
    .catch Lcom/evernote/android/job/f; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 1492
    :try_start_2
    iget-object v0, v4, Lcom/evernote/android/job/e;->d:Lcom/evernote/android/job/j;

    .line 70
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/evernote/android/job/j;->a(Ljava/lang/String;Z)Ljava/util/Set;

    move-result-object v5

    .line 72
    const/4 v2, 0x0

    .line 73
    const/4 v1, 0x0

    .line 75
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/i;

    .line 2338
    iget-boolean v3, v0, Lcom/evernote/android/job/i;->i:Z

    .line 77
    if-eqz v3, :cond_2

    .line 3134
    iget-object v3, v0, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 3474
    iget v3, v3, Lcom/evernote/android/job/i$b;->a:I

    .line 78
    invoke-virtual {v4, v3}, Lcom/evernote/android/job/e;->b(I)Lcom/evernote/android/job/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 79
    if-nez v3, :cond_1

    const/4 v3, 0x1

    .line 84
    :goto_1
    if-eqz v3, :cond_5

    .line 4379
    :try_start_3
    invoke-static {}, Lcom/evernote/android/job/e;->a()Lcom/evernote/android/job/e;

    move-result-object v3

    .line 5134
    iget-object v7, v0, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 5474
    iget v7, v7, Lcom/evernote/android/job/i$b;->a:I

    .line 6395
    invoke-virtual {v3, v7}, Lcom/evernote/android/job/e;->a(I)Lcom/evernote/android/job/i;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/evernote/android/job/e;->a(Lcom/evernote/android/job/i;)Z

    invoke-virtual {v3, v7}, Lcom/evernote/android/job/e;->b(I)Lcom/evernote/android/job/a;

    move-result-object v8

    invoke-static {v8}, Lcom/evernote/android/job/e;->a(Lcom/evernote/android/job/a;)Z

    .line 6396
    iget-object v3, v3, Lcom/evernote/android/job/e;->b:Landroid/content/Context;

    invoke-static {v3, v7}, Lcom/evernote/android/job/g$a;->a(Landroid/content/Context;I)V

    .line 4380
    new-instance v3, Lcom/evernote/android/job/i$b;

    iget-object v7, v0, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    const/4 v8, 0x0

    invoke-direct {v3, v7, v8}, Lcom/evernote/android/job/i$b;-><init>(Lcom/evernote/android/job/i$b;B)V

    .line 4381
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/evernote/android/job/i;->i:Z

    .line 4383
    invoke-virtual {v0}, Lcom/evernote/android/job/i;->c()Z

    move-result v7

    if-nez v7, :cond_0

    .line 4384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v0, Lcom/evernote/android/job/i;->h:J

    sub-long/2addr v8, v10

    .line 4386
    const-wide/16 v10, 0x1

    .line 7151
    iget-object v7, v0, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 7474
    iget-wide v12, v7, Lcom/evernote/android/job/i$b;->c:J

    .line 4386
    sub-long/2addr v12, v8

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    const-wide/16 v12, 0x1

    .line 8160
    iget-object v0, v0, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 8474
    iget-wide v14, v0, Lcom/evernote/android/job/i$b;->d:J

    .line 4386
    sub-long v8, v14, v8

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-virtual {v3, v10, v11, v8, v9}, Lcom/evernote/android/job/i$b;->a(JJ)Lcom/evernote/android/job/i$b;

    .line 88
    :cond_0
    invoke-virtual {v3}, Lcom/evernote/android/job/i$b;->a()Lcom/evernote/android/job/i;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/evernote/android/job/i;->e()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v1

    .line 99
    :goto_2
    add-int/lit8 v1, v2, 0x1

    :goto_3
    move v2, v1

    move v1, v0

    .line 101
    goto :goto_0

    :catch_0
    move-exception v0

    .line 107
    invoke-static/range {p1 .. p1}, Lcom/evernote/android/job/l;->a(Landroid/content/Intent;)Z

    .line 108
    :goto_4
    return-void

    .line 79
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 4295
    :cond_2
    :try_start_4
    iget-object v3, v0, Lcom/evernote/android/job/i;->f:Lcom/evernote/android/job/a/c;

    .line 81
    invoke-virtual {v4, v3}, Lcom/evernote/android/job/e;->a(Lcom/evernote/android/job/a/c;)Lcom/evernote/android/job/g;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/evernote/android/job/g;->d(Lcom/evernote/android/job/i;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 90
    :catch_1
    move-exception v0

    .line 93
    if-nez v1, :cond_6

    .line 94
    sget-object v1, Lcom/evernote/android/job/JobRescheduleService;->b:Ld/a/a/a/c;

    invoke-virtual {v1, v0}, Ld/a/a/a/c;->a(Ljava/lang/Throwable;)V

    .line 95
    const/4 v0, 0x1

    goto :goto_2

    .line 103
    :cond_4
    sget-object v0, Lcom/evernote/android/job/JobRescheduleService;->b:Ld/a/a/a/c;

    const-string/jumbo v1, "Reschedule %d jobs of %d jobs"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x1

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Ld/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    sget-object v0, Lcom/evernote/android/job/JobRescheduleService;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 107
    invoke-static/range {p1 .. p1}, Lcom/evernote/android/job/l;->a(Landroid/content/Intent;)Z

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-static/range {p1 .. p1}, Lcom/evernote/android/job/l;->a(Landroid/content/Intent;)Z

    throw v0

    :cond_5
    move v0, v1

    move v1, v2

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_2
.end method
