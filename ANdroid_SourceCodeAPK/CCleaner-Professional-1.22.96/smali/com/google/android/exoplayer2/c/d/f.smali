.class public final Lcom/google/android/exoplayer2/c/d/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/c/f;
.implements Lcom/google/android/exoplayer2/c/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/c/d/f$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/exoplayer2/c/i;

.field private static final b:I


# instance fields
.field private final c:Lcom/google/android/exoplayer2/j/k;

.field private final d:Lcom/google/android/exoplayer2/j/k;

.field private final e:Lcom/google/android/exoplayer2/j/k;

.field private final f:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/exoplayer2/c/d/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:J

.field private j:I

.field private k:Lcom/google/android/exoplayer2/j/k;

.field private l:I

.field private m:I

.field private n:Lcom/google/android/exoplayer2/c/h;

.field private o:[Lcom/google/android/exoplayer2/c/d/f$a;

.field private p:J

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/google/android/exoplayer2/c/d/f$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/c/d/f$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/c/d/f;->a:Lcom/google/android/exoplayer2/c/i;

    .line 63
    const-string/jumbo v0, "qt  "

    invoke-static {v0}, Lcom/google/android/exoplayer2/j/r;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/c/d/f;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j/k;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/d/f;->e:Lcom/google/android/exoplayer2/j/k;

    .line 95
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/d/f;->f:Ljava/util/Stack;

    .line 96
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    sget-object v1, Lcom/google/android/exoplayer2/j/i;->a:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j/k;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/d/f;->c:Lcom/google/android/exoplayer2/j/k;

    .line 97
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j/k;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/d/f;->d:Lcom/google/android/exoplayer2/j/k;

    .line 98
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/d/f;->c()V

    .line 99
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/c/d/f;->g:I

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/c/d/f;->j:I

    .line 190
    return-void
.end method

.method private c(J)V
    .locals 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/j;
        }
    .end annotation

    .prologue
    .line 268
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/d/f;->f:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/d/f;->f:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/c/d/a$a;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/c/d/a$a;->aN:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_6

    .line 269
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/d/f;->f:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v30, v4

    check-cast v30, Lcom/google/android/exoplayer2/c/d/a$a;

    .line 270
    move-object/from16 v0, v30

    iget v4, v0, Lcom/google/android/exoplayer2/c/d/a$a;->aM:I

    sget v5, Lcom/google/android/exoplayer2/c/d/a;->A:I

    if-ne v4, v5, :cond_5

    .line 4309
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 4310
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 4313
    new-instance v35, Lcom/google/android/exoplayer2/c/j;

    invoke-direct/range {v35 .. v35}, Lcom/google/android/exoplayer2/c/j;-><init>()V

    .line 4314
    sget v4, Lcom/google/android/exoplayer2/c/d/a;->az:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/c/d/a$a;->d(I)Lcom/google/android/exoplayer2/c/d/a$b;

    move-result-object v4

    .line 4315
    if-eqz v4, :cond_1

    .line 4316
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/exoplayer2/c/d/f;->q:Z

    move-object/from16 v0, v35

    invoke-static {v4, v5, v0}, Lcom/google/android/exoplayer2/c/d/b;->a(Lcom/google/android/exoplayer2/c/d/a$b;ZLcom/google/android/exoplayer2/c/j;)V

    .line 4319
    :cond_1
    const/4 v4, 0x0

    move/from16 v31, v4

    move-wide/from16 v32, v6

    :goto_1
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/d/a$a;->aP:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v31

    if-ge v0, v4, :cond_4

    .line 4320
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/d/a$a;->aP:Ljava/util/List;

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/c/d/a$a;

    .line 4321
    iget v5, v4, Lcom/google/android/exoplayer2/c/d/a$a;->aM:I

    sget v6, Lcom/google/android/exoplayer2/c/d/a;->C:I

    if-ne v5, v6, :cond_3

    .line 4325
    sget v5, Lcom/google/android/exoplayer2/c/d/a;->B:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/c/d/a$a;->d(I)Lcom/google/android/exoplayer2/c/d/a$b;

    move-result-object v5

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/google/android/exoplayer2/c/d/f;->q:Z

    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/c/d/b;->a(Lcom/google/android/exoplayer2/c/d/a$a;Lcom/google/android/exoplayer2/c/d/a$b;JLcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/c/d/h;

    move-result-object v36

    .line 4327
    if-eqz v36, :cond_3

    .line 4331
    sget v5, Lcom/google/android/exoplayer2/c/d/a;->D:I

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/c/d/a$a;->e(I)Lcom/google/android/exoplayer2/c/d/a$a;

    move-result-object v4

    sget v5, Lcom/google/android/exoplayer2/c/d/a;->E:I

    .line 4332
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/c/d/a$a;->e(I)Lcom/google/android/exoplayer2/c/d/a$a;

    move-result-object v4

    sget v5, Lcom/google/android/exoplayer2/c/d/a;->F:I

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/c/d/a$a;->e(I)Lcom/google/android/exoplayer2/c/d/a$a;

    move-result-object v4

    .line 4333
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-static {v0, v4, v1}, Lcom/google/android/exoplayer2/c/d/b;->a(Lcom/google/android/exoplayer2/c/d/h;Lcom/google/android/exoplayer2/c/d/a$a;Lcom/google/android/exoplayer2/c/j;)Lcom/google/android/exoplayer2/c/d/k;

    move-result-object v4

    .line 4334
    iget v5, v4, Lcom/google/android/exoplayer2/c/d/k;->a:I

    if-eqz v5, :cond_3

    .line 4338
    new-instance v37, Lcom/google/android/exoplayer2/c/d/f$a;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/c/d/f;->n:Lcom/google/android/exoplayer2/c/h;

    move/from16 v0, v31

    invoke-interface {v5, v0}, Lcom/google/android/exoplayer2/c/h;->a(I)Lcom/google/android/exoplayer2/c/o;

    move-result-object v5

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/exoplayer2/c/d/f$a;-><init>(Lcom/google/android/exoplayer2/c/d/h;Lcom/google/android/exoplayer2/c/d/k;Lcom/google/android/exoplayer2/c/o;)V

    .line 4341
    iget v4, v4, Lcom/google/android/exoplayer2/c/d/k;->d:I

    add-int/lit8 v11, v4, 0x1e

    .line 4342
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/d/h;->f:Lcom/google/android/exoplayer2/Format;

    .line 4370
    new-instance v5, Lcom/google/android/exoplayer2/Format;

    iget-object v6, v4, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/exoplayer2/Format;->d:Ljava/lang/String;

    iget-object v8, v4, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    iget-object v9, v4, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    iget v10, v4, Lcom/google/android/exoplayer2/Format;->b:I

    iget v12, v4, Lcom/google/android/exoplayer2/Format;->i:I

    iget v13, v4, Lcom/google/android/exoplayer2/Format;->j:I

    iget v14, v4, Lcom/google/android/exoplayer2/Format;->k:F

    iget v15, v4, Lcom/google/android/exoplayer2/Format;->l:I

    iget v0, v4, Lcom/google/android/exoplayer2/Format;->m:F

    move/from16 v16, v0

    iget-object v0, v4, Lcom/google/android/exoplayer2/Format;->o:[B

    move-object/from16 v17, v0

    iget v0, v4, Lcom/google/android/exoplayer2/Format;->n:I

    move/from16 v18, v0

    iget v0, v4, Lcom/google/android/exoplayer2/Format;->p:I

    move/from16 v19, v0

    iget v0, v4, Lcom/google/android/exoplayer2/Format;->q:I

    move/from16 v20, v0

    iget v0, v4, Lcom/google/android/exoplayer2/Format;->r:I

    move/from16 v21, v0

    iget v0, v4, Lcom/google/android/exoplayer2/Format;->s:I

    move/from16 v22, v0

    iget v0, v4, Lcom/google/android/exoplayer2/Format;->t:I

    move/from16 v23, v0

    iget v0, v4, Lcom/google/android/exoplayer2/Format;->v:I

    move/from16 v24, v0

    iget-object v0, v4, Lcom/google/android/exoplayer2/Format;->w:Ljava/lang/String;

    move-object/from16 v25, v0

    iget-wide v0, v4, Lcom/google/android/exoplayer2/Format;->u:J

    move-wide/from16 v26, v0

    iget-object v0, v4, Lcom/google/android/exoplayer2/Format;->g:Ljava/util/List;

    move-object/from16 v28, v0

    iget-object v0, v4, Lcom/google/android/exoplayer2/Format;->h:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v29, v0

    invoke-direct/range {v5 .. v29}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;JLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;)V

    .line 4343
    move-object/from16 v0, v36

    iget v4, v0, Lcom/google/android/exoplayer2/c/d/h;->b:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/exoplayer2/c/j;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4344
    move-object/from16 v0, v35

    iget v0, v0, Lcom/google/android/exoplayer2/c/j;->a:I

    move/from16 v22, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/google/android/exoplayer2/c/j;->b:I

    move/from16 v23, v0

    .line 4408
    new-instance v4, Lcom/google/android/exoplayer2/Format;

    iget-object v6, v5, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    iget-object v7, v5, Lcom/google/android/exoplayer2/Format;->d:Ljava/lang/String;

    iget-object v8, v5, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    iget-object v9, v5, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    iget v10, v5, Lcom/google/android/exoplayer2/Format;->b:I

    iget v11, v5, Lcom/google/android/exoplayer2/Format;->f:I

    iget v12, v5, Lcom/google/android/exoplayer2/Format;->i:I

    iget v13, v5, Lcom/google/android/exoplayer2/Format;->j:I

    iget v14, v5, Lcom/google/android/exoplayer2/Format;->k:F

    iget v15, v5, Lcom/google/android/exoplayer2/Format;->l:I

    iget v0, v5, Lcom/google/android/exoplayer2/Format;->m:F

    move/from16 v16, v0

    iget-object v0, v5, Lcom/google/android/exoplayer2/Format;->o:[B

    move-object/from16 v17, v0

    iget v0, v5, Lcom/google/android/exoplayer2/Format;->n:I

    move/from16 v18, v0

    iget v0, v5, Lcom/google/android/exoplayer2/Format;->p:I

    move/from16 v19, v0

    iget v0, v5, Lcom/google/android/exoplayer2/Format;->q:I

    move/from16 v20, v0

    iget v0, v5, Lcom/google/android/exoplayer2/Format;->r:I

    move/from16 v21, v0

    iget v0, v5, Lcom/google/android/exoplayer2/Format;->v:I

    move/from16 v24, v0

    iget-object v0, v5, Lcom/google/android/exoplayer2/Format;->w:Ljava/lang/String;

    move-object/from16 v25, v0

    iget-wide v0, v5, Lcom/google/android/exoplayer2/Format;->u:J

    move-wide/from16 v26, v0

    iget-object v0, v5, Lcom/google/android/exoplayer2/Format;->g:Ljava/util/List;

    move-object/from16 v28, v0

    iget-object v0, v5, Lcom/google/android/exoplayer2/Format;->h:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v29, v0

    move-object v5, v4

    invoke-direct/range {v5 .. v29}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;JLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;)V

    move-object v5, v4

    .line 4347
    :cond_2
    move-object/from16 v0, v37

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/d/f$a;->c:Lcom/google/android/exoplayer2/c/o;

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 4349
    move-object/from16 v0, v36

    iget-wide v4, v0, Lcom/google/android/exoplayer2/c/d/h;->e:J

    move-wide/from16 v0, v32

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v32

    .line 4350
    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move-wide/from16 v6, v32

    .line 4319
    add-int/lit8 v4, v31, 0x1

    move/from16 v31, v4

    move-wide/from16 v32, v6

    goto/16 :goto_1

    .line 4357
    :cond_4
    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/exoplayer2/c/d/f;->p:J

    .line 4358
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/google/android/exoplayer2/c/d/f$a;

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/android/exoplayer2/c/d/f$a;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer2/c/d/f;->o:[Lcom/google/android/exoplayer2/c/d/f$a;

    .line 4359
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/d/f;->n:Lcom/google/android/exoplayer2/c/h;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/c/h;->b()V

    .line 4360
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/d/f;->n:Lcom/google/android/exoplayer2/c/h;

    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Lcom/google/android/exoplayer2/c/h;->a(Lcom/google/android/exoplayer2/c/m;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/d/f;->f:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->clear()V

    .line 274
    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer2/c/d/f;->g:I

    goto/16 :goto_0

    .line 275
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/d/f;->f:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 276
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/d/f;->f:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/c/d/a$a;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/c/d/a$a;->a(Lcom/google/android/exoplayer2/c/d/a$a;)V

    goto/16 :goto_0

    .line 279
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/c/d/f;->g:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_7

    .line 280
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/c/d/f;->c()V

    .line 282
    :cond_7
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/c/g;Lcom/google/android/exoplayer2/c/l;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 129
    :cond_0
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/c/d/f;->g:I

    packed-switch v0, :pswitch_data_0

    .line 3452
    const/4 v3, -0x1

    .line 3453
    const-wide v0, 0x7fffffffffffffffL

    .line 3454
    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/c/d/f;->o:[Lcom/google/android/exoplayer2/c/d/f$a;

    array-length v4, v4

    if-ge v2, v4, :cond_16

    .line 3455
    iget-object v4, p0, Lcom/google/android/exoplayer2/c/d/f;->o:[Lcom/google/android/exoplayer2/c/d/f$a;

    aget-object v4, v4, v2

    .line 3456
    iget v5, v4, Lcom/google/android/exoplayer2/c/d/f$a;->d:I

    .line 3457
    iget-object v6, v4, Lcom/google/android/exoplayer2/c/d/f$a;->b:Lcom/google/android/exoplayer2/c/d/k;

    iget v6, v6, Lcom/google/android/exoplayer2/c/d/k;->a:I

    if-eq v5, v6, :cond_1

    .line 3461
    iget-object v4, v4, Lcom/google/android/exoplayer2/c/d/f$a;->b:Lcom/google/android/exoplayer2/c/d/k;

    iget-object v4, v4, Lcom/google/android/exoplayer2/c/d/k;->b:[J

    aget-wide v4, v4, v5

    .line 3462
    cmp-long v6, v4, v0

    if-gez v6, :cond_1

    move-wide v0, v4

    move v3, v2

    .line 3454
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 131
    :pswitch_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c/g;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 132
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/d/f;->c()V

    goto :goto_0

    .line 134
    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/c/d/f;->g:I

    goto :goto_0

    .line 1193
    :pswitch_1
    iget v0, p0, Lcom/google/android/exoplayer2/c/d/f;->j:I

    if-nez v0, :cond_4

    .line 1195
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d/f;->e:Lcom/google/android/exoplayer2/j/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/c/g;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1196
    const/4 v0, 0x0

    .line 138
    :goto_2
    if-nez v0, :cond_0

    .line 139
    const/4 v0, -0x1

    .line 3399
    :goto_3
    return v0

    .line 1198
    :cond_3
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/android/exoplayer2/c/d/f;->j:I

    .line 1199
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d/f;->e:Lcom/google/android/exoplayer2/j/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 1200
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d/f;->e:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/d/f;->i:J

    .line 1201
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d/f;->e:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/c/d/f;->h:I

    .line 1204
    :cond_4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/d/f;->i:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 1207
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d/f;->e:Lcom/google/android/exoplayer2/j/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/16 v1, 0x8

    const/16 v2, 0x8

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/c/g;->b([BII)V

    .line 1208
    iget v0, p0, Lcom/google/android/exoplayer2/c/d/f;->j:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/exoplayer2/c/d/f;->j:I

    .line 1209
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d/f;->e:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->p()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/d/f;->i:J

    .line 1212
    :cond_5
    iget v0, p0, Lcom/google/android/exoplayer2/c/d/f;->h:I

    .line 1487
    sget v1, Lcom/google/android/exoplayer2/c/d/a;->A:I

    if-eq v0, v1, :cond_6

    sget v1, Lcom/google/android/exoplayer2/c/d/a;->C:I

    if-eq v0, v1, :cond_6

    sget v1, Lcom/google/android/exoplayer2/c/d/a;->D:I

    if-eq v0, v1, :cond_6

    sget v1, Lcom/google/android/exoplayer2/c/d/a;->E:I

    if-eq v0, v1, :cond_6

    sget v1, Lcom/google/android/exoplayer2/c/d/a;->F:I

    if-eq v0, v1, :cond_6

    sget v1, Lcom/google/android/exoplayer2/c/d/a;->O:I

    if-ne v0, v1, :cond_7

    :cond_6
    const/4 v0, 0x1

    .line 1212
    :goto_4
    if-eqz v0, :cond_9

    .line 1213
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c/g;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/d/f;->i:J

    add-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/exoplayer2/c/d/f;->j:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 1214
    iget-object v2, p0, Lcom/google/android/exoplayer2/c/d/f;->f:Ljava/util/Stack;

    new-instance v3, Lcom/google/android/exoplayer2/c/d/a$a;

    iget v4, p0, Lcom/google/android/exoplayer2/c/d/f;->h:I

    invoke-direct {v3, v4, v0, v1}, Lcom/google/android/exoplayer2/c/d/a$a;-><init>(IJ)V

    invoke-virtual {v2, v3}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 1215
    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/d/f;->i:J

    iget v4, p0, Lcom/google/android/exoplayer2/c/d/f;->j:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    .line 1216
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/c/d/f;->c(J)V

    .line 1234
    :goto_5
    const/4 v0, 0x1

    goto :goto_2

    .line 1487
    :cond_7
    const/4 v0, 0x0

    goto :goto_4

    .line 1219
    :cond_8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/d/f;->c()V

    goto :goto_5

    .line 1221
    :cond_9
    iget v0, p0, Lcom/google/android/exoplayer2/c/d/f;->h:I

    .line 2475
    sget v1, Lcom/google/android/exoplayer2/c/d/a;->Q:I

    if-eq v0, v1, :cond_a

    sget v1, Lcom/google/android/exoplayer2/c/d/a;->B:I

    if-eq v0, v1, :cond_a

    sget v1, Lcom/google/android/exoplayer2/c/d/a;->R:I

    if-eq v0, v1, :cond_a

    sget v1, Lcom/google/android/exoplayer2/c/d/a;->S:I

    if-eq v0, v1, :cond_a

    sget v1, Lcom/google/android/exoplayer2/c/d/a;->al:I

    if-eq v0, v1, :cond_a

    sget v1, Lcom/google/android/exoplayer2/c/d/a;->am:I

    if-eq v0, v1, :cond_a

    sget v1, Lcom/google/android/exoplayer2/c/d/a;->an:I

    if-eq v0, v1, :cond_a

    sget v1, Lcom/google/android/exoplayer2/c/d/a;->P:I

    if-eq v0, v1, :cond_a

    sget v1, Lcom/google/android/exoplayer2/c/d/a;->ao:I

    if-eq v0, v1, :cond_a

    sget v1, Lcom/google/android/exoplayer2/c/d/a;->ap:I

    if-eq v0, v1, :cond_a

    sget v1, Lcom/google/android/exoplayer2/c/d/a;->aq:I

    if-eq v0, v1, :cond_a

    sget v1, Lcom/google/android/exoplayer2/c/d/a;->ar:I

    if-eq v0, v1, :cond_a

    sget v1, Lcom/google/android/exoplayer2/c/d/a;->as:I

    if-eq v0, v1, :cond_a

    sget v1, Lcom/google/android/exoplayer2/c/d/a;->N:I

    if-eq v0, v1, :cond_a

    sget v1, Lcom/google/android/exoplayer2/c/d/a;->a:I

    if-eq v0, v1, :cond_a

    sget v1, Lcom/google/android/exoplayer2/c/d/a;->az:I

    if-ne v0, v1, :cond_b

    :cond_a
    const/4 v0, 0x1

    .line 1221
    :goto_6
    if-eqz v0, :cond_e

    .line 1224
    iget v0, p0, Lcom/google/android/exoplayer2/c/d/f;->j:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/j/a;->b(Z)V

    .line 1225
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/d/f;->i:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_d

    const/4 v0, 0x1

    :goto_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/j/a;->b(Z)V

    .line 1226
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/d/f;->i:J

    long-to-int v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j/k;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/d/f;->k:Lcom/google/android/exoplayer2/j/k;

    .line 1227
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d/f;->e:Lcom/google/android/exoplayer2/j/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/exoplayer2/c/d/f;->k:Lcom/google/android/exoplayer2/j/k;

    iget-object v2, v2, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1228
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/c/d/f;->g:I

    goto :goto_5

    .line 2475
    :cond_b
    const/4 v0, 0x0

    goto :goto_6

    .line 1224
    :cond_c
    const/4 v0, 0x0

    goto :goto_7

    .line 1225
    :cond_d
    const/4 v0, 0x0

    goto :goto_8

    .line 1230
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/d/f;->k:Lcom/google/android/exoplayer2/j/k;

    .line 1231
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/c/d/f;->g:I

    goto/16 :goto_5

    .line 3244
    :pswitch_2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/d/f;->i:J

    iget v2, p0, Lcom/google/android/exoplayer2/c/d/f;->j:I

    int-to-long v2, v2

    sub-long v2, v0, v2

    .line 3245
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c/g;->c()J

    move-result-wide v0

    add-long v4, v0, v2

    .line 3246
    const/4 v1, 0x0

    .line 3247
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d/f;->k:Lcom/google/android/exoplayer2/j/k;

    if-eqz v0, :cond_13

    .line 3248
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d/f;->k:Lcom/google/android/exoplayer2/j/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    iget v6, p0, Lcom/google/android/exoplayer2/c/d/f;->j:I

    long-to-int v2, v2

    invoke-interface {p1, v0, v6, v2}, Lcom/google/android/exoplayer2/c/g;->b([BII)V

    .line 3249
    iget v0, p0, Lcom/google/android/exoplayer2/c/d/f;->h:I

    sget v2, Lcom/google/android/exoplayer2/c/d/a;->a:I

    if-ne v0, v2, :cond_12

    .line 3250
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d/f;->k:Lcom/google/android/exoplayer2/j/k;

    .line 3291
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 3292
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v2

    .line 3293
    sget v3, Lcom/google/android/exoplayer2/c/d/f;->b:I

    if-ne v2, v3, :cond_f

    .line 3294
    const/4 v0, 0x1

    .line 3250
    :goto_9
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/d/f;->q:Z

    move v0, v1

    .line 3263
    :goto_a
    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer2/c/d/f;->c(J)V

    .line 3264
    if-eqz v0, :cond_15

    iget v0, p0, Lcom/google/android/exoplayer2/c/d/f;->g:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_15

    const/4 v0, 0x1

    .line 143
    :goto_b
    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 3296
    :cond_f
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 3297
    :cond_10
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v2

    if-lez v2, :cond_11

    .line 3298
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v2

    sget v3, Lcom/google/android/exoplayer2/c/d/f;->b:I

    if-ne v2, v3, :cond_10

    .line 3299
    const/4 v0, 0x1

    goto :goto_9

    .line 3302
    :cond_11
    const/4 v0, 0x0

    goto :goto_9

    .line 3251
    :cond_12
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d/f;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 3252
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d/f;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/c/d/a$a;

    new-instance v2, Lcom/google/android/exoplayer2/c/d/a$b;

    iget v3, p0, Lcom/google/android/exoplayer2/c/d/f;->h:I

    iget-object v6, p0, Lcom/google/android/exoplayer2/c/d/f;->k:Lcom/google/android/exoplayer2/j/k;

    invoke-direct {v2, v3, v6}, Lcom/google/android/exoplayer2/c/d/a$b;-><init>(ILcom/google/android/exoplayer2/j/k;)V

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/c/d/a$a;->a(Lcom/google/android/exoplayer2/c/d/a$b;)V

    move v0, v1

    goto :goto_a

    .line 3256
    :cond_13
    const-wide/32 v6, 0x40000

    cmp-long v0, v2, v6

    if-gez v0, :cond_14

    .line 3257
    long-to-int v0, v2

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/c/g;->b(I)V

    move v0, v1

    goto :goto_a

    .line 3259
    :cond_14
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c/g;->c()J

    move-result-wide v0

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/google/android/exoplayer2/c/l;->a:J

    .line 3260
    const/4 v0, 0x1

    goto :goto_a

    .line 3264
    :cond_15
    const/4 v0, 0x0

    goto :goto_b

    .line 3382
    :cond_16
    const/4 v0, -0x1

    if-ne v3, v0, :cond_17

    .line 3383
    const/4 v0, -0x1

    goto/16 :goto_3

    .line 3385
    :cond_17
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d/f;->o:[Lcom/google/android/exoplayer2/c/d/f$a;

    aget-object v8, v0, v3

    .line 3386
    iget-object v1, v8, Lcom/google/android/exoplayer2/c/d/f$a;->c:Lcom/google/android/exoplayer2/c/o;

    .line 3387
    iget v4, v8, Lcom/google/android/exoplayer2/c/d/f$a;->d:I

    .line 3388
    iget-object v0, v8, Lcom/google/android/exoplayer2/c/d/f$a;->b:Lcom/google/android/exoplayer2/c/d/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/c/d/k;->b:[J

    aget-wide v2, v0, v4

    .line 3389
    iget-object v0, v8, Lcom/google/android/exoplayer2/c/d/f$a;->b:Lcom/google/android/exoplayer2/c/d/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/c/d/k;->c:[I

    aget v0, v0, v4

    .line 3390
    iget-object v5, v8, Lcom/google/android/exoplayer2/c/d/f$a;->a:Lcom/google/android/exoplayer2/c/d/h;

    iget v5, v5, Lcom/google/android/exoplayer2/c/d/h;->g:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_18

    .line 3393
    const-wide/16 v6, 0x8

    add-long/2addr v2, v6

    .line 3394
    add-int/lit8 v0, v0, -0x8

    .line 3396
    :cond_18
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c/g;->c()J

    move-result-wide v6

    sub-long v6, v2, v6

    iget v5, p0, Lcom/google/android/exoplayer2/c/d/f;->l:I

    int-to-long v10, v5

    add-long/2addr v6, v10

    .line 3397
    const-wide/16 v10, 0x0

    cmp-long v5, v6, v10

    if-ltz v5, :cond_19

    const-wide/32 v10, 0x40000

    cmp-long v5, v6, v10

    if-ltz v5, :cond_1a

    .line 3398
    :cond_19
    iput-wide v2, p2, Lcom/google/android/exoplayer2/c/l;->a:J

    .line 3399
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 3401
    :cond_1a
    long-to-int v2, v6

    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/c/g;->b(I)V

    .line 3402
    iget-object v2, v8, Lcom/google/android/exoplayer2/c/d/f$a;->a:Lcom/google/android/exoplayer2/c/d/h;

    iget v2, v2, Lcom/google/android/exoplayer2/c/d/h;->k:I

    if-eqz v2, :cond_1d

    .line 3405
    iget-object v2, p0, Lcom/google/android/exoplayer2/c/d/f;->d:Lcom/google/android/exoplayer2/j/k;

    iget-object v2, v2, Lcom/google/android/exoplayer2/j/k;->a:[B

    .line 3406
    const/4 v3, 0x0

    const/4 v5, 0x0

    aput-byte v5, v2, v3

    .line 3407
    const/4 v3, 0x1

    const/4 v5, 0x0

    aput-byte v5, v2, v3

    .line 3408
    const/4 v3, 0x2

    const/4 v5, 0x0

    aput-byte v5, v2, v3

    .line 3409
    iget-object v2, v8, Lcom/google/android/exoplayer2/c/d/f$a;->a:Lcom/google/android/exoplayer2/c/d/h;

    iget v2, v2, Lcom/google/android/exoplayer2/c/d/h;->k:I

    .line 3410
    iget-object v3, v8, Lcom/google/android/exoplayer2/c/d/f$a;->a:Lcom/google/android/exoplayer2/c/d/h;

    iget v3, v3, Lcom/google/android/exoplayer2/c/d/h;->k:I

    rsub-int/lit8 v3, v3, 0x4

    .line 3414
    :goto_c
    iget v5, p0, Lcom/google/android/exoplayer2/c/d/f;->l:I

    if-ge v5, v0, :cond_1c

    .line 3415
    iget v5, p0, Lcom/google/android/exoplayer2/c/d/f;->m:I

    if-nez v5, :cond_1b

    .line 3417
    iget-object v5, p0, Lcom/google/android/exoplayer2/c/d/f;->d:Lcom/google/android/exoplayer2/j/k;

    iget-object v5, v5, Lcom/google/android/exoplayer2/j/k;->a:[B

    invoke-interface {p1, v5, v3, v2}, Lcom/google/android/exoplayer2/c/g;->b([BII)V

    .line 3418
    iget-object v5, p0, Lcom/google/android/exoplayer2/c/d/f;->d:Lcom/google/android/exoplayer2/j/k;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 3419
    iget-object v5, p0, Lcom/google/android/exoplayer2/c/d/f;->d:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v5

    iput v5, p0, Lcom/google/android/exoplayer2/c/d/f;->m:I

    .line 3421
    iget-object v5, p0, Lcom/google/android/exoplayer2/c/d/f;->c:Lcom/google/android/exoplayer2/j/k;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 3422
    iget-object v5, p0, Lcom/google/android/exoplayer2/c/d/f;->c:Lcom/google/android/exoplayer2/j/k;

    const/4 v6, 0x4

    invoke-interface {v1, v5, v6}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/j/k;I)V

    .line 3423
    iget v5, p0, Lcom/google/android/exoplayer2/c/d/f;->l:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/android/exoplayer2/c/d/f;->l:I

    .line 3424
    add-int/2addr v0, v3

    goto :goto_c

    .line 3427
    :cond_1b
    iget v5, p0, Lcom/google/android/exoplayer2/c/d/f;->m:I

    const/4 v6, 0x0

    invoke-interface {v1, p1, v5, v6}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/c/g;IZ)I

    move-result v5

    .line 3428
    iget v6, p0, Lcom/google/android/exoplayer2/c/d/f;->l:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/google/android/exoplayer2/c/d/f;->l:I

    .line 3429
    iget v6, p0, Lcom/google/android/exoplayer2/c/d/f;->m:I

    sub-int v5, v6, v5

    iput v5, p0, Lcom/google/android/exoplayer2/c/d/f;->m:I

    goto :goto_c

    :cond_1c
    move v5, v0

    .line 3439
    :goto_d
    iget-object v0, v8, Lcom/google/android/exoplayer2/c/d/f$a;->b:Lcom/google/android/exoplayer2/c/d/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/c/d/k;->e:[J

    aget-wide v2, v0, v4

    iget-object v0, v8, Lcom/google/android/exoplayer2/c/d/f$a;->b:Lcom/google/android/exoplayer2/c/d/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/c/d/k;->f:[I

    aget v4, v0, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/c/o;->a(JIII[B)V

    .line 3441
    iget v0, v8, Lcom/google/android/exoplayer2/c/d/f$a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v8, Lcom/google/android/exoplayer2/c/d/f$a;->d:I

    .line 3442
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/c/d/f;->l:I

    .line 3443
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/c/d/f;->m:I

    .line 3444
    const/4 v0, 0x0

    .line 148
    goto/16 :goto_3

    .line 3433
    :cond_1d
    :goto_e
    iget v2, p0, Lcom/google/android/exoplayer2/c/d/f;->l:I

    if-ge v2, v0, :cond_1e

    .line 3434
    iget v2, p0, Lcom/google/android/exoplayer2/c/d/f;->l:I

    sub-int v2, v0, v2

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/c/g;IZ)I

    move-result v2

    .line 3435
    iget v3, p0, Lcom/google/android/exoplayer2/c/d/f;->l:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/exoplayer2/c/d/f;->l:I

    .line 3436
    iget v3, p0, Lcom/google/android/exoplayer2/c/d/f;->m:I

    sub-int v2, v3, v2

    iput v2, p0, Lcom/google/android/exoplayer2/c/d/f;->m:I

    goto :goto_e

    :cond_1e
    move v5, v0

    goto :goto_d

    :cond_1f
    move v0, v1

    goto/16 :goto_a

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(J)J
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v1, -0x1

    .line 167
    const-wide v4, 0x7fffffffffffffffL

    .line 168
    iget-object v8, p0, Lcom/google/android/exoplayer2/c/d/f;->o:[Lcom/google/android/exoplayer2/c/d/f$a;

    array-length v9, v8

    move v6, v7

    :goto_0
    if-ge v6, v9, :cond_5

    aget-object v2, v8, v6

    .line 169
    iget-object v3, v2, Lcom/google/android/exoplayer2/c/d/f$a;->b:Lcom/google/android/exoplayer2/c/d/k;

    .line 4076
    iget-object v0, v3, Lcom/google/android/exoplayer2/c/d/k;->e:[J

    invoke-static {v0, p1, p2, v7}, Lcom/google/android/exoplayer2/j/r;->a([JJZ)I

    move-result v0

    .line 4077
    :goto_1
    if-ltz v0, :cond_2

    .line 4078
    iget-object v10, v3, Lcom/google/android/exoplayer2/c/d/k;->f:[I

    aget v10, v10, v0

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_1

    .line 171
    :goto_2
    if-ne v0, v1, :cond_0

    .line 4093
    iget-object v0, v3, Lcom/google/android/exoplayer2/c/d/k;->e:[J

    const/4 v10, 0x1

    invoke-static {v0, p1, p2, v10, v7}, Lcom/google/android/exoplayer2/j/r;->a([JJZZ)I

    move-result v0

    .line 4094
    :goto_3
    iget-object v10, v3, Lcom/google/android/exoplayer2/c/d/k;->e:[J

    array-length v10, v10

    if-ge v0, v10, :cond_4

    .line 4095
    iget-object v10, v3, Lcom/google/android/exoplayer2/c/d/k;->f:[I

    aget v10, v10, v0

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_3

    .line 175
    :cond_0
    :goto_4
    iput v0, v2, Lcom/google/android/exoplayer2/c/d/f$a;->d:I

    .line 177
    iget-object v2, v3, Lcom/google/android/exoplayer2/c/d/k;->b:[J

    aget-wide v2, v2, v0

    .line 178
    cmp-long v0, v2, v4

    if-gez v0, :cond_6

    .line 168
    :goto_5
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move-wide v4, v2

    goto :goto_0

    .line 4077
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 4082
    goto :goto_2

    .line 4094
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move v0, v1

    .line 4099
    goto :goto_4

    .line 182
    :cond_5
    return-wide v4

    :cond_6
    move-wide v2, v4

    goto :goto_5
.end method

.method public final a(Lcom/google/android/exoplayer2/c/h;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/d/f;->n:Lcom/google/android/exoplayer2/c/h;

    .line 109
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    return v0
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
    .line 103
    invoke-static {p1}, Lcom/google/android/exoplayer2/c/d/g;->b(Lcom/google/android/exoplayer2/c/g;)Z

    move-result v0

    return v0
.end method

.method public final b(J)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d/f;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 114
    iput v1, p0, Lcom/google/android/exoplayer2/c/d/f;->j:I

    .line 115
    iput v1, p0, Lcom/google/android/exoplayer2/c/d/f;->l:I

    .line 116
    iput v1, p0, Lcom/google/android/exoplayer2/c/d/f;->m:I

    .line 117
    iput v1, p0, Lcom/google/android/exoplayer2/c/d/f;->g:I

    .line 118
    return-void
.end method

.method public final e_()J
    .locals 2

    .prologue
    .line 162
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/d/f;->p:J

    return-wide v0
.end method
