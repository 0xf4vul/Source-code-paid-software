.class final Lf/d/a/g$c;
.super Lf/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lf/i",
        "<TT;>;"
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

.field final c:Lf/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/c/e",
            "<-TT;+",
            "Lf/d",
            "<+TR;>;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:Lf/d/b/a;

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

.field final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final i:Lf/j/c;

.field volatile j:Z

.field volatile k:Z


# direct methods
.method public constructor <init>(Lf/i;Lf/c/e;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i",
            "<-TR;>;",
            "Lf/c/e",
            "<-TT;+",
            "Lf/d",
            "<+TR;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0}, Lf/i;-><init>()V

    .line 121
    iput-object p1, p0, Lf/d/a/g$c;->a:Lf/i;

    .line 122
    iput-object p2, p0, Lf/d/a/g$c;->c:Lf/c/e;

    .line 123
    iput p4, p0, Lf/d/a/g$c;->d:I

    .line 124
    new-instance v0, Lf/d/b/a;

    invoke-direct {v0}, Lf/d/b/a;-><init>()V

    iput-object v0, p0, Lf/d/a/g$c;->e:Lf/d/b/a;

    .line 125
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lf/d/a/g$c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 126
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lf/d/a/g$c;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 128
    invoke-static {}, Lf/d/e/b/ak;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Lf/d/e/b/w;

    invoke-direct {v0, p3}, Lf/d/e/b/w;-><init>(I)V

    .line 133
    :goto_0
    iput-object v0, p0, Lf/d/a/g$c;->f:Ljava/util/Queue;

    .line 134
    new-instance v0, Lf/j/c;

    invoke-direct {v0}, Lf/j/c;-><init>()V

    iput-object v0, p0, Lf/d/a/g$c;->i:Lf/j/c;

    .line 135
    int-to-long v0, p3

    invoke-virtual {p0, v0, v1}, Lf/d/a/g$c;->a(J)V

    .line 136
    return-void

    .line 131
    :cond_0
    new-instance v0, Lf/d/e/a/d;

    invoke-direct {v0, p3}, Lf/d/e/a/d;-><init>(I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 305
    invoke-virtual {p0}, Lf/d/a/g$c;->b()V

    .line 307
    iget-object v0, p0, Lf/d/a/g$c;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lf/d/e/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lf/d/a/g$c;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lf/d/e/c;->a(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 309
    invoke-static {v0}, Lf/d/e/c;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    iget-object v1, p0, Lf/d/a/g$c;->a:Lf/i;

    invoke-virtual {v1, v0}, Lf/i;->onError(Ljava/lang/Throwable;)V

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 4213
    :cond_1
    invoke-static {p1}, Lf/g/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1

    const/4 v1, 0x1

    .line 217
    iget-object v0, p0, Lf/d/a/g$c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget v2, p0, Lf/d/a/g$c;->d:I

    .line 224
    :cond_2
    :goto_1
    iget-object v0, p0, Lf/d/a/g$c;->a:Lf/i;

    .line 2108
    iget-object v0, v0, Lf/i;->b:Lf/d/e/l;

    .line 3059
    iget-boolean v0, v0, Lf/d/e/l;->b:Z

    .line 224
    if-nez v0, :cond_0

    .line 228
    iget-boolean v0, p0, Lf/d/a/g$c;->k:Z

    if-nez v0, :cond_8

    .line 229
    if-ne v2, v1, :cond_3

    .line 230
    iget-object v0, p0, Lf/d/a/g$c;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 231
    iget-object v0, p0, Lf/d/a/g$c;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lf/d/e/c;->a(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 232
    invoke-static {v0}, Lf/d/e/c;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    iget-object v1, p0, Lf/d/a/g$c;->a:Lf/i;

    invoke-virtual {v1, v0}, Lf/i;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 239
    :cond_3
    iget-boolean v3, p0, Lf/d/a/g$c;->j:Z

    .line 240
    iget-object v0, p0, Lf/d/a/g$c;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    .line 241
    if-nez v4, :cond_4

    move v0, v1

    .line 243
    :goto_2
    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    .line 244
    iget-object v0, p0, Lf/d/a/g$c;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lf/d/e/c;->a(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 245
    if-nez v0, :cond_5

    .line 246
    iget-object v0, p0, Lf/d/a/g$c;->a:Lf/i;

    invoke-virtual {v0}, Lf/i;->onCompleted()V

    goto :goto_0

    .line 241
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 248
    :cond_5
    invoke-static {v0}, Lf/d/e/c;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    iget-object v1, p0, Lf/d/a/g$c;->a:Lf/i;

    invoke-virtual {v1, v0}, Lf/i;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 254
    :cond_6
    if-nez v0, :cond_8

    .line 259
    :try_start_0
    iget-object v0, p0, Lf/d/a/g$c;->c:Lf/c/e;

    invoke-static {}, Lf/d/a/d;->a()Lf/d/a/d;

    invoke-static {v4}, Lf/d/a/d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lf/c/e;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/d;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    if-nez v0, :cond_7

    .line 267
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "The source returned by the mapper was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lf/d/a/g$c;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    invoke-static {v0}, Lf/b/b;->a(Ljava/lang/Throwable;)V

    .line 262
    invoke-direct {p0, v0}, Lf/d/a/g$c;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 271
    :cond_7
    invoke-static {}, Lf/d;->a()Lf/d;

    move-result-object v3

    if-eq v0, v3, :cond_a

    .line 273
    instance-of v3, v0, Lf/d/e/k;

    if-eqz v3, :cond_9

    .line 274
    check-cast v0, Lf/d/e/k;

    .line 276
    iput-boolean v1, p0, Lf/d/a/g$c;->k:Z

    .line 278
    iget-object v3, p0, Lf/d/a/g$c;->e:Lf/d/b/a;

    new-instance v4, Lf/d/a/g$a;

    .line 3085
    iget-object v0, v0, Lf/d/e/k;->b:Ljava/lang/Object;

    .line 278
    invoke-direct {v4, v0, p0}, Lf/d/a/g$a;-><init>(Ljava/lang/Object;Lf/d/a/g$c;)V

    invoke-virtual {v3, v4}, Lf/d/b/a;->a(Lf/f;)V

    .line 291
    :goto_3
    invoke-virtual {p0, v6, v7}, Lf/d/a/g$c;->a(J)V

    .line 298
    :cond_8
    iget-object v0, p0, Lf/d/a/g$c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 280
    :cond_9
    new-instance v3, Lf/d/a/g$b;

    invoke-direct {v3, p0}, Lf/d/a/g$b;-><init>(Lf/d/a/g$c;)V

    .line 281
    iget-object v4, p0, Lf/d/a/g$c;->i:Lf/j/c;

    invoke-virtual {v4, v3}, Lf/j/c;->a(Lf/j;)V

    .line 3108
    iget-object v4, v3, Lf/i;->b:Lf/d/e/l;

    .line 4059
    iget-boolean v4, v4, Lf/d/e/l;->b:Z

    .line 283
    if-nez v4, :cond_0

    .line 284
    iput-boolean v1, p0, Lf/d/a/g$c;->k:Z

    .line 286
    invoke-virtual {v0, v3}, Lf/d;->a(Lf/i;)Lf/j;

    goto :goto_3

    .line 293
    :cond_a
    invoke-virtual {p0, v6, v7}, Lf/d/a/g$c;->a(J)V

    goto/16 :goto_1
.end method

.method final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lf/d/a/g$c;->a:Lf/i;

    invoke-virtual {v0, p1}, Lf/i;->onNext(Ljava/lang/Object;)V

    .line 183
    return-void
.end method

.method final b(J)V
    .locals 3

    .prologue
    .line 205
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lf/d/a/g$c;->e:Lf/d/b/a;

    invoke-virtual {v0, p1, p2}, Lf/d/b/a;->b(J)V

    .line 208
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/d/a/g$c;->k:Z

    .line 209
    invoke-virtual {p0}, Lf/d/a/g$c;->a()V

    .line 210
    return-void
.end method

.method public final onCompleted()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/g$c;->j:Z

    .line 169
    invoke-virtual {p0}, Lf/d/a/g$c;->a()V

    .line 170
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lf/d/a/g$c;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lf/d/e/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/g$c;->j:Z

    .line 152
    iget v0, p0, Lf/d/a/g$c;->d:I

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lf/d/a/g$c;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lf/d/e/c;->a(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 154
    invoke-static {v0}, Lf/d/e/c;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    iget-object v1, p0, Lf/d/a/g$c;->a:Lf/i;

    invoke-virtual {v1, v0}, Lf/i;->onError(Ljava/lang/Throwable;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lf/d/a/g$c;->i:Lf/j/c;

    invoke-virtual {v0}, Lf/j/c;->b()V

    .line 164
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-virtual {p0}, Lf/d/a/g$c;->a()V

    goto :goto_0

    .line 1213
    :cond_2
    invoke-static {p1}, Lf/g/c;->a(Ljava/lang/Throwable;)V

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
    .line 140
    iget-object v0, p0, Lf/d/a/g$c;->f:Ljava/util/Queue;

    invoke-static {}, Lf/d/a/d;->a()Lf/d/a/d;

    invoke-static {p1}, Lf/d/a/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lf/d/a/g$c;->b()V

    .line 142
    new-instance v0, Lf/b/c;

    invoke-direct {v0}, Lf/b/c;-><init>()V

    invoke-virtual {p0, v0}, Lf/d/a/g$c;->onError(Ljava/lang/Throwable;)V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-virtual {p0}, Lf/d/a/g$c;->a()V

    goto :goto_0
.end method
