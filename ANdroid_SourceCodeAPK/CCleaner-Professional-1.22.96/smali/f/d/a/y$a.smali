.class final Lf/d/a/y$a;
.super Lf/i;
.source "SourceFile"

# interfaces
.implements Lf/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lf/i",
        "<TT;>;",
        "Lf/c/a;"
    }
.end annotation


# instance fields
.field final a:Lf/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final c:Lf/g$a;

.field final d:Lf/d/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/d",
            "<TT;>;"
        }
    .end annotation
.end field

.field final e:Z

.field final f:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final g:I

.field volatile h:Z

.field final i:Ljava/util/concurrent/atomic/AtomicLong;

.field final j:Ljava/util/concurrent/atomic/AtomicLong;

.field k:Ljava/lang/Throwable;

.field l:J


# direct methods
.method public constructor <init>(Lf/g;Lf/i;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/g;",
            "Lf/i",
            "<-TT;>;ZI)V"
        }
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0}, Lf/i;-><init>()V

    .line 104
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lf/d/a/y$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 106
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lf/d/a/y$a;->j:Ljava/util/concurrent/atomic/AtomicLong;

    .line 120
    iput-object p2, p0, Lf/d/a/y$a;->a:Lf/i;

    .line 121
    invoke-virtual {p1}, Lf/g;->a()Lf/g$a;

    move-result-object v0

    iput-object v0, p0, Lf/d/a/y$a;->c:Lf/g$a;

    .line 122
    iput-boolean p3, p0, Lf/d/a/y$a;->e:Z

    .line 123
    invoke-static {}, Lf/d/a/d;->a()Lf/d/a/d;

    move-result-object v0

    iput-object v0, p0, Lf/d/a/y$a;->d:Lf/d/a/d;

    .line 124
    if-lez p4, :cond_0

    .line 126
    :goto_0
    shr-int/lit8 v0, p4, 0x2

    sub-int v0, p4, v0

    iput v0, p0, Lf/d/a/y$a;->g:I

    .line 127
    invoke-static {}, Lf/d/e/b/ak;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    new-instance v0, Lf/d/e/b/w;

    invoke-direct {v0, p4}, Lf/d/e/b/w;-><init>(I)V

    iput-object v0, p0, Lf/d/a/y$a;->f:Ljava/util/Queue;

    .line 133
    :goto_1
    int-to-long v0, p4

    invoke-virtual {p0, v0, v1}, Lf/d/a/y$a;->a(J)V

    .line 134
    return-void

    .line 124
    :cond_0
    sget p4, Lf/d/e/i;->b:I

    goto :goto_0

    .line 130
    :cond_1
    new-instance v0, Lf/d/e/a/d;

    invoke-direct {v0, p4}, Lf/d/e/a/d;-><init>(I)V

    iput-object v0, p0, Lf/d/a/y$a;->f:Ljava/util/Queue;

    goto :goto_1
.end method

