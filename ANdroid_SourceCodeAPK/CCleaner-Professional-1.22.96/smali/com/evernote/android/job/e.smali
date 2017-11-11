.class public final Lcom/evernote/android/job/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/android/job/e$a;
    }
.end annotation


# static fields
.field static final a:Ld/a/a/a/c;

.field private static volatile h:Lcom/evernote/android/job/e;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field final b:Landroid/content/Context;

.field final c:Lcom/evernote/android/job/c;

.field final d:Lcom/evernote/android/job/j;

.field final e:Lcom/evernote/android/job/d;

.field public final f:Lcom/evernote/android/job/e$a;

.field g:Lcom/evernote/android/job/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lcom/evernote/android/job/a/d;

    const-string/jumbo v1, "JobManager"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/a/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/e;->a:Ld/a/a/a/c;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/evernote/android/job/e;->b:Landroid/content/Context;

    .line 177
    new-instance v0, Lcom/evernote/android/job/c;

    invoke-direct {v0}, Lcom/evernote/android/job/c;-><init>()V

    iput-object v0, p0, Lcom/evernote/android/job/e;->c:Lcom/evernote/android/job/c;

    .line 178
    new-instance v0, Lcom/evernote/android/job/j;

    invoke-direct {v0, p1}, Lcom/evernote/android/job/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/evernote/android/job/e;->d:Lcom/evernote/android/job/j;

    .line 179
    new-instance v0, Lcom/evernote/android/job/d;

    invoke-direct {v0}, Lcom/evernote/android/job/d;-><init>()V

    iput-object v0, p0, Lcom/evernote/android/job/e;->e:Lcom/evernote/android/job/d;

    .line 180
    new-instance v0, Lcom/evernote/android/job/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/evernote/android/job/e$a;-><init>(Lcom/evernote/android/job/e;B)V

    iput-object v0, p0, Lcom/evernote/android/job/e;->f:Lcom/evernote/android/job/e$a;

    .line 182
    iget-object v0, p0, Lcom/evernote/android/job/e;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/evernote/android/job/e;->f:Lcom/evernote/android/job/e$a;

    .line 3553
    iget-boolean v1, v1, Lcom/evernote/android/job/e$a;->a:Z

    .line 182
    invoke-static {v0, v1}, Lcom/evernote/android/job/a/c;->a(Landroid/content/Context;Z)Lcom/evernote/android/job/a/c;

    move-result-object v0

    .line 183
    sget-object v1, Lcom/evernote/android/job/a/c;->d:Lcom/evernote/android/job/a/c;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/evernote/android/job/e;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/a/c;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    new-instance v0, Lcom/evernote/android/job/f;

    const-string/jumbo v1, "All APIs are disabled, cannot schedule any job"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4200
    :cond_0
    iput-object v0, p0, Lcom/evernote/android/job/e;->g:Lcom/evernote/android/job/a/c;

    .line 189
    iget-object v0, p0, Lcom/evernote/android/job/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/evernote/android/job/JobRescheduleService;->a(Landroid/content/Context;)V

    .line 190
    return-void
.end method

.method public static a()Lcom/evernote/android/job/e;
    .locals 3

    .prologue
    .line 156
    sget-object v0, Lcom/evernote/android/job/e;->h:Lcom/evernote/android/job/e;

    if-nez v0, :cond_1

    .line 157
    const-class v1, Lcom/evernote/android/job/e;

    monitor-enter v1

    .line 158
    :try_start_0
    sget-object v0, Lcom/evernote/android/job/e;->h:Lcom/evernote/android/job/e;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "You need to call create() at least once to create the singleton"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    :cond_1
    sget-object v0, Lcom/evernote/android/job/e;->h:Lcom/evernote/android/job/e;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/evernote/android/job/e;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/android/job/f;
        }
    .end annotation

    .prologue
    .line 97
    sget-object v0, Lcom/evernote/android/job/e;->h:Lcom/evernote/android/job/e;

    if-nez v0, :cond_5

    .line 98
    const-class v1, Lcom/evernote/android/job/e;

    monitor-enter v1

    .line 99
    :try_start_0
    sget-object v0, Lcom/evernote/android/job/e;->h:Lcom/evernote/android/job/e;

    if-nez v0, :cond_4

    .line 100
    const-string/jumbo v0, "Context cannot be null"

    .line 1061
    if-nez p0, :cond_0

    .line 1062
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 102
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 107
    :cond_1
    new-instance v0, Lcom/evernote/android/job/e;

    invoke-direct {v0, p0}, Lcom/evernote/android/job/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/evernote/android/job/e;->h:Lcom/evernote/android/job/e;

    .line 109
    invoke-static {p0}, Lcom/evernote/android/job/a/f;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    sget-object v0, Lcom/evernote/android/job/e;->a:Ld/a/a/a/c;

    const-string/jumbo v2, "No wake lock permission"

    .line 2061
    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Ld/a/a/a/c;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    :cond_2
    invoke-static {p0}, Lcom/evernote/android/job/a/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 113
    sget-object v0, Lcom/evernote/android/job/e;->a:Ld/a/a/a/c;

    const-string/jumbo v2, "No boot permission"

    .line 3061
    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Ld/a/a/a/c;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    :cond_3
    invoke-static {p0}, Lcom/evernote/android/job/e;->b(Landroid/content/Context;)V

    .line 118
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :cond_5
    sget-object v0, Lcom/evernote/android/job/e;->h:Lcom/evernote/android/job/e;

    return-object v0
.end method

