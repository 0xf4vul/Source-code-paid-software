.class final Lcom/google/android/gms/internal/mh;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/io/DataInputStream;

.field volatile b:Z

.field private c:Lcom/google/android/gms/internal/mc;

.field private d:Lcom/google/android/gms/internal/md;

.field private e:[B

.field private f:Lcom/google/android/gms/internal/ma$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mc;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mh;->a:Ljava/io/DataInputStream;

    iput-object v0, p0, Lcom/google/android/gms/internal/mh;->c:Lcom/google/android/gms/internal/mc;

    iput-object v0, p0, Lcom/google/android/gms/internal/mh;->d:Lcom/google/android/gms/internal/md;

    const/16 v0, 0x70

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/mh;->e:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mh;->b:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/mh;->c:Lcom/google/android/gms/internal/mc;

    return-void
.end method

.method private a([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mh;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->readFully([BII)V

    return p3
.end method

.method private a(Lcom/google/android/gms/internal/me;)V
    .locals 1

    .prologue
    .line 0
    .line 7000
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mh;->b:Z

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/mh;->c:Lcom/google/android/gms/internal/mc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mc;->a(Lcom/google/android/gms/internal/me;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 14

    .prologue
    const/16 v13, 0x9

    const/16 v12, 0x8

    const/4 v11, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/mh;->c:Lcom/google/android/gms/internal/mc;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/mc;->a:Lcom/google/android/gms/internal/md;

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/internal/mh;->d:Lcom/google/android/gms/internal/md;

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mh;->b:Z

    if-nez v0, :cond_12

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mh;->e:[B

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v1, v4}, Lcom/google/android/gms/internal/mh;->a([BII)I

    move-result v0

    add-int/lit8 v1, v0, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/mh;->e:[B

    const/4 v4, 0x0

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    move v4, v2

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mh;->e:[B

    const/4 v5, 0x0

    aget-byte v0, v0, v5

    and-int/lit8 v0, v0, 0x70

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/me;

    const-string/jumbo v1, "Invalid frame received"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/me;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/mh;->e:[B

    const/4 v5, 0x0

    aget-byte v0, v0, v5

    and-int/lit8 v0, v0, 0xf

    int-to-byte v5, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/mh;->e:[B

    const/4 v6, 0x1

    invoke-direct {p0, v0, v1, v6}, Lcom/google/android/gms/internal/mh;->a([BII)I

    move-result v0

    add-int v6, v1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/mh;->e:[B

    const/4 v1, 0x1

    aget-byte v7, v0, v1

    const-wide/16 v0, 0x0

    const/16 v8, 0x7e

    if-ge v7, v8, :cond_5

    int-to-long v0, v7

    :cond_4
    :goto_3
    long-to-int v6, v0

    new-array v6, v6, [B

    const/4 v7, 0x0

    long-to-int v0, v0

    invoke-direct {p0, v6, v7, v0}, Lcom/google/android/gms/internal/mh;->a([BII)I

    if-ne v5, v12, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/mh;->c:Lcom/google/android/gms/internal/mc;

    .line 3000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mc;->e()V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/me; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 0
    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/me;

    const-string/jumbo v4, "IO Error"

    invoke-direct {v1, v4, v0}, Lcom/google/android/gms/internal/me;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mh;->a(Lcom/google/android/gms/internal/me;)V

    goto :goto_0

    :cond_5
    const/16 v8, 0x7e

    if-ne v7, v8, :cond_6

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mh;->e:[B

    const/4 v1, 0x2

    invoke-direct {p0, v0, v6, v1}, Lcom/google/android/gms/internal/mh;->a([BII)I

    iget-object v0, p0, Lcom/google/android/gms/internal/mh;->e:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/internal/mh;->e:[B

    const/4 v6, 0x3

    aget-byte v1, v1, v6

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_3

    :cond_6
    const/16 v8, 0x7f

    if-ne v7, v8, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/mh;->e:[B

    const/16 v1, 0x8

    invoke-direct {p0, v0, v6, v1}, Lcom/google/android/gms/internal/mh;->a([BII)I

    move-result v0

    add-int/2addr v0, v6

    iget-object v1, p0, Lcom/google/android/gms/internal/mh;->e:[B

    add-int/lit8 v0, v0, -0x8

    .line 2000
    add-int/lit8 v6, v0, 0x0

    aget-byte v6, v1, v6

    int-to-long v6, v6

    const/16 v8, 0x38

    shl-long/2addr v6, v8

    add-int/lit8 v8, v0, 0x1

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x30

    shl-long/2addr v8, v10

    add-long/2addr v6, v8

    add-int/lit8 v8, v0, 0x2

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x28

    shl-long/2addr v8, v10

    add-long/2addr v6, v8

    add-int/lit8 v8, v0, 0x3

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    add-long/2addr v6, v8

    add-int/lit8 v8, v0, 0x4

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x18

    shl-long/2addr v8, v10

    add-long/2addr v6, v8

    add-int/lit8 v8, v0, 0x5

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    int-to-long v8, v8

    add-long/2addr v6, v8

    add-int/lit8 v8, v0, 0x6

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    int-to-long v8, v8

    add-long/2addr v6, v8

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x0

    int-to-long v0, v0

    add-long/2addr v0, v6

    .line 0
    goto/16 :goto_3

    :cond_7
    const/16 v0, 0xa

    if-eq v5, v0, :cond_0

    if-eq v5, v2, :cond_8

    if-eq v5, v11, :cond_8

    if-eq v5, v13, :cond_8

    if-nez v5, :cond_11

    .line 4000
    :cond_8
    if-ne v5, v13, :cond_b

    if-eqz v4, :cond_a

    .line 5000
    array-length v0, v6

    const/16 v1, 0x7d

    if-gt v0, v1, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/mh;->c:Lcom/google/android/gms/internal/mc;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/mc;->a([B)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/gms/internal/me; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 0
    :catch_2
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mh;->a(Lcom/google/android/gms/internal/me;)V

    goto/16 :goto_0

    .line 5000
    :cond_9
    :try_start_2
    new-instance v0, Lcom/google/android/gms/internal/me;

    const-string/jumbo v1, "PING frame too long"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/me;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4000
    :cond_a
    new-instance v0, Lcom/google/android/gms/internal/me;

    const-string/jumbo v1, "PING must not fragment across frames"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/me;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/mh;->f:Lcom/google/android/gms/internal/ma$b;

    if-eqz v0, :cond_c

    if-eqz v5, :cond_c

    new-instance v0, Lcom/google/android/gms/internal/me;

    const-string/jumbo v1, "Failed to continue outstanding frame"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/me;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/mh;->f:Lcom/google/android/gms/internal/ma$b;

    if-nez v0, :cond_d

    if-nez v5, :cond_d

    new-instance v0, Lcom/google/android/gms/internal/me;

    const-string/jumbo v1, "Received continuing frame, but there\'s nothing to continue"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/me;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/mh;->f:Lcom/google/android/gms/internal/ma$b;

    if-nez v0, :cond_e

    .line 6000
    if-ne v5, v11, :cond_f

    new-instance v0, Lcom/google/android/gms/internal/ma$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ma$a;-><init>()V

    .line 4000
    :goto_4
    iput-object v0, p0, Lcom/google/android/gms/internal/mh;->f:Lcom/google/android/gms/internal/ma$b;

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/mh;->f:Lcom/google/android/gms/internal/ma$b;

    invoke-interface {v0, v6}, Lcom/google/android/gms/internal/ma$b;->a([B)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Lcom/google/android/gms/internal/me;

    const-string/jumbo v1, "Failed to decode frame"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/me;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6000
    :cond_f
    new-instance v0, Lcom/google/android/gms/internal/ma$c;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ma$c;-><init>()V

    goto :goto_4

    .line 4000
    :cond_10
    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mh;->f:Lcom/google/android/gms/internal/ma$b;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ma$b;->a()Lcom/google/android/gms/internal/mg;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/mh;->f:Lcom/google/android/gms/internal/ma$b;

    iget-object v1, p0, Lcom/google/android/gms/internal/mh;->d:Lcom/google/android/gms/internal/md;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/md;->a(Lcom/google/android/gms/internal/mg;)V

    goto/16 :goto_0

    .line 0
    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/me;

    const/16 v1, 0x18

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "Unsupported opcode: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/me;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/android/gms/internal/me; {:try_start_2 .. :try_end_2} :catch_2

    :cond_12
    return-void
.end method
