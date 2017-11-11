.class final Lf/d/a/ab$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/e;
.implements Lf/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/e",
        "<TR;>;",
        "Lf/f;"
    }
.end annotation


# instance fields
.field final a:Lf/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field c:Z

.field d:Z

.field e:J

.field final f:Ljava/util/concurrent/atomic/AtomicLong;

.field volatile g:Lf/f;

.field volatile h:Z

.field i:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lf/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lf/i",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p2, p0, Lf/d/a/ab$a;->a:Lf/i;

    .line 189
    invoke-static {}, Lf/d/e/b/ak;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    new-instance v0, Lf/d/e/b/ad;

    invoke-direct {v0}, Lf/d/e/b/ad;-><init>()V

    .line 194
    :goto_0
    iput-object v0, p0, Lf/d/a/ab$a;->b:Ljava/util/Queue;

    .line 195
    invoke-static {}, Lf/d/a/d;->a()Lf/d/a/d;

    invoke-static {p1}, Lf/d/a/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 196
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lf/d/a/ab$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 197
    return-void

    .line 192
    :cond_0
    new-instance v0, Lf/d/e/a/g;

    invoke-direct {v0}, Lf/d/e/a/g;-><init>()V

    goto :goto_0
.end method

.method private a(ZZLf/i;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lf/i",
            "<-TR;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 206
    .line 1108
    iget-object v1, p3, Lf/i;->b:Lf/d/e/l;

    .line 2059
    iget-boolean v1, v1, Lf/d/e/l;->b:Z

    .line 206
    if-eqz v1, :cond_0

    .line 220
    :goto_0
    return v0

    .line 209
    :cond_0
    if-eqz p1, :cond_2

    .line 210
    iget-object v1, p0, Lf/d/a/ab$a;->i:Ljava/lang/Throwable;

    .line 211
    if-eqz v1, :cond_1

    .line 212
    invoke-virtual {p3, v1}, Lf/i;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 215
    :cond_1
    if-eqz p2, :cond_2

    .line 216
    invoke-virtual {p3}, Lf/i;->onCompleted()V

    goto :goto_0

    .line 220
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 14

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 288
    monitor-enter p0

    .line 289
    :try_start_0
    iget-boolean v0, p0, Lf/d/a/ab$a;->c:Z

    if-eqz v0, :cond_1

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/ab$a;->d:Z

    .line 291
    monitor-exit p0

    .line 2339
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/ab$a;->c:Z

    .line 294
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2299
    iget-object v5, p0, Lf/d/a/ab$a;->a:Lf/i;

    .line 2300
    iget-object v10, p0, Lf/d/a/ab$a;->b:Ljava/util/Queue;

    .line 2301
    invoke-static {}, Lf/d/a/d;->a()Lf/d/a/d;

    .line 2302
    iget-object v11, p0, Lf/d/a/ab$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2304
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 2306
    :goto_1
    iget-boolean v2, p0, Lf/d/a/ab$a;->h:Z

    .line 2307
    invoke-interface {v10}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    .line 2308
    invoke-direct {p0, v2, v6, v5}, Lf/d/a/ab$a;->a(ZZLf/i;)Z

    move-result v2

    if-nez v2, :cond_0

    move-wide v6, v8

    .line 2312
    :goto_2
    cmp-long v2, v6, v0

    if-eqz v2, :cond_3

    .line 2313
    iget-boolean v12, p0, Lf/d/a/ab$a;->h:Z

    .line 2314
    invoke-interface {v10}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v13

    .line 2315
    if-nez v13, :cond_2

    move v2, v3

    .line 2316
    :goto_3
    invoke-direct {p0, v12, v2, v5}, Lf/d/a/ab$a;->a(ZZLf/i;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 2319
    if-nez v2, :cond_3

    .line 2322
    invoke-static {v13}, Lf/d/a/d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2324
    :try_start_1
    invoke-virtual {v5, v2}, Lf/i;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2329
    const-wide/16 v12, 0x1

    add-long/2addr v6, v12

    .line 2330
    goto :goto_2

    .line 294
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    move v2, v4

    .line 2315
    goto :goto_3

    .line 2326
    :catch_0
    move-exception v0

    invoke-static {v0, v5, v2}, Lf/b/b;->a(Ljava/lang/Throwable;Lf/e;Ljava/lang/Object;)V

    goto :goto_0

    .line 2332
    :cond_3
    cmp-long v2, v6, v8

    if-eqz v2, :cond_4

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v2, v0, v12

    if-eqz v2, :cond_4

    .line 2333
    invoke-static {v11, v6, v7}, Lf/d/a/a;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    .line 2336
    :cond_4
    monitor-enter p0

    .line 2337
    :try_start_3
    iget-boolean v2, p0, Lf/d/a/ab$a;->d:Z

    if-nez v2, :cond_5

    .line 2338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/d/a/ab$a;->c:Z

    .line 2339
    monitor-exit p0

    goto :goto_0

    .line 2342
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 2341
    :cond_5
    const/4 v2, 0x0

    :try_start_4
    iput-boolean v2, p0, Lf/d/a/ab$a;->d:Z

    .line 2342
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1
.end method

.method public final a(J)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 238
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "n >= required but it was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    cmp-long v0, p1, v2

    if-eqz v0, :cond_4

    .line 242
    iget-object v0, p0, Lf/d/a/ab$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lf/d/a/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 243
    iget-object v0, p0, Lf/d/a/ab$a;->g:Lf/f;

    .line 244
    if-nez v0, :cond_2

    .line 246
    iget-object v1, p0, Lf/d/a/ab$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v1

    .line 247
    :try_start_0
    iget-object v0, p0, Lf/d/a/ab$a;->g:Lf/f;

    .line 248
    if-nez v0, :cond_1

    .line 249
    iget-wide v2, p0, Lf/d/a/ab$a;->e:J

    .line 250
    invoke-static {v2, v3, p1, p2}, Lf/d/a/a;->a(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lf/d/a/ab$a;->e:J

    .line 252
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :cond_2
    if-eqz v0, :cond_3

    .line 255
    invoke-interface {v0, p1, p2}, Lf/f;->a(J)V

    .line 257
    :cond_3
    invoke-virtual {p0}, Lf/d/a/ab$a;->a()V

    .line 259
    :cond_4
    return-void

    .line 252
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onCompleted()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/ab$a;->h:Z

    .line 233
    invoke-virtual {p0}, Lf/d/a/ab$a;->a()V

    .line 234
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 225
    iput-object p1, p0, Lf/d/a/ab$a;->i:Ljava/lang/Throwable;

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/ab$a;->h:Z

    .line 227
    invoke-virtual {p0}, Lf/d/a/ab$a;->a()V

    .line 228
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lf/d/a/ab$a;->b:Ljava/util/Queue;

    invoke-static {}, Lf/d/a/d;->a()Lf/d/a/d;

    invoke-static {p1}, Lf/d/a/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {p0}, Lf/d/a/ab$a;->a()V

    .line 203
    return-void
.end method