.method private a(ZZLf/i;Ljava/util/Queue;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lf/i",
            "<-TT;>;",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 252
    .line 4108
    iget-object v1, p3, Lf/i;->b:Lf/d/e/l;

    .line 5059
    iget-boolean v1, v1, Lf/d/e/l;->b:Z

    .line 252
    if-eqz v1, :cond_0

    .line 253
    invoke-interface {p4}, Ljava/util/Queue;->clear()V

    .line 294
    :goto_0
    return v0

    .line 257
    :cond_0
    if-eqz p1, :cond_1

    .line 258
    iget-boolean v1, p0, Lf/d/a/y$a;->e:Z

    if-eqz v1, :cond_3

    .line 259
    if-eqz p2, :cond_1

    .line 260
    iget-object v0, p0, Lf/d/a/y$a;->k:Ljava/lang/Throwable;

    .line 262
    if-eqz v0, :cond_2

    .line 263
    :try_start_0
    invoke-virtual {p3, v0}, Lf/i;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :goto_1
    iget-object v0, p0, Lf/d/a/y$a;->c:Lf/g$a;

    invoke-virtual {v0}, Lf/g$a;->b()V

    .line 294
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 265
    :cond_2
    :try_start_1
    invoke-virtual {p3}, Lf/i;->onCompleted()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 268
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lf/d/a/y$a;->c:Lf/g$a;

    invoke-virtual {v1}, Lf/g$a;->b()V

    throw v0

    .line 272
    :cond_3
    iget-object v1, p0, Lf/d/a/y$a;->k:Ljava/lang/Throwable;

    .line 273
    if-eqz v1, :cond_4

    .line 274
    invoke-interface {p4}, Ljava/util/Queue;->clear()V

    .line 276
    :try_start_2
    invoke-virtual {p3, v1}, Lf/i;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 278
    iget-object v1, p0, Lf/d/a/y$a;->c:Lf/g$a;

    invoke-virtual {v1}, Lf/g$a;->b()V

    goto :goto_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lf/d/a/y$a;->c:Lf/g$a;

    invoke-virtual {v1}, Lf/g$a;->b()V

    throw v0

    .line 282
    :cond_4
    if-eqz p2, :cond_1

    .line 284
    :try_start_3
    invoke-virtual {p3}, Lf/i;->onCompleted()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 286
    iget-object v1, p0, Lf/d/a/y$a;->c:Lf/g$a;

    invoke-virtual {v1}, Lf/g$a;->b()V

    goto :goto_0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lf/d/a/y$a;->c:Lf/g$a;

    invoke-virtual {v1}, Lf/g$a;->b()V

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 15

    .prologue
    const-wide/16 v4, 0x1

    const-wide/16 v10, 0x0

    .line 197
    .line 198
    iget-wide v0, p0, Lf/d/a/y$a;->l:J

    .line 203
    iget-object v12, p0, Lf/d/a/y$a;->f:Ljava/util/Queue;

    .line 204
    iget-object v13, p0, Lf/d/a/y$a;->a:Lf/i;

    move-wide v2, v4

    .line 212
    :cond_0
    iget-object v6, p0, Lf/d/a/y$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    .line 214
    :goto_0
    cmp-long v6, v8, v0

    if-eqz v6, :cond_4

    .line 215
    iget-boolean v7, p0, Lf/d/a/y$a;->h:Z

    .line 216
    invoke-interface {v12}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v14

    .line 217
    if-nez v14, :cond_2

    const/4 v6, 0x1

    .line 219
    :goto_1
    invoke-direct {p0, v7, v6, v13, v12}, Lf/d/a/y$a;->a(ZZLf/i;Ljava/util/Queue;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 249
    :cond_1
    :goto_2
    return-void

    .line 217
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 223
    :cond_3
    if-nez v6, :cond_4

    .line 227
    invoke-static {v14}, Lf/d/a/d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v13, v6}, Lf/i;->onNext(Ljava/lang/Object;)V

    .line 229
    add-long v6, v0, v4

    .line 230
    iget v0, p0, Lf/d/a/y$a;->g:I

    int-to-long v0, v0

    cmp-long v0, v6, v0

    if-nez v0, :cond_6

    .line 231
    iget-object v0, p0, Lf/d/a/y$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, v6, v7}, Lf/d/a/a;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    .line 232
    invoke-virtual {p0, v6, v7}, Lf/d/a/y$a;->a(J)V

    move-wide v6, v10

    :goto_3
    move-wide v8, v0

    move-wide v0, v6

    .line 235
    goto :goto_0

    .line 237
    :cond_4
    cmp-long v6, v8, v0

    if-nez v6, :cond_5

    .line 238
    iget-boolean v6, p0, Lf/d/a/y$a;->h:Z

    invoke-interface {v12}, Ljava/util/Queue;->isEmpty()Z

    move-result v7

    invoke-direct {p0, v6, v7, v13, v12}, Lf/d/a/y$a;->a(ZZLf/i;Ljava/util/Queue;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 243
    :cond_5
    iput-wide v0, p0, Lf/d/a/y$a;->l:J

    .line 244
    iget-object v6, p0, Lf/d/a/y$a;->j:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v2, v2

    invoke-virtual {v6, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v2

    .line 245
    cmp-long v6, v2, v10

    if-nez v6, :cond_0

    goto :goto_2

    :cond_6
    move-wide v0, v8

    goto :goto_3
.end method

.method protected final e()V
    .locals 4

    .prologue
    .line 189
    iget-object v0, p0, Lf/d/a/y$a;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lf/d/a/y$a;->c:Lf/g$a;

    invoke-virtual {v0, p0}, Lf/g$a;->a(Lf/c/a;)Lf/j;

    .line 192
    :cond_0
    return-void
.end method

.method public final onCompleted()V
    .locals 1

    .prologue
    .line 170
    .line 2108
    iget-object v0, p0, Lf/i;->b:Lf/d/e/l;

    .line 3059
    iget-boolean v0, v0, Lf/d/e/l;->b:Z

    .line 170
    if-nez v0, :cond_0

    iget-boolean v0, p0, Lf/d/a/y$a;->h:Z

    if-eqz v0, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/y$a;->h:Z

    .line 174
    invoke-virtual {p0}, Lf/d/a/y$a;->e()V

    goto :goto_0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 179
    .line 3108
    iget-object v0, p0, Lf/i;->b:Lf/d/e/l;

    .line 4059
    iget-boolean v0, v0, Lf/d/e/l;->b:Z

    .line 179
    if-nez v0, :cond_0

    iget-boolean v0, p0, Lf/d/a/y$a;->h:Z

    if-eqz v0, :cond_1

    .line 180
    :cond_0
    invoke-static {p1}, Lf/g/c;->a(Ljava/lang/Throwable;)V

    .line 186
    :goto_0
    return-void

    .line 183
    :cond_1
    iput-object p1, p0, Lf/d/a/y$a;->k:Ljava/lang/Throwable;

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/y$a;->h:Z

    .line 185
    invoke-virtual {p0}, Lf/d/a/y$a;->e()V

    goto :goto_0
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 158
    .line 1108
    iget-object v0, p0, Lf/i;->b:Lf/d/e/l;

    .line 2059
    iget-boolean v0, v0, Lf/d/e/l;->b:Z

    .line 158
    if-nez v0, :cond_0

    iget-boolean v0, p0, Lf/d/a/y$a;->h:Z

    if-eqz v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lf/d/a/y$a;->f:Ljava/util/Queue;

    invoke-static {p1}, Lf/d/a/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 162
    new-instance v0, Lf/b/c;

    invoke-direct {v0}, Lf/b/c;-><init>()V

    invoke-virtual {p0, v0}, Lf/d/a/y$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {p0}, Lf/d/a/y$a;->e()V

    goto :goto_0
.end method
