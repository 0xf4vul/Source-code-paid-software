.class final Lcom/google/android/exoplayer2/c/f/j;
.super Lcom/google/android/exoplayer2/c/f/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/c/f/j$a;
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/exoplayer2/c/o;

.field private b:Lcom/google/android/exoplayer2/c/f/o;

.field private c:Z

.field private final d:[Z

.field private final e:Lcom/google/android/exoplayer2/c/f/m;

.field private final f:Lcom/google/android/exoplayer2/c/f/m;

.field private final g:Lcom/google/android/exoplayer2/c/f/m;

.field private final h:Lcom/google/android/exoplayer2/c/f/m;

.field private final i:Lcom/google/android/exoplayer2/c/f/m;

.field private final j:Lcom/google/android/exoplayer2/c/f/j$a;

.field private k:J

.field private l:J

.field private final m:Lcom/google/android/exoplayer2/j/k;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/f/g;-><init>()V

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/j;->d:[Z

    .line 70
    new-instance v0, Lcom/google/android/exoplayer2/c/f/m;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/c/f/m;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/j;->e:Lcom/google/android/exoplayer2/c/f/m;

    .line 71
    new-instance v0, Lcom/google/android/exoplayer2/c/f/m;

    const/16 v1, 0x21

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/c/f/m;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/j;->f:Lcom/google/android/exoplayer2/c/f/m;

    .line 72
    new-instance v0, Lcom/google/android/exoplayer2/c/f/m;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/c/f/m;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/j;->g:Lcom/google/android/exoplayer2/c/f/m;

    .line 73
    new-instance v0, Lcom/google/android/exoplayer2/c/f/m;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/c/f/m;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/j;->h:Lcom/google/android/exoplayer2/c/f/m;

    .line 74
    new-instance v0, Lcom/google/android/exoplayer2/c/f/m;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/c/f/m;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/j;->i:Lcom/google/android/exoplayer2/c/f/m;

    .line 75
    new-instance v0, Lcom/google/android/exoplayer2/c/f/j$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/j;->a:Lcom/google/android/exoplayer2/c/o;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/c/f/j$a;-><init>(Lcom/google/android/exoplayer2/c/o;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/j;->j:Lcom/google/android/exoplayer2/c/f/j$a;

    .line 76
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/j/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/j;->m:Lcom/google/android/exoplayer2/j/k;

    .line 77
    return-void
.end method

.method private a([BII)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 166
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/j;->c:Z

    if-eqz v0, :cond_3

    .line 167
    iget-object v2, p0, Lcom/google/android/exoplayer2/c/f/j;->j:Lcom/google/android/exoplayer2/c/f/j$a;

    .line 37446
    iget-boolean v0, v2, Lcom/google/android/exoplayer2/c/f/j$a;->e:Z

    if-eqz v0, :cond_0

    .line 37447
    add-int/lit8 v0, p2, 0x2

    iget v3, v2, Lcom/google/android/exoplayer2/c/f/j$a;->c:I

    sub-int/2addr v0, v3

    .line 37448
    if-ge v0, p3, :cond_2

    .line 37449
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v2, Lcom/google/android/exoplayer2/c/f/j$a;->f:Z

    .line 37450
    iput-boolean v1, v2, Lcom/google/android/exoplayer2/c/f/j$a;->e:Z

    .line 173
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/j;->h:Lcom/google/android/exoplayer2/c/f/m;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/c/f/m;->a([BII)V

    .line 174
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/j;->i:Lcom/google/android/exoplayer2/c/f/m;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/c/f/m;->a([BII)V

    .line 175
    return-void

    :cond_1
    move v0, v1

    .line 37449
    goto :goto_0

    .line 37452
    :cond_2
    iget v0, v2, Lcom/google/android/exoplayer2/c/f/j$a;->c:I

    sub-int v1, p3, p2

    add-int/2addr v0, v1

    iput v0, v2, Lcom/google/android/exoplayer2/c/f/j$a;->c:I

    goto :goto_1

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/j;->e:Lcom/google/android/exoplayer2/c/f/m;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/c/f/m;->a([BII)V

    .line 170
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/j;->f:Lcom/google/android/exoplayer2/c/f/m;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/c/f/m;->a([BII)V

    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/j;->g:Lcom/google/android/exoplayer2/c/f/m;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/c/f/m;->a([BII)V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/j;->d:[Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/j/i;->a([Z)V

    .line 82
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/j;->e:Lcom/google/android/exoplayer2/c/f/m;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c/f/m;->a()V

    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/j;->f:Lcom/google/android/exoplayer2/c/f/m;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c/f/m;->a()V

    .line 84
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/j;->g:Lcom/google/android/exoplayer2/c/f/m;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c/f/m;->a()V

    .line 85
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/j;->h:Lcom/google/android/exoplayer2/c/f/m;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c/f/m;->a()V

    .line 86
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/j;->i:Lcom/google/android/exoplayer2/c/f/m;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c/f/m;->a()V

    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/j;->j:Lcom/google/android/exoplayer2/c/f/j$a;

    .line 1413
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/c/f/j$a;->e:Z

    .line 1414
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/c/f/j$a;->f:Z

    .line 1415
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/c/f/j$a;->g:Z

    .line 1416
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/c/f/j$a;->h:Z

    .line 1417
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/c/f/j$a;->i:Z

    .line 88
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/f/j;->k:J

    .line 89
    return-void
.end method

.method public final a(JZ)V
    .locals 1

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/google/android/exoplayer2/c/f/j;->l:J

    .line 100
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/c/h;Lcom/google/android/exoplayer2/c/f/g$c;)V
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/c/f/g$c;->a()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/c/h;->a(I)Lcom/google/android/exoplayer2/c/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/j;->a:Lcom/google/android/exoplayer2/c/o;

    .line 94
    new-instance v0, Lcom/google/android/exoplayer2/c/f/o;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/c/f/g$c;->a()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/c/h;->a(I)Lcom/google/android/exoplayer2/c/o;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/c/f/o;-><init>(Lcom/google/android/exoplayer2/c/o;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/j;->b:Lcom/google/android/exoplayer2/c/f/o;

    .line 95
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/j/k;)V
    .locals 27

    .prologue
    .line 104
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v2

    if-lez v2, :cond_1

    .line 2126
    move-object/from16 v0, p1

    iget v2, v0, Lcom/google/android/exoplayer2/j/k;->b:I

    .line 3109
    move-object/from16 v0, p1

    iget v9, v0, Lcom/google/android/exoplayer2/j/k;->c:I

    .line 107
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    .line 110
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/c/f/j;->k:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/exoplayer2/c/f/j;->k:J

    .line 111
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/f/j;->a:Lcom/google/android/exoplayer2/c/o;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v4}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/j/k;I)V

    .line 114
    :goto_0
    if-ge v2, v9, :cond_0

    .line 115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/f/j;->d:[Z

    invoke-static {v10, v2, v9, v3}, Lcom/google/android/exoplayer2/j/i;->a([BII[Z)I

    move-result v11

    .line 117
    if-ne v11, v9, :cond_2

    .line 119
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2, v9}, Lcom/google/android/exoplayer2/c/f/j;->a([BII)V

    .line 146
    :cond_1
    return-void

    .line 124
    :cond_2
    invoke-static {v10, v11}, Lcom/google/android/exoplayer2/j/i;->c([BI)I

    move-result v12

    .line 128
    sub-int v3, v11, v2

    .line 129
    if-lez v3, :cond_3

    .line 130
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2, v11}, Lcom/google/android/exoplayer2/c/f/j;->a([BII)V

    .line 133
    :cond_3
    sub-int v13, v9, v11

    .line 134
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/c/f/j;->k:J

    int-to-long v6, v13

    sub-long v14, v4, v6

    .line 138
    if-gez v3, :cond_a

    neg-int v2, v3

    :goto_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/c/f/j;->l:J

    move-wide/from16 v16, v0

    .line 3178
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/exoplayer2/c/f/j;->c:Z

    if-eqz v3, :cond_e

    .line 3179
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/f/j;->j:Lcom/google/android/exoplayer2/c/f/j$a;

    .line 3458
    iget-boolean v4, v3, Lcom/google/android/exoplayer2/c/f/j$a;->i:Z

    if-eqz v4, :cond_b

    iget-boolean v4, v3, Lcom/google/android/exoplayer2/c/f/j$a;->f:Z

    if-eqz v4, :cond_b

    .line 3460
    iget-boolean v4, v3, Lcom/google/android/exoplayer2/c/f/j$a;->b:Z

    iput-boolean v4, v3, Lcom/google/android/exoplayer2/c/f/j$a;->l:Z

    .line 3461
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/android/exoplayer2/c/f/j$a;->i:Z

    .line 3189
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/f/j;->h:Lcom/google/android/exoplayer2/c/f/m;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/c/f/m;->b(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/f/j;->h:Lcom/google/android/exoplayer2/c/f/m;

    iget-object v3, v3, Lcom/google/android/exoplayer2/c/f/m;->b:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/f/j;->h:Lcom/google/android/exoplayer2/c/f/m;

    iget v4, v4, Lcom/google/android/exoplayer2/c/f/m;->c:I

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/j/i;->a([BI)I

    move-result v3

    .line 3191
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/f/j;->m:Lcom/google/android/exoplayer2/j/k;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/c/f/j;->h:Lcom/google/android/exoplayer2/c/f/m;

    iget-object v5, v5, Lcom/google/android/exoplayer2/c/f/m;->b:[B

    invoke-virtual {v4, v5, v3}, Lcom/google/android/exoplayer2/j/k;->a([BI)V

    .line 3194
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/f/j;->m:Lcom/google/android/exoplayer2/j/k;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 3195
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/f/j;->b:Lcom/google/android/exoplayer2/c/f/o;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/f/j;->m:Lcom/google/android/exoplayer2/j/k;

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1, v4}, Lcom/google/android/exoplayer2/c/f/o;->a(JLcom/google/android/exoplayer2/j/k;)V

    .line 3197
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/f/j;->i:Lcom/google/android/exoplayer2/c/f/m;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/c/f/m;->b(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/f/j;->i:Lcom/google/android/exoplayer2/c/f/m;

    iget-object v2, v2, Lcom/google/android/exoplayer2/c/f/m;->b:[B

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/f/j;->i:Lcom/google/android/exoplayer2/c/f/m;

    iget v3, v3, Lcom/google/android/exoplayer2/c/f/m;->c:I

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/j/i;->a([BI)I

    move-result v2

    .line 3199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/f/j;->m:Lcom/google/android/exoplayer2/j/k;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/f/j;->i:Lcom/google/android/exoplayer2/c/f/m;

    iget-object v4, v4, Lcom/google/android/exoplayer2/c/f/m;->b:[B

    invoke-virtual {v3, v4, v2}, Lcom/google/android/exoplayer2/j/k;->a([BI)V

    .line 3202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/f/j;->m:Lcom/google/android/exoplayer2/j/k;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 3203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/f/j;->b:Lcom/google/android/exoplayer2/c/f/o;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/f/j;->m:Lcom/google/android/exoplayer2/j/k;

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/exoplayer2/c/f/o;->a(JLcom/google/android/exoplayer2/j/k;)V

    .line 141
    :cond_6
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer2/c/f/j;->l:J

    .line 37154
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/c/f/j;->c:Z

    if-eqz v4, :cond_2c

    .line 37155
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/f/j;->j:Lcom/google/android/exoplayer2/c/f/j$a;

    .line 37421
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/android/exoplayer2/c/f/j$a;->f:Z

    .line 37422
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/android/exoplayer2/c/f/j$a;->g:Z

    .line 37423
    iput-wide v2, v4, Lcom/google/android/exoplayer2/c/f/j$a;->d:J

    .line 37424
    const/4 v2, 0x0

    iput v2, v4, Lcom/google/android/exoplayer2/c/f/j$a;->c:I

    .line 37425
    iput-wide v14, v4, Lcom/google/android/exoplayer2/c/f/j$a;->a:J

    .line 37427
    const/16 v2, 0x20

    if-lt v12, v2, :cond_8

    .line 37428
    iget-boolean v2, v4, Lcom/google/android/exoplayer2/c/f/j$a;->i:Z

    if-nez v2, :cond_7

    iget-boolean v2, v4, Lcom/google/android/exoplayer2/c/f/j$a;->h:Z

    if-eqz v2, :cond_7

    .line 37430
    invoke-virtual {v4, v13}, Lcom/google/android/exoplayer2/c/f/j$a;->a(I)V

    .line 37431
    const/4 v2, 0x0

    iput-boolean v2, v4, Lcom/google/android/exoplayer2/c/f/j$a;->h:Z

    .line 37433
    :cond_7
    const/16 v2, 0x22

    if-gt v12, v2, :cond_8

    .line 37435
    iget-boolean v2, v4, Lcom/google/android/exoplayer2/c/f/j$a;->i:Z

    if-nez v2, :cond_29

    const/4 v2, 0x1

    :goto_3
    iput-boolean v2, v4, Lcom/google/android/exoplayer2/c/f/j$a;->g:Z

    .line 37436
    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/google/android/exoplayer2/c/f/j$a;->i:Z

    .line 37441
    :cond_8
    const/16 v2, 0x10

    if-lt v12, v2, :cond_2a

    const/16 v2, 0x15

    if-gt v12, v2, :cond_2a

    const/4 v2, 0x1

    :goto_4
    iput-boolean v2, v4, Lcom/google/android/exoplayer2/c/f/j$a;->b:Z

    .line 37442
    iget-boolean v2, v4, Lcom/google/android/exoplayer2/c/f/j$a;->b:Z

    if-nez v2, :cond_9

    const/16 v2, 0x9

    if-gt v12, v2, :cond_2b

    :cond_9
    const/4 v2, 0x1

    :goto_5
    iput-boolean v2, v4, Lcom/google/android/exoplayer2/c/f/j$a;->e:Z

    .line 37161
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/f/j;->h:Lcom/google/android/exoplayer2/c/f/m;

    invoke-virtual {v2, v12}, Lcom/google/android/exoplayer2/c/f/m;->a(I)V

    .line 37162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/f/j;->i:Lcom/google/android/exoplayer2/c/f/m;

    invoke-virtual {v2, v12}, Lcom/google/android/exoplayer2/c/f/m;->a(I)V

    .line 143
    add-int/lit8 v2, v11, 0x3

    .line 144
    goto/16 :goto_0

    .line 138
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 3462
    :cond_b
    iget-boolean v4, v3, Lcom/google/android/exoplayer2/c/f/j$a;->g:Z

    if-nez v4, :cond_c

    iget-boolean v4, v3, Lcom/google/android/exoplayer2/c/f/j$a;->f:Z

    if-eqz v4, :cond_4

    .line 3464
    :cond_c
    iget-boolean v4, v3, Lcom/google/android/exoplayer2/c/f/j$a;->h:Z

    if-eqz v4, :cond_d

    .line 3466
    iget-wide v4, v3, Lcom/google/android/exoplayer2/c/f/j$a;->a:J

    sub-long v4, v14, v4

    long-to-int v4, v4

    .line 3467
    add-int/2addr v4, v13

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/c/f/j$a;->a(I)V

    .line 3469
    :cond_d
    iget-wide v4, v3, Lcom/google/android/exoplayer2/c/f/j$a;->a:J

    iput-wide v4, v3, Lcom/google/android/exoplayer2/c/f/j$a;->j:J

    .line 3470
    iget-wide v4, v3, Lcom/google/android/exoplayer2/c/f/j$a;->d:J

    iput-wide v4, v3, Lcom/google/android/exoplayer2/c/f/j$a;->k:J

    .line 3471
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/android/exoplayer2/c/f/j$a;->h:Z

    .line 3472
    iget-boolean v4, v3, Lcom/google/android/exoplayer2/c/f/j$a;->b:Z

    iput-boolean v4, v3, Lcom/google/android/exoplayer2/c/f/j$a;->l:Z

    goto/16 :goto_2

    .line 3181
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/f/j;->e:Lcom/google/android/exoplayer2/c/f/m;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/c/f/m;->b(I)Z

    .line 3182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/f/j;->f:Lcom/google/android/exoplayer2/c/f/m;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/c/f/m;->b(I)Z

    .line 3183
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/f/j;->g:Lcom/google/android/exoplayer2/c/f/m;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/c/f/m;->b(I)Z

    .line 3184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/f/j;->e:Lcom/google/android/exoplayer2/c/f/m;

    .line 4055
    iget-boolean v3, v3, Lcom/google/android/exoplayer2/c/f/m;->a:Z

    .line 3184
    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/f/j;->f:Lcom/google/android/exoplayer2/c/f/m;

    .line 5055
    iget-boolean v3, v3, Lcom/google/android/exoplayer2/c/f/m;->a:Z

    .line 3184
    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/f/j;->g:Lcom/google/android/exoplayer2/c/f/m;

    .line 6055
    iget-boolean v3, v3, Lcom/google/android/exoplayer2/c/f/m;->a:Z

    .line 3184
    if-eqz v3, :cond_4

    .line 3185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/c/f/j;->a:Lcom/google/android/exoplayer2/c/o;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/f/j;->e:Lcom/google/android/exoplayer2/c/f/m;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/f/j;->f:Lcom/google/android/exoplayer2/c/f/m;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/c/f/j;->g:Lcom/google/android/exoplayer2/c/f/m;

    .line 6210
    iget v6, v3, Lcom/google/android/exoplayer2/c/f/m;->c:I

    iget v7, v4, Lcom/google/android/exoplayer2/c/f/m;->c:I

    add-int/2addr v6, v7

    iget v7, v5, Lcom/google/android/exoplayer2/c/f/m;->c:I

    add-int/2addr v6, v7

    new-array v0, v6, [B

    move-object/from16 v19, v0

    .line 6211
    iget-object v6, v3, Lcom/google/android/exoplayer2/c/f/m;->b:[B

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v0, v3, Lcom/google/android/exoplayer2/c/f/m;->c:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v6, v7, v0, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6212
    iget-object v6, v4, Lcom/google/android/exoplayer2/c/f/m;->b:[B

    const/4 v7, 0x0

    iget v8, v3, Lcom/google/android/exoplayer2/c/f/m;->c:I

    iget v0, v4, Lcom/google/android/exoplayer2/c/f/m;->c:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v6, v7, v0, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6213
    iget-object v6, v5, Lcom/google/android/exoplayer2/c/f/m;->b:[B

    const/4 v7, 0x0

    iget v3, v3, Lcom/google/android/exoplayer2/c/f/m;->c:I

    iget v8, v4, Lcom/google/android/exoplayer2/c/f/m;->c:I

    add-int/2addr v3, v8

    iget v5, v5, Lcom/google/android/exoplayer2/c/f/m;->c:I

    move-object/from16 v0, v19

    invoke-static {v6, v7, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6216
    new-instance v20, Lcom/google/android/exoplayer2/j/l;

    iget-object v3, v4, Lcom/google/android/exoplayer2/c/f/m;->b:[B

    const/4 v5, 0x0

    iget v4, v4, Lcom/google/android/exoplayer2/c/f/m;->c:I

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v5, v4}, Lcom/google/android/exoplayer2/j/l;-><init>([BII)V

    .line 6217
    const/16 v3, 0x2c

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/j/l;->a(I)V

    .line 6218
    const/4 v3, 0x3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/j/l;->c(I)I

    move-result v6

    .line 6219
    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/j/l;->a(I)V

    .line 6222
    const/16 v3, 0x58

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/j/l;->a(I)V

    .line 6223
    const/16 v3, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/j/l;->a(I)V

    .line 6224
    const/4 v4, 0x0

    .line 6225
    const/4 v3, 0x0

    move/from16 v26, v3

    move v3, v4

    move/from16 v4, v26

    :goto_7
    if-ge v4, v6, :cond_11

    .line 6226
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->a()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 6227
    add-int/lit8 v3, v3, 0x59

    .line 6229
    :cond_f
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->a()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 6230
    add-int/lit8 v3, v3, 0x8

    .line 6225
    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 6233
    :cond_11
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/j/l;->a(I)V

    .line 6234
    if-lez v6, :cond_12

    .line 6235
    rsub-int/lit8 v3, v6, 0x8

    mul-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/j/l;->a(I)V

    .line 7194
    :cond_12
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->d()I

    .line 8194
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->d()I

    move-result v8

    .line 6240
    const/4 v3, 0x3

    if-ne v8, v3, :cond_13

    .line 6241
    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/j/l;->a(I)V

    .line 9194
    :cond_13
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->d()I

    move-result v5

    .line 10194
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->d()I

    move-result v4

    .line 6245
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->a()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 11194
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->d()I

    move-result v21

    .line 12194
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->d()I

    move-result v22

    .line 13194
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->d()I

    move-result v23

    .line 14194
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->d()I

    move-result v24

    .line 6251
    const/4 v3, 0x1

    if-eq v8, v3, :cond_14

    const/4 v3, 0x2

    if-ne v8, v3, :cond_15

    :cond_14
    const/4 v3, 0x2

    move v7, v3

    .line 6252
    :goto_8
    const/4 v3, 0x1

    if-ne v8, v3, :cond_16

    const/4 v3, 0x2

    .line 6253
    :goto_9
    add-int v8, v21, v22

    mul-int/2addr v7, v8

    sub-int/2addr v5, v7

    .line 6254
    add-int v7, v23, v24

    mul-int/2addr v3, v7

    sub-int v3, v4, v3

    move v4, v5

    .line 15194
    :goto_a
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->d()I

    .line 16194
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->d()I

    .line 17194
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->d()I

    move-result v21

    .line 6260
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->a()Z

    move-result v5

    if-eqz v5, :cond_17

    const/4 v5, 0x0

    :goto_b
    if-gt v5, v6, :cond_18

    .line 18194
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->d()I

    .line 19194
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->d()I

    .line 20194
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->d()I

    .line 6260
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 6251
    :cond_15
    const/4 v3, 0x1

    move v7, v3

    goto :goto_8

    .line 6252
    :cond_16
    const/4 v3, 0x1

    goto :goto_9

    :cond_17
    move v5, v6

    .line 6260
    goto :goto_b

    .line 21194
    :cond_18
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->d()I

    .line 22194
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->d()I

    .line 23194
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->d()I

    .line 24194
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->d()I

    .line 25194
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->d()I

    .line 26194
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->d()I

    .line 6272
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->a()Z

    move-result v5

    .line 6273
    if-eqz v5, :cond_1e

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->a()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 26322
    const/4 v5, 0x0

    move v7, v5

    :goto_c
    const/4 v5, 0x4

    if-ge v7, v5, :cond_1e

    .line 26323
    const/4 v5, 0x0

    move v6, v5

    :goto_d
    const/4 v5, 0x6

    if-ge v6, v5, :cond_1d

    .line 26324
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->a()Z

    move-result v5

    if-nez v5, :cond_1a

    .line 27194
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->d()I

    .line 26323
    :cond_19
    const/4 v5, 0x3

    if-ne v7, v5, :cond_1c

    const/4 v5, 0x3

    :goto_e
    add-int/2addr v5, v6

    move v6, v5

    goto :goto_d

    .line 26328
    :cond_1a
    const/16 v5, 0x40

    const/4 v8, 0x1

    shl-int/lit8 v22, v7, 0x1

    add-int/lit8 v22, v22, 0x4

    shl-int v8, v8, v22

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 26329
    const/4 v5, 0x1

    if-le v7, v5, :cond_1b

    .line 26331
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->c()I

    .line 26333
    :cond_1b
    const/4 v5, 0x0

    :goto_f
    if-ge v5, v8, :cond_19

    .line 26334
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->c()I

    .line 26333
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 26323
    :cond_1c
    const/4 v5, 0x1

    goto :goto_e

    .line 26322
    :cond_1d
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_c

    .line 6276
    :cond_1e
    const/4 v5, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/j/l;->a(I)V

    .line 6277
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->a()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 6279
    const/16 v5, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/j/l;->a(I)V

    .line 28194
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->d()I

    .line 29194
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->d()I

    .line 6282
    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/j/l;->a(I)V

    .line 30194
    :cond_1f
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->d()I

    move-result v22

    .line 29347
    const/4 v7, 0x0

    .line 29353
    const/4 v6, 0x0

    .line 29354
    const/4 v5, 0x0

    move v8, v5

    move v5, v6

    move v6, v7

    :goto_10
    move/from16 v0, v22

    if-ge v8, v0, :cond_24

    .line 29355
    if-eqz v8, :cond_2d

    .line 29356
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->a()Z

    move-result v6

    move v7, v6

    .line 29358
    :goto_11
    if-eqz v7, :cond_21

    .line 29359
    const/4 v6, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/j/l;->a(I)V

    .line 31194
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->d()I

    .line 29361
    const/4 v6, 0x0

    :goto_12
    if-gt v6, v5, :cond_23

    .line 29362
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->a()Z

    move-result v23

    if-eqz v23, :cond_20

    .line 29363
    const/16 v23, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/j/l;->a(I)V

    .line 29361
    :cond_20
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 32194
    :cond_21
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->d()I

    move-result v23

    .line 33194
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->d()I

    move-result v24

    .line 29369
    add-int v5, v23, v24

    .line 29370
    const/4 v6, 0x0

    :goto_13
    move/from16 v0, v23

    if-ge v6, v0, :cond_22

    .line 34194
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->d()I

    .line 29372
    const/16 v25, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/j/l;->a(I)V

    .line 29370
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 29374
    :cond_22
    const/4 v6, 0x0

    :goto_14
    move/from16 v0, v24

    if-ge v6, v0, :cond_23

    .line 35194
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->d()I

    .line 29376
    const/16 v23, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/j/l;->a(I)V

    .line 29374
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 29354
    :cond_23
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move v6, v7

    goto :goto_10

    .line 6286
    :cond_24
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->a()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 6288
    const/4 v5, 0x0

    .line 36194
    :goto_15
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->d()I

    move-result v6

    .line 6288
    if-ge v5, v6, :cond_25

    .line 6289
    add-int/lit8 v6, v21, 0x4

    .line 6291
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/j/l;->a(I)V

    .line 6288
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 6294
    :cond_25
    const/4 v5, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/j/l;->a(I)V

    .line 6295
    const/high16 v5, 0x3f800000    # 1.0f

    .line 6296
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->a()Z

    move-result v6

    if-eqz v6, :cond_26

    .line 6297
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/j/l;->a()Z

    move-result v6

    if-eqz v6, :cond_26

    .line 6298
    const/16 v6, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/j/l;->c(I)I

    move-result v6

    .line 6299
    const/16 v7, 0xff

    if-ne v6, v7, :cond_27

    .line 6300
    const/16 v6, 0x10

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/j/l;->c(I)I

    move-result v6

    .line 6301
    const/16 v7, 0x10

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/j/l;->c(I)I

    move-result v7

    .line 6302
    if-eqz v6, :cond_26

    if-eqz v7, :cond_26

    .line 6303
    int-to-float v5, v6

    int-to-float v6, v7

    div-float/2addr v5, v6

    .line 6313
    :cond_26
    :goto_16
    const-string/jumbo v6, "video/hevc"

    .line 6315
    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 6313
    invoke-static {v6, v4, v3, v7, v5}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;IILjava/util/List;F)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    .line 3185
    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 3186
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/exoplayer2/c/f/j;->c:Z

    goto/16 :goto_2

    .line 6305
    :cond_27
    sget-object v7, Lcom/google/android/exoplayer2/j/i;->b:[F

    array-length v7, v7

    if-ge v6, v7, :cond_28

    .line 6306
    sget-object v5, Lcom/google/android/exoplayer2/j/i;->b:[F

    aget v5, v5, v6

    goto :goto_16

    .line 6308
    :cond_28
    const-string/jumbo v7, "H265Reader"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "Unexpected aspect_ratio_idc value: "

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 37435
    :cond_29
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 37441
    :cond_2a
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 37442
    :cond_2b
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 37157
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/f/j;->e:Lcom/google/android/exoplayer2/c/f/m;

    invoke-virtual {v2, v12}, Lcom/google/android/exoplayer2/c/f/m;->a(I)V

    .line 37158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/f/j;->f:Lcom/google/android/exoplayer2/c/f/m;

    invoke-virtual {v2, v12}, Lcom/google/android/exoplayer2/c/f/m;->a(I)V

    .line 37159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/f/j;->g:Lcom/google/android/exoplayer2/c/f/m;

    invoke-virtual {v2, v12}, Lcom/google/android/exoplayer2/c/f/m;->a(I)V

    goto/16 :goto_6

    :cond_2d
    move v7, v6

    goto/16 :goto_11

    :cond_2e
    move v3, v4

    move v4, v5

    goto/16 :goto_a
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method
