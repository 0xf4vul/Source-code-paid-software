.class public final Lcom/google/android/exoplayer2/i/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/i/p;


# static fields
.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Z

.field private final e:I

.field private final f:I

.field private final g:Ljava/lang/String;

.field private final h:Lcom/google/android/exoplayer2/j/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/j/m",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/google/android/exoplayer2/i/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/i/r",
            "<-",
            "Lcom/google/android/exoplayer2/i/m;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/google/android/exoplayer2/i/h;

.field private l:Ljava/net/HttpURLConnection;

.field private m:Ljava/io/InputStream;

.field private n:Z

.field private o:J

.field private p:J

.field private q:J

.field private r:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    .line 65
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/i/m;->b:Ljava/util/regex/Pattern;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/i/m;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/i/r;IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/i/r",
            "<-",
            "Lcom/google/android/exoplayer2/i/m;",
            ">;IIZ)V"
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 144
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/i/m;->g:Ljava/lang/String;

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/i/m;->h:Lcom/google/android/exoplayer2/j/m;

    .line 146
    iput-object p2, p0, Lcom/google/android/exoplayer2/i/m;->j:Lcom/google/android/exoplayer2/i/r;

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/i/m;->i:Ljava/util/HashMap;

    .line 148
    iput p3, p0, Lcom/google/android/exoplayer2/i/m;->e:I

    .line 149
    iput p4, p0, Lcom/google/android/exoplayer2/i/m;->f:I

    .line 150
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/i/m;->d:Z

    .line 151
    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;)J
    .locals 9

    .prologue
    .line 468
    const-wide/16 v0, -0x1

    .line 469
    const-string/jumbo v2, "Content-Length"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 470
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 472
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 477
    :cond_0
    :goto_0
    const-string/jumbo v2, "Content-Range"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 478
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 479
    sget-object v2, Lcom/google/android/exoplayer2/i/m;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 480
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 482
    const/4 v3, 0x2

    .line 483
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    sub-long v2, v6, v2

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    .line 484
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_2

    move-wide v0, v2

    .line 502
    :cond_1
    :goto_1
    return-wide v0

    .line 474
    :catch_0
    move-exception v2

    const-string/jumbo v2, "DefaultHttpDataSource"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unexpected Content-Length ["

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 488
    :cond_2
    cmp-long v6, v0, v2

    if-eqz v6, :cond_1

    .line 493
    :try_start_2
    const-string/jumbo v6, "DefaultHttpDataSource"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Inconsistent headers ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "] ["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "]"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v0

    goto :goto_1

    .line 498
    :catch_1
    move-exception v2

    const-string/jumbo v2, "DefaultHttpDataSource"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unexpected Content-Range ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private a(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 395
    iget v1, p0, Lcom/google/android/exoplayer2/i/m;->e:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 396
    iget v1, p0, Lcom/google/android/exoplayer2/i/m;->f:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 397
    iget-object v3, p0, Lcom/google/android/exoplayer2/i/m;->i:Ljava/util/HashMap;

    monitor-enter v3

    .line 398
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/i/m;->i:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 399
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-nez v1, :cond_1

    const-wide/16 v2, -0x1

    cmp-long v1, p5, v2

    if-eqz v1, :cond_3

    .line 403
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bytes="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 404
    const-wide/16 v2, -0x1

    cmp-long v2, p5, v2

    if-eqz v2, :cond_2

    .line 405
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-long v2, p3, p5

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 407
    :cond_2
    const-string/jumbo v2, "Range"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :cond_3
    const-string/jumbo v1, "User-Agent"

    iget-object v2, p0, Lcom/google/android/exoplayer2/i/m;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    if-nez p7, :cond_4

    .line 411
    const-string/jumbo v1, "Accept-Encoding"

    const-string/jumbo v2, "identity"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :cond_4
    invoke-virtual {v0, p8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 414
    if-eqz p2, :cond_5

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 415
    if-eqz p2, :cond_6

    .line 416
    const-string/jumbo v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 417
    array-length v1, p2

    if-eqz v1, :cond_6

    .line 420
    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 421
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 422
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 423
    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 424
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 429
    :goto_2
    return-object v0

    .line 414
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 427
    :cond_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    goto :goto_2
.end method

.method private b()V
    .locals 3

    .prologue
    .line 634
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/m;->l:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 636
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/m;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/i/m;->l:Ljava/net/HttpURLConnection;

    .line 642
    :cond_0
    return-void

    .line 637
    :catch_0
    move-exception v0

    .line 638
    const-string/jumbo v1, "DefaultHttpDataSource"

    const-string/jumbo v2, "Unexpected error while disconnecting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public final a([BII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/i/p$b;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 267
    .line 1514
    :try_start_0
    iget-wide v4, p0, Lcom/google/android/exoplayer2/i/m;->q:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/i/m;->o:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    .line 1519
    sget-object v0, Lcom/google/android/exoplayer2/i/m;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1520
    if-nez v0, :cond_0

    .line 1521
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 1524
    :cond_0
    :goto_0
    iget-wide v4, p0, Lcom/google/android/exoplayer2/i/m;->q:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/i/m;->o:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    .line 1525
    iget-wide v4, p0, Lcom/google/android/exoplayer2/i/m;->o:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/i/m;->q:J

    sub-long/2addr v4, v6

    array-length v3, v0

    int-to-long v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v3, v4

    .line 1526
    iget-object v4, p0, Lcom/google/android/exoplayer2/i/m;->m:Ljava/io/InputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 1527
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1528
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    new-instance v1, Lcom/google/android/exoplayer2/i/p$b;

    iget-object v2, p0, Lcom/google/android/exoplayer2/i/m;->k:Lcom/google/android/exoplayer2/i/h;

    const/4 v3, 0x2

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/exoplayer2/i/p$b;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/i/h;I)V

    throw v1

    .line 1530
    :cond_1
    if-ne v3, v2, :cond_2

    .line 1531
    :try_start_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 1533
    :cond_2
    iget-wide v4, p0, Lcom/google/android/exoplayer2/i/m;->q:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/i/m;->q:J

    .line 1534
    iget-object v4, p0, Lcom/google/android/exoplayer2/i/m;->j:Lcom/google/android/exoplayer2/i/r;

    if-eqz v4, :cond_0

    .line 1535
    iget-object v4, p0, Lcom/google/android/exoplayer2/i/m;->j:Lcom/google/android/exoplayer2/i/r;

    invoke-interface {v4, v3}, Lcom/google/android/exoplayer2/i/r;->a(I)V

    goto :goto_0

    .line 1540
    :cond_3
    sget-object v3, Lcom/google/android/exoplayer2/i/m;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1558
    :cond_4
    if-nez p3, :cond_6

    move v0, v1

    .line 1575
    :cond_5
    :goto_1
    return v0

    .line 1561
    :cond_6
    iget-wide v0, p0, Lcom/google/android/exoplayer2/i/m;->p:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_8

    .line 1562
    iget-wide v0, p0, Lcom/google/android/exoplayer2/i/m;->p:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/i/m;->r:J

    sub-long/2addr v0, v4

    .line 1563
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_7

    move v0, v2

    .line 1564
    goto :goto_1

    .line 1566
    :cond_7
    int-to-long v4, p3

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 1569
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/m;->m:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 1570
    if-ne v0, v2, :cond_a

    .line 1571
    iget-wide v0, p0, Lcom/google/android/exoplayer2/i/m;->p:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_9

    .line 1573
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_9
    move v0, v2

    .line 1575
    goto :goto_1

    .line 1578
    :cond_a
    iget-wide v2, p0, Lcom/google/android/exoplayer2/i/m;->r:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/i/m;->r:J

    .line 1579
    iget-object v1, p0, Lcom/google/android/exoplayer2/i/m;->j:Lcom/google/android/exoplayer2/i/r;

    if-eqz v1, :cond_5

    .line 1580
    iget-object v1, p0, Lcom/google/android/exoplayer2/i/m;->j:Lcom/google/android/exoplayer2/i/r;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/i/r;->a(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public final a(Lcom/google/android/exoplayer2/i/h;)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/i/p$b;
        }
    .end annotation

    .prologue
    .line 189
    iput-object p1, p0, Lcom/google/android/exoplayer2/i/m;->k:Lcom/google/android/exoplayer2/i/h;

    .line 190
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/i/m;->r:J

    .line 191
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/i/m;->q:J

    .line 1342
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v0, p1, Lcom/google/android/exoplayer2/i/h;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1343
    iget-object v3, p1, Lcom/google/android/exoplayer2/i/h;->b:[B

    .line 1344
    iget-wide v4, p1, Lcom/google/android/exoplayer2/i/h;->d:J

    .line 1345
    iget-wide v6, p1, Lcom/google/android/exoplayer2/i/h;->e:J

    .line 1346
    iget v0, p1, Lcom/google/android/exoplayer2/i/h;->g:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    const/4 v8, 0x1

    .line 1348
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/i/m;->d:Z

    if-nez v0, :cond_4

    .line 1351
    const/4 v9, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/i/m;->a(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 193
    :cond_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/i/m;->l:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/m;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 209
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_1

    const/16 v1, 0x12b

    if-le v0, v1, :cond_9

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/i/m;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    .line 211
    invoke-direct {p0}, Lcom/google/android/exoplayer2/i/m;->b()V

    .line 212
    new-instance v2, Lcom/google/android/exoplayer2/i/p$d;

    invoke-direct {v2, v0, v1, p1}, Lcom/google/android/exoplayer2/i/p$d;-><init>(ILjava/util/Map;Lcom/google/android/exoplayer2/i/h;)V

    .line 214
    const/16 v1, 0x1a0

    if-ne v0, v1, :cond_2

    .line 215
    new-instance v0, Lcom/google/android/exoplayer2/i/g;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/i/g;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/i/p$d;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 217
    :cond_2
    throw v2

    .line 1346
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 1355
    :cond_4
    const/4 v0, 0x0

    .line 1356
    :goto_1
    add-int/lit8 v10, v0, 0x1

    const/16 v1, 0x14

    if-gt v0, v1, :cond_8

    .line 1357
    const/4 v9, 0x0

    move-object v1, p0

    :try_start_2
    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/i/m;->a(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 1359
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 1360
    const/16 v9, 0x12c

    if-eq v1, v9, :cond_5

    const/16 v9, 0x12d

    if-eq v1, v9, :cond_5

    const/16 v9, 0x12e

    if-eq v1, v9, :cond_5

    const/16 v9, 0x12f

    if-eq v1, v9, :cond_5

    if-nez v3, :cond_0

    const/16 v3, 0x133

    if-eq v1, v3, :cond_5

    const/16 v3, 0x134

    if-ne v1, v3, :cond_0

    .line 1369
    :cond_5
    const/4 v3, 0x0

    .line 1370
    const-string/jumbo v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1371
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1441
    if-nez v1, :cond_6

    .line 1442
    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "Null location redirect"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    new-instance v1, Lcom/google/android/exoplayer2/i/p$b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unable to connect to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/google/android/exoplayer2/i/h;->a:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, p1}, Lcom/google/android/exoplayer2/i/p$b;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/exoplayer2/i/h;)V

    throw v1

    .line 1445
    :cond_6
    :try_start_3
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 1447
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 1448
    const-string/jumbo v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1449
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unsupported protocol redirect: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v2, v0

    move v0, v10

    .line 1373
    goto/16 :goto_1

    .line 1379
    :cond_8
    new-instance v0, Ljava/net/NoRouteToHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Too many redirects: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 202
    :catch_1
    move-exception v0

    .line 203
    invoke-direct {p0}, Lcom/google/android/exoplayer2/i/m;->b()V

    .line 204
    new-instance v1, Lcom/google/android/exoplayer2/i/p$b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unable to connect to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/google/android/exoplayer2/i/h;->a:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, p1}, Lcom/google/android/exoplayer2/i/p$b;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/exoplayer2/i/h;)V

    throw v1

    .line 221
    :cond_9
    iget-object v1, p0, Lcom/google/android/exoplayer2/i/m;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 222
    iget-object v2, p0, Lcom/google/android/exoplayer2/i/m;->h:Lcom/google/android/exoplayer2/j/m;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/android/exoplayer2/i/m;->h:Lcom/google/android/exoplayer2/j/m;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/j/m;->a(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 223
    invoke-direct {p0}, Lcom/google/android/exoplayer2/i/m;->b()V

    .line 224
    new-instance v0, Lcom/google/android/exoplayer2/i/p$c;

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/i/p$c;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/i/h;)V

    throw v0

    .line 230
    :cond_a
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_c

    iget-wide v0, p1, Lcom/google/android/exoplayer2/i/h;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    iget-wide v0, p1, Lcom/google/android/exoplayer2/i/h;->d:J

    :goto_2
    iput-wide v0, p0, Lcom/google/android/exoplayer2/i/m;->o:J

    .line 233
    iget v0, p1, Lcom/google/android/exoplayer2/i/h;->g:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_f

    .line 234
    iget-wide v0, p1, Lcom/google/android/exoplayer2/i/h;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    .line 235
    iget-wide v0, p1, Lcom/google/android/exoplayer2/i/h;->e:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/i/m;->p:J

    .line 250
    :goto_3
    :try_start_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/m;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/i/m;->m:Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/i/m;->n:Z

    .line 257
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/m;->j:Lcom/google/android/exoplayer2/i/r;

    if-eqz v0, :cond_b

    .line 258
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/m;->j:Lcom/google/android/exoplayer2/i/r;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/i/r;->b()V

    .line 261
    :cond_b
    iget-wide v0, p0, Lcom/google/android/exoplayer2/i/m;->p:J

    return-wide v0

    .line 230
    :cond_c
    const-wide/16 v0, 0x0

    goto :goto_2

    .line 237
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/m;->l:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/google/android/exoplayer2/i/m;->a(Ljava/net/HttpURLConnection;)J

    move-result-wide v0

    .line 238
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_e

    iget-wide v2, p0, Lcom/google/android/exoplayer2/i/m;->o:J

    sub-long/2addr v0, v2

    :goto_4
    iput-wide v0, p0, Lcom/google/android/exoplayer2/i/m;->p:J

    goto :goto_3

    :cond_e
    const-wide/16 v0, -0x1

    goto :goto_4

    .line 246
    :cond_f
    iget-wide v0, p1, Lcom/google/android/exoplayer2/i/h;->e:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/i/m;->p:J

    goto :goto_3

    .line 251
    :catch_2
    move-exception v0

    .line 252
    invoke-direct {p0}, Lcom/google/android/exoplayer2/i/m;->b()V

    .line 253
    new-instance v1, Lcom/google/android/exoplayer2/i/p$b;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p1, v2}, Lcom/google/android/exoplayer2/i/p$b;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/i/h;I)V

    throw v1
