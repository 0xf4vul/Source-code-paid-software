.class public final Lcom/google/android/exoplayer2/c/d/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/c/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/c/d/e$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/exoplayer2/c/i;

.field private static final b:I

.field private static final c:[B


# instance fields
.field private final d:I

.field private final e:Lcom/google/android/exoplayer2/c/d/h;

.field private final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer2/c/d/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/exoplayer2/j/k;

.field private final h:Lcom/google/android/exoplayer2/j/k;

.field private final i:Lcom/google/android/exoplayer2/j/k;

.field private final j:Lcom/google/android/exoplayer2/c/n;

.field private final k:Lcom/google/android/exoplayer2/j/k;

.field private final l:[B

.field private final m:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/exoplayer2/c/d/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:I

.field private p:J

.field private q:I

.field private r:Lcom/google/android/exoplayer2/j/k;

.field private s:J

.field private t:J

.field private u:Lcom/google/android/exoplayer2/c/d/e$a;

.field private v:I

.field private w:I

.field private x:I

.field private y:Lcom/google/android/exoplayer2/c/h;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/google/android/exoplayer2/c/d/e$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/c/d/e$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/c/d/e;->a:Lcom/google/android/exoplayer2/c/i;

    .line 69
    const-string/jumbo v0, "seig"

    invoke-static {v0}, Lcom/google/android/exoplayer2/j/r;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/c/d/e;->b:I

    .line 96
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/c/d/e;->c:[B

    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/c/d/e;-><init>(B)V

    .line 148
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/c/d/e;-><init>(C)V

    .line 156
    return-void
.end method

.method private constructor <init>(C)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x10

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object v1, p0, Lcom/google/android/exoplayer2/c/d/e;->e:Lcom/google/android/exoplayer2/c/d/h;

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/c/d/e;->d:I

    .line 168
    iput-object v1, p0, Lcom/google/android/exoplayer2/c/d/e;->j:Lcom/google/android/exoplayer2/c/n;

    .line 169
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/j/k;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/d/e;->k:Lcom/google/android/exoplayer2/j/k;

    .line 170
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    sget-object v1, Lcom/google/android/exoplayer2/j/i;->a:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j/k;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/d/e;->g:Lcom/google/android/exoplayer2/j/k;

    .line 171
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j/k;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/d/e;->h:Lcom/google/android/exoplayer2/j/k;

    .line 172
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j/k;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/d/e;->i:Lcom/google/android/exoplayer2/j/k;

    .line 173
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/d/e;->l:[B

    .line 174
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/d/e;->m:Ljava/util/Stack;

    .line 175
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/d/e;->f:Landroid/util/SparseArray;

    .line 176
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/d/e;->t:J

    .line 177
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/d/e;->a()V

    .line 178
    return-void
.end method

.method private static a(Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/c/d/a$b;",
            ">;)",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1105
    .line 1106
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    move v3, v4

    move-object v1, v2

    .line 1107
    :goto_0
    if-ge v3, v5, :cond_a

    .line 1108
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/c/d/a$b;

    .line 1109
    iget v6, v0, Lcom/google/android/exoplayer2/c/d/a$b;->aM:I

    sget v7, Lcom/google/android/exoplayer2/c/d/a;->T:I

    if-ne v6, v7, :cond_1

    .line 1110
    if-nez v1, :cond_0

    .line 1111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1113
    :cond_0
    iget-object v0, v0, Lcom/google/android/exoplayer2/c/d/a$b;->aN:Lcom/google/android/exoplayer2/j/k;

    iget-object v6, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    .line 12102
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    invoke-direct {v0, v6}, Lcom/google/android/exoplayer2/j/k;-><init>([B)V

    .line 13109
    iget v7, v0, Lcom/google/android/exoplayer2/j/k;->c:I

    .line 12103
    const/16 v8, 0x20

    if-ge v7, v8, :cond_2

    move-object v0, v2

    .line 12064
    :goto_1
    if-nez v0, :cond_8

    move-object v0, v2

    .line 1115
    :goto_2
    if-nez v0, :cond_9

    .line 1116
    const-string/jumbo v0, "FragmentedMp4Extractor"

    const-string/jumbo v6, "Skipped pssh atom (failed to extract uuid)"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    :cond_1
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 12107
    :cond_2
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 12108
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v7

    .line 12109
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v8

    add-int/lit8 v8, v8, 0x4

    if-eq v7, v8, :cond_3

    move-object v0, v2

    .line 12111
    goto :goto_1

    .line 12113
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v7

    .line 12114
    sget v8, Lcom/google/android/exoplayer2/c/d/a;->T:I

    if-eq v7, v8, :cond_4

    move-object v0, v2

    .line 12116
    goto :goto_1

    .line 12118
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/c/d/a;->a(I)I

    move-result v7

    .line 12119
    if-le v7, v14, :cond_5

    .line 12120
    const-string/jumbo v0, "PsshAtomUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Unsupported pssh version: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 12121
    goto :goto_1

    .line 12123
    :cond_5
    new-instance v8, Ljava/util/UUID;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->l()J

    move-result-wide v10

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->l()J

    move-result-wide v12

    invoke-direct {v8, v10, v11, v12, v13}, Ljava/util/UUID;-><init>(JJ)V

    .line 12124
    if-ne v7, v14, :cond_6

    .line 12125
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v7

    .line 12126
    mul-int/lit8 v7, v7, 0x10

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 12128
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v7

    .line 12129
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v9

    if-eq v7, v9, :cond_7

    move-object v0, v2

    .line 12131
    goto :goto_1

    .line 12133
    :cond_7
    new-array v9, v7, [B

    .line 12134
    invoke-virtual {v0, v9, v4, v7}, Lcom/google/android/exoplayer2/j/k;->a([BII)V

    .line 12135
    invoke-static {v8, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    .line 12067
    :cond_8
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/UUID;

    goto :goto_2

    .line 1118
    :cond_9
    new-instance v7, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    const-string/jumbo v8, "video/mp4"

    invoke-direct {v7, v0, v8, v6}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1122
    :cond_a
    if-nez v1, :cond_b

    move-object v0, v2

    :goto_4
    return-object v0

    :cond_b
    new-instance v0, Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/util/List;)V

    goto :goto_4
.end method

.method private a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 236
    iput v0, p0, Lcom/google/android/exoplayer2/c/d/e;->n:I

    .line 237
    iput v0, p0, Lcom/google/android/exoplayer2/c/d/e;->q:I

    .line 238
    return-void
.end method

.method private a(J)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/j;
        }
    .end annotation

    .prologue
    .line 325
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d/e;->m:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d/e;->m:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/c/d/a$a;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/c/d/a$a;->aN:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_d

    .line 326
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d/e;->m:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/exoplayer2/c/d/a$a;

    .line 5342
    iget v0, v6, Lcom/google/android/exoplayer2/c/d/a$a;->aM:I

    sget v1, Lcom/google/android/exoplayer2/c/d/a;->A:I

    if-ne v0, v1, :cond_b

    .line 5352
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d/e;->e:Lcom/google/android/exoplayer2/c/d/h;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    const-string/jumbo v1, "Unexpected moov box."

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/j/a;->b(ZLjava/lang/Object;)V

    .line 5354
    iget-object v0, v6, Lcom/google/android/exoplayer2/c/d/a$a;->aO:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/exoplayer2/c/d/e;->a(Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v4

    .line 5357
    sget v0, Lcom/google/android/exoplayer2/c/d/a;->L:I

    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer2/c/d/a$a;->e(I)Lcom/google/android/exoplayer2/c/d/a$a;

    move-result-object v7

    .line 5358
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 5359
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 5360
    iget-object v0, v7, Lcom/google/android/exoplayer2/c/d/a$a;->aO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    .line 5361
    const/4 v0, 0x0

    move v5, v0

    :goto_2
    if-ge v5, v9, :cond_5

    .line 5362
    iget-object v0, v7, Lcom/google/android/exoplayer2/c/d/a$a;->aO:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/c/d/a$b;

    .line 5363
    iget v1, v0, Lcom/google/android/exoplayer2/c/d/a$b;->aM:I

    sget v10, Lcom/google/android/exoplayer2/c/d/a;->x:I

    if-ne v1, v10, :cond_3

    .line 5364
    iget-object v0, v0, Lcom/google/android/exoplayer2/c/d/a$b;->aN:Lcom/google/android/exoplayer2/j/k;

    .line 5420
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 5421
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v1

    .line 5422
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    .line 5423
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v11

    .line 5424
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v12

    .line 5425
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v0

    .line 5427
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v13, Lcom/google/android/exoplayer2/c/d/c;

    invoke-direct {v13, v10, v11, v12, v0}, Lcom/google/android/exoplayer2/c/d/c;-><init>(IIII)V

    invoke-static {v1, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 5365
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v8, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5361
    :cond_1
    :goto_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    .line 5352
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 5366
    :cond_3
    iget v1, v0, Lcom/google/android/exoplayer2/c/d/a$b;->aM:I

    sget v10, Lcom/google/android/exoplayer2/c/d/a;->M:I

    if-ne v1, v10, :cond_1

    .line 5367
    iget-object v0, v0, Lcom/google/android/exoplayer2/c/d/a$b;->aN:Lcom/google/android/exoplayer2/j/k;

    .line 5435
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 5436
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v1

    .line 5437
    invoke-static {v1}, Lcom/google/android/exoplayer2/c/d/a;->a(I)I

    move-result v1

    .line 5438
    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->h()J

    move-result-wide v0

    :goto_4
    move-wide v2, v0

    .line 5367
    goto :goto_3

    .line 5438
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->p()J

    move-result-wide v0

    goto :goto_4

    .line 5372
    :cond_5
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 5373
    iget-object v0, v6, Lcom/google/android/exoplayer2/c/d/a$a;->aP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    .line 5374
    const/4 v0, 0x0

    move v7, v0

    :goto_5
    if-ge v7, v10, :cond_7

    .line 5375
    iget-object v0, v6, Lcom/google/android/exoplayer2/c/d/a$a;->aP:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/c/d/a$a;

    .line 5376
    iget v1, v0, Lcom/google/android/exoplayer2/c/d/a$a;->aM:I

    sget v5, Lcom/google/android/exoplayer2/c/d/a;->C:I

    if-ne v1, v5, :cond_6

    .line 5377
    sget v1, Lcom/google/android/exoplayer2/c/d/a;->B:I

    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer2/c/d/a$a;->d(I)Lcom/google/android/exoplayer2/c/d/a$b;

    move-result-object v1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/c/d/b;->a(Lcom/google/android/exoplayer2/c/d/a$a;Lcom/google/android/exoplayer2/c/d/a$b;JLcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/c/d/h;

    move-result-object v0

    .line 5379
    if-eqz v0, :cond_6

    .line 5380
    iget v1, v0, Lcom/google/android/exoplayer2/c/d/h;->a:I

    invoke-virtual {v9, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5374
    :cond_6
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_5

    .line 5385
    :cond_7
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 5386
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d/e;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 5388
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, v4, :cond_8

    .line 5389
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/c/d/h;

    .line 5390
    iget-object v2, p0, Lcom/google/android/exoplayer2/c/d/e;->f:Landroid/util/SparseArray;

    iget v3, v0, Lcom/google/android/exoplayer2/c/d/h;->a:I

    new-instance v5, Lcom/google/android/exoplayer2/c/d/e$a;

    iget-object v6, p0, Lcom/google/android/exoplayer2/c/d/e;->y:Lcom/google/android/exoplayer2/c/h;

    invoke-interface {v6, v1}, Lcom/google/android/exoplayer2/c/h;->a(I)Lcom/google/android/exoplayer2/c/o;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/exoplayer2/c/d/e$a;-><init>(Lcom/google/android/exoplayer2/c/o;)V

    invoke-virtual {v2, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5391
    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/d/e;->t:J

    iget-wide v6, v0, Lcom/google/android/exoplayer2/c/d/h;->e:J

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/c/d/e;->t:J

    .line 5388
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 5393
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d/e;->y:Lcom/google/android/exoplayer2/c/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/c/h;->b()V

    .line 5399
    :goto_7
    const/4 v0, 0x0

    move v3, v0

    :goto_8
    if-ge v3, v4, :cond_0

    .line 5400
    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/c/d/h;

    .line 5401
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/d/e;->f:Landroid/util/SparseArray;

    iget v2, v0, Lcom/google/android/exoplayer2/c/d/h;->a:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/c/d/e$a;

    iget v2, v0, Lcom/google/android/exoplayer2/c/d/h;->a:I

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/c/d/c;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/c/d/e$a;->a(Lcom/google/android/exoplayer2/c/d/h;Lcom/google/android/exoplayer2/c/d/c;)V

    .line 5399
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_8

    .line 5395
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d/e;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ne v0, v4, :cond_a

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Lcom/google/android/exoplayer2/j/a;->b(Z)V

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    goto :goto_9

    .line 5344
    :cond_b
    iget v0, v6, Lcom/google/android/exoplayer2/c/d/a$a;->aM:I

    sget v1, Lcom/google/android/exoplayer2/c/d/a;->J:I

    if-ne v0, v1, :cond_c

    .line 5345
    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/c/d/e;->a(Lcom/google/android/exoplayer2/c/d/a$a;)V

    goto/16 :goto_0

    .line 5346
    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d/e;->m:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5347
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d/e;->m:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/c/d/a$a;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/c/d/a$a;->a(Lcom/google/android/exoplayer2/c/d/a$a;)V

    goto/16 :goto_0

    .line 328
    :cond_d
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/d/e;->a()V

    .line 329
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/c/d/a$a;)V
    .locals 43
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/j;
        }
    .end annotation

    .prologue
    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/c/d/e;->f:Landroid/util/SparseArray;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/c/d/e;->d:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/c/d/e;->l:[B

    move-object/from16 v31, v0

    .line 5443
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/a$a;->aP:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v32

    .line 5444
    const/4 v2, 0x0

    move/from16 v28, v2

    :goto_0
    move/from16 v0, v28

    move/from16 v1, v32

    if-ge v0, v1, :cond_34

    .line 5445
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/a$a;->aP:Ljava/util/List;

    move/from16 v0, v28

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/google/android/exoplayer2/c/d/a$a;

    .line 5447
    iget v2, v8, Lcom/google/android/exoplayer2/c/d/a$a;->aM:I

    sget v3, Lcom/google/android/exoplayer2/c/d/a;->K:I

    if-ne v2, v3, :cond_33

    .line 5458
    sget v2, Lcom/google/android/exoplayer2/c/d/a;->w:I

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/c/d/a$a;->d(I)Lcom/google/android/exoplayer2/c/d/a$b;

    move-result-object v2

    .line 5459
    iget-object v7, v2, Lcom/google/android/exoplayer2/c/d/a$b;->aN:Lcom/google/android/exoplayer2/j/k;

    .line 5610
    const/16 v2, 0x8

    invoke-virtual {v7, v2}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 5611
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v2

    .line 5612
    invoke-static {v2}, Lcom/google/android/exoplayer2/c/d/a;->b(I)I

    move-result v9

    .line 5613
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v2

    .line 5614
    and-int/lit8 v3, v30, 0x4

    if-nez v3, :cond_0

    :goto_1
    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/c/d/e$a;

    .line 5615
    if-nez v2, :cond_1

    .line 5616
    const/4 v2, 0x0

    move-object/from16 v27, v2

    .line 5460
    :goto_2
    if-eqz v27, :cond_33

    .line 5464
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/google/android/exoplayer2/c/d/e$a;->a:Lcom/google/android/exoplayer2/c/d/j;

    move-object/from16 v33, v0

    .line 5465
    move-object/from16 v0, v33

    iget-wide v2, v0, Lcom/google/android/exoplayer2/c/d/j;->s:J

    .line 5466
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/exoplayer2/c/d/e$a;->a()V

    .line 5468
    sget v4, Lcom/google/android/exoplayer2/c/d/a;->v:I

    invoke-virtual {v8, v4}, Lcom/google/android/exoplayer2/c/d/a$a;->d(I)Lcom/google/android/exoplayer2/c/d/a$b;

    move-result-object v4

    .line 5469
    if-eqz v4, :cond_39

    and-int/lit8 v4, v30, 0x2

    if-nez v4, :cond_39

    .line 5470
    sget v2, Lcom/google/android/exoplayer2/c/d/a;->v:I

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/c/d/a$a;->d(I)Lcom/google/android/exoplayer2/c/d/a$b;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/c/d/a$b;->aN:Lcom/google/android/exoplayer2/j/k;

    .line 5646
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 5647
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v3

    .line 5648
    invoke-static {v3}, Lcom/google/android/exoplayer2/c/d/a;->a(I)I

    move-result v3

    .line 5649
    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/j/k;->p()J

    move-result-wide v2

    :goto_3
    move-wide v10, v2

    .line 6509
    :goto_4
    const/4 v4, 0x0

    .line 6510
    const/4 v3, 0x0

    .line 6511
    iget-object v0, v8, Lcom/google/android/exoplayer2/c/d/a$a;->aO:Ljava/util/List;

    move-object/from16 v34, v0

    .line 6512
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v35

    .line 6513
    const/4 v2, 0x0

    move v5, v2

    :goto_5
    move/from16 v0, v35

    if-ge v5, v0, :cond_8

    .line 6514
    move-object/from16 v0, v34

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/c/d/a$b;

    .line 6515
    iget v6, v2, Lcom/google/android/exoplayer2/c/d/a$b;->aM:I

    sget v7, Lcom/google/android/exoplayer2/c/d/a;->y:I

    if-ne v6, v7, :cond_38

    .line 6516
    iget-object v2, v2, Lcom/google/android/exoplayer2/c/d/a$b;->aN:Lcom/google/android/exoplayer2/j/k;

    .line 6517
    const/16 v6, 0xc

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 6518
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v2

    .line 6519
    if-lez v2, :cond_38

    .line 6520
    add-int/2addr v2, v3

    .line 6521
    add-int/lit8 v3, v4, 0x1

    .line 6513
    :goto_6
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v3

    move v3, v2

    goto :goto_5

    .line 5614
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 5618
    :cond_1
    and-int/lit8 v3, v9, 0x1

    if-eqz v3, :cond_2

    .line 5619
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/j/k;->p()J

    move-result-wide v4

    .line 5620
    iget-object v3, v2, Lcom/google/android/exoplayer2/c/d/e$a;->a:Lcom/google/android/exoplayer2/c/d/j;

    iput-wide v4, v3, Lcom/google/android/exoplayer2/c/d/j;->c:J

    .line 5621
    iget-object v3, v2, Lcom/google/android/exoplayer2/c/d/e$a;->a:Lcom/google/android/exoplayer2/c/d/j;

    iput-wide v4, v3, Lcom/google/android/exoplayer2/c/d/j;->d:J

    .line 5624
    :cond_2
    iget-object v10, v2, Lcom/google/android/exoplayer2/c/d/e$a;->d:Lcom/google/android/exoplayer2/c/d/c;

    .line 5625
    and-int/lit8 v3, v9, 0x2

    if-eqz v3, :cond_3

    .line 5627
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v6, v3

    .line 5628
    :goto_7
    and-int/lit8 v3, v9, 0x8

    if-eqz v3, :cond_4

    .line 5629
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v3

    move v5, v3

    .line 5630
    :goto_8
    and-int/lit8 v3, v9, 0x10

    if-eqz v3, :cond_5

    .line 5631
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v3

    move v4, v3

    .line 5632
    :goto_9
    and-int/lit8 v3, v9, 0x20

    if-eqz v3, :cond_6

    .line 5633
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v3

    .line 5634
    :goto_a
    iget-object v7, v2, Lcom/google/android/exoplayer2/c/d/e$a;->a:Lcom/google/android/exoplayer2/c/d/j;

    new-instance v9, Lcom/google/android/exoplayer2/c/d/c;

    invoke-direct {v9, v6, v5, v4, v3}, Lcom/google/android/exoplayer2/c/d/c;-><init>(IIII)V

    iput-object v9, v7, Lcom/google/android/exoplayer2/c/d/j;->a:Lcom/google/android/exoplayer2/c/d/c;

    move-object/from16 v27, v2

    .line 5636
    goto/16 :goto_2

    .line 5627
    :cond_3
    iget v3, v10, Lcom/google/android/exoplayer2/c/d/c;->a:I

    move v6, v3

    goto :goto_7

    .line 5629
    :cond_4
    iget v3, v10, Lcom/google/android/exoplayer2/c/d/c;->b:I

    move v5, v3

    goto :goto_8

    .line 5631
    :cond_5
    iget v3, v10, Lcom/google/android/exoplayer2/c/d/c;->c:I

    move v4, v3

    goto :goto_9

    .line 5633
    :cond_6
    iget v3, v10, Lcom/google/android/exoplayer2/c/d/c;->d:I

    goto :goto_a

    .line 5649
    :cond_7
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/j/k;->h()J

    move-result-wide v2

    goto/16 :goto_3

    .line 6525
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, v27

    iput v2, v0, Lcom/google/android/exoplayer2/c/d/e$a;->g:I

    .line 6526
    const/4 v2, 0x0

    move-object/from16 v0, v27

    iput v2, v0, Lcom/google/android/exoplayer2/c/d/e$a;->f:I

    .line 6527
    const/4 v2, 0x0

    move-object/from16 v0, v27

    iput v2, v0, Lcom/google/android/exoplayer2/c/d/e$a;->e:I

    .line 6528
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/e$a;->a:Lcom/google/android/exoplayer2/c/d/j;

    .line 7131
    iput v4, v2, Lcom/google/android/exoplayer2/c/d/j;->e:I

    .line 7132
    iput v3, v2, Lcom/google/android/exoplayer2/c/d/j;->f:I

    .line 7133
    iget-object v5, v2, Lcom/google/android/exoplayer2/c/d/j;->h:[I

    if-eqz v5, :cond_9

    iget-object v5, v2, Lcom/google/android/exoplayer2/c/d/j;->h:[I

    array-length v5, v5

    if-ge v5, v4, :cond_a

    .line 7134
    :cond_9
    new-array v5, v4, [J

    iput-object v5, v2, Lcom/google/android/exoplayer2/c/d/j;->g:[J

    .line 7135
    new-array v4, v4, [I

    iput-object v4, v2, Lcom/google/android/exoplayer2/c/d/j;->h:[I

    .line 7137
    :cond_a
    iget-object v4, v2, Lcom/google/android/exoplayer2/c/d/j;->i:[I

    if-eqz v4, :cond_b

    iget-object v4, v2, Lcom/google/android/exoplayer2/c/d/j;->i:[I

    array-length v4, v4

    if-ge v4, v3, :cond_c

    .line 7140
    :cond_b
    mul-int/lit8 v3, v3, 0x7d

    div-int/lit8 v3, v3, 0x64

    .line 7141
    new-array v4, v3, [I

    iput-object v4, v2, Lcom/google/android/exoplayer2/c/d/j;->i:[I

    .line 7142
    new-array v4, v3, [I

    iput-object v4, v2, Lcom/google/android/exoplayer2/c/d/j;->j:[I

    .line 7143
    new-array v4, v3, [J

    iput-object v4, v2, Lcom/google/android/exoplayer2/c/d/j;->k:[J

    .line 7144
    new-array v4, v3, [Z

    iput-object v4, v2, Lcom/google/android/exoplayer2/c/d/j;->l:[Z

    .line 7145
    new-array v3, v3, [Z

    iput-object v3, v2, Lcom/google/android/exoplayer2/c/d/j;->n:[Z

    .line 6530
    :cond_c
    const/16 v19, 0x0

    .line 6531
    const/16 v17, 0x0

    .line 6532
    const/4 v2, 0x0

    move/from16 v20, v2

    :goto_b
    move/from16 v0, v20

    move/from16 v1, v35

    if-ge v0, v1, :cond_1e

    .line 6533
    move-object/from16 v0, v34

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/c/d/a$b;

    .line 6534
    iget v3, v2, Lcom/google/android/exoplayer2/c/d/a$b;->aM:I

    sget v4, Lcom/google/android/exoplayer2/c/d/a;->y:I

    if-ne v3, v4, :cond_36

    .line 6535
    add-int/lit8 v18, v19, 0x1

    iget-object v0, v2, Lcom/google/android/exoplayer2/c/d/a$b;->aN:Lcom/google/android/exoplayer2/j/k;

    move-object/from16 v36, v0

    .line 7665
    const/16 v2, 0x8

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 7666
    invoke-virtual/range {v36 .. v36}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v2

    .line 7667
    invoke-static {v2}, Lcom/google/android/exoplayer2/c/d/a;->b(I)I

    move-result v3

    .line 7669
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/google/android/exoplayer2/c/d/e$a;->c:Lcom/google/android/exoplayer2/c/d/h;

    move-object/from16 v22, v0

    .line 7670
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/google/android/exoplayer2/c/d/e$a;->a:Lcom/google/android/exoplayer2/c/d/j;

    move-object/from16 v37, v0

    .line 7671
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/google/android/exoplayer2/c/d/j;->a:Lcom/google/android/exoplayer2/c/d/c;

    move-object/from16 v38, v0

    .line 7673
    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/j;->h:[I

    invoke-virtual/range {v36 .. v36}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v4

    aput v4, v2, v19

    .line 7674
    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/j;->g:[J

    move-object/from16 v0, v37

    iget-wide v4, v0, Lcom/google/android/exoplayer2/c/d/j;->c:J

    aput-wide v4, v2, v19

    .line 7675
    and-int/lit8 v2, v3, 0x1

    if-eqz v2, :cond_d

    .line 7676
    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/j;->g:[J

    aget-wide v4, v2, v19

    invoke-virtual/range {v36 .. v36}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    aput-wide v4, v2, v19

    .line 7679
    :cond_d
    and-int/lit8 v2, v3, 0x4

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    move v9, v2

    .line 7680
    :goto_c
    move-object/from16 v0, v38

    iget v0, v0, Lcom/google/android/exoplayer2/c/d/c;->d:I

    move/from16 v21, v0

    .line 7681
    if-eqz v9, :cond_e

    .line 7682
    invoke-virtual/range {v36 .. v36}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v21

    .line 7685
    :cond_e
    and-int/lit16 v2, v3, 0x100

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    move/from16 v26, v2

    .line 7686
    :goto_d
    and-int/lit16 v2, v3, 0x200

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    move/from16 v25, v2

    .line 7687
    :goto_e
    and-int/lit16 v2, v3, 0x400

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    move/from16 v24, v2

    .line 7688
    :goto_f
    and-int/lit16 v2, v3, 0x800

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    move v12, v2

    .line 7693
    :goto_10
    const-wide/16 v2, 0x0

    .line 7697
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/d/h;->i:[J

    if-eqz v4, :cond_37

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/d/h;->i:[J

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_37

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/d/h;->i:[J

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_37

    .line 7699
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/h;->j:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x3e8

    move-object/from16 v0, v22

    iget-wide v6, v0, Lcom/google/android/exoplayer2/c/d/h;->c:J

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/j/r;->a(JJJ)J

    move-result-wide v2

    move-wide v14, v2

    .line 7702
    :goto_11
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/google/android/exoplayer2/c/d/j;->i:[I

    move-object/from16 v39, v0

    .line 7703
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/google/android/exoplayer2/c/d/j;->j:[I

    move-object/from16 v40, v0

    .line 7704
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/google/android/exoplayer2/c/d/j;->k:[J

    move-object/from16 v41, v0

    .line 7705
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/google/android/exoplayer2/c/d/j;->l:[Z

    move-object/from16 v42, v0

    .line 7707
    move-object/from16 v0, v22

    iget v2, v0, Lcom/google/android/exoplayer2/c/d/h;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_15

    and-int/lit8 v2, v30, 0x1

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    move v13, v2

    .line 7710
    :goto_12
    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/j;->h:[I

    aget v2, v2, v19

    add-int v16, v17, v2

    .line 7711
    move-object/from16 v0, v22

    iget-wide v6, v0, Lcom/google/android/exoplayer2/c/d/h;->c:J

    .line 7712
    if-lez v19, :cond_16

    move-object/from16 v0, v37

    iget-wide v2, v0, Lcom/google/android/exoplayer2/c/d/j;->s:J

    :goto_13
    move/from16 v23, v17

    .line 7713
    :goto_14
    move/from16 v0, v23

    move/from16 v1, v16

    if-ge v0, v1, :cond_1d

    .line 7715
    if-eqz v26, :cond_17

    invoke-virtual/range {v36 .. v36}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v4

    move/from16 v22, v4

    .line 7717
    :goto_15
    if-eqz v25, :cond_18

    invoke-virtual/range {v36 .. v36}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v4

    move/from16 v19, v4

    .line 7718
    :goto_16
    if-nez v23, :cond_19

    if-eqz v9, :cond_19

    move/from16 v17, v21

    .line 7720
    :goto_17
    if-eqz v12, :cond_1b

    .line 7726
    invoke-virtual/range {v36 .. v36}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v4

    .line 7727
    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    div-long/2addr v4, v6

    long-to-int v4, v4

    aput v4, v40, v23

    .line 7731
    :goto_18
    const-wide/16 v4, 0x3e8

    .line 7732
    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/j/r;->a(JJJ)J

    move-result-wide v4

    sub-long/2addr v4, v14

    aput-wide v4, v41, v23

    .line 7733
    aput v19, v39, v23

    .line 7734
    shr-int/lit8 v4, v17, 0x10

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1c

    if-eqz v13, :cond_f

    if-nez v23, :cond_1c

    :cond_f
    const/4 v4, 0x1

    :goto_19
    aput-boolean v4, v42, v23

    .line 7736
    move/from16 v0, v22

    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 7713
    add-int/lit8 v17, v23, 0x1

    move/from16 v23, v17

    goto :goto_14

    .line 7679
    :cond_10
    const/4 v2, 0x0

    move v9, v2

    goto/16 :goto_c

    .line 7685
    :cond_11
    const/4 v2, 0x0

    move/from16 v26, v2

    goto/16 :goto_d

    .line 7686
    :cond_12
    const/4 v2, 0x0

    move/from16 v25, v2

    goto/16 :goto_e

    .line 7687
    :cond_13
    const/4 v2, 0x0

    move/from16 v24, v2

    goto/16 :goto_f

    .line 7688
    :cond_14
    const/4 v2, 0x0

    move v12, v2

    goto/16 :goto_10

    .line 7707
    :cond_15
    const/4 v2, 0x0

    move v13, v2

    goto :goto_12

    :cond_16
    move-wide v2, v10

    .line 7712
    goto :goto_13

    .line 7715
    :cond_17
    move-object/from16 v0, v38

    iget v4, v0, Lcom/google/android/exoplayer2/c/d/c;->b:I

    move/from16 v22, v4

    goto :goto_15

    .line 7717
    :cond_18
    move-object/from16 v0, v38

    iget v4, v0, Lcom/google/android/exoplayer2/c/d/c;->c:I

    move/from16 v19, v4

    goto :goto_16

    .line 7718
    :cond_19
    if-eqz v24, :cond_1a

    .line 7719
    invoke-virtual/range {v36 .. v36}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v4

    move/from16 v17, v4

    goto :goto_17

    :cond_1a
    move-object/from16 v0, v38

    iget v4, v0, Lcom/google/android/exoplayer2/c/d/c;->d:I

    move/from16 v17, v4

    goto :goto_17

    .line 7729
    :cond_1b
    const/4 v4, 0x0

    aput v4, v40, v23

    goto :goto_18

    .line 7734
    :cond_1c
    const/4 v4, 0x0

    goto :goto_19

    .line 7738
    :cond_1d
    move-object/from16 v0, v37

    iput-wide v2, v0, Lcom/google/android/exoplayer2/c/d/j;->s:J

    move/from16 v2, v16

    move/from16 v3, v18

    .line 6532
    :goto_1a
    add-int/lit8 v4, v20, 0x1

    move/from16 v17, v2

    move/from16 v19, v3

    move/from16 v20, v4

    goto/16 :goto_b

    .line 5475
    :cond_1e
    sget v2, Lcom/google/android/exoplayer2/c/d/a;->ab:I

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/c/d/a$a;->d(I)Lcom/google/android/exoplayer2/c/d/a$b;

    move-result-object v2

    .line 5476
    if-eqz v2, :cond_24

    .line 5477
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/d/e$a;->c:Lcom/google/android/exoplayer2/c/d/h;

    iget-object v3, v3, Lcom/google/android/exoplayer2/c/d/h;->h:[Lcom/google/android/exoplayer2/c/d/i;

    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/d/j;->a:Lcom/google/android/exoplayer2/c/d/c;

    iget v4, v4, Lcom/google/android/exoplayer2/c/d/c;->a:I

    aget-object v3, v3, v4

    .line 5479
    iget-object v5, v2, Lcom/google/android/exoplayer2/c/d/a$b;->aN:Lcom/google/android/exoplayer2/j/k;

    .line 8543
    iget v6, v3, Lcom/google/android/exoplayer2/c/d/i;->b:I

    .line 8544
    const/16 v2, 0x8

    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 8545
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v2

    .line 8546
    invoke-static {v2}, Lcom/google/android/exoplayer2/c/d/a;->b(I)I

    move-result v2

    .line 8547
    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f

    .line 8548
    const/16 v2, 0x8

    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 8550
    :cond_1f
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v3

    .line 8552
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v7

    .line 8553
    move-object/from16 v0, v33

    iget v2, v0, Lcom/google/android/exoplayer2/c/d/j;->f:I

    if-eq v7, v2, :cond_20

    .line 8554
    new-instance v2, Lcom/google/android/exoplayer2/j;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Length mismatch: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v33

    iget v4, v0, Lcom/google/android/exoplayer2/c/d/j;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v2

    .line 8557
    :cond_20
    const/4 v2, 0x0

    .line 8558
    if-nez v3, :cond_22

    .line 8559
    move-object/from16 v0, v33

    iget-object v9, v0, Lcom/google/android/exoplayer2/c/d/j;->n:[Z

    .line 8560
    const/4 v3, 0x0

    move v4, v3

    :goto_1b
    if-ge v4, v7, :cond_23

    .line 8561
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v10

    .line 8562
    add-int v3, v2, v10

    .line 8563
    if-le v10, v6, :cond_21

    const/4 v2, 0x1

    :goto_1c
    aput-boolean v2, v9, v4

    .line 8560
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v3

    goto :goto_1b

    .line 8563
    :cond_21
    const/4 v2, 0x0

    goto :goto_1c

    .line 8566
    :cond_22
    if-le v3, v6, :cond_26

    const/4 v2, 0x1

    .line 8567
    :goto_1d
    mul-int/2addr v3, v7

    add-int/lit8 v3, v3, 0x0

    .line 8568
    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/d/j;->n:[Z

    const/4 v5, 0x0

    invoke-static {v4, v5, v7, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    move v2, v3

    .line 8570
    :cond_23
    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/c/d/j;->a(I)V

    .line 5482
    :cond_24
    sget v2, Lcom/google/android/exoplayer2/c/d/a;->ac:I

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/c/d/a$a;->d(I)Lcom/google/android/exoplayer2/c/d/a$b;

    move-result-object v2

    .line 5483
    if-eqz v2, :cond_28

    .line 5484
    iget-object v2, v2, Lcom/google/android/exoplayer2/c/d/a$b;->aN:Lcom/google/android/exoplayer2/j/k;

    .line 8580
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 8581
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v3

    .line 8582
    invoke-static {v3}, Lcom/google/android/exoplayer2/c/d/a;->b(I)I

    move-result v4

    .line 8583
    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_25

    .line 8584
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 8587
    :cond_25
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v4

    .line 8588
    const/4 v5, 0x1

    if-eq v4, v5, :cond_27

    .line 8590
    new-instance v2, Lcom/google/android/exoplayer2/j;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unexpected saio entry count: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v2

    .line 8566
    :cond_26
    const/4 v2, 0x0

    goto :goto_1d

    .line 8593
    :cond_27
    invoke-static {v3}, Lcom/google/android/exoplayer2/c/d/a;->a(I)I

    move-result v3

    .line 8594
    move-object/from16 v0, v33

    iget-wide v4, v0, Lcom/google/android/exoplayer2/c/d/j;->d:J

    if-nez v3, :cond_2b

    .line 8595
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/j/k;->h()J

    move-result-wide v2

    :goto_1e
    add-long/2addr v2, v4

    move-object/from16 v0, v33

    iput-wide v2, v0, Lcom/google/android/exoplayer2/c/d/j;->d:J

    .line 5487
    :cond_28
    sget v2, Lcom/google/android/exoplayer2/c/d/a;->ag:I

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/c/d/a$a;->d(I)Lcom/google/android/exoplayer2/c/d/a$b;

    move-result-object v2

    .line 5488
    if-eqz v2, :cond_29

    .line 5489
    iget-object v2, v2, Lcom/google/android/exoplayer2/c/d/a$b;->aN:Lcom/google/android/exoplayer2/j/k;

    .line 8759
    const/4 v3, 0x0

    move-object/from16 v0, v33

    invoke-static {v2, v3, v0}, Lcom/google/android/exoplayer2/c/d/e;->a(Lcom/google/android/exoplayer2/j/k;ILcom/google/android/exoplayer2/c/d/j;)V

    .line 5492
    :cond_29
    sget v2, Lcom/google/android/exoplayer2/c/d/a;->ad:I

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/c/d/a$a;->d(I)Lcom/google/android/exoplayer2/c/d/a$b;

    move-result-object v2

    .line 5493
    sget v3, Lcom/google/android/exoplayer2/c/d/a;->ae:I

    invoke-virtual {v8, v3}, Lcom/google/android/exoplayer2/c/d/a$a;->d(I)Lcom/google/android/exoplayer2/c/d/a$b;

    move-result-object v3

    .line 5494
    if-eqz v2, :cond_30

    if-eqz v3, :cond_30

    .line 5495
    iget-object v2, v2, Lcom/google/android/exoplayer2/c/d/a$b;->aN:Lcom/google/android/exoplayer2/j/k;

    iget-object v3, v3, Lcom/google/android/exoplayer2/c/d/a$b;->aN:Lcom/google/android/exoplayer2/j/k;

    .line 8786
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 8787
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v4

    .line 8788
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v5

    sget v6, Lcom/google/android/exoplayer2/c/d/e;->b:I

    if-ne v5, v6, :cond_30

    .line 8792
    invoke-static {v4}, Lcom/google/android/exoplayer2/c/d/a;->a(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    .line 8793
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 8795
    :cond_2a
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2c

    .line 8796
    new-instance v2, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v3, "Entry count in sbgp != 1 (unsupported)."

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v2

    .line 8595
    :cond_2b
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/j/k;->p()J

    move-result-wide v2

    goto :goto_1e

    .line 8799
    :cond_2c
    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 8800
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v2

    .line 8801
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v4

    sget v5, Lcom/google/android/exoplayer2/c/d/e;->b:I

    if-ne v4, v5, :cond_30

    .line 8805
    invoke-static {v2}, Lcom/google/android/exoplayer2/c/d/a;->a(I)I

    move-result v2

    .line 8806
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2d

    .line 8807
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->h()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_2e

    .line 8808
    new-instance v2, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v3, "Variable length decription in sgpd found (unsupported)"

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v2

    .line 8810
    :cond_2d
    const/4 v4, 0x2

    if-lt v2, v4, :cond_2e

    .line 8811
    const/4 v2, 0x4

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 8813
    :cond_2e
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->h()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_2f

    .line 8814
    new-instance v2, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v3, "Entry count in sgpd != 1 (unsupported)."

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v2

    .line 8817
    :cond_2f
    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 8818
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_32

    const/4 v2, 0x1

    .line 8819
    :goto_1f
    if-eqz v2, :cond_30

    .line 8822
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v2

    .line 8823
    const/16 v4, 0x10

    new-array v4, v4, [B

    .line 8824
    const/4 v5, 0x0

    const/16 v6, 0x10

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/exoplayer2/j/k;->a([BII)V

    .line 8825
    const/4 v3, 0x1

    move-object/from16 v0, v33

    iput-boolean v3, v0, Lcom/google/android/exoplayer2/c/d/j;->m:Z

    .line 8826
    new-instance v3, Lcom/google/android/exoplayer2/c/d/i;

    const/4 v5, 0x1

    invoke-direct {v3, v5, v2, v4}, Lcom/google/android/exoplayer2/c/d/i;-><init>(ZI[B)V

    move-object/from16 v0, v33

    iput-object v3, v0, Lcom/google/android/exoplayer2/c/d/j;->o:Lcom/google/android/exoplayer2/c/d/i;

    .line 5498
    :cond_30
    iget-object v2, v8, Lcom/google/android/exoplayer2/c/d/a$a;->aO:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 5499
    const/4 v2, 0x0

    move v3, v2

    :goto_20
    if-ge v3, v4, :cond_33

    .line 5500
    iget-object v2, v8, Lcom/google/android/exoplayer2/c/d/a$a;->aO:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/c/d/a$b;

    .line 5501
    iget v5, v2, Lcom/google/android/exoplayer2/c/d/a$b;->aM:I

    sget v6, Lcom/google/android/exoplayer2/c/d/a;->af:I

    if-ne v5, v6, :cond_31

    .line 5502
    iget-object v2, v2, Lcom/google/android/exoplayer2/c/d/a$b;->aN:Lcom/google/android/exoplayer2/j/k;

    .line 9744
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 9745
    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object/from16 v0, v31

    invoke-virtual {v2, v0, v5, v6}, Lcom/google/android/exoplayer2/j/k;->a([BII)V

    .line 9748
    sget-object v5, Lcom/google/android/exoplayer2/c/d/e;->c:[B

    move-object/from16 v0, v31

    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 9755
    const/16 v5, 0x10

    move-object/from16 v0, v33

    invoke-static {v2, v5, v0}, Lcom/google/android/exoplayer2/c/d/e;->a(Lcom/google/android/exoplayer2/j/k;ILcom/google/android/exoplayer2/c/d/j;)V

    .line 5499
    :cond_31
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_20

    .line 8818
    :cond_32
    const/4 v2, 0x0

    goto :goto_1f

    .line 5444
    :cond_33
    add-int/lit8 v2, v28, 0x1

    move/from16 v28, v2

    goto/16 :goto_0

    .line 407
    :cond_34
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/a$a;->aO:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/exoplayer2/c/d/e;->a(Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v27

    .line 408
    if-eqz v27, :cond_35

    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->f:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v29

    .line 410
    const/4 v2, 0x0

    move/from16 v28, v2

    :goto_21
    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_35

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->f:Landroid/util/SparseArray;

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/c/d/e$a;

    .line 10177
    iget-object v0, v2, Lcom/google/android/exoplayer2/c/d/e$a;->b:Lcom/google/android/exoplayer2/c/o;

    move-object/from16 v30, v0

    iget-object v2, v2, Lcom/google/android/exoplayer2/c/d/e$a;->c:Lcom/google/android/exoplayer2/c/d/h;

    iget-object v2, v2, Lcom/google/android/exoplayer2/c/d/h;->f:Lcom/google/android/exoplayer2/Format;

    .line 10415
    new-instance v3, Lcom/google/android/exoplayer2/Format;

    iget-object v4, v2, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    iget-object v5, v2, Lcom/google/android/exoplayer2/Format;->d:Ljava/lang/String;

    iget-object v6, v2, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    iget-object v7, v2, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    iget v8, v2, Lcom/google/android/exoplayer2/Format;->b:I

    iget v9, v2, Lcom/google/android/exoplayer2/Format;->f:I

    iget v10, v2, Lcom/google/android/exoplayer2/Format;->i:I

    iget v11, v2, Lcom/google/android/exoplayer2/Format;->j:I

    iget v12, v2, Lcom/google/android/exoplayer2/Format;->k:F

    iget v13, v2, Lcom/google/android/exoplayer2/Format;->l:I

    iget v14, v2, Lcom/google/android/exoplayer2/Format;->m:F

    iget-object v15, v2, Lcom/google/android/exoplayer2/Format;->o:[B

    iget v0, v2, Lcom/google/android/exoplayer2/Format;->n:I

    move/from16 v16, v0

    iget v0, v2, Lcom/google/android/exoplayer2/Format;->p:I

    move/from16 v17, v0

    iget v0, v2, Lcom/google/android/exoplayer2/Format;->q:I

    move/from16 v18, v0

    iget v0, v2, Lcom/google/android/exoplayer2/Format;->r:I

    move/from16 v19, v0

    iget v0, v2, Lcom/google/android/exoplayer2/Format;->s:I

    move/from16 v20, v0

    iget v0, v2, Lcom/google/android/exoplayer2/Format;->t:I

    move/from16 v21, v0

    iget v0, v2, Lcom/google/android/exoplayer2/Format;->v:I

    move/from16 v22, v0

    iget-object v0, v2, Lcom/google/android/exoplayer2/Format;->w:Ljava/lang/String;

    move-object/from16 v23, v0

    iget-wide v0, v2, Lcom/google/android/exoplayer2/Format;->u:J

    move-wide/from16 v24, v0

    iget-object v0, v2, Lcom/google/android/exoplayer2/Format;->g:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-direct/range {v3 .. v27}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;JLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;)V

    .line 10177
    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 410
    add-int/lit8 v2, v28, 0x1

    move/from16 v28, v2

    goto :goto_21

    .line 414
    :cond_35
    return-void

    :cond_36
    move/from16 v2, v17

    move/from16 v3, v19

    goto/16 :goto_1a

    :cond_37
    move-wide v14, v2

    goto/16 :goto_11

    :cond_38
    move v2, v3

    move v3, v4

    goto/16 :goto_6

    :cond_39
    move-wide v10, v2

    goto/16 :goto_4
.end method

.method private static a(Lcom/google/android/exoplayer2/j/k;ILcom/google/android/exoplayer2/c/d/j;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/j;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 764
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 765
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v0

    .line 766
    invoke-static {v0}, Lcom/google/android/exoplayer2/c/d/a;->b(I)I

    move-result v0

    .line 768
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    .line 770
    new-instance v0, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v1, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v0

    .line 773
    :cond_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 774
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v2

    .line 775
    iget v3, p2, Lcom/google/android/exoplayer2/c/d/j;->f:I

    if-eq v2, v3, :cond_2

    .line 776
    new-instance v0, Lcom/google/android/exoplayer2/j;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Length mismatch: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/google/android/exoplayer2/c/d/j;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    .line 773
    goto :goto_0

    .line 779
    :cond_2
    iget-object v3, p2, Lcom/google/android/exoplayer2/c/d/j;->n:[Z

    invoke-static {v3, v1, v2, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 780
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/c/d/j;->a(I)V

    .line 11184
    iget-object v0, p2, Lcom/google/android/exoplayer2/c/d/j;->q:Lcom/google/android/exoplayer2/j/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    iget v2, p2, Lcom/google/android/exoplayer2/c/d/j;->p:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/j/k;->a([BII)V

    .line 11185
    iget-object v0, p2, Lcom/google/android/exoplayer2/c/d/j;->q:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 11186
    iput-boolean v1, p2, Lcom/google/android/exoplayer2/c/d/j;->r:Z

    .line 782
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/c/g;Lcom/google/android/exoplayer2/c/l;)I
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 215
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/c/d/e;->n:I

    packed-switch v2, :pswitch_data_0

    .line 4925
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/c/d/e;->n:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_20

    .line 4926
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->u:Lcom/google/android/exoplayer2/c/d/e$a;

    if-nez v2, :cond_1e

    .line 4927
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/c/d/e;->f:Landroid/util/SparseArray;

    .line 5045
    const/4 v3, 0x0

    .line 5046
    const-wide v6, 0x7fffffffffffffffL

    .line 5048
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 5049
    const/4 v2, 0x0

    move v8, v2

    :goto_1
    if-ge v8, v10, :cond_1a

    .line 5050
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/c/d/e$a;

    .line 5051
    iget v4, v2, Lcom/google/android/exoplayer2/c/d/e$a;->g:I

    iget-object v5, v2, Lcom/google/android/exoplayer2/c/d/e$a;->a:Lcom/google/android/exoplayer2/c/d/j;

    iget v5, v5, Lcom/google/android/exoplayer2/c/d/j;->e:I

    if-eq v4, v5, :cond_2f

    .line 5054
    iget-object v4, v2, Lcom/google/android/exoplayer2/c/d/e$a;->a:Lcom/google/android/exoplayer2/c/d/j;

    iget-object v4, v4, Lcom/google/android/exoplayer2/c/d/j;->g:[J

    iget v5, v2, Lcom/google/android/exoplayer2/c/d/e$a;->g:I

    aget-wide v4, v4, v5

    .line 5055
    cmp-long v11, v4, v6

    if-gez v11, :cond_2f

    move-wide/from16 v21, v4

    move-object v4, v2

    move-wide/from16 v2, v21

    .line 5049
    :goto_2
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    move-wide v6, v2

    move-object v3, v4

    goto :goto_1

    .line 1241
    :pswitch_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/c/d/e;->q:I

    if-nez v2, :cond_2

    .line 1243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->k:Lcom/google/android/exoplayer2/j/k;

    iget-object v2, v2, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/c/g;->a([BIIZ)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1244
    const/4 v2, 0x0

    .line 217
    :goto_3
    if-nez v2, :cond_0

    .line 218
    const/4 v2, -0x1

    .line 229
    :goto_4
    return v2

    .line 1246
    :cond_1
    const/16 v2, 0x8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/c/d/e;->q:I

    .line 1247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->k:Lcom/google/android/exoplayer2/j/k;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 1248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->k:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/j/k;->h()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/exoplayer2/c/d/e;->p:J

    .line 1249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->k:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/c/d/e;->o:I

    .line 1252
    :cond_2
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer2/c/d/e;->p:J

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 1255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->k:Lcom/google/android/exoplayer2/j/k;

    iget-object v2, v2, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/16 v3, 0x8

    const/16 v4, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4}, Lcom/google/android/exoplayer2/c/g;->b([BII)V

    .line 1256
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/c/d/e;->q:I

    add-int/lit8 v2, v2, 0x8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/c/d/e;->q:I

    .line 1257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->k:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/j/k;->p()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/exoplayer2/c/d/e;->p:J

    .line 1260
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/c/g;->c()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/c/d/e;->q:I

    int-to-long v4, v4

    sub-long v4, v2, v4

    .line 1261
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/c/d/e;->o:I

    sget v3, Lcom/google/android/exoplayer2/c/d/a;->J:I

    if-ne v2, v3, :cond_4

    .line 1263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->f:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 1264
    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v6, :cond_4

    .line 1265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/c/d/e$a;

    iget-object v2, v2, Lcom/google/android/exoplayer2/c/d/e$a;->a:Lcom/google/android/exoplayer2/c/d/j;

    .line 1266
    iput-wide v4, v2, Lcom/google/android/exoplayer2/c/d/j;->b:J

    .line 1267
    iput-wide v4, v2, Lcom/google/android/exoplayer2/c/d/j;->d:J

    .line 1268
    iput-wide v4, v2, Lcom/google/android/exoplayer2/c/d/j;->c:J

    .line 1264
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_5

    .line 1272
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/c/d/e;->o:I

    sget v3, Lcom/google/android/exoplayer2/c/d/a;->h:I

    if-ne v2, v3, :cond_6

    .line 1273
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->u:Lcom/google/android/exoplayer2/c/d/e$a;

    .line 1274
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer2/c/d/e;->p:J

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/exoplayer2/c/d/e;->s:J

    .line 1275
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/c/d/e;->z:Z

    if-nez v2, :cond_5

    .line 1276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->y:Lcom/google/android/exoplayer2/c/h;

    new-instance v3, Lcom/google/android/exoplayer2/c/m$a;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/c/d/e;->t:J

    invoke-direct {v3, v4, v5}, Lcom/google/android/exoplayer2/c/m$a;-><init>(J)V

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/c/h;->a(Lcom/google/android/exoplayer2/c/m;)V

    .line 1277
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/c/d/e;->z:Z

    .line 1279
    :cond_5
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/c/d/e;->n:I

    .line 1310
    :goto_6
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 1283
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/c/d/e;->o:I

    .line 2138
    sget v3, Lcom/google/android/exoplayer2/c/d/a;->A:I

    if-eq v2, v3, :cond_7

    sget v3, Lcom/google/android/exoplayer2/c/d/a;->C:I

    if-eq v2, v3, :cond_7

    sget v3, Lcom/google/android/exoplayer2/c/d/a;->D:I

    if-eq v2, v3, :cond_7

    sget v3, Lcom/google/android/exoplayer2/c/d/a;->E:I

    if-eq v2, v3, :cond_7

    sget v3, Lcom/google/android/exoplayer2/c/d/a;->F:I

    if-eq v2, v3, :cond_7

    sget v3, Lcom/google/android/exoplayer2/c/d/a;->J:I

    if-eq v2, v3, :cond_7

    sget v3, Lcom/google/android/exoplayer2/c/d/a;->K:I

    if-eq v2, v3, :cond_7

    sget v3, Lcom/google/android/exoplayer2/c/d/a;->L:I

    if-eq v2, v3, :cond_7

    sget v3, Lcom/google/android/exoplayer2/c/d/a;->O:I

    if-ne v2, v3, :cond_8

    :cond_7
    const/4 v2, 0x1

    .line 1283
    :goto_7
    if-eqz v2, :cond_a

    .line 1284
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/c/g;->c()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/c/d/e;->p:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x8

    sub-long/2addr v2, v4

    .line 1285
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/d/e;->m:Ljava/util/Stack;

    new-instance v5, Lcom/google/android/exoplayer2/c/d/a$a;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/c/d/e;->o:I

    invoke-direct {v5, v6, v2, v3}, Lcom/google/android/exoplayer2/c/d/a$a;-><init>(IJ)V

    invoke-virtual {v4, v5}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 1286
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/c/d/e;->p:J

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/c/d/e;->q:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_9

    .line 1287
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/c/d/e;->a(J)V

    goto :goto_6

    .line 2138
    :cond_8
    const/4 v2, 0x0

    goto :goto_7

    .line 1290
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/c/d/e;->a()V

    goto :goto_6

    .line 1292
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/c/d/e;->o:I

    .line 3127
    sget v3, Lcom/google/android/exoplayer2/c/d/a;->R:I

    if-eq v2, v3, :cond_b

    sget v3, Lcom/google/android/exoplayer2/c/d/a;->Q:I

    if-eq v2, v3, :cond_b

    sget v3, Lcom/google/android/exoplayer2/c/d/a;->B:I

    if-eq v2, v3, :cond_b

    sget v3, Lcom/google/android/exoplayer2/c/d/a;->z:I

    if-eq v2, v3, :cond_b

    sget v3, Lcom/google/android/exoplayer2/c/d/a;->S:I

    if-eq v2, v3, :cond_b

    sget v3, Lcom/google/android/exoplayer2/c/d/a;->v:I

    if-eq v2, v3, :cond_b

    sget v3, Lcom/google/android/exoplayer2/c/d/a;->w:I

    if-eq v2, v3, :cond_b

    sget v3, Lcom/google/android/exoplayer2/c/d/a;->N:I

    if-eq v2, v3, :cond_b

    sget v3, Lcom/google/android/exoplayer2/c/d/a;->x:I

    if-eq v2, v3, :cond_b

    sget v3, Lcom/google/android/exoplayer2/c/d/a;->y:I

    if-eq v2, v3, :cond_b

    sget v3, Lcom/google/android/exoplayer2/c/d/a;->T:I

    if-eq v2, v3, :cond_b

    sget v3, Lcom/google/android/exoplayer2/c/d/a;->ab:I

    if-eq v2, v3, :cond_b

    sget v3, Lcom/google/android/exoplayer2/c/d/a;->ac:I

    if-eq v2, v3, :cond_b

    sget v3, Lcom/google/android/exoplayer2/c/d/a;->ag:I

    if-eq v2, v3, :cond_b

    sget v3, Lcom/google/android/exoplayer2/c/d/a;->af:I

    if-eq v2, v3, :cond_b

    sget v3, Lcom/google/android/exoplayer2/c/d/a;->ad:I

    if-eq v2, v3, :cond_b

    sget v3, Lcom/google/android/exoplayer2/c/d/a;->ae:I

    if-eq v2, v3, :cond_b

    sget v3, Lcom/google/android/exoplayer2/c/d/a;->P:I

    if-eq v2, v3, :cond_b

    sget v3, Lcom/google/android/exoplayer2/c/d/a;->M:I

    if-ne v2, v3, :cond_c

    :cond_b
    const/4 v2, 0x1

    .line 1292
    :goto_8
    if-eqz v2, :cond_f

    .line 1293
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/c/d/e;->q:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_d

    .line 1294
    new-instance v2, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v3, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3127
    :cond_c
    const/4 v2, 0x0

    goto :goto_8

    .line 1296
    :cond_d
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer2/c/d/e;->p:J

    const-wide/32 v4, 0x7fffffff

    cmp-long v2, v2, v4

    if-lez v2, :cond_e

    .line 1297
    new-instance v2, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v3, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1299
    :cond_e
    new-instance v2, Lcom/google/android/exoplayer2/j/k;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/c/d/e;->p:J

    long-to-int v3, v4

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/j/k;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->r:Lcom/google/android/exoplayer2/j/k;

    .line 1300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->k:Lcom/google/android/exoplayer2/j/k;

    iget-object v2, v2, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/d/e;->r:Lcom/google/android/exoplayer2/j/k;

    iget-object v4, v4, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1301
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/c/d/e;->n:I

    goto/16 :goto_6

    .line 1303
    :cond_f
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer2/c/d/e;->p:J

    const-wide/32 v4, 0x7fffffff

    cmp-long v2, v2, v4

    if-lez v2, :cond_10

    .line 1304
    new-instance v2, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v3, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1306
    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->r:Lcom/google/android/exoplayer2/j/k;

    .line 1307
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/c/d/e;->n:I

    goto/16 :goto_6

    .line 3314
    :pswitch_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer2/c/d/e;->p:J

    long-to-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/c/d/e;->q:I

    sub-int/2addr v2, v3

    .line 3315
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/d/e;->r:Lcom/google/android/exoplayer2/j/k;

    if-eqz v3, :cond_16

    .line 3316
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/d/e;->r:Lcom/google/android/exoplayer2/j/k;

    iget-object v3, v3, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/16 v4, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v2}, Lcom/google/android/exoplayer2/c/g;->b([BII)V

    .line 3317
    new-instance v3, Lcom/google/android/exoplayer2/c/d/a$b;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/c/d/e;->o:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/d/e;->r:Lcom/google/android/exoplayer2/j/k;

    invoke-direct {v3, v2, v4}, Lcom/google/android/exoplayer2/c/d/a$b;-><init>(ILcom/google/android/exoplayer2/j/k;)V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/c/g;->c()J

    move-result-wide v8

    .line 3332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->m:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    .line 3333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->m:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/c/d/a$a;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/c/d/a$a;->a(Lcom/google/android/exoplayer2/c/d/a$b;)V

    .line 3321
    :cond_11
    :goto_9
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/c/g;->c()J

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/c/d/e;->a(J)V

    goto/16 :goto_0

    .line 3334
    :cond_12
    iget v2, v3, Lcom/google/android/exoplayer2/c/d/a$b;->aM:I

    sget v4, Lcom/google/android/exoplayer2/c/d/a;->z:I

    if-ne v2, v4, :cond_11

    .line 3335
    iget-object v11, v3, Lcom/google/android/exoplayer2/c/d/a$b;->aN:Lcom/google/android/exoplayer2/j/k;

    .line 3834
    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 3835
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v2

    .line 3836
    invoke-static {v2}, Lcom/google/android/exoplayer2/c/d/a;->a(I)I

    move-result v2

    .line 3838
    const/4 v3, 0x4

    invoke-virtual {v11, v3}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 3839
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/j/k;->h()J

    move-result-wide v6

    .line 3842
    if-nez v2, :cond_13

    .line 3843
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/j/k;->h()J

    move-result-wide v4

    .line 3844
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/j/k;->h()J

    move-result-wide v2

    add-long/2addr v2, v8

    move-wide v8, v2

    move-wide v2, v4

    .line 3850
    :goto_a
    const/4 v4, 0x2

    invoke-virtual {v11, v4}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 3852
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/j/k;->e()I

    move-result v12

    .line 3853
    new-array v13, v12, [I

    .line 3854
    new-array v14, v12, [J

    .line 3855
    new-array v15, v12, [J

    .line 3856
    new-array v0, v12, [J

    move-object/from16 v16, v0

    .line 3859
    const-wide/32 v4, 0xf4240

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/j/r;->a(JJJ)J

    move-result-wide v4

    .line 3860
    const/4 v10, 0x0

    move-wide/from16 v21, v4

    move-wide v4, v2

    move-wide/from16 v2, v21

    :goto_b
    if-ge v10, v12, :cond_15

    .line 3861
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v17

    .line 3863
    const/high16 v18, -0x80000000

    and-int v18, v18, v17

    .line 3864
    if-eqz v18, :cond_14

    .line 3865
    new-instance v2, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v3, "Unhandled indirect reference"

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3846
    :cond_13
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/j/k;->p()J

    move-result-wide v4

    .line 3847
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/j/k;->p()J

    move-result-wide v2

    add-long/2addr v2, v8

    move-wide v8, v2

    move-wide v2, v4

    goto :goto_a

    .line 3867
    :cond_14
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/j/k;->h()J

    move-result-wide v18

    .line 3869
    const v20, 0x7fffffff

    and-int v17, v17, v20

    aput v17, v13, v10

    .line 3870
    aput-wide v8, v14, v10

    .line 3874
    aput-wide v2, v16, v10

    .line 3875
    add-long v2, v4, v18

    .line 3876
    const-wide/32 v4, 0xf4240

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/j/r;->a(JJJ)J

    move-result-wide v4

    .line 3877
    aget-wide v18, v16, v10

    sub-long v18, v4, v18

    aput-wide v18, v15, v10

    .line 3879
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 3880
    aget v17, v13, v10

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v8, v8, v18

    .line 3860
    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v21, v4

    move-wide v4, v2

    move-wide/from16 v2, v21

    goto :goto_b

    .line 3883
    :cond_15
    new-instance v2, Lcom/google/android/exoplayer2/c/a;

    move-object/from16 v0, v16

    invoke-direct {v2, v13, v14, v15, v0}, Lcom/google/android/exoplayer2/c/a;-><init>([I[J[J[J)V

    .line 3336
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/d/e;->y:Lcom/google/android/exoplayer2/c/h;

    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/c/h;->a(Lcom/google/android/exoplayer2/c/m;)V

    .line 3337
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/c/d/e;->z:Z

    goto/16 :goto_9

    .line 3319
    :cond_16
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/c/g;->b(I)V

    goto/16 :goto_9

    .line 3887
    :pswitch_2
    const/4 v3, 0x0

    .line 3888
    const-wide v4, 0x7fffffffffffffffL

    .line 3889
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->f:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 3890
    const/4 v2, 0x0

    move v6, v2

    :goto_c
    if-ge v6, v7, :cond_17

    .line 3891
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/c/d/e$a;

    iget-object v2, v2, Lcom/google/android/exoplayer2/c/d/e$a;->a:Lcom/google/android/exoplayer2/c/d/j;

    .line 3892
    iget-boolean v8, v2, Lcom/google/android/exoplayer2/c/d/j;->r:Z

    if-eqz v8, :cond_30

    iget-wide v8, v2, Lcom/google/android/exoplayer2/c/d/j;->d:J

    cmp-long v8, v8, v4

    if-gez v8, :cond_30

    .line 3894
    iget-wide v4, v2, Lcom/google/android/exoplayer2/c/d/j;->d:J

    .line 3895
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/c/d/e$a;

    move-wide/from16 v21, v4

    move-object v4, v2

    move-wide/from16 v2, v21

    .line 3890
    :goto_d
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move-wide/from16 v21, v2

    move-object v3, v4

    move-wide/from16 v4, v21

    goto :goto_c

    .line 3898
    :cond_17
    if-nez v3, :cond_18

    .line 3899
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/c/d/e;->n:I

    goto/16 :goto_0

    .line 3902
    :cond_18
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/c/g;->c()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v2, v4

    .line 3903
    if-gez v2, :cond_19

    .line 3904
    new-instance v2, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v3, "Offset to encryption data was negative."

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3906
    :cond_19
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/c/g;->b(I)V

    .line 3907
    iget-object v2, v3, Lcom/google/android/exoplayer2/c/d/e$a;->a:Lcom/google/android/exoplayer2/c/d/j;

    .line 4173
    iget-object v3, v2, Lcom/google/android/exoplayer2/c/d/j;->q:Lcom/google/android/exoplayer2/j/k;

    iget-object v3, v3, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/4 v4, 0x0

    iget v5, v2, Lcom/google/android/exoplayer2/c/d/j;->p:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5}, Lcom/google/android/exoplayer2/c/g;->b([BII)V

    .line 4174
    iget-object v3, v2, Lcom/google/android/exoplayer2/c/d/j;->q:Lcom/google/android/exoplayer2/j/k;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 4175
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/android/exoplayer2/c/d/j;->r:Z

    goto/16 :goto_0

    .line 4928
    :cond_1a
    if-nez v3, :cond_1c

    .line 4931
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer2/c/d/e;->s:J

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/c/g;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    .line 4932
    if-gez v2, :cond_1b

    .line 4933
    new-instance v2, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v3, "Offset to end of mdat was negative."

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4935
    :cond_1b
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/c/g;->b(I)V

    .line 4936
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/c/d/e;->a()V

    .line 4937
    const/4 v2, 0x0

    .line 228
    :goto_e
    if-eqz v2, :cond_0

    .line 229
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 4940
    :cond_1c
    iget-object v2, v3, Lcom/google/android/exoplayer2/c/d/e$a;->a:Lcom/google/android/exoplayer2/c/d/j;

    iget-object v2, v2, Lcom/google/android/exoplayer2/c/d/j;->g:[J

    iget v4, v3, Lcom/google/android/exoplayer2/c/d/e$a;->g:I

    aget-wide v4, v2, v4

    .line 4943
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/c/g;->c()J

    move-result-wide v6

    sub-long v6, v4, v6

    long-to-int v2, v6

    .line 4944
    if-gez v2, :cond_1d

    .line 4945
    iget-object v2, v3, Lcom/google/android/exoplayer2/c/d/e$a;->a:Lcom/google/android/exoplayer2/c/d/j;

    iget-wide v6, v2, Lcom/google/android/exoplayer2/c/d/j;->b:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_21

    .line 4947
    const-string/jumbo v2, "FragmentedMp4Extractor"

    const-string/jumbo v4, "Offset to sample data was missing."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4948
    const/4 v2, 0x0

    .line 4953
    :cond_1d
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/c/g;->b(I)V

    .line 4954
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/exoplayer2/c/d/e;->u:Lcom/google/android/exoplayer2/c/d/e$a;

    .line 4956
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->u:Lcom/google/android/exoplayer2/c/d/e$a;

    iget-object v2, v2, Lcom/google/android/exoplayer2/c/d/e$a;->a:Lcom/google/android/exoplayer2/c/d/j;

    iget-object v2, v2, Lcom/google/android/exoplayer2/c/d/j;->i:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/d/e;->u:Lcom/google/android/exoplayer2/c/d/e$a;

    iget v3, v3, Lcom/google/android/exoplayer2/c/d/e$a;->e:I

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/c/d/e;->v:I

    .line 4958
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->u:Lcom/google/android/exoplayer2/c/d/e$a;

    iget-object v2, v2, Lcom/google/android/exoplayer2/c/d/e$a;->a:Lcom/google/android/exoplayer2/c/d/j;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/c/d/j;->m:Z

    if-eqz v2, :cond_25

    .line 4959
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/d/e;->u:Lcom/google/android/exoplayer2/c/d/e$a;

    .line 5073
    iget-object v4, v3, Lcom/google/android/exoplayer2/c/d/e$a;->a:Lcom/google/android/exoplayer2/c/d/j;

    .line 5074
    iget-object v5, v4, Lcom/google/android/exoplayer2/c/d/j;->q:Lcom/google/android/exoplayer2/j/k;

    .line 5075
    iget-object v2, v4, Lcom/google/android/exoplayer2/c/d/j;->a:Lcom/google/android/exoplayer2/c/d/c;

    iget v2, v2, Lcom/google/android/exoplayer2/c/d/c;->a:I

    .line 5076
    iget-object v6, v4, Lcom/google/android/exoplayer2/c/d/j;->o:Lcom/google/android/exoplayer2/c/d/i;

    if-eqz v6, :cond_22

    iget-object v2, v4, Lcom/google/android/exoplayer2/c/d/j;->o:Lcom/google/android/exoplayer2/c/d/i;

    .line 5079
    :goto_f
    iget v6, v2, Lcom/google/android/exoplayer2/c/d/i;->b:I

    .line 5080
    iget-object v2, v4, Lcom/google/android/exoplayer2/c/d/j;->n:[Z

    iget v4, v3, Lcom/google/android/exoplayer2/c/d/e$a;->e:I

    aget-boolean v4, v2, v4

    .line 5084
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->i:Lcom/google/android/exoplayer2/j/k;

    iget-object v7, v2, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/4 v8, 0x0

    if-eqz v4, :cond_23

    const/16 v2, 0x80

    :goto_10
    or-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, v7, v8

    .line 5085
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->i:Lcom/google/android/exoplayer2/j/k;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 5086
    iget-object v2, v3, Lcom/google/android/exoplayer2/c/d/e$a;->b:Lcom/google/android/exoplayer2/c/o;

    .line 5087
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/d/e;->i:Lcom/google/android/exoplayer2/j/k;

    const/4 v7, 0x1

    invoke-interface {v2, v3, v7}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/j/k;I)V

    .line 5089
    invoke-interface {v2, v5, v6}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/j/k;I)V

    .line 5091
    if-nez v4, :cond_24

    .line 5092
    add-int/lit8 v2, v6, 0x1

    .line 4959
    :goto_11
    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/c/d/e;->w:I

    .line 4960
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/c/d/e;->v:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/c/d/e;->w:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/c/d/e;->v:I

    .line 4964
    :goto_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->u:Lcom/google/android/exoplayer2/c/d/e$a;

    iget-object v2, v2, Lcom/google/android/exoplayer2/c/d/e$a;->c:Lcom/google/android/exoplayer2/c/d/h;

    iget v2, v2, Lcom/google/android/exoplayer2/c/d/h;->g:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f

    .line 4965
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/c/d/e;->v:I

    add-int/lit8 v2, v2, -0x8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/c/d/e;->v:I

    .line 4966
    const/16 v2, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/c/g;->b(I)V

    .line 4968
    :cond_1f
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/c/d/e;->n:I

    .line 4969
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/c/d/e;->x:I

    .line 4972
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->u:Lcom/google/android/exoplayer2/c/d/e$a;

    iget-object v12, v2, Lcom/google/android/exoplayer2/c/d/e$a;->a:Lcom/google/android/exoplayer2/c/d/j;

    .line 4973
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->u:Lcom/google/android/exoplayer2/c/d/e$a;

    iget-object v5, v2, Lcom/google/android/exoplayer2/c/d/e$a;->c:Lcom/google/android/exoplayer2/c/d/h;

    .line 4974
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->u:Lcom/google/android/exoplayer2/c/d/e$a;

    iget-object v3, v2, Lcom/google/android/exoplayer2/c/d/e$a;->b:Lcom/google/android/exoplayer2/c/o;

    .line 4975
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->u:Lcom/google/android/exoplayer2/c/d/e$a;

    iget v4, v2, Lcom/google/android/exoplayer2/c/d/e$a;->e:I

    .line 4976
    iget v2, v5, Lcom/google/android/exoplayer2/c/d/h;->k:I

    if-eqz v2, :cond_27

    .line 4979
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->h:Lcom/google/android/exoplayer2/j/k;

    iget-object v2, v2, Lcom/google/android/exoplayer2/j/k;->a:[B

    .line 4980
    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-byte v7, v2, v6

    .line 4981
    const/4 v6, 0x1

    const/4 v7, 0x0

    aput-byte v7, v2, v6

    .line 4982
    const/4 v6, 0x2

    const/4 v7, 0x0

    aput-byte v7, v2, v6

    .line 4983
    iget v2, v5, Lcom/google/android/exoplayer2/c/d/h;->k:I

    .line 4984
    iget v6, v5, Lcom/google/android/exoplayer2/c/d/h;->k:I

    rsub-int/lit8 v6, v6, 0x4

    .line 4988
    :goto_13
    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer2/c/d/e;->w:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer2/c/d/e;->v:I

    if-ge v7, v8, :cond_28

    .line 4989
    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer2/c/d/e;->x:I

    if-nez v7, :cond_26

    .line 4991
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/c/d/e;->h:Lcom/google/android/exoplayer2/j/k;

    iget-object v7, v7, Lcom/google/android/exoplayer2/j/k;->a:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v6, v2}, Lcom/google/android/exoplayer2/c/g;->b([BII)V

    .line 4992
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/c/d/e;->h:Lcom/google/android/exoplayer2/j/k;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 4993
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/c/d/e;->h:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/google/android/exoplayer2/c/d/e;->x:I

    .line 4995
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/c/d/e;->g:Lcom/google/android/exoplayer2/j/k;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 4996
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/c/d/e;->g:Lcom/google/android/exoplayer2/j/k;

    const/4 v8, 0x4

    invoke-interface {v3, v7, v8}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/j/k;I)V

    .line 4997
    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer2/c/d/e;->w:I

    add-int/lit8 v7, v7, 0x4

    move-object/from16 v0, p0

    iput v7, v0, Lcom/google/android/exoplayer2/c/d/e;->w:I

    .line 4998
    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer2/c/d/e;->v:I

    add-int/2addr v7, v6

    move-object/from16 v0, p0

    iput v7, v0, Lcom/google/android/exoplayer2/c/d/e;->v:I

    goto :goto_13

    .line 4950
    :cond_21
    new-instance v2, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v3, "Offset to sample data was negative."

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5076
    :cond_22
    iget-object v6, v3, Lcom/google/android/exoplayer2/c/d/e$a;->c:Lcom/google/android/exoplayer2/c/d/h;

    iget-object v6, v6, Lcom/google/android/exoplayer2/c/d/h;->h:[Lcom/google/android/exoplayer2/c/d/i;

    aget-object v2, v6, v2

    goto/16 :goto_f

    .line 5084
    :cond_23
    const/4 v2, 0x0

    goto/16 :goto_10

    .line 5095
    :cond_24
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/j/k;->e()I

    move-result v3

    .line 5096
    const/4 v4, -0x2

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 5097
    mul-int/lit8 v3, v3, 0x6

    add-int/lit8 v3, v3, 0x2

    .line 5098
    invoke-interface {v2, v5, v3}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/j/k;I)V

    .line 5099
    add-int/lit8 v2, v6, 0x1

    add-int/2addr v2, v3

    goto/16 :goto_11

    .line 4962
    :cond_25
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/c/d/e;->w:I

    goto/16 :goto_12

    .line 5001
    :cond_26
    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer2/c/d/e;->x:I

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v7, v8}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/c/g;IZ)I

    move-result v7

    .line 5002
    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer2/c/d/e;->w:I

    add-int/2addr v8, v7

    move-object/from16 v0, p0

    iput v8, v0, Lcom/google/android/exoplayer2/c/d/e;->w:I

    .line 5003
    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer2/c/d/e;->x:I

    sub-int v7, v8, v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/google/android/exoplayer2/c/d/e;->x:I

    goto/16 :goto_13

    .line 5007
    :cond_27
    :goto_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/c/d/e;->w:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/c/d/e;->v:I

    if-ge v2, v6, :cond_28

    .line 5008
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/c/d/e;->v:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/c/d/e;->w:I

    sub-int/2addr v2, v6

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v2, v6}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/c/g;IZ)I

    move-result v2

    .line 5009
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/c/d/e;->w:I

    add-int/2addr v2, v6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/c/d/e;->w:I

    goto :goto_14

    .line 5190
    :cond_28
    iget-object v2, v12, Lcom/google/android/exoplayer2/c/d/j;->k:[J

    aget-wide v6, v2, v4

    iget-object v2, v12, Lcom/google/android/exoplayer2/c/d/j;->j:[I

    aget v2, v2, v4

    int-to-long v8, v2

    add-long/2addr v6, v8

    .line 5013
    const-wide/16 v8, 0x3e8

    mul-long v10, v6, v8

    .line 5014
    iget-boolean v2, v12, Lcom/google/android/exoplayer2/c/d/j;->m:Z

    if-eqz v2, :cond_2b

    const/high16 v2, 0x40000000    # 2.0f

    :goto_15
    iget-object v6, v12, Lcom/google/android/exoplayer2/c/d/j;->l:[Z

    aget-boolean v4, v6, v4

    if-eqz v4, :cond_2c

    const/4 v4, 0x1

    :goto_16
    or-int v6, v2, v4

    .line 5016
    iget-object v2, v12, Lcom/google/android/exoplayer2/c/d/j;->a:Lcom/google/android/exoplayer2/c/d/c;

    iget v2, v2, Lcom/google/android/exoplayer2/c/d/c;->a:I

    .line 5017
    const/4 v9, 0x0

    .line 5018
    iget-boolean v4, v12, Lcom/google/android/exoplayer2/c/d/j;->m:Z

    if-eqz v4, :cond_29

    .line 5019
    iget-object v4, v12, Lcom/google/android/exoplayer2/c/d/j;->o:Lcom/google/android/exoplayer2/c/d/i;

    if-eqz v4, :cond_2d

    iget-object v2, v12, Lcom/google/android/exoplayer2/c/d/j;->o:Lcom/google/android/exoplayer2/c/d/i;

    iget-object v2, v2, Lcom/google/android/exoplayer2/c/d/i;->c:[B

    :goto_17
    move-object v9, v2

    .line 5023
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->j:Lcom/google/android/exoplayer2/c/n;

    if-eqz v2, :cond_2e

    .line 5024
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->j:Lcom/google/android/exoplayer2/c/n;

    invoke-virtual {v2, v10, v11}, Lcom/google/android/exoplayer2/c/n;->b(J)J

    move-result-wide v4

    .line 5026
    :goto_18
    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer2/c/d/e;->v:I

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer2/c/o;->a(JIII[B)V

    .line 5028
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->u:Lcom/google/android/exoplayer2/c/d/e$a;

    iget v3, v2, Lcom/google/android/exoplayer2/c/d/e$a;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/exoplayer2/c/d/e$a;->e:I

    .line 5029
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->u:Lcom/google/android/exoplayer2/c/d/e$a;

    iget v3, v2, Lcom/google/android/exoplayer2/c/d/e$a;->f:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/exoplayer2/c/d/e$a;->f:I

    .line 5030
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->u:Lcom/google/android/exoplayer2/c/d/e$a;

    iget v2, v2, Lcom/google/android/exoplayer2/c/d/e$a;->f:I

    iget-object v3, v12, Lcom/google/android/exoplayer2/c/d/j;->h:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/d/e;->u:Lcom/google/android/exoplayer2/c/d/e$a;

    iget v4, v4, Lcom/google/android/exoplayer2/c/d/e$a;->g:I

    aget v3, v3, v4

    if-ne v2, v3, :cond_2a

    .line 5032
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->u:Lcom/google/android/exoplayer2/c/d/e$a;

    iget v3, v2, Lcom/google/android/exoplayer2/c/d/e$a;->g:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/exoplayer2/c/d/e$a;->g:I

    .line 5033
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->u:Lcom/google/android/exoplayer2/c/d/e$a;

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/android/exoplayer2/c/d/e$a;->f:I

    .line 5034
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer2/c/d/e;->u:Lcom/google/android/exoplayer2/c/d/e$a;

    .line 5036
    :cond_2a
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/c/d/e;->n:I

    .line 5037
    const/4 v2, 0x1

    goto/16 :goto_e

    .line 5014
    :cond_2b
    const/4 v2, 0x0

    goto :goto_15

    :cond_2c
    const/4 v4, 0x0

    goto :goto_16

    .line 5019
    :cond_2d
    iget-object v4, v5, Lcom/google/android/exoplayer2/c/d/h;->h:[Lcom/google/android/exoplayer2/c/d/i;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/c/d/i;->c:[B

    goto :goto_17

    :cond_2e
    move-wide v4, v10

    goto :goto_18

    :cond_2f
    move-object v4, v3

    move-wide v2, v6

    goto/16 :goto_2

    :cond_30
    move-wide/from16 v21, v4

    move-object v4, v3

    move-wide/from16 v2, v21

    goto/16 :goto_d

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/google/android/exoplayer2/c/h;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 187
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/d/e;->y:Lcom/google/android/exoplayer2/c/h;

    .line 188
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d/e;->e:Lcom/google/android/exoplayer2/c/d/h;

    if-eqz v0, :cond_0

    .line 189
    new-instance v0, Lcom/google/android/exoplayer2/c/d/e$a;

    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/c/h;->a(I)Lcom/google/android/exoplayer2/c/o;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/c/d/e$a;-><init>(Lcom/google/android/exoplayer2/c/o;)V

    .line 190
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/d/e;->e:Lcom/google/android/exoplayer2/c/d/h;

    new-instance v2, Lcom/google/android/exoplayer2/c/d/c;

    invoke-direct {v2, v3, v3, v3, v3}, Lcom/google/android/exoplayer2/c/d/c;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/c/d/e$a;->a(Lcom/google/android/exoplayer2/c/d/h;Lcom/google/android/exoplayer2/c/d/c;)V

    .line 191
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/d/e;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d/e;->y:Lcom/google/android/exoplayer2/c/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/c/h;->b()V

    .line 194
    :cond_0
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
    .line 182
    invoke-static {p1}, Lcom/google/android/exoplayer2/c/d/g;->a(Lcom/google/android/exoplayer2/c/g;)Z

    move-result v0

    return v0
.end method

.method public final b(J)V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d/e;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 199
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 200
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d/e;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/c/d/e$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c/d/e$a;->a()V

    .line 199
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d/e;->m:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 203
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/d/e;->a()V

    .line 204
    return-void
.end method
