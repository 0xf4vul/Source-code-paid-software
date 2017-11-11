.class final Lcom/google/android/exoplayer2/f/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/c/d$c;
.implements Lcom/google/android/exoplayer2/c/h;
.implements Lcom/google/android/exoplayer2/f/c;
.implements Lcom/google/android/exoplayer2/i/q$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/f/a$b;,
        Lcom/google/android/exoplayer2/f/a$a;,
        Lcom/google/android/exoplayer2/f/a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/c/d$c;",
        "Lcom/google/android/exoplayer2/c/h;",
        "Lcom/google/android/exoplayer2/f/c;",
        "Lcom/google/android/exoplayer2/i/q$a",
        "<",
        "Lcom/google/android/exoplayer2/f/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field private A:I

.field private B:J

.field private C:J

.field private D:I

.field final a:Lcom/google/android/exoplayer2/f/d$a;

.field final b:Lcom/google/android/exoplayer2/i/q;

.field final c:Lcom/google/android/exoplayer2/f/a$b;

.field final d:Lcom/google/android/exoplayer2/j/d;

.field final e:Ljava/lang/Runnable;

.field final f:Landroid/os/Handler;

.field final g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer2/c/d;",
            ">;"
        }
    .end annotation
.end field

.field h:Lcom/google/android/exoplayer2/f/c$a;

.field i:Lcom/google/android/exoplayer2/c/m;

.field j:Z

.field k:Z

.field l:Z

.field m:Lcom/google/android/exoplayer2/f/i;

.field n:J

