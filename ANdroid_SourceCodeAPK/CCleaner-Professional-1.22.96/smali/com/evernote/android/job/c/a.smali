.class public final Lcom/evernote/android/job/c/a;
.super Lcom/evernote/android/job/v21/a;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 47
    const-string/jumbo v0, "JobProxy24"

    invoke-direct {p0, p1, v0}, Lcom/evernote/android/job/v21/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected final a(Lcom/evernote/android/job/i$c;)I
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lcom/evernote/android/job/c/a$1;->a:[I

    invoke-virtual {p1}, Lcom/evernote/android/job/i$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 77
    invoke-super {p0, p1}, Lcom/evernote/android/job/v21/a;->a(Lcom/evernote/android/job/i$c;)I

    move-result v0

    :goto_0
    return v0

    .line 75
    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Landroid/app/job/JobInfo$Builder;JJ)Landroid/app/job/JobInfo$Builder;
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lcom/evernote/android/job/i;)V
    .locals 4

    .prologue
    .line 52
    iget-object v0, p0, Lcom/evernote/android/job/c/a;->b:Ld/a/a/a/c;

    const-string/jumbo v1, "plantPeriodicFlexSupport called although flex is supported"

    .line 1061
    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Ld/a/a/a/c;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    invoke-super {p0, p1}, Lcom/evernote/android/job/v21/a;->c(Lcom/evernote/android/job/i;)V

    .line 54
    return-void
.end method

.method public final d(Lcom/evernote/android/job/i;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/evernote/android/job/c/a;->a()Landroid/app/job/JobScheduler;

    move-result-object v1

    .line 1134
    iget-object v2, p1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 1474
    iget v2, v2, Lcom/evernote/android/job/i$b;->a:I

    .line 59
    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 62
    :cond_0
    :goto_0
    return v0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    iget-object v2, p0, Lcom/evernote/android/job/c/a;->b:Ld/a/a/a/c;

    invoke-virtual {v2, v1}, Ld/a/a/a/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
