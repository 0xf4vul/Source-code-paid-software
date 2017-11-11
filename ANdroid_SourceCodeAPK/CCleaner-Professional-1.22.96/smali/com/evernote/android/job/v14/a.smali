.class public Lcom/evernote/android/job/v14/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/evernote/android/job/g;


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Ld/a/a/a/c;

.field private c:Landroid/app/AlarmManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 55
    const-string/jumbo v0, "JobProxy14"

    invoke-direct {p0, p1, v0}, Lcom/evernote/android/job/v14/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/evernote/android/job/v14/a;->a:Landroid/content/Context;

    .line 60
    new-instance v0, Lcom/evernote/android/job/a/d;

    invoke-direct {v0, p2}, Lcom/evernote/android/job/a/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/evernote/android/job/v14/a;->b:Ld/a/a/a/c;

    .line 61
    return-void
.end method

.method private static a(Z)I
    .locals 1

    .prologue
    .line 168
    const/high16 v0, 0x8000000

    .line 169
    if-nez p0, :cond_0

    .line 170
    const/high16 v0, 0x48000000    # 131072.0f

    .line 172
    :cond_0
    return v0
.end method

.method private a()Landroid/app/AlarmManager;
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/evernote/android/job/v14/a;->c:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/evernote/android/job/v14/a;->a:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/evernote/android/job/v14/a;->c:Landroid/app/AlarmManager;

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/evernote/android/job/v14/a;->c:Landroid/app/AlarmManager;

    if-nez v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/evernote/android/job/v14/a;->b:Ld/a/a/a/c;

    const-string/jumbo v1, "AlarmManager is null"

    invoke-virtual {v0, v1}, Ld/a/a/a/c;->a(Ljava/lang/String;)V

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/evernote/android/job/v14/a;->c:Landroid/app/AlarmManager;

    return-object v0
.end method

