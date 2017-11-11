.class public Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService$a;
    }
.end annotation


# static fields
.field private static final d:J


# instance fields
.field a:Lcom/piriform/ccleaner/storageanalyzer/backend/b;

.field b:Lcom/piriform/ccleaner/storageanalyzer/backend/a;

.field c:Z

.field private final e:Lcom/piriform/ccleaner/r/b;

.field private final f:Landroid/os/Handler;

.field private g:Lf/j;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 29
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;->d:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 31
    new-instance v0, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService$1;-><init>(Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;->e:Lcom/piriform/ccleaner/r/b;

    .line 43
    new-instance v0, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService$a;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService$a;-><init>(Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;->f:Landroid/os/Handler;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;->f:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;->b:Lcom/piriform/ccleaner/storageanalyzer/backend/a;

    .line 2071
    iget-object v1, v0, Lcom/piriform/ccleaner/storageanalyzer/backend/a;->b:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    .line 2072
    iget-object v1, v0, Lcom/piriform/ccleaner/storageanalyzer/backend/a;->a:Landroid/content/ContentResolver;

    iget-object v0, v0, Lcom/piriform/ccleaner/storageanalyzer/backend/a;->b:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;->g:Lf/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;->g:Lf/j;

    invoke-interface {v0}, Lf/j;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;->g:Lf/j;

    invoke-interface {v0}, Lf/j;->b()V

    .line 104
    :cond_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;->e:Lcom/piriform/ccleaner/r/b;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 50
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/j/bl;->a(Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;)V

    .line 51
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 62
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 4

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;->c:Z

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;->b:Lcom/piriform/ccleaner/storageanalyzer/backend/a;

    .line 1033
    new-instance v1, Lcom/piriform/ccleaner/storageanalyzer/backend/a$1;

    invoke-direct {v1, v0}, Lcom/piriform/ccleaner/storageanalyzer/backend/a$1;-><init>(Lcom/piriform/ccleaner/storageanalyzer/backend/a;)V

    .line 1028
    sget v0, Lf/a$a;->e:I

    invoke-static {v1, v0}, Lf/d;->a(Lf/c/b;I)Lf/d;

    move-result-object v0

    .line 1078
    new-instance v1, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService$2;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService$2;-><init>(Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;)V

    .line 68
    invoke-virtual {v0, v1}, Lf/d;->a(Lf/c/b;)Lf/d;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lf/d;->c()Lf/j;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;->g:Lf/j;

    .line 73
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    sget-wide v2, Lcom/piriform/ccleaner/storageanalyzer/backend/StorageAnalyzerAndroidService;->d:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
