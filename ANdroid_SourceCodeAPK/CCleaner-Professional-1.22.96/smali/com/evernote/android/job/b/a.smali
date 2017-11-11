.class public final Lcom/evernote/android/job/b/a;
.super Lcom/evernote/android/job/v14/a;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 47
    const-string/jumbo v0, "JobProxy19"

    invoke-direct {p0, p1, v0}, Lcom/evernote/android/job/v14/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected final a(Lcom/evernote/android/job/i;Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 53
    invoke-static {p1}, Lcom/evernote/android/job/g$a;->a(Lcom/evernote/android/job/i;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 54
    invoke-static {p1}, Lcom/evernote/android/job/g$a;->b(Lcom/evernote/android/job/i;)J

    move-result-wide v4

    invoke-static {p1}, Lcom/evernote/android/job/g$a;->a(Lcom/evernote/android/job/i;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    move-object v0, p2

    move-object v6, p3

    .line 56
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setWindow(IJJLandroid/app/PendingIntent;)V

    .line 58
    iget-object v0, p0, Lcom/evernote/android/job/b/a;->b:Ld/a/a/a/c;

    const-string/jumbo v2, "Schedule alarm, %s, start %s, end %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 59
    invoke-static {p1}, Lcom/evernote/android/job/g$a;->a(Lcom/evernote/android/job/i;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/evernote/android/job/a/f;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p1}, Lcom/evernote/android/job/g$a;->b(Lcom/evernote/android/job/i;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/evernote/android/job/a/f;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 58
    invoke-virtual {v0, v2, v3}, Ld/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method protected final b(Lcom/evernote/android/job/i;Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 65
    invoke-static {p1}, Lcom/evernote/android/job/g$a;->d(Lcom/evernote/android/job/i;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 66
    invoke-static {p1}, Lcom/evernote/android/job/g$a;->e(Lcom/evernote/android/job/i;)J

    move-result-wide v4

    invoke-static {p1}, Lcom/evernote/android/job/g$a;->d(Lcom/evernote/android/job/i;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    move-object v0, p2

    move-object v6, p3

    .line 68
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setWindow(IJJLandroid/app/PendingIntent;)V

    .line 70
    iget-object v0, p0, Lcom/evernote/android/job/b/a;->b:Ld/a/a/a/c;

    const-string/jumbo v2, "Scheduled repeating alarm (flex support), %s, start %s, end %s, flex %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 71
    invoke-static {p1}, Lcom/evernote/android/job/g$a;->d(Lcom/evernote/android/job/i;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/evernote/android/job/a/f;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p1}, Lcom/evernote/android/job/g$a;->e(Lcom/evernote/android/job/i;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/evernote/android/job/a/f;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    .line 1205
    iget-object v4, p1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 1474
    iget-wide v4, v4, Lcom/evernote/android/job/i$b;->h:J

    .line 72
    invoke-static {v4, v5}, Lcom/evernote/android/job/a/f;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 70
    invoke-virtual {v0, v2, v3}, Ld/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    return-void
.end method
