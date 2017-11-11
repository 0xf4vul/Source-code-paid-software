.class public final Lcom/evernote/android/job/v14/PlatformAlarmService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final a:Ld/a/a/a/c;


# instance fields
.field private final b:Ljava/lang/Object;

.field private volatile c:Ljava/util/concurrent/ExecutorService;

.field private volatile d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/evernote/android/job/a/d;

    const-string/jumbo v1, "PlatformAlarmService"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/a/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/v14/PlatformAlarmService;->a:Ld/a/a/a/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/evernote/android/job/v14/PlatformAlarmService;->b:Ljava/lang/Object;

    return-void
.end method

.method static a(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/evernote/android/job/v14/PlatformAlarmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    const-string/jumbo v1, "EXTRA_JOB_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    return-object v0
.end method

.method static synthetic a(Lcom/evernote/android/job/v14/PlatformAlarmService;I)V
    .locals 3

    .prologue
    .line 48
    .line 2126
    iget-object v1, p0, Lcom/evernote/android/job/v14/PlatformAlarmService;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 2127
    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/v14/PlatformAlarmService;->d:Ljava/util/Set;

    .line 2128
    if-eqz v0, :cond_0

    .line 2130
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2131
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2132
    iget v0, p0, Lcom/evernote/android/job/v14/PlatformAlarmService;->e:I

    invoke-virtual {p0, v0}, Lcom/evernote/android/job/v14/PlatformAlarmService;->stopSelfResult(I)Z

    .line 2135
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/evernote/android/job/v14/PlatformAlarmService;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 1110
    if-nez p1, :cond_1

    .line 1111
    sget-object v0, Lcom/evernote/android/job/v14/PlatformAlarmService;->a:Ld/a/a/a/c;

    const-string/jumbo v1, "Delivered intent is null"

    .line 2049
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Ld/a/a/a/c;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 1112
    :cond_0
    :goto_0
    return-void

    .line 1115
    :cond_1
    const-string/jumbo v0, "EXTRA_JOB_ID"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1116
    new-instance v1, Lcom/evernote/android/job/g$a;

    sget-object v2, Lcom/evernote/android/job/v14/PlatformAlarmService;->a:Ld/a/a/a/c;

    invoke-direct {v1, p0, v2, v0}, Lcom/evernote/android/job/g$a;-><init>(Landroid/app/Service;Ld/a/a/a/c;I)V

    .line 1119
    invoke-virtual {v1}, Lcom/evernote/android/job/g$a;->a()Lcom/evernote/android/job/i;

    move-result-object v0

    .line 1120
    if-eqz v0, :cond_0

    .line 1121
    invoke-virtual {v1, v0}, Lcom/evernote/android/job/g$a;->h(Lcom/evernote/android/job/i;)Lcom/evernote/android/job/a$b;

    goto :goto_0
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onCreate()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 67
    sget-object v0, Lcom/evernote/android/job/g$a;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/v14/PlatformAlarmService;->c:Ljava/util/concurrent/ExecutorService;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/evernote/android/job/v14/PlatformAlarmService;->d:Ljava/util/Set;

    .line 69
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-object v0, p0, Lcom/evernote/android/job/v14/PlatformAlarmService;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 96
    iput-object v1, p0, Lcom/evernote/android/job/v14/PlatformAlarmService;->c:Ljava/util/concurrent/ExecutorService;

    .line 98
    iget-object v1, p0, Lcom/evernote/android/job/v14/PlatformAlarmService;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/evernote/android/job/v14/PlatformAlarmService;->d:Ljava/util/Set;

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/evernote/android/job/v14/PlatformAlarmService;->e:I

    .line 101
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .prologue
    .line 73
    iget-object v1, p0, Lcom/evernote/android/job/v14/PlatformAlarmService;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/v14/PlatformAlarmService;->d:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    iput p3, p0, Lcom/evernote/android/job/v14/PlatformAlarmService;->e:I

    .line 76
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    iget-object v0, p0, Lcom/evernote/android/job/v14/PlatformAlarmService;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/evernote/android/job/v14/PlatformAlarmService$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/evernote/android/job/v14/PlatformAlarmService$1;-><init>(Lcom/evernote/android/job/v14/PlatformAlarmService;Landroid/content/Intent;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 90
    const/4 v0, 0x2

    return v0

    .line 76
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
