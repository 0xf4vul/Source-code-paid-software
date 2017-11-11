.class final Lcom/google/android/exoplayer2/c/b/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/c/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:[B

.field public g:[B

.field public h:[B

.field public i:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:[B

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:J

.field public u:J

.field public v:Z

.field public w:Z

.field x:Ljava/lang/String;

.field public y:Lcom/google/android/exoplayer2/c/o;

.field public z:I


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 1300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1316
    iput v1, p0, Lcom/google/android/exoplayer2/c/b/d$b;->j:I

    .line 1317
    iput v1, p0, Lcom/google/android/exoplayer2/c/b/d$b;->k:I

    .line 1318
    iput v1, p0, Lcom/google/android/exoplayer2/c/b/d$b;->l:I

    .line 1319
    iput v1, p0, Lcom/google/android/exoplayer2/c/b/d$b;->m:I

    .line 1320
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/c/b/d$b;->n:I

    .line 1321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/b/d$b;->o:[B

    .line 1322
    iput v1, p0, Lcom/google/android/exoplayer2/c/b/d$b;->p:I

    .line 1326
    iput v2, p0, Lcom/google/android/exoplayer2/c/b/d$b;->q:I

    .line 1327
    iput v1, p0, Lcom/google/android/exoplayer2/c/b/d$b;->r:I

    .line 1328
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/google/android/exoplayer2/c/b/d$b;->s:I

    .line 1329
    iput-wide v4, p0, Lcom/google/android/exoplayer2/c/b/d$b;->t:J

    .line 1330
    iput-wide v4, p0, Lcom/google/android/exoplayer2/c/b/d$b;->u:J

    .line 1334
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/c/b/d$b;->w:Z

    .line 1335
    const-string/jumbo v0, "eng"

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/b/d$b;->x:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 1300
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/b/d$b;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/exoplayer2/j/k;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/j/k;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/j;
        }
    .end annotation

    .prologue
    .line 1510
    const/16 v0, 0x10

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 1511
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j/k;->i()J

    move-result-wide v0

    .line 1512
    const-wide/32 v2, 0x31435657

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1513
    const/4 v0, 0x0

    .line 1525
    :goto_0
    return-object v0

    .line 2126
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/j/k;->b:I

    .line 1518
    add-int/lit8 v0, v0, 0x14

    .line 1519
    iget-object v1, p0, Lcom/google/android/exoplayer2/j/k;->a:[B

    .line 1520
    :goto_1
    array-length v2, v1

    add-int/lit8 v2, v2, -0x4

    if-ge v0, v2, :cond_2

    .line 1521
    aget-byte v2, v1, v0

    if-nez v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, v1, v2

    if-nez v2, :cond_1

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, v1, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, v1, v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_1

    .line 1524
    array-length v2, v1

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 1525
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1520
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1529
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v1, "Failed to find FourCC VC1 initialization data"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1531
    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v1, "Error parsing FourCC VC1 codec private"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a([B)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v0, 0x0

    .line 1544
    const/4 v1, 0x0

    :try_start_0
    aget-byte v1, p0, v1

    if-eq v1, v2, :cond_0

    .line 1545
    new-instance v0, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1582
    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, v0

    move v3, v4

    .line 1549
    :goto_0
    :try_start_1
    aget-byte v1, p0, v3

    if-ne v1, v5, :cond_1

    .line 1550
    add-int/lit16 v1, v2, 0xff

    .line 1551
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_0

    .line 1553
    :cond_1
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, p0, v3

    add-int/2addr v2, v3

    .line 1556
    :goto_1
    aget-byte v3, p0, v1

    if-ne v3, v5, :cond_2

    .line 1557
    add-int/lit16 v0, v0, 0xff

    .line 1558
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1560
    :cond_2
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p0, v1

    add-int/2addr v0, v1

    .line 1562
    aget-byte v1, p0, v3

    if-eq v1, v4, :cond_3

    .line 1563
    new-instance v0, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1565
    :cond_3
    new-array v1, v2, [B

    .line 1566
    const/4 v4, 0x0

    invoke-static {p0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1567
    add-int/2addr v2, v3

    .line 1568
    aget-byte v3, p0, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    .line 1569
    new-instance v0, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1571
    :cond_4
    add-int/2addr v0, v2

    .line 1572
    aget-byte v2, p0, v0

    const/4 v3, 0x5

    if-eq v2, v3, :cond_5

    .line 1573
    new-instance v0, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1575
    :cond_5
    array-length v2, p0

    sub-int/2addr v2, v0

    new-array v2, v2, [B

    .line 1576
    const/4 v3, 0x0

    array-length v4, p0

    sub-int/2addr v4, v0

    invoke-static {p0, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1577
    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1578
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1579
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1580
    return-object v0
.end method

.method static b(Lcom/google/android/exoplayer2/j/k;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/j;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1594
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j/k;->f()I

    move-result v2

    .line 1595
    if-ne v2, v0, :cond_1

    .line 1602
    :cond_0
    :goto_0
    return v0

    .line 1597
    :cond_1
    const v3, 0xfffe

    if-ne v2, v3, :cond_3

    .line 1598
    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 1599
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j/k;->l()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/exoplayer2/c/b/d;->a()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 1600
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j/k;->l()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/exoplayer2/c/b/d;->a()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->getLeastSignificantBits()J
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    .line 1599
    goto :goto_0

    :cond_3
    move v0, v1

    .line 1602
    goto :goto_0

    .line 1605
    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v1, "Error parsing MS/ACM codec private"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v0
.end method
