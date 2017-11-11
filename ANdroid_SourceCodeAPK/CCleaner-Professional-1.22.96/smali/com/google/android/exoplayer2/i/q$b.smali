.class public final Lcom/google/android/exoplayer2/i/q$b;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/i/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer2/i/q$c;",
        ">",
        "Landroid/os/Handler;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final a:I

.field public b:Ljava/io/IOException;

.field public c:I

.field final synthetic d:Lcom/google/android/exoplayer2/i/q;

.field private final e:Lcom/google/android/exoplayer2/i/q$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/exoplayer2/i/q$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/i/q$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final g:J

.field private volatile h:Ljava/lang/Thread;

.field private volatile i:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/i/q;Landroid/os/Looper;Lcom/google/android/exoplayer2/i/q$c;Lcom/google/android/exoplayer2/i/q$a;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "TT;",
            "Lcom/google/android/exoplayer2/i/q$a",
            "<TT;>;IJ)V"
        }
    .end annotation

    .prologue
    .line 243
    iput-object p1, p0, Lcom/google/android/exoplayer2/i/q$b;->d:Lcom/google/android/exoplayer2/i/q;

    .line 244
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 245
    iput-object p3, p0, Lcom/google/android/exoplayer2/i/q$b;->e:Lcom/google/android/exoplayer2/i/q$c;

    .line 246
    iput-object p4, p0, Lcom/google/android/exoplayer2/i/q$b;->f:Lcom/google/android/exoplayer2/i/q$a;

    .line 247
    iput p5, p0, Lcom/google/android/exoplayer2/i/q$b;->a:I

    .line 248
    iput-wide p6, p0, Lcom/google/android/exoplayer2/i/q$b;->g:J

    .line 249
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/i/q$b;->b:Ljava/io/IOException;

    .line 372
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/q$b;->d:Lcom/google/android/exoplayer2/i/q;

    .line 4033
    iget-object v0, v0, Lcom/google/android/exoplayer2/i/q;->a:Ljava/util/concurrent/ExecutorService;

    .line 372
    iget-object v1, p0, Lcom/google/android/exoplayer2/i/q$b;->d:Lcom/google/android/exoplayer2/i/q;

    .line 5033
    iget-object v1, v1, Lcom/google/android/exoplayer2/i/q;->b:Lcom/google/android/exoplayer2/i/q$b;

    .line 372
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 373
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/q$b;->d:Lcom/google/android/exoplayer2/i/q;

    .line 6033
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/exoplayer2/i/q;->b:Lcom/google/android/exoplayer2/i/q$b;

    .line 377
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 258
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/q$b;->d:Lcom/google/android/exoplayer2/i/q;

    .line 1033
    iget-object v0, v0, Lcom/google/android/exoplayer2/i/q;->b:Lcom/google/android/exoplayer2/i/q$b;

    .line 258
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/j/a;->b(Z)V

    .line 259
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/q$b;->d:Lcom/google/android/exoplayer2/i/q;

    .line 2033
    iput-object p0, v0, Lcom/google/android/exoplayer2/i/q;->b:Lcom/google/android/exoplayer2/i/q$b;

    .line 260
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 261
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/exoplayer2/i/q$b;->sendEmptyMessageDelayed(IJ)Z

    .line 265
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 258
    goto :goto_0

    .line 263
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/i/q$b;->a()V

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 268
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/i/q$b;->i:Z

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/i/q$b;->b:Ljava/io/IOException;

    .line 270
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/i/q$b;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/i/q$b;->removeMessages(I)V

    .line 272
    if-nez p1, :cond_0

    .line 273
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/i/q$b;->sendEmptyMessage(I)Z

    .line 281
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 282
    invoke-direct {p0}, Lcom/google/android/exoplayer2/i/q$b;->b()V

    .line 283
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 284
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/q$b;->f:Lcom/google/android/exoplayer2/i/q$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/i/q$b;->e:Lcom/google/android/exoplayer2/i/q$c;

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/i/q$a;->a(Lcom/google/android/exoplayer2/i/q$c;Z)V

    .line 286
    :cond_1
    return-void

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/q$b;->e:Lcom/google/android/exoplayer2/i/q$c;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/i/q$c;->a()V

    .line 277
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/q$b;->h:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/q$b;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 333
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/i/q$b;->i:Z

    if-eqz v0, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_2

    .line 337
    invoke-direct {p0}, Lcom/google/android/exoplayer2/i/q$b;->a()V

    goto :goto_0

    .line 340
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 341
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 343
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/i/q$b;->b()V

    .line 344
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 346
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/q$b;->e:Lcom/google/android/exoplayer2/i/q$c;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/i/q$c;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 347
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/q$b;->f:Lcom/google/android/exoplayer2/i/q$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/i/q$b;->e:Lcom/google/android/exoplayer2/i/q$c;

    invoke-interface {v0, v1, v3}, Lcom/google/android/exoplayer2/i/q$a;->a(Lcom/google/android/exoplayer2/i/q$c;Z)V

    goto :goto_0

    .line 350
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 352
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/q$b;->f:Lcom/google/android/exoplayer2/i/q$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/i/q$b;->e:Lcom/google/android/exoplayer2/i/q$c;

    invoke-interface {v0, v1, v3}, Lcom/google/android/exoplayer2/i/q$a;->a(Lcom/google/android/exoplayer2/i/q$c;Z)V

    goto :goto_0

    .line 355
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/q$b;->f:Lcom/google/android/exoplayer2/i/q$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/i/q$b;->e:Lcom/google/android/exoplayer2/i/q$c;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/i/q$a;->a(Lcom/google/android/exoplayer2/i/q$c;)V

    goto :goto_0

    .line 358
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/io/IOException;

    iput-object v0, p0, Lcom/google/android/exoplayer2/i/q$b;->b:Ljava/io/IOException;

    .line 359
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/q$b;->f:Lcom/google/android/exoplayer2/i/q$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/i/q$b;->e:Lcom/google/android/exoplayer2/i/q$c;

    iget-object v3, p0, Lcom/google/android/exoplayer2/i/q$b;->b:Ljava/io/IOException;

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer2/i/q$a;->a(Lcom/google/android/exoplayer2/i/q$c;Ljava/io/IOException;)I

    move-result v0

    .line 360
    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 361
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/q$b;->d:Lcom/google/android/exoplayer2/i/q;

    iget-object v1, p0, Lcom/google/android/exoplayer2/i/q$b;->b:Ljava/io/IOException;

    .line 3033
    iput-object v1, v0, Lcom/google/android/exoplayer2/i/q;->c:Ljava/io/IOException;

    goto :goto_0

    .line 362
    :cond_5
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 363
    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/google/android/exoplayer2/i/q$b;->c:I

    .line 3380
    iget v0, p0, Lcom/google/android/exoplayer2/i/q$b;->c:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    .line 364
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/i/q$b;->a(J)V

    goto :goto_0

    .line 363
    :cond_6
    iget v0, p0, Lcom/google/android/exoplayer2/i/q$b;->c:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 291
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/i/q$b;->h:Ljava/lang/Thread;

    .line 292
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/q$b;->e:Lcom/google/android/exoplayer2/i/q$c;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/i/q$c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "load:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/i/q$b;->e:Lcom/google/android/exoplayer2/i/q$c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/j/q;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    .line 295
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/q$b;->e:Lcom/google/android/exoplayer2/i/q$c;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/i/q$c;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    :try_start_2
    invoke-static {}, Lcom/google/android/exoplayer2/j/q;->a()V

    .line 300
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/i/q$b;->i:Z

    if-nez v0, :cond_1

    .line 301
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/i/q$b;->sendEmptyMessage(I)Z

    .line 328
    :cond_1
    :goto_0
    return-void

    .line 297
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/google/android/exoplayer2/j/q;->a()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3

    .line 303
    :catch_0
    move-exception v0

    .line 304
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/i/q$b;->i:Z

    if-nez v1, :cond_1

    .line 305
    invoke-virtual {p0, v3, v0}, Lcom/google/android/exoplayer2/i/q$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 309
    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/google/android/exoplayer2/i/q$b;->e:Lcom/google/android/exoplayer2/i/q$c;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/i/q$c;->b()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/j/a;->b(Z)V

    .line 310
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/i/q$b;->i:Z

    if-nez v0, :cond_1

    .line 311
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/i/q$b;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 313
    :catch_2
    move-exception v0

    .line 315
    const-string/jumbo v1, "LoadTask"

    const-string/jumbo v2, "Unexpected exception loading stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/i/q$b;->i:Z

    if-nez v1, :cond_1

    .line 317
    new-instance v1, Lcom/google/android/exoplayer2/i/q$d;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/i/q$d;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, v3, v1}, Lcom/google/android/exoplayer2/i/q$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 319
    :catch_3
    move-exception v0

    .line 323
    const-string/jumbo v1, "LoadTask"

    const-string/jumbo v2, "Unexpected error loading stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/i/q$b;->i:Z

    if-nez v1, :cond_2

    .line 325
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/i/q$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 327
    :cond_2
    throw v0
.end method
