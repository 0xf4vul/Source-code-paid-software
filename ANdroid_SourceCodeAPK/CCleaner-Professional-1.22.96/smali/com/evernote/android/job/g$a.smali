.class public final Lcom/evernote/android/job/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/android/job/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/ThreadFactory;

.field private static final b:Ljava/lang/Object;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:I

.field private final e:Ld/a/a/a/c;

.field private final f:Lcom/evernote/android/job/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/evernote/android/job/g$a;->b:Ljava/lang/Object;

    .line 67
    new-instance v0, Lcom/evernote/android/job/g$a$1;

    invoke-direct {v0}, Lcom/evernote/android/job/g$a$1;-><init>()V

    sput-object v0, Lcom/evernote/android/job/g$a;->a:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Landroid/app/Service;Ld/a/a/a/c;I)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0, p1, p2, p3}, Lcom/evernote/android/job/g$a;-><init>(Landroid/content/Context;Ld/a/a/a/c;I)V

    .line 138
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ld/a/a/a/c;I)V
    .locals 2

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/evernote/android/job/g$a;->c:Landroid/content/Context;

    .line 142
    iput p3, p0, Lcom/evernote/android/job/g$a;->d:I

    .line 143
    iput-object p2, p0, Lcom/evernote/android/job/g$a;->e:Ld/a/a/a/c;

    .line 147
    :try_start_0
    invoke-static {p1}, Lcom/evernote/android/job/e;->a(Landroid/content/Context;)Lcom/evernote/android/job/e;
    :try_end_0
    .catch Lcom/evernote/android/job/f; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 152
    :goto_0
    iput-object v0, p0, Lcom/evernote/android/job/g$a;->f:Lcom/evernote/android/job/e;

    .line 153
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    iget-object v1, p0, Lcom/evernote/android/job/g$a;->e:Ld/a/a/a/c;

    invoke-virtual {v1, v0}, Ld/a/a/a/c;->a(Ljava/lang/Throwable;)V

    .line 150
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(JJ)J
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 86
    add-long v0, p0, p2

    .line 87
    xor-long v4, p0, p2

    cmp-long v4, v4, v8

    if-gez v4, :cond_0

    move v4, v2

    :goto_0
    xor-long v6, p0, v0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_1

    :goto_1
    or-int/2addr v2, v4

    .line 1091
    if-eqz v2, :cond_2

    :goto_2
    return-wide v0

    :cond_0
    move v4, v3

    .line 87
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 1091
    :cond_2
    const-wide v0, 0x7fffffffffffffffL

    .line 87
    goto :goto_2
.end method

