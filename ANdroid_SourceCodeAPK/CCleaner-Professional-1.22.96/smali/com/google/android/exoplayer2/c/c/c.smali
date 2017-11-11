.class public final Lcom/google/android/exoplayer2/c/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/c/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/c/c/c$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/exoplayer2/c/i;

.field private static final b:I

.field private static final c:I

.field private static final d:I


# instance fields
.field private final e:J

.field private final f:Lcom/google/android/exoplayer2/j/k;

.field private final g:Lcom/google/android/exoplayer2/c/k;

.field private final h:Lcom/google/android/exoplayer2/c/j;

.field private i:Lcom/google/android/exoplayer2/c/h;

.field private j:Lcom/google/android/exoplayer2/c/o;

.field private k:I

.field private l:Lcom/google/android/exoplayer2/c/c/c$a;

.field private m:J

.field private n:J

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/google/android/exoplayer2/c/c/c$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/c/c/c$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/c/c/c;->a:Lcom/google/android/exoplayer2/c/i;

    .line 65
    const-string/jumbo v0, "Xing"

    invoke-static {v0}, Lcom/google/android/exoplayer2/j/r;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/c/c/c;->b:I

    .line 66
    const-string/jumbo v0, "Info"

    invoke-static {v0}, Lcom/google/android/exoplayer2/j/r;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/c/c/c;->c:I

    .line 67
    const-string/jumbo v0, "VBRI"

    invoke-static {v0}, Lcom/google/android/exoplayer2/j/r;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/c/c/c;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/c/c/c;-><init>(B)V

    .line 90
    return-void
.end method

