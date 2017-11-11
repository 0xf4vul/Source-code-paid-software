.class public Lcom/evernote/android/job/v21/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/evernote/android/job/g;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Ld/a/a/a/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 61
    const-string/jumbo v0, "JobProxy21"

    invoke-direct {p0, p1, v0}, Lcom/evernote/android/job/v21/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/evernote/android/job/v21/a;->a:Landroid/content/Context;

    .line 66
    new-instance v0, Lcom/evernote/android/job/a/d;

    invoke-direct {v0, p2}, Lcom/evernote/android/job/a/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/evernote/android/job/v21/a;->b:Ld/a/a/a/c;

    .line 67
    return-void
.end method

.method private a(Landroid/app/job/JobInfo;)I
    .locals 3

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/evernote/android/job/v21/a;->a()Landroid/app/job/JobScheduler;

    move-result-object v0

    .line 193
    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lcom/evernote/android/job/h;

    const-string/jumbo v1, "JobScheduler is null"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 204
    :goto_0
    return v0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    iget-object v1, p0, Lcom/evernote/android/job/v21/a;->b:Ld/a/a/a/c;

    invoke-virtual {v1, v0}, Ld/a/a/a/c;->a(Ljava/lang/Throwable;)V

    .line 202
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 203
    if-eqz v1, :cond_1

    const-string/jumbo v2, "RECEIVE_BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    const/16 v0, -0x7b

    goto :goto_0

    .line 206
    :cond_1
    if-eqz v1, :cond_2

    const-string/jumbo v2, "No such service ComponentInfo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    new-instance v1, Lcom/evernote/android/job/h;

    invoke-direct {v1, v0}, Lcom/evernote/android/job/h;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 211
    :cond_2
    throw v0
.end method

