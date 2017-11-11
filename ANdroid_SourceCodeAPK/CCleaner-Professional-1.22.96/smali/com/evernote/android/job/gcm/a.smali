.class public Lcom/evernote/android/job/gcm/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/evernote/android/job/g;


# static fields
.field private static final a:Ld/a/a/a/c;


# instance fields
.field private final b:Lcom/google/android/gms/gcm/GcmNetworkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/evernote/android/job/a/d;

    const-string/jumbo v1, "JobProxyGcm"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/a/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/gcm/a;->a:Ld/a/a/a/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Lcom/google/android/gms/gcm/GcmNetworkManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GcmNetworkManager;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/gcm/a;->b:Lcom/google/android/gms/gcm/GcmNetworkManager;

    .line 59
    return-void
.end method

.method private static a(Lcom/google/android/gms/gcm/Task$Builder;Lcom/evernote/android/job/i;)Lcom/google/android/gms/gcm/Task$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/gcm/Task$Builder;",
            ">(TT;",
            "Lcom/evernote/android/job/i;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 121
    .line 7134
    iget-object v1, p1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 7474
    iget v1, v1, Lcom/evernote/android/job/i$b;->a:I

    .line 8135
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {p0, v1}, Lcom/google/android/gms/gcm/Task$Builder;->setTag(Ljava/lang/String;)Lcom/google/android/gms/gcm/Task$Builder;

    move-result-object v1

    const-class v2, Lcom/evernote/android/job/gcm/PlatformGcmService;

    .line 122
    invoke-virtual {v1, v2}, Lcom/google/android/gms/gcm/Task$Builder;->setService(Ljava/lang/Class;)Lcom/google/android/gms/gcm/Task$Builder;

    move-result-object v1

    .line 123
    invoke-virtual {v1, v0}, Lcom/google/android/gms/gcm/Task$Builder;->setUpdateCurrent(Z)Lcom/google/android/gms/gcm/Task$Builder;

    move-result-object v1

    .line 8234
    iget-object v2, p1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 8474
    iget-object v2, v2, Lcom/evernote/android/job/i$b;->m:Lcom/evernote/android/job/i$c;

    .line 9139
    sget-object v3, Lcom/evernote/android/job/gcm/a$1;->a:[I

    invoke-virtual {v2}, Lcom/evernote/android/job/i$c;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 9149
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9141
    :pswitch_0
    const/4 v0, 0x2

    .line 124
    :goto_0
    :pswitch_1
    invoke-virtual {v1, v0}, Lcom/google/android/gms/gcm/Task$Builder;->setRequiredNetwork(I)Lcom/google/android/gms/gcm/Task$Builder;

    move-result-object v0

    .line 9251
    iget-object v1, p1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 9474
    iget-boolean v1, v1, Lcom/evernote/android/job/i$b;->p:Z

    .line 125
    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/Task$Builder;->setPersisted(Z)Lcom/google/android/gms/gcm/Task$Builder;

    move-result-object v0

    .line 10220
    iget-object v1, p1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 10474
    iget-boolean v1, v1, Lcom/evernote/android/job/i$b;->j:Z

    .line 126
    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/Task$Builder;->setRequiresCharging(Z)Lcom/google/android/gms/gcm/Task$Builder;

    .line 127
    return-object p0

    .line 9143
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 9139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/evernote/android/job/gcm/a;->b:Lcom/google/android/gms/gcm/GcmNetworkManager;

    .line 6135
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    const-class v2, Lcom/evernote/android/job/gcm/PlatformGcmService;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/gcm/GcmNetworkManager;->cancelTask(Ljava/lang/String;Ljava/lang/Class;)V

    .line 112
    return-void
.end method

.method public final a(Lcom/evernote/android/job/i;)V
    .locals 10

    .prologue
    const-wide/16 v0, 0x3e8

    .line 63
    invoke-static {p1}, Lcom/evernote/android/job/g$a;->a(Lcom/evernote/android/job/i;)J

    move-result-wide v2

    .line 64
    div-long v4, v2, v0

    .line 66
    invoke-static {p1}, Lcom/evernote/android/job/g$a;->b(Lcom/evernote/android/job/i;)J

    move-result-wide v6

    .line 67
    div-long v0, v6, v0

    const-wide/16 v8, 0x1

    add-long/2addr v8, v4

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 69
    new-instance v0, Lcom/google/android/gms/gcm/OneoffTask$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/gcm/OneoffTask$Builder;-><init>()V

    invoke-static {v0, p1}, Lcom/evernote/android/job/gcm/a;->a(Lcom/google/android/gms/gcm/Task$Builder;Lcom/evernote/android/job/i;)Lcom/google/android/gms/gcm/Task$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/gcm/OneoffTask$Builder;

    .line 70
    invoke-virtual {v0, v4, v5, v8, v9}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setExecutionWindow(JJ)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->build()Lcom/google/android/gms/gcm/OneoffTask;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/evernote/android/job/gcm/a;->b:Lcom/google/android/gms/gcm/GcmNetworkManager;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/gcm/GcmNetworkManager;->schedule(Lcom/google/android/gms/gcm/Task;)V

    .line 75
    sget-object v0, Lcom/evernote/android/job/gcm/a;->a:Ld/a/a/a/c;

    const-string/jumbo v1, "Scheduled OneoffTask, %s, start %s, end %s, reschedule count %d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {v2, v3}, Lcom/evernote/android/job/a/f;->a(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x2

    .line 76
    invoke-static {v6, v7}, Lcom/evernote/android/job/a/f;->a(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x3

    invoke-static {p1}, Lcom/evernote/android/job/g$a;->g(Lcom/evernote/android/job/i;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    .line 75
    invoke-virtual {v0, v1, v4}, Ld/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public final b(Lcom/evernote/android/job/i;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 81
    new-instance v0, Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;-><init>()V

    invoke-static {v0, p1}, Lcom/evernote/android/job/gcm/a;->a(Lcom/google/android/gms/gcm/Task$Builder;Lcom/evernote/android/job/i;)Lcom/google/android/gms/gcm/Task$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    .line 1195
    iget-object v1, p1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 1474
    iget-wide v2, v1, Lcom/evernote/android/job/i$b;->g:J

    .line 82
    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setPeriod(J)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v0

    .line 2205
    iget-object v1, p1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 2474
    iget-wide v2, v1, Lcom/evernote/android/job/i$b;->h:J

    .line 83
    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setFlex(J)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->build()Lcom/google/android/gms/gcm/PeriodicTask;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/evernote/android/job/gcm/a;->b:Lcom/google/android/gms/gcm/GcmNetworkManager;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/gcm/GcmNetworkManager;->schedule(Lcom/google/android/gms/gcm/Task;)V

    .line 88
    sget-object v0, Lcom/evernote/android/job/gcm/a;->a:Ld/a/a/a/c;

    const-string/jumbo v1, "Scheduled PeriodicTask, %s, interval %s, flex %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    .line 3195
    iget-object v4, p1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 3474
    iget-wide v4, v4, Lcom/evernote/android/job/i$b;->g:J

    .line 88
    invoke-static {v4, v5}, Lcom/evernote/android/job/a/f;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 4205
    iget-object v4, p1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 4474
    iget-wide v4, v4, Lcom/evernote/android/job/i$b;->h:J

    .line 89
    invoke-static {v4, v5}, Lcom/evernote/android/job/a/f;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 88
    invoke-virtual {v0, v1, v2}, Ld/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method public final c(Lcom/evernote/android/job/i;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    .line 94
    sget-object v0, Lcom/evernote/android/job/gcm/a;->a:Ld/a/a/a/c;

    const-string/jumbo v1, "plantPeriodicFlexSupport called although flex is supported"

    .line 5061
    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Ld/a/a/a/c;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    invoke-static {p1}, Lcom/evernote/android/job/g$a;->d(Lcom/evernote/android/job/i;)J

    move-result-wide v2

    .line 97
    invoke-static {p1}, Lcom/evernote/android/job/g$a;->e(Lcom/evernote/android/job/i;)J

    move-result-wide v4

    .line 99
    new-instance v0, Lcom/google/android/gms/gcm/OneoffTask$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/gcm/OneoffTask$Builder;-><init>()V

    invoke-static {v0, p1}, Lcom/evernote/android/job/gcm/a;->a(Lcom/google/android/gms/gcm/Task$Builder;Lcom/evernote/android/job/i;)Lcom/google/android/gms/gcm/Task$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/gcm/OneoffTask$Builder;

    div-long v6, v2, v8

    div-long v8, v4, v8

    .line 100
    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setExecutionWindow(JJ)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->build()Lcom/google/android/gms/gcm/OneoffTask;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/evernote/android/job/gcm/a;->b:Lcom/google/android/gms/gcm/GcmNetworkManager;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/gcm/GcmNetworkManager;->schedule(Lcom/google/android/gms/gcm/Task;)V

    .line 105
    sget-object v0, Lcom/evernote/android/job/gcm/a;->a:Ld/a/a/a/c;

    const-string/jumbo v1, "Scheduled periodic (flex support), %s, start %s, end %s, flex %s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    invoke-static {v2, v3}, Lcom/evernote/android/job/a/f;->a(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x2

    .line 106
    invoke-static {v4, v5}, Lcom/evernote/android/job/a/f;->a(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x3

    .line 5205
    iget-object v3, p1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 5474
    iget-wide v4, v3, Lcom/evernote/android/job/i$b;->h:J

    .line 106
    invoke-static {v4, v5}, Lcom/evernote/android/job/a/f;->a(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 105
    invoke-virtual {v0, v1, v6}, Ld/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method public final d(Lcom/evernote/android/job/i;)Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method