.end method

.method public final a()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/i/p$b;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/m;->m:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 278
    iget-object v2, p0, Lcom/google/android/exoplayer2/i/m;->l:Ljava/net/HttpURLConnection;

    .line 2335
    iget-wide v0, p0, Lcom/google/android/exoplayer2/i/m;->p:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/i/m;->p:J

    .line 2597
    :goto_0
    sget v3, Lcom/google/android/exoplayer2/j/r;->a:I

    const/16 v4, 0x13

    if-eq v3, v4, :cond_0

    sget v3, Lcom/google/android/exoplayer2/j/r;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v4, 0x14

    if-ne v3, v4, :cond_1

    .line 2602
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 2603
    cmp-long v3, v0, v8

    if-nez v3, :cond_5

    .line 2605
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 280
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/m;->m:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 286
    :cond_2
    iput-object v7, p0, Lcom/google/android/exoplayer2/i/m;->m:Ljava/io/InputStream;

    .line 287
    invoke-direct {p0}, Lcom/google/android/exoplayer2/i/m;->b()V

    .line 288
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/i/m;->n:Z

    if-eqz v0, :cond_3

    .line 289
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/i/m;->n:Z

    .line 290
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/m;->j:Lcom/google/android/exoplayer2/i/r;

    if-eqz v0, :cond_3

    .line 291
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/m;->j:Lcom/google/android/exoplayer2/i/r;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/i/r;->c()V

    .line 295
    :cond_3
    return-void

    .line 2335
    :cond_4
    :try_start_3
    iget-wide v0, p0, Lcom/google/android/exoplayer2/i/m;->p:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/i/m;->r:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-long/2addr v0, v4

    goto :goto_0

    .line 2608
    :cond_5
    const-wide/16 v4, 0x800

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 2613
    :cond_6
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2614
    const-string/jumbo v1, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    .line 2615
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2617
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 2618
    const-string/jumbo v1, "unexpectedEndOfInput"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2619
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2620
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    .line 281
    :catch_1
    move-exception v0

    .line 282
    :try_start_5
    new-instance v1, Lcom/google/android/exoplayer2/i/p$b;

    iget-object v2, p0, Lcom/google/android/exoplayer2/i/m;->k:Lcom/google/android/exoplayer2/i/h;

    const/4 v3, 0x3

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/exoplayer2/i/p$b;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/i/h;I)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 286
    :catchall_0
    move-exception v0

    iput-object v7, p0, Lcom/google/android/exoplayer2/i/m;->m:Ljava/io/InputStream;

    .line 287
    invoke-direct {p0}, Lcom/google/android/exoplayer2/i/m;->b()V

    .line 288
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/i/m;->n:Z

    if-eqz v1, :cond_8

    .line 289
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/i/m;->n:Z

    .line 290
    iget-object v1, p0, Lcom/google/android/exoplayer2/i/m;->j:Lcom/google/android/exoplayer2/i/r;

    if-eqz v1, :cond_8

    .line 291
    iget-object v1, p0, Lcom/google/android/exoplayer2/i/m;->j:Lcom/google/android/exoplayer2/i/r;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/i/r;->c()V

    :cond_8
    throw v0
.end method