.method private a(Lcom/evernote/android/job/i;Z)Landroid/app/job/JobInfo$Builder;
    .locals 5

    .prologue
    .line 157
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    .line 5134
    iget-object v1, p1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 5474
    iget v1, v1, Lcom/evernote/android/job/i$b;->a:I

    .line 157
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/evernote/android/job/v21/a;->a:Landroid/content/Context;

    const-class v4, Lcom/evernote/android/job/v21/PlatformJobService;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 6220
    iget-object v1, p1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 6474
    iget-boolean v1, v1, Lcom/evernote/android/job/i$b;->j:Z

    .line 158
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 7227
    iget-object v1, p1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 7474
    iget-boolean v1, v1, Lcom/evernote/android/job/i$b;->k:Z

    .line 159
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 8234
    iget-object v1, p1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 8474
    iget-object v1, v1, Lcom/evernote/android/job/i$b;->m:Lcom/evernote/android/job/i$c;

    .line 160
    invoke-virtual {p0, v1}, Lcom/evernote/android/job/v21/a;->a(Lcom/evernote/android/job/i$c;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 9251
    iget-object v0, p1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 9474
    iget-boolean v0, v0, Lcom/evernote/android/job/i$b;->p:Z

    .line 161
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 157
    return-object v0

    .line 161
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/app/job/JobInfo$Builder;JJ)Landroid/app/job/JobInfo$Builder;
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string/jumbo v0, "success"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "failure"

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/evernote/android/job/i$c;)I
    .locals 3

    .prologue
    const/4 v0, 0x2

    .line 173
    sget-object v1, Lcom/evernote/android/job/v21/a$1;->a:[I

    invoke-virtual {p1}, Lcom/evernote/android/job/i$c;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 183
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :pswitch_0
    const/4 v0, 0x0

    .line 181
    :goto_0
    :pswitch_1
    return v0

    .line 177
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/app/job/JobInfo$Builder;JJ)Landroid/app/job/JobInfo$Builder;
    .locals 2

    .prologue
    .line 169
    invoke-virtual {p1, p2, p3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final a()Landroid/app/job/JobScheduler;
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/evernote/android/job/v21/a;->a:Landroid/content/Context;

    const-string/jumbo v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 123
    :try_start_0
    invoke-virtual {p0}, Lcom/evernote/android/job/v21/a;->a()Landroid/app/job/JobScheduler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 126
    iget-object v1, p0, Lcom/evernote/android/job/v21/a;->b:Ld/a/a/a/c;

    invoke-virtual {v1, v0}, Ld/a/a/a/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Lcom/evernote/android/job/i;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 71
    invoke-static {p1}, Lcom/evernote/android/job/g$a;->a(Lcom/evernote/android/job/i;)J

    move-result-wide v2

    .line 72
    invoke-static {p1}, Lcom/evernote/android/job/g$a;->b(Lcom/evernote/android/job/i;)J

    move-result-wide v4

    .line 74
    invoke-direct {p0, p1, v9}, Lcom/evernote/android/job/v21/a;->a(Lcom/evernote/android/job/i;Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/evernote/android/job/v21/a;->b(Landroid/app/job/JobInfo$Builder;JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 75
    invoke-direct {p0, v0}, Lcom/evernote/android/job/v21/a;->a(Landroid/app/job/JobInfo;)I

    move-result v0

    .line 77
    const/16 v1, -0x7b

    if-ne v0, v1, :cond_0

    .line 78
    invoke-direct {p0, p1, v8}, Lcom/evernote/android/job/v21/a;->a(Lcom/evernote/android/job/i;Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/evernote/android/job/v21/a;->b(Landroid/app/job/JobInfo$Builder;JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 79
    invoke-direct {p0, v0}, Lcom/evernote/android/job/v21/a;->a(Landroid/app/job/JobInfo;)I

    move-result v0

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/evernote/android/job/v21/a;->b:Ld/a/a/a/c;

    const-string/jumbo v6, "Schedule one-off jobInfo %s, %s, start %s, end %s, reschedule count %d"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/evernote/android/job/v21/a;->b(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    aput-object p1, v7, v9

    const/4 v0, 0x2

    .line 83
    invoke-static {v2, v3}, Lcom/evernote/android/job/a/f;->a(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    invoke-static {v4, v5}, Lcom/evernote/android/job/a/f;->a(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v0

    const/4 v0, 0x4

    invoke-static {p1}, Lcom/evernote/android/job/g$a;->g(Lcom/evernote/android/job/i;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v0

    .line 82
    invoke-virtual {v1, v6, v7}, Ld/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public final b(Lcom/evernote/android/job/i;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 88
    .line 1195
    iget-object v0, p1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 1474
    iget-wide v2, v0, Lcom/evernote/android/job/i$b;->g:J

    .line 2205
    iget-object v0, p1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 2474
    iget-wide v4, v0, Lcom/evernote/android/job/i$b;->h:J

    .line 91
    invoke-direct {p0, p1, v9}, Lcom/evernote/android/job/v21/a;->a(Lcom/evernote/android/job/i;Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/evernote/android/job/v21/a;->a(Landroid/app/job/JobInfo$Builder;JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 92
    invoke-direct {p0, v0}, Lcom/evernote/android/job/v21/a;->a(Landroid/app/job/JobInfo;)I

    move-result v0

    .line 94
    const/16 v1, -0x7b

    if-ne v0, v1, :cond_0

    .line 95
    invoke-direct {p0, p1, v8}, Lcom/evernote/android/job/v21/a;->a(Lcom/evernote/android/job/i;Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/evernote/android/job/v21/a;->a(Landroid/app/job/JobInfo$Builder;JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 96
    invoke-direct {p0, v0}, Lcom/evernote/android/job/v21/a;->a(Landroid/app/job/JobInfo;)I

    move-result v0

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/evernote/android/job/v21/a;->b:Ld/a/a/a/c;

    const-string/jumbo v6, "Schedule periodic jobInfo %s, %s, interval %s, flex %s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/evernote/android/job/v21/a;->b(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    aput-object p1, v7, v9

    const/4 v0, 0x2

    .line 100
    invoke-static {v2, v3}, Lcom/evernote/android/job/a/f;->a(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    invoke-static {v4, v5}, Lcom/evernote/android/job/a/f;->a(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v0

    .line 99
    invoke-virtual {v1, v6, v7}, Ld/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method public c(Lcom/evernote/android/job/i;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 105
    invoke-static {p1}, Lcom/evernote/android/job/g$a;->d(Lcom/evernote/android/job/i;)J

    move-result-wide v2

    .line 106
    invoke-static {p1}, Lcom/evernote/android/job/g$a;->e(Lcom/evernote/android/job/i;)J

    move-result-wide v4

    .line 108
    invoke-direct {p0, p1, v9}, Lcom/evernote/android/job/v21/a;->a(Lcom/evernote/android/job/i;Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/evernote/android/job/v21/a;->b(Landroid/app/job/JobInfo$Builder;JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 109
    invoke-direct {p0, v0}, Lcom/evernote/android/job/v21/a;->a(Landroid/app/job/JobInfo;)I

    move-result v0

    .line 111
    const/16 v1, -0x7b

    if-ne v0, v1, :cond_0

    .line 112
    invoke-direct {p0, p1, v8}, Lcom/evernote/android/job/v21/a;->a(Lcom/evernote/android/job/i;Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/evernote/android/job/v21/a;->b(Landroid/app/job/JobInfo$Builder;JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 113
    invoke-direct {p0, v0}, Lcom/evernote/android/job/v21/a;->a(Landroid/app/job/JobInfo;)I

    move-result v0

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/evernote/android/job/v21/a;->b:Ld/a/a/a/c;

    const-string/jumbo v6, "Schedule periodic (flex support) jobInfo %s, %s, start %s, end %s, flex %s"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/evernote/android/job/v21/a;->b(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    aput-object p1, v7, v9

    const/4 v0, 0x2

    .line 117
    invoke-static {v2, v3}, Lcom/evernote/android/job/a/f;->a(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    invoke-static {v4, v5}, Lcom/evernote/android/job/a/f;->a(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v0

    const/4 v0, 0x4

    .line 3205
    iget-object v2, p1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 3474
    iget-wide v2, v2, Lcom/evernote/android/job/i$b;->h:J

    .line 117
    invoke-static {v2, v3}, Lcom/evernote/android/job/a/f;->a(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v0

    .line 116
    invoke-virtual {v1, v6, v7}, Ld/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method public d(Lcom/evernote/android/job/i;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 134
    :try_start_0
    invoke-virtual {p0}, Lcom/evernote/android/job/v21/a;->a()Landroid/app/job/JobScheduler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 153
    :goto_0
    return v0

    .line 135
    :catch_0
    move-exception v0

    .line 137
    iget-object v2, p0, Lcom/evernote/android/job/v21/a;->b:Ld/a/a/a/c;

    invoke-virtual {v2, v0}, Ld/a/a/a/c;->a(Ljava/lang/Throwable;)V

    move v0, v1

    .line 138
    goto :goto_0

    .line 4134
    :cond_1
    iget-object v2, p1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 4474
    iget v2, v2, Lcom/evernote/android/job/i$b;->a:I

    .line 147
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo;

    .line 148
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 149
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 153
    goto :goto_0
.end method
