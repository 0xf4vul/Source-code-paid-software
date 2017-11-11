.class final Lcom/evernote/android/job/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ld/a/a/a/c;

.field private static final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/evernote/android/job/a/d;

    const-string/jumbo v1, "WakeLockUtil"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/a/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/l;->a:Ld/a/a/a/c;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/evernote/android/job/l;->b:Landroid/util/SparseArray;

    .line 70
    const/4 v0, 0x1

    sput v0, Lcom/evernote/android/job/l;->c:I

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 8

    .prologue
    .line 87
    sget-object v1, Lcom/evernote/android/job/l;->b:Landroid/util/SparseArray;

    monitor-enter v1

    .line 88
    :try_start_0
    sget v2, Lcom/evernote/android/job/l;->c:I

    .line 89
    sget v0, Lcom/evernote/android/job/l;->c:I

    add-int/lit8 v0, v0, 0x1

    .line 90
    sput v0, Lcom/evernote/android/job/l;->c:I

    if-gtz v0, :cond_0

    .line 91
    const/4 v0, 0x1

    sput v0, Lcom/evernote/android/job/l;->c:I

    .line 94
    :cond_0
    const-string/jumbo v0, "com.evernote.android.job.wakelockid"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 96
    if-nez v0, :cond_1

    .line 97
    const/4 v0, 0x0

    monitor-exit v1

    .line 106
    :goto_0
    return-object v0

    .line 100
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "wake:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 101
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x3

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {p0, v3, v4, v5}, Lcom/evernote/android/job/l;->a(Landroid/content/Context;Ljava/lang/String;J)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    .line 102
    if-eqz v3, :cond_2

    .line 103
    sget-object v4, Lcom/evernote/android/job/l;->b:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    :cond_2
    monitor-exit v1

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)Landroid/os/PowerManager$WakeLock;
    .locals 2

    .prologue
    .line 33
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 35
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 36
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 38
    invoke-static {p0, v0, p2, p3}, Lcom/evernote/android/job/l;->a(Landroid/content/Context;Landroid/os/PowerManager$WakeLock;J)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/os/PowerManager$WakeLock;)V
    .locals 2

    .prologue
    .line 60
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 65
    sget-object v1, Lcom/evernote/android/job/l;->a:Ld/a/a/a/c;

    invoke-virtual {v1, v0}, Ld/a/a/a/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/os/PowerManager$WakeLock;J)Z
    .locals 2

    .prologue
    .line 42
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/evernote/android/job/a/f;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    const/4 v0, 0x1

    .line 55
    :goto_0
    return v0

    .line 49
    :catch_0
    move-exception v0

    .line 52
    sget-object v1, Lcom/evernote/android/job/l;->a:Ld/a/a/a/c;

    invoke-virtual {v1, v0}, Ld/a/a/a/c;->a(Ljava/lang/Throwable;)V

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 119
    if-nez p0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 123
    :cond_1
    const-string/jumbo v1, "com.evernote.android.job.wakelockid"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 124
    if-eqz v1, :cond_0

    .line 127
    sget-object v2, Lcom/evernote/android/job/l;->b:Landroid/util/SparseArray;

    monitor-enter v2

    .line 128
    :try_start_0
    sget-object v0, Lcom/evernote/android/job/l;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    invoke-static {v0}, Lcom/evernote/android/job/l;->a(Landroid/os/PowerManager$WakeLock;)V

    .line 129
    sget-object v0, Lcom/evernote/android/job/l;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 130
    const/4 v0, 0x1

    monitor-exit v2

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
