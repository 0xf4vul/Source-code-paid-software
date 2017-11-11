.class final Lf/d/a/f$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lf/f;
.implements Lf/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lf/f;",
        "Lf/j;"
    }
.end annotation


# static fields
.field static final o:Ljava/lang/Object;


# instance fields
.field final a:Lf/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final b:Lf/c/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/c/g",
            "<+TR;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:[Lf/d/a/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lf/d/a/f$a",
            "<TT;TR;>;"
        }
    .end annotation
.end field

.field final e:I

.field final f:[Ljava/lang/Object;

.field final g:Lf/d/e/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/e/a/f",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final h:Z

.field volatile i:Z

.field volatile j:Z

.field final k:Ljava/util/concurrent/atomic/AtomicLong;

.field final l:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field m:I

.field n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf/d/a/f$b;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lf/i;Lf/c/g;IIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i",
            "<-TR;>;",
            "Lf/c/g",
            "<+TR;>;IIZ)V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 117
    iput-object p1, p0, Lf/d/a/f$b;->a:Lf/i;

    .line 118
    iput-object p2, p0, Lf/d/a/f$b;->b:Lf/c/g;

    .line 119
    iput p3, p0, Lf/d/a/f$b;->c:I

    .line 120
    iput p4, p0, Lf/d/a/f$b;->e:I

    .line 121
    iput-boolean p5, p0, Lf/d/a/f$b;->h:Z

    .line 122
    new-array v0, p3, [Ljava/lang/Object;

    iput-object v0, p0, Lf/d/a/f$b;->f:[Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lf/d/a/f$b;->f:[Ljava/lang/Object;

    sget-object v1, Lf/d/a/f$b;->o:Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    new-array v0, p3, [Lf/d/a/f$a;

    iput-object v0, p0, Lf/d/a/f$b;->d:[Lf/d/a/f$a;

    .line 125
    new-instance v0, Lf/d/e/a/f;

    invoke-direct {v0, p4}, Lf/d/e/a/f;-><init>(I)V

    iput-object v0, p0, Lf/d/a/f$b;->g:Lf/d/e/a/f;

    .line 126
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lf/d/a/f$b;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 127
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lf/d/a/f$b;->l:Ljava/util/concurrent/atomic/AtomicReference;

    .line 128
    return-void
.end method

.method private a()V
    .locals 14

    .prologue
    .line 231
    invoke-virtual {p0}, Lf/d/a/f$b;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v4, p0, Lf/d/a/f$b;->g:Lf/d/e/a/f;

    .line 236
    iget-object v3, p0, Lf/d/a/f$b;->a:Lf/i;

    .line 237
    iget-boolean v5, p0, Lf/d/a/f$b;->h:Z

    .line 238
    iget-object v10, p0, Lf/d/a/f$b;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 240
    const/4 v0, 0x1

    move v7, v0

    .line 243
    :goto_1
    iget-boolean v1, p0, Lf/d/a/f$b;->j:Z

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lf/d/a/f$b;->a(ZZLf/i;Ljava/util/Queue;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    .line 248
    const-wide/16 v0, 0x0

    move-wide v8, v0

    .line 250
    :goto_2
    cmp-long v0, v8, v12

    if-eqz v0, :cond_4

    .line 252
    iget-boolean v1, p0, Lf/d/a/f$b;->j:Z

    .line 254
    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lf/d/a/f$a;

    .line 255
    if-nez v6, :cond_2

    const/4 v2, 0x1

    :goto_3
    move-object v0, p0

    .line 257
    invoke-direct/range {v0 .. v5}, Lf/d/a/f$b;->a(ZZLf/i;Ljava/util/Queue;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    if-nez v2, :cond_4

    .line 265
    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 266
    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 268
    if-nez v0, :cond_3

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/f$b;->i:Z

    .line 270
    invoke-direct {p0, v4}, Lf/d/a/f$b;->a(Ljava/util/Queue;)V

    .line 271
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Broken queue?! Sender received but not the array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lf/i;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 255
    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    .line 277
    :cond_3
    :try_start_0
    iget-object v1, p0, Lf/d/a/f$b;->b:Lf/c/g;

    invoke-interface {v1, v0}, Lf/c/g;->a([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 285
    invoke-virtual {v3, v0}, Lf/i;->onNext(Ljava/lang/Object;)V

    .line 287
    invoke-virtual {v6}, Lf/d/a/f$a;->a()V

    .line 289
    const-wide/16 v0, 0x1

    add-long/2addr v0, v8

    move-wide v8, v0

    .line 290
    goto :goto_2

    .line 278
    :catch_0
    move-exception v0

    .line 279
    const/4 v1, 0x1

    iput-boolean v1, p0, Lf/d/a/f$b;->i:Z

    .line 280
    invoke-direct {p0, v4}, Lf/d/a/f$b;->a(Ljava/util/Queue;)V

    .line 281
    invoke-virtual {v3, v0}, Lf/i;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 292
    :cond_4
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_5

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v12, v0

    if-eqz v0, :cond_5

    .line 293
    invoke-static {v10, v8, v9}, Lf/d/a/a;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 296
    :cond_5
    neg-int v0, v7

    invoke-virtual {p0, v0}, Lf/d/a/f$b;->addAndGet(I)I

    move-result v0

    .line 297
    if-eqz v0, :cond_0

    move v7, v0

    goto/16 :goto_1
.end method

.method private a(Ljava/util/Queue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 176
    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    .line 177
    iget-object v1, p0, Lf/d/a/f$b;->d:[Lf/d/a/f$a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 178
    invoke-virtual {v3}, Lf/d/a/f$a;->b()V

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_0
    return-void
.end method

.method private a(ZZLf/i;Ljava/util/Queue;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lf/i",
            "<*>;",
            "Ljava/util/Queue",
            "<*>;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 305
    iget-boolean v0, p0, Lf/d/a/f$b;->i:Z

    if-eqz v0, :cond_0

    .line 306
    invoke-direct {p0, p4}, Lf/d/a/f$b;->a(Ljava/util/Queue;)V

    move v0, v1

    .line 333
    :goto_0
    return v0

    .line 309
    :cond_0
    if-eqz p1, :cond_4

    .line 310
    if-eqz p5, :cond_2

    .line 311
    if-eqz p2, :cond_4

    .line 312
    iget-object v0, p0, Lf/d/a/f$b;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 313
    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {p3, v0}, Lf/i;->onError(Ljava/lang/Throwable;)V

    :goto_1
    move v0, v1

    .line 318
    goto :goto_0

    .line 316
    :cond_1
    invoke-virtual {p3}, Lf/i;->onCompleted()V

    goto :goto_1

    .line 321
    :cond_2
    iget-object v0, p0, Lf/d/a/f$b;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 322
    if-eqz v0, :cond_3

    .line 323
    invoke-direct {p0, p4}, Lf/d/a/f$b;->a(Ljava/util/Queue;)V

    .line 324
    invoke-virtual {p3, v0}, Lf/i;->onError(Ljava/lang/Throwable;)V

    move v0, v1

    .line 325
    goto :goto_0

    .line 327
    :cond_3
    if-eqz p2, :cond_4

    .line 328
    invoke-virtual {p3}, Lf/i;->onCompleted()V

    move v0, v1

    .line 329
    goto :goto_0

    .line 333
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(J)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 150
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 151
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

    .line 153
    :cond_0
    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lf/d/a/f$b;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lf/d/a/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 155
    invoke-direct {p0}, Lf/d/a/f$b;->a()V

    .line 157
    :cond_1
    return-void
.end method

.method final a(Ljava/lang/Object;I)V
    .locals 12

    .prologue
    const/4 v0, 0x0

    const-wide/16 v10, 0x2

    const/4 v1, 0x1

    .line 189
    iget-object v2, p0, Lf/d/a/f$b;->d:[Lf/d/a/f$a;

    aget-object v5, v2, p2

    .line 196
    monitor-enter p0

    .line 197
    :try_start_0
    iget-object v2, p0, Lf/d/a/f$b;->f:[Ljava/lang/Object;

    array-length v6, v2

    .line 198
    iget-object v2, p0, Lf/d/a/f$b;->f:[Ljava/lang/Object;

    aget-object v7, v2, p2

    .line 199
    iget v2, p0, Lf/d/a/f$b;->m:I

    .line 200
    sget-object v3, Lf/d/a/f$b;->o:Ljava/lang/Object;

    if-ne v7, v3, :cond_0

    .line 201
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lf/d/a/f$b;->m:I

    :cond_0
    move v4, v2

    .line 203
    iget v2, p0, Lf/d/a/f$b;->n:I

    .line 204
    if-nez p1, :cond_4

    .line 205
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lf/d/a/f$b;->n:I

    move v3, v2

    .line 209
    :goto_0
    if-ne v4, v6, :cond_5

    move v2, v1

    .line 211
    :goto_1
    if-eq v3, v6, :cond_1

    if-nez p1, :cond_2

    sget-object v3, Lf/d/a/f$b;->o:Ljava/lang/Object;

    if-ne v7, v3, :cond_2

    :cond_1
    move v0, v1

    .line 213
    :cond_2
    if-nez v0, :cond_9

    .line 214
    if-eqz p1, :cond_7

    if-eqz v2, :cond_7

    .line 215
    iget-object v0, p0, Lf/d/a/f$b;->g:Lf/d/e/a/f;

    iget-object v1, p0, Lf/d/a/f$b;->f:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    .line 1325
    iget-object v3, v0, Lf/d/e/a/f;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2220
    iget-object v4, v0, Lf/d/e/a/f;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    .line 1327
    iget v4, v0, Lf/d/e/a/f;->e:I

    .line 1329
    add-long v8, v6, v10

    invoke-static {v8, v9, v4}, Lf/d/e/a/f;->a(JI)I

    move-result v8

    .line 1331
    invoke-static {v3, v8}, Lf/d/e/a/f;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_6

    .line 1332
    invoke-static {v6, v7, v4}, Lf/d/e/a/f;->a(JI)I

    move-result v4

    .line 1333
    add-int/lit8 v8, v4, 0x1

    invoke-static {v3, v8, v1}, Lf/d/e/a/f;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 1334
    invoke-static {v3, v4, v5}, Lf/d/e/a/f;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 1335
    add-long/2addr v6, v10

    invoke-virtual {v0, v6, v7}, Lf/d/e/a/f;->a(J)V

    .line 223
    :cond_3
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    if-nez v2, :cond_a

    if-eqz p1, :cond_a

    .line 225
    invoke-virtual {v5}, Lf/d/a/f$a;->a()V

    .line 229
    :goto_3
    return-void

    .line 207
    :cond_4
    :try_start_1
    iget-object v3, p0, Lf/d/a/f$b;->f:[Ljava/lang/Object;

    invoke-static {p1}, Lf/d/a/d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v3, p2

    move v3, v2

    goto :goto_0

    :cond_5
    move v2, v0

    .line 209
    goto :goto_1

    .line 1337
    :cond_6
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v8

    .line 1338
    new-instance v9, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v9, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 1339
    iput-object v9, v0, Lf/d/e/a/f;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1341
    invoke-static {v6, v7, v4}, Lf/d/e/a/f;->a(JI)I

    move-result v4

    .line 1342
    add-int/lit8 v8, v4, 0x1

    invoke-static {v9, v8, v1}, Lf/d/e/a/f;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 1343
    invoke-static {v9, v4, v5}, Lf/d/e/a/f;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 1344
    invoke-static {v3, v9}, Lf/d/e/a/f;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 1346
    sget-object v1, Lf/d/e/a/f;->j:Ljava/lang/Object;

    invoke-static {v3, v4, v1}, Lf/d/e/a/f;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 1348
    add-long/2addr v6, v10

    invoke-virtual {v0, v6, v7}, Lf/d/e/a/f;->a(J)V

    goto :goto_2

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 217
    :cond_7
    if-nez p1, :cond_3

    :try_start_2
    iget-object v0, p0, Lf/d/a/f$b;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lf/d/a/f$b;->o:Ljava/lang/Object;

    if-eq v7, v0, :cond_8

    iget-boolean v0, p0, Lf/d/a/f$b;->h:Z

    if-nez v0, :cond_3

    .line 218
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/f$b;->j:Z

    goto :goto_2

    .line 221
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/f$b;->j:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 228
    :cond_a
    invoke-direct {p0}, Lf/d/a/f$b;->a()V

    goto :goto_3
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lf/d/a/f$b;->i:Z

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/f$b;->i:Z

    .line 164
    invoke-virtual {p0}, Lf/d/a/f$b;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lf/d/a/f$b;->g:Lf/d/e/a/f;

    invoke-direct {p0, v0}, Lf/d/a/f$b;->a(Ljava/util/Queue;)V

    .line 168
    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lf/d/a/f$b;->i:Z

    return v0
.end method
