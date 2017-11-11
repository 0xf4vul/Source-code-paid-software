.class final Lcom/evernote/android/job/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/android/job/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/evernote/android/job/a$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/evernote/android/job/d;

.field private final b:Lcom/evernote/android/job/a;

.field private final c:Landroid/os/PowerManager$WakeLock;


# direct methods
.method private constructor <init>(Lcom/evernote/android/job/d;Lcom/evernote/android/job/a;)V
    .locals 4

    .prologue
    .line 138
    iput-object p1, p0, Lcom/evernote/android/job/d$a;->a:Lcom/evernote/android/job/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p2, p0, Lcom/evernote/android/job/d$a;->b:Lcom/evernote/android/job/a;

    .line 141
    iget-object v0, p0, Lcom/evernote/android/job/d$a;->b:Lcom/evernote/android/job/a;

    invoke-virtual {v0}, Lcom/evernote/android/job/a;->c()Landroid/content/Context;

    move-result-object v0

    .line 142
    const-string/jumbo v1, "JobExecutor"

    invoke-static {}, Lcom/evernote/android/job/d;->b()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/android/job/l;->a(Landroid/content/Context;Ljava/lang/String;J)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/d$a;->c:Landroid/os/PowerManager$WakeLock;

    .line 143
    return-void
.end method

.method synthetic constructor <init>(Lcom/evernote/android/job/d;Lcom/evernote/android/job/a;B)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/evernote/android/job/d$a;-><init>(Lcom/evernote/android/job/d;Lcom/evernote/android/job/a;)V

    return-void
.end method

.method private a()Lcom/evernote/android/job/a$b;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/d$a;->b:Lcom/evernote/android/job/a;

    invoke-virtual {v0}, Lcom/evernote/android/job/a;->c()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/android/job/d$a;->c:Landroid/os/PowerManager$WakeLock;

    invoke-static {}, Lcom/evernote/android/job/d;->b()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/android/job/l;->a(Landroid/content/Context;Landroid/os/PowerManager$WakeLock;J)Z

    .line 150
    invoke-direct {p0}, Lcom/evernote/android/job/d$a;->b()Lcom/evernote/android/job/a$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/evernote/android/job/d$a;->a:Lcom/evernote/android/job/d;

    iget-object v2, p0, Lcom/evernote/android/job/d$a;->b:Lcom/evernote/android/job/a;

    invoke-static {v1, v2}, Lcom/evernote/android/job/d;->a(Lcom/evernote/android/job/d;Lcom/evernote/android/job/a;)V

    .line 155
    iget-object v1, p0, Lcom/evernote/android/job/d$a;->c:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/evernote/android/job/d$a;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_1

    .line 156
    :cond_0
    invoke-static {}, Lcom/evernote/android/job/d;->c()Ld/a/a/a/c;

    move-result-object v1

    const-string/jumbo v2, "Wake lock was not held after job %s was done. The job took too long to complete. This could have unintended side effects on your app."

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/evernote/android/job/d$a;->b:Lcom/evernote/android/job/a;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ld/a/a/a/c;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/evernote/android/job/d$a;->c:Landroid/os/PowerManager$WakeLock;

    invoke-static {v1}, Lcom/evernote/android/job/l;->a(Landroid/os/PowerManager$WakeLock;)V

    .line 150
    return-object v0

    .line 153
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/evernote/android/job/d$a;->a:Lcom/evernote/android/job/d;

    iget-object v2, p0, Lcom/evernote/android/job/d$a;->b:Lcom/evernote/android/job/a;

    invoke-static {v1, v2}, Lcom/evernote/android/job/d;->a(Lcom/evernote/android/job/d;Lcom/evernote/android/job/a;)V

    .line 155
    iget-object v1, p0, Lcom/evernote/android/job/d$a;->c:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/evernote/android/job/d$a;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_3

    .line 156
    :cond_2
    invoke-static {}, Lcom/evernote/android/job/d;->c()Ld/a/a/a/c;

    move-result-object v1

    const-string/jumbo v2, "Wake lock was not held after job %s was done. The job took too long to complete. This could have unintended side effects on your app."

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/evernote/android/job/d$a;->b:Lcom/evernote/android/job/a;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ld/a/a/a/c;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :cond_3
    iget-object v1, p0, Lcom/evernote/android/job/d$a;->c:Landroid/os/PowerManager$WakeLock;

    invoke-static {v1}, Lcom/evernote/android/job/l;->a(Landroid/os/PowerManager$WakeLock;)V

    throw v0
