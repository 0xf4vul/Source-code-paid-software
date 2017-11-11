.class final Lcom/google/a/o;
.super Lcom/google/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/a/o$c;,
        Lcom/google/a/o$b;,
        Lcom/google/a/o$a;
    }
.end annotation


# static fields
.field private static final c:[I


# instance fields
.field private final d:I

.field private final e:Lcom/google/a/c;

.field private final f:Lcom/google/a/c;

.field private final g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 89
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 97
    :goto_0
    if-lez v0, :cond_0

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/2addr v1, v0

    move v4, v1

    move v1, v0

    move v0, v4

    .line 102
    goto :goto_0

    .line 106
    :cond_0
    const v0, 0x7fffffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/a/o;->c:[I

    .line 108
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    sget-object v0, Lcom/google/a/o;->c:[I

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 110
    sget-object v3, Lcom/google/a/o;->c:[I

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    .line 108
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 112
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/google/a/o;)Lcom/google/a/c;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/a/o;->e:Lcom/google/a/c;

    return-object v0
.end method

.method static synthetic b(Lcom/google/a/o;)Lcom/google/a/c;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/a/o;->f:Lcom/google/a/c;

    return-object v0
.end method


# virtual methods
.method protected final a(III)I
    .locals 4

    .prologue
    .line 422
    add-int v0, p2, p3

    .line 423
    iget v1, p0, Lcom/google/a/o;->g:I

    if-gt v0, v1, :cond_0

    .line 424
    iget-object v0, p0, Lcom/google/a/o;->e:Lcom/google/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/a/c;->a(III)I

    move-result v0

    .line 430
    :goto_0
    return v0

    .line 425
    :cond_0
    iget v0, p0, Lcom/google/a/o;->g:I

    if-lt p2, v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/google/a/o;->f:Lcom/google/a/c;

    iget v1, p0, Lcom/google/a/o;->g:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/google/a/c;->a(III)I

    move-result v0

    goto :goto_0

    .line 428
    :cond_1
    iget v0, p0, Lcom/google/a/o;->g:I

    sub-int/2addr v0, p2

    .line 429
    iget-object v1, p0, Lcom/google/a/o;->e:Lcom/google/a/c;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/a/c;->a(III)I

    move-result v1

    .line 430
    iget-object v2, p0, Lcom/google/a/o;->f:Lcom/google/a/c;

    const/4 v3, 0x0

    sub-int v0, p3, v0

    invoke-virtual {v2, v1, v3, v0}, Lcom/google/a/c;->a(III)I

    move-result v0

    goto :goto_0
.end method

.method public final a()Lcom/google/a/c$a;
    .locals 2

    .prologue
    .line 765
    new-instance v0, Lcom/google/a/o$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/a/o$b;-><init>(Lcom/google/a/o;B)V

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/google/a/o;->d:I

    return v0
.end method

.method protected final b(III)I
    .locals 4

    .prologue
    .line 553
    add-int v0, p2, p3

    .line 554
    iget v1, p0, Lcom/google/a/o;->g:I

    if-gt v0, v1, :cond_0

    .line 555
    iget-object v0, p0, Lcom/google/a/o;->e:Lcom/google/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/a/c;->b(III)I

    move-result v0

    .line 561
    :goto_0
    return v0

    .line 556
    :cond_0
    iget v0, p0, Lcom/google/a/o;->g:I

    if-lt p2, v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/google/a/o;->f:Lcom/google/a/c;

    iget v1, p0, Lcom/google/a/o;->g:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/google/a/c;->b(III)I

    move-result v0

    goto :goto_0

    .line 559
    :cond_1
    iget v0, p0, Lcom/google/a/o;->g:I

    sub-int/2addr v0, p2

    .line 560
    iget-object v1, p0, Lcom/google/a/o;->e:Lcom/google/a/c;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/a/c;->b(III)I

    move-result v1

    .line 561
    iget-object v2, p0, Lcom/google/a/o;->f:Lcom/google/a/c;

    const/4 v3, 0x0

    sub-int v0, p3, v0

    invoke-virtual {v2, v1, v3, v0}, Lcom/google/a/c;->b(III)I

    move-result v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 407
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/a/o;->c()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method protected final b([BIII)V
    .locals 4

    .prologue
    .line 360
    add-int v0, p2, p4

    iget v1, p0, Lcom/google/a/o;->g:I

    if-gt v0, v1, :cond_0

    .line 361
    iget-object v0, p0, Lcom/google/a/o;->e:Lcom/google/a/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/a/c;->b([BIII)V

    .line 371
    :goto_0
    return-void

    .line 362
    :cond_0
    iget v0, p0, Lcom/google/a/o;->g:I

    if-lt p2, v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/google/a/o;->f:Lcom/google/a/c;

    iget v1, p0, Lcom/google/a/o;->g:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/google/a/c;->b([BIII)V

    goto :goto_0

    .line 366
    :cond_1
    iget v0, p0, Lcom/google/a/o;->g:I

    sub-int/2addr v0, p2

    .line 367
    iget-object v1, p0, Lcom/google/a/o;->e:Lcom/google/a/c;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/google/a/c;->b([BIII)V

    .line 368
    iget-object v1, p0, Lcom/google/a/o;->f:Lcom/google/a/c;

    const/4 v2, 0x0

    add-int v3, p3, v0

    sub-int v0, p4, v0

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/google/a/c;->b([BIII)V

    goto :goto_0
.end method

.method public final e()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 415
    iget-object v1, p0, Lcom/google/a/o;->e:Lcom/google/a/c;

    iget v2, p0, Lcom/google/a/o;->g:I

    invoke-virtual {v1, v0, v0, v2}, Lcom/google/a/c;->a(III)I

    move-result v1

    .line 416
    iget-object v2, p0, Lcom/google/a/o;->f:Lcom/google/a/c;

    iget-object v3, p0, Lcom/google/a/o;->f:Lcom/google/a/c;

    invoke-virtual {v3}, Lcom/google/a/c;->b()I

    move-result v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/google/a/c;->a(III)I

    move-result v1

    .line 417
    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 13

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 439
    if-ne p1, p0, :cond_1

    move v2, v7

    .line 1504
    :cond_0
    :goto_0
    return v2

    .line 442
    :cond_1
    instance-of v0, p1, Lcom/google/a/c;

    if-eqz v0, :cond_0

    .line 446
    check-cast p1, Lcom/google/a/c;

    .line 447
    iget v0, p0, Lcom/google/a/o;->d:I

    invoke-virtual {p1}, Lcom/google/a/c;->b()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 450
    iget v0, p0, Lcom/google/a/o;->d:I

    if-nez v0, :cond_2

    move v2, v7

    .line 451
    goto :goto_0

    .line 459
    :cond_2
    iget v0, p0, Lcom/google/a/o;->h:I

    if-eqz v0, :cond_3

    .line 460
    invoke-virtual {p1}, Lcom/google/a/c;->h()I

    move-result v0

    .line 461
    if-eqz v0, :cond_3

    iget v1, p0, Lcom/google/a/o;->h:I

    if-ne v1, v0, :cond_0

    .line 1480
    :cond_3
    new-instance v8, Lcom/google/a/o$a;

    invoke-direct {v8, p0, v2}, Lcom/google/a/o$a;-><init>(Lcom/google/a/c;B)V

    .line 1481
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/k;

    .line 1484
    new-instance v9, Lcom/google/a/o$a;

    invoke-direct {v9, p1, v2}, Lcom/google/a/o$a;-><init>(Lcom/google/a/c;B)V

    .line 1485
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/k;

    move-object v3, v1

    move v4, v2

    move-object v5, v0

    move v6, v2

    move v0, v2

    .line 1489
    :goto_1
    invoke-virtual {v5}, Lcom/google/a/k;->b()I

    move-result v1

    sub-int v10, v1, v6

    .line 1490
    invoke-virtual {v3}, Lcom/google/a/k;->b()I

    move-result v1

    sub-int v11, v1, v4

    .line 1491
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1494
    if-nez v6, :cond_4

    invoke-virtual {v5, v3, v4, v12}, Lcom/google/a/k;->a(Lcom/google/a/k;II)Z

    move-result v1

    .line 1497
    :goto_2
    if-eqz v1, :cond_0

    .line 1501
    add-int v1, v0, v12

    .line 1502
    iget v0, p0, Lcom/google/a/o;->d:I

    if-lt v1, v0, :cond_6

    .line 1503
    iget v0, p0, Lcom/google/a/o;->d:I

    if-ne v1, v0, :cond_5

    move v2, v7

    .line 1504
    goto :goto_0

    .line 1494
    :cond_4
    invoke-virtual {v3, v5, v6, v12}, Lcom/google/a/k;->a(Lcom/google/a/k;II)Z

    move-result v1

    goto :goto_2

    .line 1506
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1509
    :cond_6
    if-ne v12, v10, :cond_7

    .line 1511
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/k;

    move-object v5, v0

    move v6, v2

    .line 1515
    :goto_3
    if-ne v12, v11, :cond_8

    .line 1517
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/k;

    move-object v3, v0

    move v4, v2

    move v0, v1

    goto :goto_1

    .line 1513
    :cond_7
    add-int/2addr v6, v12

    goto :goto_3

    .line 1519
    :cond_8
    add-int v0, v4, v12

    move v4, v0

    move v0, v1

    .line 1521
    goto :goto_1
.end method

.method public final f()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 575
    new-instance v0, Lcom/google/a/o$c;

    invoke-direct {v0, p0}, Lcom/google/a/o$c;-><init>(Lcom/google/a/o;)V

    return-object v0
.end method

.method public final g()Lcom/google/a/d;
    .locals 1

    .prologue
    .line 570
    new-instance v0, Lcom/google/a/o$c;

    invoke-direct {v0, p0}, Lcom/google/a/o$c;-><init>(Lcom/google/a/o;)V

    invoke-static {v0}, Lcom/google/a/d;->a(Ljava/io/InputStream;)Lcom/google/a/d;

    move-result-object v0

    return-object v0
.end method

.method protected final h()I
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Lcom/google/a/o;->h:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 533
    iget v0, p0, Lcom/google/a/o;->h:I

    .line 535
    if-nez v0, :cond_1

    .line 536
    iget v0, p0, Lcom/google/a/o;->d:I

    .line 537
    const/4 v1, 0x0

    iget v2, p0, Lcom/google/a/o;->d:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/a/o;->b(III)I

    move-result v0

    .line 538
    if-nez v0, :cond_0

    .line 539
    const/4 v0, 0x1

    .line 541
    :cond_0
    iput v0, p0, Lcom/google/a/o;->h:I

    .line 543
    :cond_1
    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/a/o;->a()Lcom/google/a/c$a;

    move-result-object v0

    return-object v0
.end method
