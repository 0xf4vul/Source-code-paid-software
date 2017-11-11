.class final Lcom/evernote/android/job/v14/PlatformAlarmService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/android/job/v14/PlatformAlarmService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:I

.field final synthetic c:Lcom/evernote/android/job/v14/PlatformAlarmService;


# direct methods
.method constructor <init>(Lcom/evernote/android/job/v14/PlatformAlarmService;Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/evernote/android/job/v14/PlatformAlarmService$1;->c:Lcom/evernote/android/job/v14/PlatformAlarmService;

    iput-object p2, p0, Lcom/evernote/android/job/v14/PlatformAlarmService$1;->a:Landroid/content/Intent;

    iput p3, p0, Lcom/evernote/android/job/v14/PlatformAlarmService$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/v14/PlatformAlarmService$1;->c:Lcom/evernote/android/job/v14/PlatformAlarmService;

    iget-object v1, p0, Lcom/evernote/android/job/v14/PlatformAlarmService$1;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/evernote/android/job/v14/PlatformAlarmService;->a(Lcom/evernote/android/job/v14/PlatformAlarmService;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iget-object v0, p0, Lcom/evernote/android/job/v14/PlatformAlarmService$1;->a:Landroid/content/Intent;

    invoke-static {v0}, Lcom/evernote/android/job/g$a;->a(Landroid/content/Intent;)Z

    .line 86
    iget-object v0, p0, Lcom/evernote/android/job/v14/PlatformAlarmService$1;->c:Lcom/evernote/android/job/v14/PlatformAlarmService;

    iget v1, p0, Lcom/evernote/android/job/v14/PlatformAlarmService$1;->b:I

    invoke-static {v0, v1}, Lcom/evernote/android/job/v14/PlatformAlarmService;->a(Lcom/evernote/android/job/v14/PlatformAlarmService;I)V

    .line 87
    return-void

    .line 85
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/evernote/android/job/v14/PlatformAlarmService$1;->a:Landroid/content/Intent;

    invoke-static {v1}, Lcom/evernote/android/job/g$a;->a(Landroid/content/Intent;)Z

    .line 86
    iget-object v1, p0, Lcom/evernote/android/job/v14/PlatformAlarmService$1;->c:Lcom/evernote/android/job/v14/PlatformAlarmService;

    iget v2, p0, Lcom/evernote/android/job/v14/PlatformAlarmService$1;->b:I

    invoke-static {v1, v2}, Lcom/evernote/android/job/v14/PlatformAlarmService;->a(Lcom/evernote/android/job/v14/PlatformAlarmService;I)V

    throw v0
.end method