.method static a(Lcom/evernote/android/job/a;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 432
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/evernote/android/job/a;->d()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7258
    iget-boolean v2, p0, Lcom/evernote/android/job/a;->h:Z

    .line 432
    if-nez v2, :cond_0

    .line 433
    sget-object v2, Lcom/evernote/android/job/e;->a:Ld/a/a/a/c;

    const-string/jumbo v3, "Cancel running %s"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-virtual {v2, v3, v4}, Ld/a/a/a/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 434
    invoke-virtual {p0, v0}, Lcom/evernote/android/job/a;->a(Z)V

    .line 437
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 612
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.evernote.android.job.ADD_JOB_CREATOR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 614
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 616
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 617
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 618
    if-eqz v0, :cond_0

    iget-boolean v3, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v3, :cond_0

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 619
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 624
    :try_start_0
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 625
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 627
    sget-object v0, Lcom/evernote/android/job/e;->h:Lcom/evernote/android/job/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 631
    :cond_1
    return-void

    .line 630
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method final a(Lcom/evernote/android/job/a/c;)Lcom/evernote/android/job/g;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/evernote/android/job/e;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/evernote/android/job/a/c;->b(Landroid/content/Context;)Lcom/evernote/android/job/g;

    move-result-object v0

    return-object v0
.end method

.method final a(I)Lcom/evernote/android/job/i;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/evernote/android/job/e;->d:Lcom/evernote/android/job/j;

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/j;->a(I)Lcom/evernote/android/job/i;

    move-result-object v0

    .line 302
    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/evernote/android/job/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lcom/evernote/android/job/e;->d:Lcom/evernote/android/job/j;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/evernote/android/job/j;->a(Ljava/lang/String;Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/evernote/android/job/b;)V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/evernote/android/job/e;->c:Lcom/evernote/android/job/c;

    .line 8024
    iget-object v0, v0, Lcom/evernote/android/job/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    return-void
.end method

.method final a(Lcom/evernote/android/job/i;Lcom/evernote/android/job/a/c;ZZ)V
    .locals 1

    .prologue
    .line 277
    invoke-virtual {p0, p2}, Lcom/evernote/android/job/e;->a(Lcom/evernote/android/job/a/c;)Lcom/evernote/android/job/g;

    move-result-object v0

    .line 278
    if-eqz p3, :cond_1

    .line 279
    if-eqz p4, :cond_0

    .line 280
    invoke-interface {v0, p1}, Lcom/evernote/android/job/g;->c(Lcom/evernote/android/job/i;)V

    .line 287
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-interface {v0, p1}, Lcom/evernote/android/job/g;->b(Lcom/evernote/android/job/i;)V

    goto :goto_0

    .line 285
    :cond_1
    invoke-interface {v0, p1}, Lcom/evernote/android/job/g;->a(Lcom/evernote/android/job/i;)V

    goto :goto_0
.end method

.method final a(Lcom/evernote/android/job/i;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 420
    if-eqz p1, :cond_0

    .line 421
    sget-object v2, Lcom/evernote/android/job/e;->a:Ld/a/a/a/c;

    const-string/jumbo v3, "Found pending job %s, canceling"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-virtual {v2, v3, v4}, Ld/a/a/a/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4295
    iget-object v1, p1, Lcom/evernote/android/job/i;->f:Lcom/evernote/android/job/a/c;

    .line 422
    invoke-virtual {p0, v1}, Lcom/evernote/android/job/e;->a(Lcom/evernote/android/job/a/c;)Lcom/evernote/android/job/g;

    move-result-object v1

    .line 5134
    iget-object v2, p1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 5474
    iget v2, v2, Lcom/evernote/android/job/i$b;->a:I

    .line 422
    invoke-interface {v1, v2}, Lcom/evernote/android/job/g;->a(I)V

    .line 5492
    iget-object v1, p0, Lcom/evernote/android/job/e;->d:Lcom/evernote/android/job/j;

    .line 423
    invoke-virtual {v1, p1}, Lcom/evernote/android/job/j;->b(Lcom/evernote/android/job/i;)V

    .line 6299
    const-wide/16 v2, 0x0

    iput-wide v2, p1, Lcom/evernote/android/job/i;->h:J

    .line 427
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method final declared-synchronized b(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 442
    monitor-enter p0

    const/4 v1, 0x0

    .line 444
    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/e;->d:Lcom/evernote/android/job/j;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/evernote/android/job/j;->a(Ljava/lang/String;Z)Ljava/util/Set;

    move-result-object v0

    .line 445
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/i;

    .line 446
    invoke-virtual {p0, v0}, Lcom/evernote/android/job/e;->a(Lcom/evernote/android/job/i;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 447
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 449
    goto :goto_0

    .line 452
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7349
    iget-object v0, p0, Lcom/evernote/android/job/e;->e:Lcom/evernote/android/job/d;

    invoke-virtual {v0}, Lcom/evernote/android/job/d;->a()Ljava/util/Set;

    move-result-object v0

    .line 453
    :goto_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/a;

    .line 454
    invoke-static {v0}, Lcom/evernote/android/job/e;->a(Lcom/evernote/android/job/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 455
    add-int/lit8 v0, v1, 0x1

    :goto_4
    move v1, v0

    .line 457
    goto :goto_3

    .line 7363
    :cond_1
    iget-object v0, p0, Lcom/evernote/android/job/e;->e:Lcom/evernote/android/job/d;

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/d;->a(Ljava/lang/String;)Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_2

    .line 458
    :cond_2
    monitor-exit p0

    return v1

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public final b(I)Lcom/evernote/android/job/a;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/evernote/android/job/e;->e:Lcom/evernote/android/job/d;

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/d;->a(I)Lcom/evernote/android/job/a;

    move-result-object v0

    return-object v0
.end method