.method public static a(Lcom/evernote/android/job/i;)J
    .locals 2

    .prologue
    .line 95
    .line 1325
    iget v0, p0, Lcom/evernote/android/job/i;->g:I

    .line 95
    if-lez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/evernote/android/job/i;->d()J

    move-result-wide v0

    .line 98
    :goto_0
    return-wide v0

    .line 2151
    :cond_0
    iget-object v0, p0, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 2474
    iget-wide v0, v0, Lcom/evernote/android/job/i$b;->c:J

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 291
    invoke-static {p0, p1}, Lcom/evernote/android/job/l;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 5

    .prologue
    .line 279
    invoke-static {}, Lcom/evernote/android/job/a/c;->values()[Lcom/evernote/android/job/a/c;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 280
    invoke-virtual {v3, p0}, Lcom/evernote/android/job/a/c;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 282
    :try_start_0
    invoke-virtual {v3, p0}, Lcom/evernote/android/job/a/c;->b(Landroid/content/Context;)Lcom/evernote/android/job/g;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/evernote/android/job/g;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    :cond_1
    return-void

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static a(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 295
    invoke-static {p0}, Lcom/evernote/android/job/l;->a(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static b(Lcom/evernote/android/job/i;)J
    .locals 2

    .prologue
    .line 103
    .line 3325
    iget v0, p0, Lcom/evernote/android/job/i;->g:I

    .line 103
    if-lez v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/evernote/android/job/i;->d()J

    move-result-wide v0

    .line 106
    :goto_0
    return-wide v0

    .line 4160
    :cond_0
    iget-object v0, p0, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 4474
    iget-wide v0, v0, Lcom/evernote/android/job/i$b;->d:J

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/evernote/android/job/g$a;->c:Landroid/content/Context;

    iget v1, p0, Lcom/evernote/android/job/g$a;->d:I

    invoke-static {v0, v1}, Lcom/evernote/android/job/g$a;->a(Landroid/content/Context;I)V

    .line 271
    return-void
.end method

.method public static c(Lcom/evernote/android/job/i;)J
    .locals 6

    .prologue
    .line 111
    invoke-static {p0}, Lcom/evernote/android/job/g$a;->a(Lcom/evernote/android/job/i;)J

    move-result-wide v0

    invoke-static {p0}, Lcom/evernote/android/job/g$a;->b(Lcom/evernote/android/job/i;)J

    move-result-wide v2

    invoke-static {p0}, Lcom/evernote/android/job/g$a;->a(Lcom/evernote/android/job/i;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/android/job/g$a;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static d(Lcom/evernote/android/job/i;)J
    .locals 6

    .prologue
    .line 115
    const-wide/16 v0, 0x1

    .line 5195
    iget-object v2, p0, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 5474
    iget-wide v2, v2, Lcom/evernote/android/job/i$b;->g:J

    .line 6205
    iget-object v4, p0, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 6474
    iget-wide v4, v4, Lcom/evernote/android/job/i$b;->h:J

    .line 115
    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static e(Lcom/evernote/android/job/i;)J
    .locals 2

    .prologue
    .line 119
    .line 7195
    iget-object v0, p0, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 7474
    iget-wide v0, v0, Lcom/evernote/android/job/i$b;->g:J

    .line 119
    return-wide v0
.end method

.method public static f(Lcom/evernote/android/job/i;)J
    .locals 6

    .prologue
    .line 123
    invoke-static {p0}, Lcom/evernote/android/job/g$a;->d(Lcom/evernote/android/job/i;)J

    move-result-wide v0

    .line 8195
    iget-object v2, p0, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 8474
    iget-wide v2, v2, Lcom/evernote/android/job/i$b;->g:J

    .line 123
    invoke-static {p0}, Lcom/evernote/android/job/g$a;->d(Lcom/evernote/android/job/i;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/android/job/g$a;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static g(Lcom/evernote/android/job/i;)I
    .locals 1

    .prologue
    .line 127
    .line 9325
    iget v0, p0, Lcom/evernote/android/job/i;->g:I

    .line 127
    return v0
.end method


# virtual methods
.method public final a()Lcom/evernote/android/job/i;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 156
    sget-object v4, Lcom/evernote/android/job/g$a;->b:Ljava/lang/Object;

    monitor-enter v4

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/evernote/android/job/g$a;->f:Lcom/evernote/android/job/e;

    if-nez v1, :cond_0

    .line 158
    monitor-exit v4

    .line 202
    :goto_0
    return-object v0

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/evernote/android/job/g$a;->f:Lcom/evernote/android/job/e;

    iget v5, p0, Lcom/evernote/android/job/g$a;->d:I

    invoke-virtual {v1, v5}, Lcom/evernote/android/job/e;->a(I)Lcom/evernote/android/job/i;

    move-result-object v1

    .line 163
    iget-object v5, p0, Lcom/evernote/android/job/g$a;->f:Lcom/evernote/android/job/e;

    iget v6, p0, Lcom/evernote/android/job/g$a;->d:I

    invoke-virtual {v5, v6}, Lcom/evernote/android/job/e;->b(I)Lcom/evernote/android/job/a;

    move-result-object v5

    .line 164
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/evernote/android/job/i;->c()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 166
    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/evernote/android/job/a;->d()Z

    move-result v3

    if-nez v3, :cond_2

    .line 168
    iget-object v2, p0, Lcom/evernote/android/job/g$a;->e:Ld/a/a/a/c;

    const-string/jumbo v3, "Job %d is already running, %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/evernote/android/job/g$a;->d:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v5}, Ld/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    monitor-exit v4

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v2, v3

    .line 164
    goto :goto_1

    .line 172
    :cond_2
    if-eqz v5, :cond_3

    if-nez v2, :cond_3

    .line 173
    :try_start_1
    iget-object v2, p0, Lcom/evernote/android/job/g$a;->e:Ld/a/a/a/c;

    const-string/jumbo v3, "Job %d already finished, %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/evernote/android/job/g$a;->d:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v5}, Ld/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    invoke-direct {p0}, Lcom/evernote/android/job/g$a;->b()V

    .line 175
    monitor-exit v4

    goto :goto_0

    .line 177
    :cond_3
    if-eqz v5, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 10269
    iget-wide v6, v5, Lcom/evernote/android/job/a;->j:J

    .line 177
    sub-long/2addr v2, v6

    const-wide/16 v6, 0x7d0

    cmp-long v2, v2, v6

    if-gez v2, :cond_4

    .line 179
    iget-object v2, p0, Lcom/evernote/android/job/g$a;->e:Ld/a/a/a/c;

    const-string/jumbo v3, "Job %d is periodic and just finished, %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/evernote/android/job/g$a;->d:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v5}, Ld/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    monitor-exit v4

    goto/16 :goto_0

    .line 183
    :cond_4
    if-eqz v1, :cond_5

    .line 10338
    iget-boolean v2, v1, Lcom/evernote/android/job/i;->i:Z

    .line 183
    if-eqz v2, :cond_5

    .line 184
    iget-object v2, p0, Lcom/evernote/android/job/g$a;->e:Ld/a/a/a/c;

    const-string/jumbo v3, "Request %d is transient, %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/evernote/android/job/g$a;->d:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v5}, Ld/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    monitor-exit v4

    goto/16 :goto_0

    .line 188
    :cond_5
    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/evernote/android/job/g$a;->f:Lcom/evernote/android/job/e;

    .line 10496
    iget-object v2, v2, Lcom/evernote/android/job/e;->e:Lcom/evernote/android/job/d;

    .line 188
    invoke-virtual {v2, v1}, Lcom/evernote/android/job/d;->b(Lcom/evernote/android/job/i;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 189
    iget-object v2, p0, Lcom/evernote/android/job/g$a;->e:Ld/a/a/a/c;

    const-string/jumbo v3, "Request %d is in the queue to start, %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/evernote/android/job/g$a;->d:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v5}, Ld/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    monitor-exit v4

    goto/16 :goto_0

    .line 192
    :cond_6
    if-nez v1, :cond_7

    .line 193
    iget-object v1, p0, Lcom/evernote/android/job/g$a;->e:Ld/a/a/a/c;

    const-string/jumbo v2, "Request for ID %d was null"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/evernote/android/job/g$a;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {v1, v2, v3}, Ld/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    invoke-direct {p0}, Lcom/evernote/android/job/g$a;->b()V

    .line 195
    monitor-exit v4

    goto/16 :goto_0

    .line 199
    :cond_7
    iget-object v0, p0, Lcom/evernote/android/job/g$a;->f:Lcom/evernote/android/job/e;

    .line 11496
    iget-object v0, v0, Lcom/evernote/android/job/e;->e:Lcom/evernote/android/job/d;

    .line 199
    invoke-virtual {v0, v1}, Lcom/evernote/android/job/d;->a(Lcom/evernote/android/job/i;)V

    .line 202
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto/16 :goto_0
.end method

.method public final h(Lcom/evernote/android/job/i;)Lcom/evernote/android/job/a$b;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 12315
    iget-wide v4, p1, Lcom/evernote/android/job/i;->h:J

    .line 208
    sub-long/2addr v2, v4

    .line 210
    invoke-virtual {p1}, Lcom/evernote/android/job/i;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "interval %s, flex %s"

    new-array v5, v10, [Ljava/lang/Object;

    .line 13195
    iget-object v6, p1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 13474
    iget-wide v6, v6, Lcom/evernote/android/job/i$b;->g:J

    .line 211
    invoke-static {v6, v7}, Lcom/evernote/android/job/a/f;->a(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 14205
    iget-object v6, p1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 14474
    iget-wide v6, v6, Lcom/evernote/android/job/i$b;->h:J

    .line 212
    invoke-static {v6, v7}, Lcom/evernote/android/job/a/f;->a(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 211
    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 220
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 221
    iget-object v4, p0, Lcom/evernote/android/job/g$a;->e:Ld/a/a/a/c;

    const-string/jumbo v5, "Running JobRequest on a main thread, this could cause stutter or ANR in your app."

    .line 17061
    const/4 v6, 0x5

    invoke-virtual {v4, v6, v5, v1}, Ld/a/a/a/c;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 224
    :cond_0
    iget-object v4, p0, Lcom/evernote/android/job/g$a;->e:Ld/a/a/a/c;

    const-string/jumbo v5, "Run job, %s, waited %s, %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v8

    invoke-static {v2, v3}, Lcom/evernote/android/job/a/f;->a(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v9

    aput-object v0, v6, v10

    invoke-virtual {v4, v5, v6}, Ld/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    iget-object v0, p0, Lcom/evernote/android/job/g$a;->f:Lcom/evernote/android/job/e;

    .line 17496
    iget-object v0, v0, Lcom/evernote/android/job/e;->e:Lcom/evernote/android/job/d;

    .line 230
    :try_start_0
    iget-object v2, p0, Lcom/evernote/android/job/g$a;->f:Lcom/evernote/android/job/e;

    .line 17500
    iget-object v2, v2, Lcom/evernote/android/job/e;->c:Lcom/evernote/android/job/c;

    .line 18142
    iget-object v3, p1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 18474
    iget-object v3, v3, Lcom/evernote/android/job/i$b;->b:Ljava/lang/String;

    .line 230
    invoke-virtual {v2, v3}, Lcom/evernote/android/job/c;->a(Ljava/lang/String;)Lcom/evernote/android/job/a;

    move-result-object v1

    .line 232
    invoke-virtual {p1}, Lcom/evernote/android/job/i;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 19420
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/evernote/android/job/i;->i:Z

    .line 19421
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 19422
    const-string/jumbo v3, "isTransient"

    iget-boolean v4, p1, Lcom/evernote/android/job/i;->i:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 19423
    invoke-static {}, Lcom/evernote/android/job/e;->a()Lcom/evernote/android/job/e;

    move-result-object v3

    .line 19492
    iget-object v3, v3, Lcom/evernote/android/job/e;->d:Lcom/evernote/android/job/j;

    .line 19423
    invoke-virtual {v3, p1, v2}, Lcom/evernote/android/job/j;->a(Lcom/evernote/android/job/i;Landroid/content/ContentValues;)V

    .line 236
    :cond_1
    iget-object v2, p0, Lcom/evernote/android/job/g$a;->c:Landroid/content/Context;

    invoke-virtual {v0, v2, p1, v1}, Lcom/evernote/android/job/d;->a(Landroid/content/Context;Lcom/evernote/android/job/i;Lcom/evernote/android/job/a;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 237
    if-nez v0, :cond_6

    .line 238
    sget-object v0, Lcom/evernote/android/job/a$b;->b:Lcom/evernote/android/job/a$b;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    invoke-virtual {p1}, Lcom/evernote/android/job/i;->c()Z

    move-result v1

    if-nez v1, :cond_5

    .line 258
    iget-object v1, p0, Lcom/evernote/android/job/g$a;->f:Lcom/evernote/android/job/e;

    .line 20492
    iget-object v1, v1, Lcom/evernote/android/job/e;->d:Lcom/evernote/android/job/j;

    .line 258
    invoke-virtual {v1, p1}, Lcom/evernote/android/job/j;->b(Lcom/evernote/android/job/i;)V

    .line 254
    :cond_2
    :goto_1
    return-object v0

    .line 15295
    :cond_3
    iget-object v0, p1, Lcom/evernote/android/job/i;->f:Lcom/evernote/android/job/a/c;

    .line 16126
    iget-boolean v0, v0, Lcom/evernote/android/job/a/c;->f:Z

    .line 213
    if-eqz v0, :cond_4

    .line 214
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "start %s, end %s"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/evernote/android/job/g$a;->a(Lcom/evernote/android/job/i;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/evernote/android/job/a/f;->a(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 215
    invoke-static {p1}, Lcom/evernote/android/job/g$a;->b(Lcom/evernote/android/job/i;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/evernote/android/job/a/f;->a(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 214
    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 217
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "delay "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/evernote/android/job/g$a;->c(Lcom/evernote/android/job/i;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/evernote/android/job/a/f;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 21342
    :cond_5
    iget-boolean v1, p1, Lcom/evernote/android/job/i;->j:Z

    .line 260
    if-eqz v1, :cond_2

    .line 261
    iget-object v1, p0, Lcom/evernote/android/job/g$a;->f:Lcom/evernote/android/job/e;

    .line 21492
    iget-object v1, v1, Lcom/evernote/android/job/e;->d:Lcom/evernote/android/job/j;

    .line 261
    invoke-virtual {v1, p1}, Lcom/evernote/android/job/j;->b(Lcom/evernote/android/job/i;)V

    .line 262
    invoke-virtual {p1, v8, v8}, Lcom/evernote/android/job/i;->a(ZZ)Lcom/evernote/android/job/i;

    goto :goto_1

    .line 242
    :cond_6
    :try_start_1
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/a$b;

    .line 243
    iget-object v2, p0, Lcom/evernote/android/job/g$a;->e:Ld/a/a/a/c;

    const-string/jumbo v3, "Finished job, %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ld/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    invoke-virtual {p1}, Lcom/evernote/android/job/i;->c()Z

    move-result v1

    if-nez v1, :cond_7

    .line 258
    iget-object v1, p0, Lcom/evernote/android/job/g$a;->f:Lcom/evernote/android/job/e;

    .line 22492
    iget-object v1, v1, Lcom/evernote/android/job/e;->d:Lcom/evernote/android/job/j;

    .line 258
    invoke-virtual {v1, p1}, Lcom/evernote/android/job/j;->b(Lcom/evernote/android/job/i;)V

    goto :goto_1

    .line 23342
    :cond_7
    iget-boolean v1, p1, Lcom/evernote/android/job/i;->j:Z

    .line 260
    if-eqz v1, :cond_2

    .line 261
    iget-object v1, p0, Lcom/evernote/android/job/g$a;->f:Lcom/evernote/android/job/e;

    .line 23492
    iget-object v1, v1, Lcom/evernote/android/job/e;->d:Lcom/evernote/android/job/j;

    .line 261
    invoke-virtual {v1, p1}, Lcom/evernote/android/job/j;->b(Lcom/evernote/android/job/i;)V

    .line 262
    invoke-virtual {p1, v8, v8}, Lcom/evernote/android/job/i;->a(ZZ)Lcom/evernote/android/job/i;

    goto/16 :goto_1

    .line 246
    :catch_0
    move-exception v0

    .line 247
    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/evernote/android/job/g$a;->e:Ld/a/a/a/c;

    invoke-virtual {v2, v0}, Ld/a/a/a/c;->a(Ljava/lang/Throwable;)V

    .line 249
    if-eqz v1, :cond_8

    .line 24244
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/evernote/android/job/a;->a(Z)V

    .line 251
    iget-object v0, p0, Lcom/evernote/android/job/g$a;->e:Ld/a/a/a/c;

    const-string/jumbo v1, "Canceled %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ld/a/a/a/c;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    :cond_8
    sget-object v0, Lcom/evernote/android/job/a$b;->b:Lcom/evernote/android/job/a$b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 257
    invoke-virtual {p1}, Lcom/evernote/android/job/i;->c()Z

    move-result v1

    if-nez v1, :cond_9

    .line 258
    iget-object v1, p0, Lcom/evernote/android/job/g$a;->f:Lcom/evernote/android/job/e;

    .line 24492
    iget-object v1, v1, Lcom/evernote/android/job/e;->d:Lcom/evernote/android/job/j;

    .line 258
    invoke-virtual {v1, p1}, Lcom/evernote/android/job/j;->b(Lcom/evernote/android/job/i;)V

    goto/16 :goto_1

    .line 25342
    :cond_9
    iget-boolean v1, p1, Lcom/evernote/android/job/i;->j:Z

    .line 260
    if-eqz v1, :cond_2

    .line 261
    iget-object v1, p0, Lcom/evernote/android/job/g$a;->f:Lcom/evernote/android/job/e;

    .line 25492
    iget-object v1, v1, Lcom/evernote/android/job/e;->d:Lcom/evernote/android/job/j;

    .line 261
    invoke-virtual {v1, p1}, Lcom/evernote/android/job/j;->b(Lcom/evernote/android/job/i;)V

    .line 262
    invoke-virtual {p1, v8, v8}, Lcom/evernote/android/job/i;->a(ZZ)Lcom/evernote/android/job/i;

    goto/16 :goto_1

    .line 257
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/evernote/android/job/i;->c()Z

    move-result v1

    if-nez v1, :cond_b

    .line 258
    iget-object v1, p0, Lcom/evernote/android/job/g$a;->f:Lcom/evernote/android/job/e;

    .line 26492
    iget-object v1, v1, Lcom/evernote/android/job/e;->d:Lcom/evernote/android/job/j;

    .line 258
    invoke-virtual {v1, p1}, Lcom/evernote/android/job/j;->b(Lcom/evernote/android/job/i;)V

    .line 262
    :cond_a
    :goto_3
    throw v0

    .line 27342
    :cond_b
    iget-boolean v1, p1, Lcom/evernote/android/job/i;->j:Z

    .line 260
    if-eqz v1, :cond_a

    .line 261
    iget-object v1, p0, Lcom/evernote/android/job/g$a;->f:Lcom/evernote/android/job/e;

    .line 27492
    iget-object v1, v1, Lcom/evernote/android/job/e;->d:Lcom/evernote/android/job/j;

    .line 261
    invoke-virtual {v1, p1}, Lcom/evernote/android/job/j;->b(Lcom/evernote/android/job/i;)V

    .line 262
    invoke-virtual {p1, v8, v8}, Lcom/evernote/android/job/i;->a(ZZ)Lcom/evernote/android/job/i;

    goto :goto_3

    .line 246
    :catch_1
    move-exception v0

    goto :goto_2
.end method