.method private a(II)Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/evernote/android/job/v14/a;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/evernote/android/job/v14/PlatformAlarmReceiver;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/evernote/android/job/v14/a;->a:Landroid/content/Context;

    invoke-static {v1, p1, v0, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    .line 189
    :catch_0
    move-exception v0

    .line 192
    iget-object v1, p0, Lcom/evernote/android/job/v14/a;->b:Ld/a/a/a/c;

    invoke-virtual {v1, v0}, Ld/a/a/a/c;->a(Ljava/lang/Throwable;)V

    .line 193
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/evernote/android/job/i;I)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 180
    .line 8134
    iget-object v0, p1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 8474
    iget v0, v0, Lcom/evernote/android/job/i$b;->a:I

    .line 180
    invoke-direct {p0, v0, p2}, Lcom/evernote/android/job/v14/a;->a(II)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/evernote/android/job/i;Z)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 176
    invoke-static {p2}, Lcom/evernote/android/job/v14/a;->a(Z)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/evernote/android/job/v14/a;->a(Lcom/evernote/android/job/i;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static e(Lcom/evernote/android/job/i;)J
    .locals 4

    .prologue
    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Lcom/evernote/android/job/g$a;->c(Lcom/evernote/android/job/i;)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private f(Lcom/evernote/android/job/i;)V
    .locals 6

    .prologue
    .line 114
    iget-object v0, p0, Lcom/evernote/android/job/v14/a;->b:Ld/a/a/a/c;

    const-string/jumbo v1, "Scheduled alarm, %s, delay %s, exact %b, reschedule count %d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    .line 115
    invoke-static {p1}, Lcom/evernote/android/job/g$a;->c(Lcom/evernote/android/job/i;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/evernote/android/job/a/f;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 4265
    iget-object v4, p1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 4474
    iget-boolean v4, v4, Lcom/evernote/android/job/i$b;->l:Z

    .line 115
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p1}, Lcom/evernote/android/job/g$a;->g(Lcom/evernote/android/job/i;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 114
    invoke-virtual {v0, v1, v2}, Ld/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/evernote/android/job/v14/a;->a()Landroid/app/AlarmManager;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_0

    .line 151
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Lcom/evernote/android/job/v14/a;->a(Z)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/evernote/android/job/v14/a;->a(II)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 152
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/evernote/android/job/v14/a;->a(Z)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/evernote/android/job/v14/a;->a(II)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 156
    iget-object v1, p0, Lcom/evernote/android/job/v14/a;->b:Ld/a/a/a/c;

    invoke-virtual {v1, v0}, Ld/a/a/a/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Lcom/evernote/android/job/i;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/evernote/android/job/v14/a;->a(Lcom/evernote/android/job/i;Z)Landroid/app/PendingIntent;

    move-result-object v0

    .line 67
    invoke-direct {p0}, Lcom/evernote/android/job/v14/a;->a()Landroid/app/AlarmManager;

    move-result-object v1

    .line 68
    if-nez v1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 1265
    :cond_0
    :try_start_0
    iget-object v2, p1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 1474
    iget-boolean v2, v2, Lcom/evernote/android/job/i$b;->l:Z

    .line 73
    if-eqz v2, :cond_3

    .line 2090
    invoke-static {p1}, Lcom/evernote/android/job/v14/a;->e(Lcom/evernote/android/job/i;)J

    move-result-wide v2

    .line 2091
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_1

    .line 2092
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 2098
    :goto_1
    invoke-direct {p0, p1}, Lcom/evernote/android/job/v14/a;->f(Lcom/evernote/android/job/i;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 80
    iget-object v1, p0, Lcom/evernote/android/job/v14/a;->b:Ld/a/a/a/c;

    invoke-virtual {v1, v0}, Ld/a/a/a/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2093
    :cond_1
    :try_start_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_2

    .line 2094
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 2096
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 76
    :cond_3
    invoke-virtual {p0, p1, v1, v0}, Lcom/evernote/android/job/v14/a;->a(Lcom/evernote/android/job/i;Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a(Lcom/evernote/android/job/i;Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V
    .locals 4

    .prologue
    .line 85
    const/4 v0, 0x1

    invoke-static {p1}, Lcom/evernote/android/job/v14/a;->e(Lcom/evernote/android/job/i;)J

    move-result-wide v2

    invoke-virtual {p2, v0, v2, v3, p3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 86
    invoke-direct {p0, p1}, Lcom/evernote/android/job/v14/a;->f(Lcom/evernote/android/job/i;)V

    .line 87
    return-void
.end method

.method public final b(Lcom/evernote/android/job/i;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 120
    invoke-direct {p0, p1, v7}, Lcom/evernote/android/job/v14/a;->a(Lcom/evernote/android/job/i;Z)Landroid/app/PendingIntent;

    move-result-object v6

    .line 121
    invoke-direct {p0}, Lcom/evernote/android/job/v14/a;->a()Landroid/app/AlarmManager;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 5195
    iget-object v4, p1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 5474
    iget-wide v4, v4, Lcom/evernote/android/job/i$b;->g:J

    .line 123
    add-long/2addr v2, v4

    .line 6195
    iget-object v4, p1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 6474
    iget-wide v4, v4, Lcom/evernote/android/job/i$b;->g:J

    .line 123
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/evernote/android/job/v14/a;->b:Ld/a/a/a/c;

    const-string/jumbo v2, "Scheduled repeating alarm, %s, interval %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    .line 7195
    iget-object v1, p1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 7474
    iget-wide v4, v1, Lcom/evernote/android/job/i$b;->g:J

    .line 126
    invoke-static {v4, v5}, Lcom/evernote/android/job/a/f;->a(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-virtual {v0, v2, v3}, Ld/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method public b(Lcom/evernote/android/job/i;Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lcom/evernote/android/job/g$a;->f(Lcom/evernote/android/job/i;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 103
    invoke-virtual {p2, v6, v0, v1, p3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 105
    iget-object v0, p0, Lcom/evernote/android/job/v14/a;->b:Ld/a/a/a/c;

    const-string/jumbo v1, "Scheduled repeating alarm (flex support), %s, interval %s, flex %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 2195
    iget-object v3, p1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 2474
    iget-wide v4, v3, Lcom/evernote/android/job/i$b;->g:J

    .line 106
    invoke-static {v4, v5}, Lcom/evernote/android/job/a/f;->a(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    .line 3205
    iget-object v4, p1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 3474
    iget-wide v4, v4, Lcom/evernote/android/job/i$b;->h:J

    .line 106
    invoke-static {v4, v5}, Lcom/evernote/android/job/a/f;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 105
    invoke-virtual {v0, v1, v2}, Ld/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method public final c(Lcom/evernote/android/job/i;)V
    .locals 2

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/evernote/android/job/v14/a;->a(Lcom/evernote/android/job/i;Z)Landroid/app/PendingIntent;

    move-result-object v0

    .line 133
    invoke-direct {p0}, Lcom/evernote/android/job/v14/a;->a()Landroid/app/AlarmManager;

    move-result-object v1

    .line 134
    if-nez v1, :cond_0

    .line 144
    :goto_0
    return-void

    .line 139
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/evernote/android/job/v14/a;->b(Lcom/evernote/android/job/i;Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 142
    iget-object v1, p0, Lcom/evernote/android/job/v14/a;->b:Ld/a/a/a/c;

    invoke-virtual {v1, v0}, Ld/a/a/a/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final d(Lcom/evernote/android/job/i;)Z
    .locals 1

    .prologue
    .line 163
    const/high16 v0, 0x20000000

    invoke-direct {p0, p1, v0}, Lcom/evernote/android/job/v14/a;->a(Lcom/evernote/android/job/i;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