.field o:[Z

.field p:J

.field q:Z

.field r:Z

.field private final s:Landroid/net/Uri;

.field private final t:Lcom/google/android/exoplayer2/i/f;

.field private final u:I

.field private final v:Landroid/os/Handler;

.field private final w:Lcom/google/android/exoplayer2/f/b$a;

.field private final x:Lcom/google/android/exoplayer2/i/b;

.field private final y:Ljava/lang/Runnable;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/i/f;[Lcom/google/android/exoplayer2/c/f;ILandroid/os/Handler;Lcom/google/android/exoplayer2/f/b$a;Lcom/google/android/exoplayer2/f/d$a;Lcom/google/android/exoplayer2/i/b;)V
    .locals 2

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/google/android/exoplayer2/f/a;->s:Landroid/net/Uri;

    .line 108
    iput-object p2, p0, Lcom/google/android/exoplayer2/f/a;->t:Lcom/google/android/exoplayer2/i/f;

    .line 109
    iput p4, p0, Lcom/google/android/exoplayer2/f/a;->u:I

    .line 110
    iput-object p5, p0, Lcom/google/android/exoplayer2/f/a;->v:Landroid/os/Handler;

    .line 111
    iput-object p6, p0, Lcom/google/android/exoplayer2/f/a;->w:Lcom/google/android/exoplayer2/f/b$a;

    .line 112
    iput-object p7, p0, Lcom/google/android/exoplayer2/f/a;->a:Lcom/google/android/exoplayer2/f/d$a;

    .line 113
    iput-object p8, p0, Lcom/google/android/exoplayer2/f/a;->x:Lcom/google/android/exoplayer2/i/b;

    .line 114
    new-instance v0, Lcom/google/android/exoplayer2/i/q;

    const-string/jumbo v1, "Loader:ExtractorMediaPeriod"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/i/q;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/f/a;->b:Lcom/google/android/exoplayer2/i/q;

    .line 115
    new-instance v0, Lcom/google/android/exoplayer2/f/a$b;

    invoke-direct {v0, p3, p0}, Lcom/google/android/exoplayer2/f/a$b;-><init>([Lcom/google/android/exoplayer2/c/f;Lcom/google/android/exoplayer2/c/h;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/f/a;->c:Lcom/google/android/exoplayer2/f/a$b;

    .line 116
    new-instance v0, Lcom/google/android/exoplayer2/j/d;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/j/d;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/f/a;->d:Lcom/google/android/exoplayer2/j/d;

    .line 117
    new-instance v0, Lcom/google/android/exoplayer2/f/a$1;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/f/a$1;-><init>(Lcom/google/android/exoplayer2/f/a;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/f/a;->y:Ljava/lang/Runnable;

    .line 123
    new-instance v0, Lcom/google/android/exoplayer2/f/a$2;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/f/a$2;-><init>(Lcom/google/android/exoplayer2/f/a;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/f/a;->e:Ljava/lang/Runnable;

    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/f/a;->f:Landroid/os/Handler;

    .line 133
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/f/a;->C:J

    .line 134
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/f/a;->g:Landroid/util/SparseArray;

    .line 135
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/f/a;->B:J

    .line 136
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/f/a$a;)V
    .locals 4

    .prologue
    .line 421
    iget-wide v0, p0, Lcom/google/android/exoplayer2/f/a;->B:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2544
    iget-wide v0, p1, Lcom/google/android/exoplayer2/f/a$a;->a:J

    .line 422
    iput-wide v0, p0, Lcom/google/android/exoplayer2/f/a;->B:J

    .line 424
    :cond_0
    return-void
.end method

.method private k()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 427
    new-instance v0, Lcom/google/android/exoplayer2/f/a$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/f/a;->s:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/exoplayer2/f/a;->t:Lcom/google/android/exoplayer2/i/f;

    iget-object v4, p0, Lcom/google/android/exoplayer2/f/a;->c:Lcom/google/android/exoplayer2/f/a$b;

    iget-object v5, p0, Lcom/google/android/exoplayer2/f/a;->d:Lcom/google/android/exoplayer2/j/d;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/f/a$a;-><init>(Lcom/google/android/exoplayer2/f/a;Landroid/net/Uri;Lcom/google/android/exoplayer2/i/f;Lcom/google/android/exoplayer2/f/a$b;Lcom/google/android/exoplayer2/j/d;)V

    .line 429
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/f/a;->k:Z

    if-eqz v1, :cond_1

    .line 430
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f/a;->j()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/j/a;->b(Z)V

    .line 431
    iget-wide v2, p0, Lcom/google/android/exoplayer2/f/a;->n:J

    cmp-long v1, v2, v8

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/f/a;->C:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/f/a;->n:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 432
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/f/a;->q:Z

    .line 433
    iput-wide v8, p0, Lcom/google/android/exoplayer2/f/a;->C:J

    .line 450
    :goto_0
    return-void

    .line 436
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/f/a;->i:Lcom/google/android/exoplayer2/c/m;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/f/a;->C:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/c/m;->a(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/f/a$a;->a(J)V

    .line 437
    iput-wide v8, p0, Lcom/google/android/exoplayer2/f/a;->C:J

    .line 439
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/f/a;->l()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/f/a;->D:I

    .line 441
    iget v7, p0, Lcom/google/android/exoplayer2/f/a;->u:I

    .line 442
    const/4 v1, -0x1

    if-ne v7, v1, :cond_3

    .line 444
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/f/a;->k:Z

    if-eqz v1, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/f/a;->B:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/f/a;->i:Lcom/google/android/exoplayer2/c/m;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/exoplayer2/f/a;->i:Lcom/google/android/exoplayer2/c/m;

    .line 445
    invoke-interface {v1}, Lcom/google/android/exoplayer2/c/m;->e_()J

    move-result-wide v2

    cmp-long v1, v2, v8

    if-eqz v1, :cond_4

    :cond_2
    const/4 v1, 0x3

    :goto_1
    move v7, v1

    .line 449
    :cond_3
    iget-object v3, p0, Lcom/google/android/exoplayer2/f/a;->b:Lcom/google/android/exoplayer2/i/q;

    .line 3161
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    .line 3162
    if-eqz v4, :cond_5

    move v1, v6

    :goto_2
    invoke-static {v1}, Lcom/google/android/exoplayer2/j/a;->b(Z)V

    .line 3163
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 3164
    new-instance v2, Lcom/google/android/exoplayer2/i/q$b;

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/i/q$b;-><init>(Lcom/google/android/exoplayer2/i/q;Landroid/os/Looper;Lcom/google/android/exoplayer2/i/q$c;Lcom/google/android/exoplayer2/i/q$a;IJ)V

    const-wide/16 v0, 0x0

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/i/q$b;->a(J)V

    goto :goto_0

    .line 445
    :cond_4
    const/4 v1, 0x6

    goto :goto_1

    .line 3162
    :cond_5
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private l()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 474
    .line 475
    iget-object v1, p0, Lcom/google/android/exoplayer2/f/a;->g:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v1, v0

    move v2, v0

    .line 476
    :goto_0
    if-ge v1, v3, :cond_0

    .line 477
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/c/d;

    .line 4133
    iget-object v0, v0, Lcom/google/android/exoplayer2/c/d;->b:Lcom/google/android/exoplayer2/c/d$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c/d$b;->a()I

    move-result v0

    .line 477
    add-int/2addr v2, v0

    .line 476
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 479
    :cond_0
    return v2
.end method

.method private m()J
    .locals 8

    .prologue
    .line 483
    const-wide/high16 v2, -0x8000000000000000L

    .line 484
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 485
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 486
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a;->g:Landroid/util/SparseArray;

    .line 487
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/c/d;

    .line 4225
    iget-object v0, v0, Lcom/google/android/exoplayer2/c/d;->b:Lcom/google/android/exoplayer2/c/d$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c/d$b;->d()J

    move-result-wide v6

    .line 486
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 485
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 489
    :cond_0
    return-wide v2
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/exoplayer2/i/q$c;Ljava/io/IOException;)I
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 49
    check-cast p1, Lcom/google/android/exoplayer2/f/a$a;

    .line 4350
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/f/a;->a(Lcom/google/android/exoplayer2/f/a$a;)V

    .line 4501
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a;->v:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a;->w:Lcom/google/android/exoplayer2/f/b$a;

    if-eqz v0, :cond_0

    .line 4502
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a;->v:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/f/a$4;

    invoke-direct {v1, p0, p2}, Lcom/google/android/exoplayer2/f/a$4;-><init>(Lcom/google/android/exoplayer2/f/a;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5497
    :cond_0
    instance-of v0, p2, Lcom/google/android/exoplayer2/f/b$b;

    .line 4352
    if-eqz v0, :cond_2

    .line 4353
    const/4 v2, 0x3

    .line 4359
    :cond_1
    :goto_0
    return v2

    .line 4355
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/f/a;->l()I

    move-result v0

    .line 4356
    iget v1, p0, Lcom/google/android/exoplayer2/f/a;->D:I

    if-le v0, v1, :cond_5

    move v1, v2

    .line 6453
    :goto_1
    iget-wide v4, p0, Lcom/google/android/exoplayer2/f/a;->B:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a;->i:Lcom/google/android/exoplayer2/c/m;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a;->i:Lcom/google/android/exoplayer2/c/m;

    .line 6454
    invoke-interface {v0}, Lcom/google/android/exoplayer2/c/m;->e_()J

    move-result-wide v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-nez v0, :cond_8

    .line 6463
    :cond_3
    iput-wide v8, p0, Lcom/google/android/exoplayer2/f/a;->p:J

    .line 6464
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/f/a;->k:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/f/a;->l:Z

    .line 6465
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    move v5, v3

    .line 6466
    :goto_2
    if-ge v5, v6, :cond_7

    .line 6467
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/c/d;

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/f/a;->k:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/android/exoplayer2/f/a;->o:[Z

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_6

    :cond_4
    move v4, v2

    :goto_3
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/c/d;->a(Z)V

    .line 6466
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    :cond_5
    move v1, v3

    .line 4356
    goto :goto_1

    :cond_6
    move v4, v3

    .line 6467
    goto :goto_3

    .line 6469
    :cond_7
    invoke-virtual {p1, v8, v9}, Lcom/google/android/exoplayer2/f/a$a;->a(J)V

    .line 4358
    :cond_8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/f/a;->l()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/f/a;->D:I

    .line 4359
    if-nez v1, :cond_1

    move v2, v3

    .line 49
    goto :goto_0
.end method

.method public final a(J)J
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 273
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a;->i:Lcom/google/android/exoplayer2/c/m;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/c/m;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/f/a;->p:J

    .line 275
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 277
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f/a;->j()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    move v2, v1

    .line 278
    :goto_2
    if-eqz v0, :cond_3

    if-ge v2, v3, :cond_3

    .line 279
    iget-object v4, p0, Lcom/google/android/exoplayer2/f/a;->o:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_0

    .line 280
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/c/d;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/c/d;->a(J)Z

    move-result v0

    .line 278
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 273
    :cond_1
    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 277
    goto :goto_1

    .line 284
    :cond_3
    if-nez v0, :cond_4

    .line 285
    iput-wide p1, p0, Lcom/google/android/exoplayer2/f/a;->C:J

    .line 286
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/f/a;->q:Z

    .line 287
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a;->b:Lcom/google/android/exoplayer2/i/q;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i/q;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 288
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a;->b:Lcom/google/android/exoplayer2/i/q;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i/q;->b()V

    .line 295
    :cond_4
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/f/a;->l:Z

    .line 296
    return-wide p1

    :cond_5
    move v2, v1

    .line 290
    :goto_3
    if-ge v2, v3, :cond_4

    .line 291
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/c/d;

    iget-object v4, p0, Lcom/google/android/exoplayer2/f/a;->o:[Z

    aget-boolean v4, v4, v2

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/c/d;->a(Z)V

    .line 290
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3
.end method

.method public final a([Lcom/google/android/exoplayer2/h/f;[Z[Lcom/google/android/exoplayer2/f/e;[ZJ)J
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 174
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/f/a;->k:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/j/a;->b(Z)V

    move v1, v2

    .line 176
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_2

    .line 177
    aget-object v0, p3, v1

    if-eqz v0, :cond_1

    aget-object v0, p1, v1

    if-eqz v0, :cond_0

    aget-boolean v0, p2, v1

    if-nez v0, :cond_1

    .line 178
    :cond_0
    aget-object v0, p3, v1

    check-cast v0, Lcom/google/android/exoplayer2/f/a$c;

    .line 1511
    iget v0, v0, Lcom/google/android/exoplayer2/f/a$c;->a:I

    .line 179
    iget-object v4, p0, Lcom/google/android/exoplayer2/f/a;->o:[Z

    aget-boolean v4, v4, v0

    invoke-static {v4}, Lcom/google/android/exoplayer2/j/a;->b(Z)V

    .line 180
    iget v4, p0, Lcom/google/android/exoplayer2/f/a;->A:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/google/android/exoplayer2/f/a;->A:I

    .line 181
    iget-object v4, p0, Lcom/google/android/exoplayer2/f/a;->o:[Z

    aput-boolean v2, v4, v0

    .line 182
    iget-object v4, p0, Lcom/google/android/exoplayer2/f/a;->g:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/c/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c/d;->a()V

    .line 183
    const/4 v0, 0x0

    aput-object v0, p3, v1

    .line 176
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v4, v2

    move v1, v2

    .line 188
    :goto_1
    array-length v0, p1

    if-ge v4, v0, :cond_8

    .line 189
    aget-object v0, p3, v4

    if-nez v0, :cond_f

    aget-object v0, p1, v4

    if-eqz v0, :cond_f

    .line 190
    aget-object v1, p1, v4

    .line 191
    invoke-interface {v1}, Lcom/google/android/exoplayer2/h/f;->b()I

    move-result v0

    if-ne v0, v3, :cond_3

    move v0, v3

    :goto_2
    invoke-static {v0}, Lcom/google/android/exoplayer2/j/a;->b(Z)V

    .line 192
    invoke-interface {v1}, Lcom/google/android/exoplayer2/h/f;->c()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v3

    :goto_3
    invoke-static {v0}, Lcom/google/android/exoplayer2/j/a;->b(Z)V

    .line 193
    iget-object v5, p0, Lcom/google/android/exoplayer2/f/a;->m:Lcom/google/android/exoplayer2/f/i;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/h/f;->a()Lcom/google/android/exoplayer2/f/h;

    move-result-object v1

    move v0, v2

    .line 2061
    :goto_4
    iget v6, v5, Lcom/google/android/exoplayer2/f/i;->a:I

    if-ge v0, v6, :cond_6

    .line 2062
    iget-object v6, v5, Lcom/google/android/exoplayer2/f/i;->b:[Lcom/google/android/exoplayer2/f/h;

    aget-object v6, v6, v0

    if-ne v6, v1, :cond_5

    .line 194
    :goto_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/f/a;->o:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_7

    move v1, v3

    :goto_6
    invoke-static {v1}, Lcom/google/android/exoplayer2/j/a;->b(Z)V

    .line 195
    iget v1, p0, Lcom/google/android/exoplayer2/f/a;->A:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/f/a;->A:I

    .line 196
    iget-object v1, p0, Lcom/google/android/exoplayer2/f/a;->o:[Z

    aput-boolean v3, v1, v0

    .line 197
    new-instance v1, Lcom/google/android/exoplayer2/f/a$c;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/f/a$c;-><init>(Lcom/google/android/exoplayer2/f/a;I)V

    aput-object v1, p3, v4

    .line 198
    aput-boolean v3, p4, v4

    move v0, v3

    .line 188
    :goto_7
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v2

    .line 191
    goto :goto_2

    :cond_4
    move v0, v2

    .line 192
    goto :goto_3

    .line 2061
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2066
    :cond_6
    const/4 v0, -0x1

    goto :goto_5

    :cond_7
    move v1, v2

    .line 194
    goto :goto_6

    .line 202
    :cond_8
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/f/a;->z:Z

    if-nez v0, :cond_a

    .line 205
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v4, v2

    .line 206
    :goto_8
    if-ge v4, v5, :cond_a

    .line 207
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a;->o:[Z

    aget-boolean v0, v0, v4

    if-nez v0, :cond_9

    .line 208
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/c/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c/d;->a()V

    .line 206
    :cond_9
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_8

    .line 212
    :cond_a
    iget v0, p0, Lcom/google/android/exoplayer2/f/a;->A:I

    if-nez v0, :cond_c

    .line 213
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/f/a;->l:Z

    .line 214
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a;->b:Lcom/google/android/exoplayer2/i/q;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i/q;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 215
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a;->b:Lcom/google/android/exoplayer2/i/q;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i/q;->b()V

    .line 226
    :cond_b
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/f/a;->z:Z

    .line 227
    return-wide p5

    .line 217
    :cond_c
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/f/a;->z:Z

    if-eqz v0, :cond_e

    if-eqz v1, :cond_b

    .line 218
    :goto_9
    invoke-virtual {p0, p5, p6}, Lcom/google/android/exoplayer2/f/a;->a(J)J

    move-result-wide p5

    .line 220
    :goto_a
    array-length v0, p3

    if-ge v2, v0, :cond_b

    .line 221
    aget-object v0, p3, v2

    if-eqz v0, :cond_d

    .line 222
    aput-boolean v3, p4, v2

    .line 220
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 217
    :cond_e
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-eqz v0, :cond_b

    goto :goto_9

    :cond_f
    move v0, v1

    goto :goto_7
.end method

.method public final a(I)Lcom/google/android/exoplayer2/c/o;
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/c/d;

    .line 367
    if-nez v0, :cond_0

    .line 368
    new-instance v0, Lcom/google/android/exoplayer2/c/d;

    iget-object v1, p0, Lcom/google/android/exoplayer2/f/a;->x:Lcom/google/android/exoplayer2/i/b;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/c/d;-><init>(Lcom/google/android/exoplayer2/i/b;)V

    .line 2424
    iput-object p0, v0, Lcom/google/android/exoplayer2/c/d;->h:Lcom/google/android/exoplayer2/c/d$c;

    .line 370
    iget-object v1, p0, Lcom/google/android/exoplayer2/f/a;->g:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 372
    :cond_0
    return-object v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/f/a;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 392
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/c/m;)V
    .locals 2

    .prologue
    .line 383
    iput-object p1, p0, Lcom/google/android/exoplayer2/f/a;->i:Lcom/google/android/exoplayer2/c/m;

    .line 384
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/f/a;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 385
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/f/c$a;)V
    .locals 1

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/android/exoplayer2/f/a;->h:Lcom/google/android/exoplayer2/f/c$a;

    .line 157
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a;->d:Lcom/google/android/exoplayer2/j/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/d;->a()Z

    .line 158
    invoke-direct {p0}, Lcom/google/android/exoplayer2/f/a;->k()V

    .line 159
    return-void
.end method

.method public final synthetic a(Lcom/google/android/exoplayer2/i/q$c;)V
    .locals 5

    .prologue
    .line 49
    check-cast p1, Lcom/google/android/exoplayer2/f/a$a;

    .line 8323
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/f/a;->a(Lcom/google/android/exoplayer2/f/a$a;)V

    .line 8324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/f/a;->q:Z

    .line 8325
    iget-wide v0, p0, Lcom/google/android/exoplayer2/f/a;->n:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 8326
    invoke-direct {p0}, Lcom/google/android/exoplayer2/f/a;->m()J

    move-result-wide v0

    .line 8327
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/f/a;->n:J

    .line 8329
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a;->a:Lcom/google/android/exoplayer2/f/d$a;

    new-instance v1, Lcom/google/android/exoplayer2/f/g;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/f/a;->n:J

    iget-object v4, p0, Lcom/google/android/exoplayer2/f/a;->i:Lcom/google/android/exoplayer2/c/m;

    .line 8330
    invoke-interface {v4}, Lcom/google/android/exoplayer2/c/m;->a()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/exoplayer2/f/g;-><init>(JZ)V

    .line 8329
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/f/d$a;->a(Lcom/google/android/exoplayer2/o;)V

    .line 49
    :cond_0
    return-void

    .line 8327
    :cond_1
    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/android/exoplayer2/i/q$c;Z)V
    .locals 4

    .prologue
    .line 49
    check-cast p1, Lcom/google/android/exoplayer2/f/a$a;

    .line 7337
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/f/a;->a(Lcom/google/android/exoplayer2/f/a$a;)V

    .line 7338
    if-nez p2, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/f/a;->A:I

    if-lez v0, :cond_1

    .line 7339
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 7340
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 7341
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/c/d;

    iget-object v3, p0, Lcom/google/android/exoplayer2/f/a;->o:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/c/d;->a(Z)V

    .line 7340
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 7343
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a;->h:Lcom/google/android/exoplayer2/f/c$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/f/c$a;->a(Lcom/google/android/exoplayer2/f/f;)V

    .line 49
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 377
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/f/a;->j:Z

    .line 378
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/f/a;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 379
    return-void
.end method

.method public final c()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f/a;->i()V

    .line 164
    return-void
.end method

.method public final d()Lcom/google/android/exoplayer2/f/i;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a;->m:Lcom/google/android/exoplayer2/f/i;

    return-object v0
.end method

.method public final e()Z
    .locals 2

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/f/a;->q:Z

    if-eqz v0, :cond_1

    .line 233
    const/4 v0, 0x0

    .line 240
    :cond_0
    :goto_0
    return v0

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a;->d:Lcom/google/android/exoplayer2/j/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/d;->a()Z

    move-result v0

    .line 236
    iget-object v1, p0, Lcom/google/android/exoplayer2/f/a;->b:Lcom/google/android/exoplayer2/i/q;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/i/q;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/google/android/exoplayer2/f/a;->k()V

    .line 238
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f/a;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/f/a;->l:Z

    if-eqz v0, :cond_0

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/f/a;->l:Z

    .line 252
    iget-wide v0, p0, Lcom/google/android/exoplayer2/f/a;->p:J

    .line 254
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0
.end method

.method public final h()J
    .locals 4

    .prologue
    const-wide/high16 v0, -0x8000000000000000L

    .line 259
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/f/a;->q:Z

    if-eqz v2, :cond_0

    .line 265
    :goto_0
    return-wide v0

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f/a;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    iget-wide v0, p0, Lcom/google/android/exoplayer2/f/a;->C:J

    goto :goto_0

    .line 264
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/f/a;->m()J

    move-result-wide v2

    .line 265
    cmp-long v0, v2, v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/f/a;->p:J

    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_0
.end method

.method final i()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a;->b:Lcom/google/android/exoplayer2/i/q;

    .line 2216
    iget-object v1, v0, Lcom/google/android/exoplayer2/i/q;->c:Ljava/io/IOException;

    if-eqz v1, :cond_0

    .line 2217
    iget-object v0, v0, Lcom/google/android/exoplayer2/i/q;->c:Ljava/io/IOException;

    throw v0

    .line 2218
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/i/q;->b:Lcom/google/android/exoplayer2/i/q$b;

    if-eqz v1, :cond_1

    .line 2219
    iget-object v1, v0, Lcom/google/android/exoplayer2/i/q;->b:Lcom/google/android/exoplayer2/i/q$b;

    iget-object v0, v0, Lcom/google/android/exoplayer2/i/q;->b:Lcom/google/android/exoplayer2/i/q$b;

    iget v0, v0, Lcom/google/android/exoplayer2/i/q$b;->a:I

    .line 2252
    iget-object v2, v1, Lcom/google/android/exoplayer2/i/q$b;->b:Ljava/io/IOException;

    if-eqz v2, :cond_1

    iget v2, v1, Lcom/google/android/exoplayer2/i/q$b;->c:I

    if-le v2, v0, :cond_1

    .line 2253
    iget-object v0, v1, Lcom/google/android/exoplayer2/i/q$b;->b:Ljava/io/IOException;

    throw v0

    .line 307
    :cond_1
    return-void
.end method

.method final j()Z
    .locals 4

    .prologue
    .line 493
    iget-wide v0, p0, Lcom/google/android/exoplayer2/f/a;->C:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
