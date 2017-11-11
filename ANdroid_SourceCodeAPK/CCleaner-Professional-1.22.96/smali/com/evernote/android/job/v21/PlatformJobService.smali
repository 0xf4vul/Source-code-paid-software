.class public Lcom/evernote/android/job/v21/PlatformJobService;
.super Landroid/app/job/JobService;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final a:Ld/a/a/a/c;

.field private static final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/evernote/android/job/a/d;

    const-string/jumbo v1, "PlatformJobService"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/a/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/v21/PlatformJobService;->a:Ld/a/a/a/c;

    .line 55
    sget-object v0, Lcom/evernote/android/job/g$a;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/evernote/android/job/v21/PlatformJobService;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    .line 60
    new-instance v1, Lcom/evernote/android/job/g$a;

    sget-object v2, Lcom/evernote/android/job/v21/PlatformJobService;->a:Ld/a/a/a/c;

    invoke-direct {v1, p0, v2, v0}, Lcom/evernote/android/job/g$a;-><init>(Landroid/app/Service;Ld/a/a/a/c;I)V

    .line 62
    invoke-virtual {v1}, Lcom/evernote/android/job/g$a;->a()Lcom/evernote/android/job/i;

    move-result-object v0

    .line 63
    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 81
    :goto_0
    return v0

    .line 67
    :cond_0
    sget-object v2, Lcom/evernote/android/job/v21/PlatformJobService;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/evernote/android/job/v21/PlatformJobService$1;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/evernote/android/job/v21/PlatformJobService$1;-><init>(Lcom/evernote/android/job/v21/PlatformJobService;Lcom/evernote/android/job/g$a;Lcom/evernote/android/job/i;Landroid/app/job/JobParameters;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 81
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 86
    invoke-static {}, Lcom/evernote/android/job/e;->a()Lcom/evernote/android/job/e;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/e;->b(I)Lcom/evernote/android/job/a;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    .line 1244
    invoke-virtual {v0, v4}, Lcom/evernote/android/job/a;->a(Z)V

    .line 89
    sget-object v1, Lcom/evernote/android/job/v21/PlatformJobService;->a:Ld/a/a/a/c;

    const-string/jumbo v2, "Called onStopJob for %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ld/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    :goto_0
    return v4

    .line 91
    :cond_0
    sget-object v0, Lcom/evernote/android/job/v21/PlatformJobService;->a:Ld/a/a/a/c;

    const-string/jumbo v1, "Called onStopJob, job %d not found"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ld/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