.end method

.method private b()Lcom/evernote/android/job/a$b;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/d$a;->b:Lcom/evernote/android/job/a;

    invoke-virtual {v0}, Lcom/evernote/android/job/a;->a()Lcom/evernote/android/job/a$b;

    move-result-object v0

    .line 166
    invoke-static {}, Lcom/evernote/android/job/d;->c()Ld/a/a/a/c;

    move-result-object v1

    const-string/jumbo v4, "Finished %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/evernote/android/job/d$a;->b:Lcom/evernote/android/job/a;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ld/a/a/a/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    iget-object v6, p0, Lcom/evernote/android/job/d$a;->b:Lcom/evernote/android/job/a;

    .line 1179
    iget-object v1, p0, Lcom/evernote/android/job/d$a;->b:Lcom/evernote/android/job/a;

    .line 1220
    iget-object v1, v1, Lcom/evernote/android/job/a;->e:Lcom/evernote/android/job/a$a;

    .line 1562
    iget-object v1, v1, Lcom/evernote/android/job/a$a;->a:Lcom/evernote/android/job/i;

    .line 1183
    invoke-virtual {v1}, Lcom/evernote/android/job/i;->c()Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/evernote/android/job/a$b;->c:Lcom/evernote/android/job/a$b;

    invoke-virtual {v4, v0}, Lcom/evernote/android/job/a$b;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1184
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/evernote/android/job/i;->a(ZZ)Lcom/evernote/android/job/i;

    move-result-object v1

    .line 2134
    iget-object v4, v1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 1185
    invoke-static {}, Lcom/evernote/android/job/a;->b()V

    move v4, v3

    move-object v5, v1

    move v1, v2

    .line 3277
    :goto_0
    iget-boolean v6, v6, Lcom/evernote/android/job/a;->i:Z

    .line 1196
    if-nez v6, :cond_2

    .line 1198
    if-nez v4, :cond_0

    if-eqz v1, :cond_2

    .line 3407
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3408
    if-eqz v4, :cond_1

    .line 3409
    iget v4, v5, Lcom/evernote/android/job/i;->g:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v5, Lcom/evernote/android/job/i;->g:I

    .line 3410
    const-string/jumbo v4, "numFailures"

    iget v6, v5, Lcom/evernote/android/job/i;->g:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3413
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/evernote/android/job/i;->k:J

    .line 3414
    const-string/jumbo v4, "lastRun"

    iget-wide v6, v5, Lcom/evernote/android/job/i;->k:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3416
    invoke-static {}, Lcom/evernote/android/job/e;->a()Lcom/evernote/android/job/e;

    move-result-object v4

    .line 3492
    iget-object v4, v4, Lcom/evernote/android/job/e;->d:Lcom/evernote/android/job/j;

    .line 3416
    invoke-virtual {v4, v5, v1}, Lcom/evernote/android/job/j;->a(Lcom/evernote/android/job/i;Landroid/content/ContentValues;)V

    .line 175
    :cond_2
    :goto_1
    return-object v0

    .line 1188
    :cond_3
    invoke-virtual {v1}, Lcom/evernote/android/job/i;->c()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1190
    sget-object v4, Lcom/evernote/android/job/a$b;->a:Lcom/evernote/android/job/a$b;

    invoke-virtual {v4, v0}, Lcom/evernote/android/job/a$b;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_4

    move v4, v2

    move-object v5, v1

    move v1, v2

    .line 1191
    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    invoke-static {}, Lcom/evernote/android/job/d;->c()Ld/a/a/a/c;

    move-result-object v1

    const-string/jumbo v4, "Crashed %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/evernote/android/job/d$a;->b:Lcom/evernote/android/job/a;

    aput-object v5, v2, v3

    invoke-virtual {v1, v0, v4, v2}, Ld/a/a/a/c;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lcom/evernote/android/job/d$a;->b:Lcom/evernote/android/job/a;

    .line 4273
    iget-object v0, v0, Lcom/evernote/android/job/a;->k:Lcom/evernote/android/job/a$b;

    goto :goto_1

    :cond_4
    move v4, v3

    move-object v5, v1

    move v1, v2

    goto :goto_0

    :cond_5
    move v4, v3

    move-object v5, v1

    move v1, v3

    goto :goto_0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/evernote/android/job/d$a;->a()Lcom/evernote/android/job/a$b;

    move-result-object v0

    return-object v0
.end method