.method private constructor <init>(B)V
    .locals 4

    .prologue
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-wide v2, p0, Lcom/google/android/exoplayer2/c/c/c;->e:J

    .line 100
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j/k;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/c/c;->f:Lcom/google/android/exoplayer2/j/k;

    .line 101
    new-instance v0, Lcom/google/android/exoplayer2/c/k;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/c/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/c/c;->g:Lcom/google/android/exoplayer2/c/k;

    .line 102
    new-instance v0, Lcom/google/android/exoplayer2/c/j;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/c/j;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/c/c;->h:Lcom/google/android/exoplayer2/c/j;

    .line 103
    iput-wide v2, p0, Lcom/google/android/exoplayer2/c/c/c;->m:J

    .line 104
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/c/g;Z)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const v10, -0x1f400

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 195
    .line 199
    if-eqz p2, :cond_3

    const/16 v0, 0x1000

    .line 200
    :goto_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c/g;->a()V

    .line 201
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c/g;->c()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-nez v1, :cond_d

    .line 202
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/c/c;->h:Lcom/google/android/exoplayer2/c/j;

    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/c/c/b;->a(Lcom/google/android/exoplayer2/c/g;Lcom/google/android/exoplayer2/c/j;)V

    .line 203
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c/g;->b()J

    move-result-wide v4

    long-to-int v1, v4

    .line 204
    if-nez p2, :cond_0

    .line 205
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/c/g;->b(I)V

    :cond_0
    move v4, v1

    move v3, v2

    move v5, v2

    move v1, v2

    .line 209
    :goto_1
    iget-object v6, p0, Lcom/google/android/exoplayer2/c/c/c;->f:Lcom/google/android/exoplayer2/j/k;

    iget-object v8, v6, Lcom/google/android/exoplayer2/j/k;->a:[B

    if-lez v5, :cond_4

    move v6, v7

    :goto_2
    invoke-interface {p1, v8, v2, v11, v6}, Lcom/google/android/exoplayer2/c/g;->b([BIIZ)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 213
    iget-object v6, p0, Lcom/google/android/exoplayer2/c/c/c;->f:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 214
    iget-object v6, p0, Lcom/google/android/exoplayer2/c/c/c;->f:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v6

    .line 216
    if-eqz v3, :cond_1

    and-int v8, v6, v10

    and-int v9, v3, v10

    if-ne v8, v9, :cond_2

    .line 218
    :cond_1
    invoke-static {v6}, Lcom/google/android/exoplayer2/c/k;->a(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_7

    .line 220
    :cond_2
    add-int/lit8 v3, v1, 0x1

    if-ne v1, v0, :cond_5

    .line 221
    if-nez p2, :cond_b

    .line 222
    new-instance v0, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v1, "Searched too many bytes."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_3
    const/high16 v0, 0x20000

    goto :goto_0

    :cond_4
    move v6, v2

    .line 209
    goto :goto_2

    .line 228
    :cond_5
    if-eqz p2, :cond_6

    .line 229
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c/g;->a()V

    .line 230
    add-int v1, v4, v3

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/c/g;->c(I)V

    move v1, v3

    move v5, v2

    move v3, v2

    goto :goto_1

    .line 232
    :cond_6
    invoke-interface {p1, v7}, Lcom/google/android/exoplayer2/c/g;->b(I)V

    move v1, v3

    move v5, v2

    move v3, v2

    goto :goto_1

    .line 236
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 237
    if-ne v5, v7, :cond_9

    .line 238
    iget-object v3, p0, Lcom/google/android/exoplayer2/c/c/c;->g:Lcom/google/android/exoplayer2/c/k;

    invoke-static {v6, v3}, Lcom/google/android/exoplayer2/c/k;->a(ILcom/google/android/exoplayer2/c/k;)Z

    move v3, v6

    .line 243
    :cond_8
    add-int/lit8 v6, v8, -0x4

    invoke-interface {p1, v6}, Lcom/google/android/exoplayer2/c/g;->c(I)V

    goto :goto_1

    .line 240
    :cond_9
    if-ne v5, v11, :cond_8

    .line 247
    :cond_a
    if-eqz p2, :cond_c

    .line 248
    add-int v0, v4, v1

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/c/g;->b(I)V

    .line 252
    :goto_3
    iput v3, p0, Lcom/google/android/exoplayer2/c/c/c;->k:I

    move v2, v7

    .line 253
    :cond_b
    return v2

    .line 250
    :cond_c
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c/g;->a()V

    goto :goto_3

    :cond_d
    move v1, v2

    move v4, v2

    move v3, v2

    move v5, v2

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/c/g;Lcom/google/android/exoplayer2/c/l;)I
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 134
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/c/c/c;->k:I

    if-nez v2, :cond_0

    .line 136
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/c/c/c;->a(Lcom/google/android/exoplayer2/c/g;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/c/c;->l:Lcom/google/android/exoplayer2/c/c/c$a;

    if-nez v2, :cond_7

    .line 1270
    new-instance v13, Lcom/google/android/exoplayer2/j/k;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/c/c;->g:Lcom/google/android/exoplayer2/c/k;

    iget v2, v2, Lcom/google/android/exoplayer2/c/k;->c:I

    invoke-direct {v13, v2}, Lcom/google/android/exoplayer2/j/k;-><init>(I)V

    .line 1271
    iget-object v2, v13, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/c/c;->g:Lcom/google/android/exoplayer2/c/k;

    iget v4, v4, Lcom/google/android/exoplayer2/c/k;->c:I

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4}, Lcom/google/android/exoplayer2/c/g;->c([BII)V

    .line 1273
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/c/g;->c()J

    move-result-wide v10

    .line 1274
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/c/g;->d()J

    move-result-wide v8

    .line 1275
    const/4 v3, 0x0

    .line 1276
    const/4 v4, 0x0

    .line 1279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/c/c;->g:Lcom/google/android/exoplayer2/c/k;

    iget v2, v2, Lcom/google/android/exoplayer2/c/k;->a:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/c/c;->g:Lcom/google/android/exoplayer2/c/k;

    iget v2, v2, Lcom/google/android/exoplayer2/c/k;->e:I

    const/4 v5, 0x1

    if-eq v2, v5, :cond_8

    const/16 v2, 0x24

    move v14, v2

    .line 2109
    :goto_0
    iget v2, v13, Lcom/google/android/exoplayer2/j/k;->c:I

    .line 1282
    add-int/lit8 v5, v14, 0x4

    if-lt v2, v5, :cond_1a

    .line 1283
    invoke-virtual {v13, v14}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 1284
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v2

    .line 1286
    :goto_1
    sget v3, Lcom/google/android/exoplayer2/c/c/c;->b:I

    if-eq v2, v3, :cond_1

    sget v3, Lcom/google/android/exoplayer2/c/c/c;->c:I

    if-ne v2, v3, :cond_e

    .line 1287
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/c/c/c;->g:Lcom/google/android/exoplayer2/c/k;

    .line 3043
    iget v4, v15, Lcom/google/android/exoplayer2/c/k;->g:I

    .line 3044
    iget v6, v15, Lcom/google/android/exoplayer2/c/k;->d:I

    .line 3045
    iget v2, v15, Lcom/google/android/exoplayer2/c/k;->c:I

    int-to-long v2, v2

    add-long v16, v10, v2

    .line 3047
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v10

    .line 3049
    and-int/lit8 v2, v10, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-virtual {v13}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v2

    if-nez v2, :cond_b

    .line 3051
    :cond_2
    const/4 v3, 0x0

    move-object v4, v3

    .line 1288
    :goto_2
    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/c/c;->h:Lcom/google/android/exoplayer2/c/j;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/c/j;->a()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1290
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/c/g;->a()V

    .line 1291
    add-int/lit16 v2, v14, 0x8d

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/c/g;->c(I)V

    .line 1292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/c/c;->f:Lcom/google/android/exoplayer2/j/k;

    iget-object v2, v2, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/4 v3, 0x0

    const/4 v5, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v5}, Lcom/google/android/exoplayer2/c/g;->c([BII)V

    .line 1293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/c/c;->f:Lcom/google/android/exoplayer2/j/k;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 1294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/c/c;->h:Lcom/google/android/exoplayer2/c/j;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/c/c;->f:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->g()I

    move-result v3

    .line 4058
    shr-int/lit8 v5, v3, 0xc

    .line 4059
    and-int/lit16 v3, v3, 0xfff

    .line 4060
    if-gtz v5, :cond_3

    if-lez v3, :cond_4

    .line 4061
    :cond_3
    iput v5, v2, Lcom/google/android/exoplayer2/c/j;->a:I

    .line 4062
    iput v3, v2, Lcom/google/android/exoplayer2/c/j;->b:I

    .line 1296
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/c/c;->g:Lcom/google/android/exoplayer2/c/k;

    iget v2, v2, Lcom/google/android/exoplayer2/c/k;->c:I

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/c/g;->b(I)V

    .line 1307
    :cond_5
    :goto_3
    if-nez v4, :cond_6

    .line 1310
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/c/g;->a()V

    .line 1311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/c/c;->f:Lcom/google/android/exoplayer2/j/k;

    iget-object v2, v2, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4}, Lcom/google/android/exoplayer2/c/g;->c([BII)V

    .line 1312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/c/c;->f:Lcom/google/android/exoplayer2/j/k;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 1313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/c/c;->f:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/c/c;->g:Lcom/google/android/exoplayer2/c/k;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/c/k;->a(ILcom/google/android/exoplayer2/c/k;)Z

    .line 1314
    new-instance v4, Lcom/google/android/exoplayer2/c/c/a;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/c/g;->c()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/c/c;->g:Lcom/google/android/exoplayer2/c/k;

    iget v7, v2, Lcom/google/android/exoplayer2/c/k;->f:I

    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer2/c/c/a;-><init>(JIJ)V

    .line 142
    :cond_6
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer2/c/c/c;->l:Lcom/google/android/exoplayer2/c/c/c$a;

    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/c/c;->i:Lcom/google/android/exoplayer2/c/h;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/c/c;->l:Lcom/google/android/exoplayer2/c/c/c$a;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/c/h;->a(Lcom/google/android/exoplayer2/c/m;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/c/c/c;->j:Lcom/google/android/exoplayer2/c/o;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/c/c;->g:Lcom/google/android/exoplayer2/c/k;

    iget-object v3, v3, Lcom/google/android/exoplayer2/c/k;->b:Ljava/lang/String;

    const/4 v4, -0x1

    const/16 v5, 0x1000

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/c/c/c;->g:Lcom/google/android/exoplayer2/c/k;

    iget v6, v6, Lcom/google/android/exoplayer2/c/k;->e:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/c/c/c;->g:Lcom/google/android/exoplayer2/c/k;

    iget v7, v7, Lcom/google/android/exoplayer2/c/k;->d:I

    const/4 v8, -0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/c/c/c;->h:Lcom/google/android/exoplayer2/c/j;

    iget v9, v9, Lcom/google/android/exoplayer2/c/j;->a:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer2/c/c/c;->h:Lcom/google/android/exoplayer2/c/j;

    iget v10, v10, Lcom/google/android/exoplayer2/c/j;->b:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v2 .. v14}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    invoke-interface {v15, v2}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 5153
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/c/c/c;->o:I

    if-nez v2, :cond_17

    .line 5154
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/c/g;->a()V

    .line 5155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/c/c;->f:Lcom/google/android/exoplayer2/j/k;

    iget-object v2, v2, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/c/g;->b([BIIZ)Z

    move-result v2

    if-nez v2, :cond_13

    .line 5156
    const/4 v2, -0x1

    .line 5183
    :goto_4
    return v2

    .line 138
    :catch_0
    move-exception v2

    const/4 v2, -0x1

    goto :goto_4

    .line 1279
    :cond_8
    const/16 v2, 0x15

    move v14, v2

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/c/c;->g:Lcom/google/android/exoplayer2/c/k;

    iget v2, v2, Lcom/google/android/exoplayer2/c/k;->e:I

    const/4 v5, 0x1

    if-eq v2, v5, :cond_a

    const/16 v2, 0x15

    move v14, v2

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0xd

    move v14, v2

    goto/16 :goto_0

    .line 3053
    :cond_b
    int-to-long v2, v2

    int-to-long v4, v4

    const-wide/32 v18, 0xf4240

    mul-long v4, v4, v18

    int-to-long v6, v6

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/j/r;->a(JJJ)J

    move-result-wide v6

    .line 3055
    and-int/lit8 v2, v10, 0x6

    const/4 v3, 0x6

    if-eq v2, v3, :cond_c

    .line 3057
    new-instance v3, Lcom/google/android/exoplayer2/c/c/e;

    move-wide/from16 v4, v16

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer2/c/c/e;-><init>(JJJ)V

    move-object v4, v3

    goto/16 :goto_2

    .line 3060
    :cond_c
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v2

    int-to-long v11, v2

    .line 3061
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 3062
    const/16 v2, 0x63

    new-array v10, v2, [J

    .line 3063
    const/4 v2, 0x0

    :goto_5
    const/16 v3, 0x63

    if-ge v2, v3, :cond_d

    .line 3064
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v3

    int-to-long v4, v3

    aput-wide v4, v10, v2

    .line 3063
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 3070
    :cond_d
    new-instance v3, Lcom/google/android/exoplayer2/c/c/e;

    iget v13, v15, Lcom/google/android/exoplayer2/c/k;->c:I

    move-wide/from16 v4, v16

    invoke-direct/range {v3 .. v13}, Lcom/google/android/exoplayer2/c/c/e;-><init>(JJJ[JJI)V

    move-object v4, v3

    goto/16 :goto_2

    .line 4109
    :cond_e
    iget v2, v13, Lcom/google/android/exoplayer2/j/k;->c:I

    .line 1297
    const/16 v3, 0x28

    if-lt v2, v3, :cond_5

    .line 1299
    const/16 v2, 0x24

    invoke-virtual {v13, v2}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 1300
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v2

    .line 1301
    sget v3, Lcom/google/android/exoplayer2/c/c/c;->d:I

    if-ne v2, v3, :cond_5

    .line 1302
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/c/c/c;->g:Lcom/google/android/exoplayer2/c/k;

    .line 5043
    const/16 v2, 0xa

    invoke-virtual {v13, v2}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 5044
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v2

    .line 5045
    if-gtz v2, :cond_f

    .line 5046
    const/4 v2, 0x0

    .line 1303
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/c/c;->g:Lcom/google/android/exoplayer2/c/k;

    iget v3, v3, Lcom/google/android/exoplayer2/c/k;->c:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/c/g;->b(I)V

    move-object v4, v2

    goto/16 :goto_3

    .line 5048
    :cond_f
    iget v6, v12, Lcom/google/android/exoplayer2/c/k;->d:I

    .line 5049
    int-to-long v2, v2

    const-wide/32 v14, 0xf4240

    const/16 v4, 0x7d00

    if-lt v6, v4, :cond_10

    const/16 v4, 0x480

    :goto_7
    int-to-long v4, v4

    mul-long/2addr v4, v14

    int-to-long v6, v6

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/j/r;->a(JJJ)J

    move-result-wide v14

    .line 5051
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/j/k;->e()I

    move-result v16

    .line 5052
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/j/k;->e()I

    move-result v17

    .line 5053
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/j/k;->e()I

    move-result v18

    .line 5054
    const/4 v2, 0x2

    invoke-virtual {v13, v2}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 5057
    iget v2, v12, Lcom/google/android/exoplayer2/c/k;->c:I

    int-to-long v2, v2

    add-long v4, v10, v2

    .line 5060
    add-int/lit8 v2, v16, 0x1

    new-array v10, v2, [J

    .line 5061
    add-int/lit8 v2, v16, 0x1

    new-array v11, v2, [J

    .line 5062
    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v10, v2

    .line 5063
    const/4 v2, 0x0

    aput-wide v4, v11, v2

    .line 5064
    const/4 v2, 0x1

    :goto_8
    array-length v3, v10

    if-ge v2, v3, :cond_12

    .line 5066
    packed-switch v18, :pswitch_data_0

    .line 5080
    const/4 v2, 0x0

    goto :goto_6

    .line 5049
    :cond_10
    const/16 v4, 0x240

    goto :goto_7

    .line 5068
    :pswitch_0
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v3

    .line 5082
    :goto_9
    mul-int v3, v3, v17

    int-to-long v6, v3

    add-long/2addr v4, v6

    .line 5083
    int-to-long v6, v2

    mul-long/2addr v6, v14

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v20, v0

    div-long v6, v6, v20

    aput-wide v6, v10, v2

    .line 5084
    const-wide/16 v6, -0x1

    cmp-long v3, v8, v6

    if-nez v3, :cond_11

    move-wide v6, v4

    .line 5085
    :goto_a
    aput-wide v6, v11, v2

    .line 5064
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 5071
    :pswitch_1
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/j/k;->e()I

    move-result v3

    goto :goto_9

    .line 5074
    :pswitch_2
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/j/k;->g()I

    move-result v3

    goto :goto_9

    .line 5077
    :pswitch_3
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v3

    goto :goto_9

    .line 5085
    :cond_11
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    goto :goto_a

    .line 5087
    :cond_12
    new-instance v2, Lcom/google/android/exoplayer2/c/c/d;

    invoke-direct {v2, v10, v11, v14, v15}, Lcom/google/android/exoplayer2/c/c/d;-><init>([J[JJ)V

    goto/16 :goto_6

    .line 5158
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/c/c;->f:Lcom/google/android/exoplayer2/j/k;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 5159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/c/c;->f:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v2

    .line 5160
    const v3, -0x1f400

    and-int/2addr v3, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/c/c/c;->k:I

    const v5, -0x1f400

    and-int/2addr v4, v5

    if-ne v3, v4, :cond_14

    .line 5161
    invoke-static {v2}, Lcom/google/android/exoplayer2/c/k;->a(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_15

    .line 5163
    :cond_14
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/c/g;->b(I)V

    .line 5164
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/c/c/c;->k:I

    .line 5165
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 5167
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/c/c;->g:Lcom/google/android/exoplayer2/c/k;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/c/k;->a(ILcom/google/android/exoplayer2/c/k;)Z

    .line 5168
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer2/c/c/c;->m:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-nez v2, :cond_16

    .line 5169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/c/c;->l:Lcom/google/android/exoplayer2/c/c/c$a;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/c/g;->c()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lcom/google/android/exoplayer2/c/c/c$a;->b(J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/exoplayer2/c/c/c;->m:J

    .line 5170
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer2/c/c/c;->e:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-eqz v2, :cond_16

    .line 5171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/c/c;->l:Lcom/google/android/exoplayer2/c/c/c$a;

    const-wide/16 v4, 0x0

    invoke-interface {v2, v4, v5}, Lcom/google/android/exoplayer2/c/c/c$a;->b(J)J

    move-result-wide v2

    .line 5172
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/c/c/c;->m:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer2/c/c/c;->e:J

    sub-long v2, v6, v2

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/exoplayer2/c/c/c;->m:J

    .line 5175
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/c/c;->g:Lcom/google/android/exoplayer2/c/k;

    iget v2, v2, Lcom/google/android/exoplayer2/c/k;->c:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/c/c/c;->o:I

    .line 5177
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/c/c;->j:Lcom/google/android/exoplayer2/c/o;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/c/c/c;->o:I

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3, v4}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/c/g;IZ)I

    move-result v2

    .line 5178
    const/4 v3, -0x1

    if-ne v2, v3, :cond_18

    .line 5179
    const/4 v2, -0x1

    goto/16 :goto_4

    .line 5181
    :cond_18
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/c/c/c;->o:I

    sub-int v2, v3, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/c/c/c;->o:I

    .line 5182
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/c/c/c;->o:I

    if-lez v2, :cond_19

    .line 5183
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 5185
    :cond_19
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer2/c/c/c;->m:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/c/c/c;->n:J

    const-wide/32 v6, 0xf4240

    mul-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/c/c/c;->g:Lcom/google/android/exoplayer2/c/k;

    iget v6, v6, Lcom/google/android/exoplayer2/c/k;->d:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    add-long/2addr v4, v2

    .line 5186
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/c/c;->j:Lcom/google/android/exoplayer2/c/o;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/c/c;->g:Lcom/google/android/exoplayer2/c/k;

    iget v7, v2, Lcom/google/android/exoplayer2/c/k;->c:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer2/c/o;->a(JIII[B)V

    .line 5188
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer2/c/c/c;->n:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/c/c;->g:Lcom/google/android/exoplayer2/c/k;

    iget v4, v4, Lcom/google/android/exoplayer2/c/k;->g:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/exoplayer2/c/c/c;->n:J

    .line 5189
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/c/c/c;->o:I

    .line 5190
    const/4 v2, 0x0

    .line 149
    goto/16 :goto_4

    :cond_1a
    move v2, v3

    goto/16 :goto_1

    .line 5066
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lcom/google/android/exoplayer2/c/h;)V
    .locals 2

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/c/c;->i:Lcom/google/android/exoplayer2/c/h;

    .line 114
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/c/c;->i:Lcom/google/android/exoplayer2/c/h;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/c/h;->a(I)Lcom/google/android/exoplayer2/c/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/c/c;->j:Lcom/google/android/exoplayer2/c/o;

    .line 115
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/c/c;->i:Lcom/google/android/exoplayer2/c/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/c/h;->b()V

    .line 116
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/c/g;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/c/c/c;->a(Lcom/google/android/exoplayer2/c/g;Z)Z

    move-result v0

    return v0
.end method

.method public final b(J)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 120
    iput v2, p0, Lcom/google/android/exoplayer2/c/c/c;->k:I

    .line 121
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/c/c;->m:J

    .line 122
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/c/c;->n:J

    .line 123
    iput v2, p0, Lcom/google/android/exoplayer2/c/c/c;->o:I

    .line 124
    return-void
.end method
