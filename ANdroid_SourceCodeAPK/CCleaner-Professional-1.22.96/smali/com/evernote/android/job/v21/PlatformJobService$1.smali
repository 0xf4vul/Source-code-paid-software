.class final Lcom/evernote/android/job/v21/PlatformJobService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/android/job/v21/PlatformJobService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/evernote/android/job/g$a;

.field final synthetic b:Lcom/evernote/android/job/i;

.field final synthetic c:Landroid/app/job/JobParameters;

.field final synthetic d:Lcom/evernote/android/job/v21/PlatformJobService;


# direct methods
.method constructor <init>(Lcom/evernote/android/job/v21/PlatformJobService;Lcom/evernote/android/job/g$a;Lcom/evernote/android/job/i;Landroid/app/job/JobParameters;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/evernote/android/job/v21/PlatformJobService$1;->d:Lcom/evernote/android/job/v21/PlatformJobService;

    iput-object p2, p0, Lcom/evernote/android/job/v21/PlatformJobService$1;->a:Lcom/evernote/android/job/g$a;

    iput-object p3, p0, Lcom/evernote/android/job/v21/PlatformJobService$1;->b:Lcom/evernote/android/job/i;

    iput-object p4, p0, Lcom/evernote/android/job/v21/PlatformJobService$1;->c:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/v21/PlatformJobService$1;->a:Lcom/evernote/android/job/g$a;

    iget-object v1, p0, Lcom/evernote/android/job/v21/PlatformJobService$1;->b:Lcom/evernote/android/job/i;

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/g$a;->h(Lcom/evernote/android/job/i;)Lcom/evernote/android/job/a$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    iget-object v0, p0, Lcom/evernote/android/job/v21/PlatformJobService$1;->d:Lcom/evernote/android/job/v21/PlatformJobService;

    iget-object v1, p0, Lcom/evernote/android/job/v21/PlatformJobService$1;->c:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, v3}, Lcom/evernote/android/job/v21/PlatformJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 76
    return-void

    .line 75
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/evernote/android/job/v21/PlatformJobService$1;->d:Lcom/evernote/android/job/v21/PlatformJobService;

    iget-object v2, p0, Lcom/evernote/android/job/v21/PlatformJobService$1;->c:Landroid/app/job/JobParameters;

    invoke-virtual {v1, v2, v3}, Lcom/evernote/android/job/v21/PlatformJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    throw v0
.end method
