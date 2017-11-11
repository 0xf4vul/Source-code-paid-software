.class public final Lcom/google/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/a/e$a;
    }
.end annotation


# instance fields
.field final a:I

.field b:I

.field final c:Ljava/io/OutputStream;

.field private final d:[B


# direct methods
.method constructor <init>([BI)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/e;->c:Ljava/io/OutputStream;

    .line 79
    iput-object p1, p0, Lcom/google/a/e;->d:[B

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/e;->b:I

    .line 81
    add-int/lit8 v0, p2, 0x0

    iput v0, p0, Lcom/google/a/e;->a:I

    .line 82
    return-void
.end method

.method private a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 826
    iget-object v0, p0, Lcom/google/a/e;->c:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 828
    new-instance v0, Lcom/google/a/e$a;

    invoke-direct {v0}, Lcom/google/a/e$a;-><init>()V

    throw v0

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/google/a/e;->c:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/a/e;->d:[B

    iget v2, p0, Lcom/google/a/e;->b:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 834
    iput v3, p0, Lcom/google/a/e;->b:I

    .line 835
    return-void
.end method

.method public static b(I)I
    .locals 1

    .prologue
    .line 677
    if-ltz p0, :cond_0

    .line 678
    invoke-static {p0}, Lcom/google/a/e;->f(I)I

    move-result v0

    .line 681
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static b(IJ)I
    .locals 3

    .prologue
    .line 454
    invoke-static {p0}, Lcom/google/a/e;->c(I)I

    move-result v0

    .line 2669
    invoke-static {p1, p2}, Lcom/google/a/e;->b(J)I

    move-result v1

    .line 454
    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILcom/google/a/c;)I
    .locals 3

    .prologue
    .line 539
    invoke-static {p0}, Lcom/google/a/e;->c(I)I

    move-result v0

    .line 2767
    invoke-virtual {p1}, Lcom/google/a/c;->b()I

    move-result v1

    invoke-static {v1}, Lcom/google/a/e;->f(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/a/c;->b()I

    move-result v2

    add-int/2addr v1, v2

    .line 539
    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILcom/google/a/l;)I
    .locals 3

    .prologue
    .line 530
    invoke-static {p0}, Lcom/google/a/e;->c(I)I

    move-result v0

    .line 2749
    invoke-interface {p1}, Lcom/google/a/l;->c()I

    move-result v1

    .line 2750
    invoke-static {v1}, Lcom/google/a/e;->f(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 530
    add-int/2addr v0, v1

    return v0
.end method

.method public static b(J)I
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1046
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1055
    :goto_0
    return v0

    .line 1047
    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 1048
    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 1049
    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 1050
    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    .line 1051
    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    .line 1052
    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    .line 1053
    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    .line 1054
    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    .line 1055
    :cond_8
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static c(I)I
    .locals 1

    .prologue
    .line 999
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/a/r;->a(II)I

    move-result v0

    invoke-static {v0}, Lcom/google/a/e;->f(I)I

    move-result v0

    return v0
.end method

.method public static c(J)J
    .locals 4

    .prologue
    .line 1109
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static d(II)I
    .locals 2

    .prologue
    .line 462
    invoke-static {p0}, Lcom/google/a/e;->c(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/a/e;->b(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static e(II)I
    .locals 2

    .prologue
    .line 565
    invoke-static {p0}, Lcom/google/a/e;->c(I)I

    move-result v0

    .line 2784
    invoke-static {p1}, Lcom/google/a/e;->b(I)I

    move-result v1

    .line 565
    add-int/2addr v0, v1

    return v0
.end method

.method private e(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 900
    int-to-byte v0, p1

    .line 2891
    iget v1, p0, Lcom/google/a/e;->b:I

    iget v2, p0, Lcom/google/a/e;->a:I

    if-ne v1, v2, :cond_0

    .line 2892
    invoke-direct {p0}, Lcom/google/a/e;->a()V

    .line 2895
    :cond_0
    iget-object v1, p0, Lcom/google/a/e;->d:[B

    iget v2, p0, Lcom/google/a/e;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/a/e;->b:I

    aput-byte v0, v1, v2

    .line 901
    return-void
.end method

.method private static f(I)I
    .locals 1

    .prologue
    .line 1024
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1028
    :goto_0
    return v0

    .line 1025
    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 1026
    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 1027
    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 1028
    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static f(II)I
    .locals 2

    .prologue
    .line 591
    invoke-static {p0}, Lcom/google/a/e;->c(I)I

    move-result v0

    .line 2808
    invoke-static {p1}, Lcom/google/a/e;->g(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/a/e;->f(I)I

    move-result v1

    .line 591
    add-int/2addr v0, v1

    return v0
.end method

.method private static g(I)I
    .locals 2

    .prologue
    .line 1094
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    if-ltz p1, :cond_0

    .line 328
    invoke-virtual {p0, p1}, Lcom/google/a/e;->d(I)V

    .line 333
    :goto_0
    return-void

    .line 331
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/a/e;->a(J)V

    goto :goto_0
.end method

.method public final a(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/e;->g(II)V

    .line 166
    invoke-virtual {p0, p2}, Lcom/google/a/e;->a(I)V

    .line 167
    return-void
.end method

.method public final a(IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/e;->g(II)V

    .line 1322
    invoke-virtual {p0, p2, p3}, Lcom/google/a/e;->a(J)V

    .line 160
    return-void
.end method

.method public final a(ILcom/google/a/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 228
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/a/e;->g(II)V

    .line 1385
    invoke-virtual {p2}, Lcom/google/a/c;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/a/e;->d(I)V

    .line 1905
    invoke-virtual {p2}, Lcom/google/a/c;->b()I

    move-result v0

    .line 1947
    iget v1, p0, Lcom/google/a/e;->a:I

    iget v2, p0, Lcom/google/a/e;->b:I

    sub-int/2addr v1, v2

    if-lt v1, v0, :cond_1

    .line 1949
    iget-object v1, p0, Lcom/google/a/e;->d:[B

    iget v2, p0, Lcom/google/a/e;->b:I

    invoke-virtual {p2, v1, v6, v2, v0}, Lcom/google/a/c;->a([BIII)V

    .line 1950
    iget v1, p0, Lcom/google/a/e;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/a/e;->b:I

    .line 1967
    :cond_0
    :goto_0
    return-void

    .line 1954
    :cond_1
    iget v1, p0, Lcom/google/a/e;->a:I

    iget v2, p0, Lcom/google/a/e;->b:I

    sub-int/2addr v1, v2

    .line 1955
    iget-object v2, p0, Lcom/google/a/e;->d:[B

    iget v3, p0, Lcom/google/a/e;->b:I

    invoke-virtual {p2, v2, v6, v3, v1}, Lcom/google/a/c;->a([BIII)V

    .line 1956
    add-int/lit8 v2, v1, 0x0

    .line 1957
    sub-int/2addr v0, v1

    .line 1958
    iget v1, p0, Lcom/google/a/e;->a:I

    iput v1, p0, Lcom/google/a/e;->b:I

    .line 1959
    invoke-direct {p0}, Lcom/google/a/e;->a()V

    .line 1964
    iget v1, p0, Lcom/google/a/e;->a:I

    if-gt v0, v1, :cond_2

    .line 1966
    iget-object v1, p0, Lcom/google/a/e;->d:[B

    invoke-virtual {p2, v1, v2, v6, v0}, Lcom/google/a/c;->a([BIII)V

    .line 1967
    iput v0, p0, Lcom/google/a/e;->b:I

    goto :goto_0

    .line 1973
    :cond_2
    invoke-virtual {p2}, Lcom/google/a/c;->f()Ljava/io/InputStream;

    move-result-object v1

    .line 1974
    int-to-long v4, v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-eqz v2, :cond_4

    .line 1975
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Skip failed? Should never happen."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1984
    :cond_3
    iget-object v2, p0, Lcom/google/a/e;->c:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/google/a/e;->d:[B

    invoke-virtual {v2, v4, v6, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 1985
    sub-int/2addr v0, v3

    .line 1978
    :cond_4
    if-lez v0, :cond_0

    .line 1979
    iget v2, p0, Lcom/google/a/e;->a:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1980
    iget-object v3, p0, Lcom/google/a/e;->d:[B

    invoke-virtual {v1, v3, v6, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 1981
    if-eq v3, v2, :cond_3

    .line 1982
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Read failed? Should never happen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(ILcom/google/a/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/a/e;->g(II)V

    .line 1379
    invoke-interface {p2}, Lcom/google/a/l;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/a/e;->d(I)V

    .line 1380
    invoke-interface {p2, p0}, Lcom/google/a/l;->a(Lcom/google/a/e;)V

    .line 223
    return-void
.end method

.method public final a(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0, p1, v0}, Lcom/google/a/e;->g(II)V

    .line 1347
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/a/e;->e(I)V

    .line 188
    return-void
.end method

.method public final a(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1034
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1035
    long-to-int v0, p1

    invoke-direct {p0, v0}, Lcom/google/a/e;->e(I)V

    .line 1036
    return-void

    .line 1038
    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-direct {p0, v0}, Lcom/google/a/e;->e(I)V

    .line 1039
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public final b(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/e;->g(II)V

    .line 2399
    invoke-virtual {p0, p2}, Lcom/google/a/e;->a(I)V

    .line 247
    return-void
.end method

.method public final c(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/e;->g(II)V

    .line 2414
    invoke-static {p2}, Lcom/google/a/e;->g(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/a/e;->d(I)V

    .line 268
    return-void
.end method

.method public final d(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1008
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 1009
    invoke-direct {p0, p1}, Lcom/google/a/e;->e(I)V

    .line 1010
    return-void

    .line 1012
    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-direct {p0, v0}, Lcom/google/a/e;->e(I)V

    .line 1013
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public final g(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 994
    invoke-static {p1, p2}, Lcom/google/a/r;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/a/e;->d(I)V

    .line 995
    return-void
.end method
