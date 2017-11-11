.class public final Lcom/google/android/exoplayer2/h/c;
.super Lcom/google/android/exoplayer2/h/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/h/c$a;
    }
.end annotation


# static fields
.field private static final c:[I


# instance fields
.field private final d:Lcom/google/android/exoplayer2/h/f$a;

.field private final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/exoplayer2/h/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/exoplayer2/h/c;->c:[I

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/h/f$a;)V
    .locals 2

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/h/e;-><init>(Landroid/os/Handler;)V

    .line 348
    iput-object p2, p0, Lcom/google/android/exoplayer2/h/c;->d:Lcom/google/android/exoplayer2/h/f$a;

    .line 349
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/exoplayer2/h/c$a;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/h/c$a;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/h/c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 350
    return-void
.end method

.method private static a(II)I
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 580
    if-ne p0, v0, :cond_1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    sub-int v0, p0, p1

    goto :goto_0
.end method

.method private static a(Lcom/google/android/exoplayer2/f/h;[IILjava/lang/String;IILjava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/f/h;",
            "[II",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 498
    move v6, v0

    move v7, v0

    .line 499
    :goto_0
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 500
    invoke-interface {p6, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4060
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/h;->b:[Lcom/google/android/exoplayer2/Format;

    aget-object v0, v0, v1

    .line 501
    aget v2, p1, v1

    move-object v1, p3

    move v3, p2

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/h/c;->a(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    add-int/lit8 v1, v7, 0x1

    .line 499
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v7, v1

    goto :goto_0

    .line 506
    :cond_0
    return v7

    :cond_1
    move v1, v7

    goto :goto_1
.end method

.method private static a(Lcom/google/android/exoplayer2/f/i;[[I)Lcom/google/android/exoplayer2/h/f;
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 677
    move v7, v6

    move v1, v6

    move v3, v6

    move-object v5, v8

    .line 680
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/f/i;->a:I

    if-ge v7, v0, :cond_3

    .line 9051
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/i;->b:[Lcom/google/android/exoplayer2/f/h;

    aget-object v4, v0, v7

    .line 682
    aget-object v10, p1, v7

    move v2, v6

    .line 683
    :goto_1
    iget v0, v4, Lcom/google/android/exoplayer2/f/h;->a:I

    if-ge v2, v0, :cond_2

    .line 684
    aget v0, v10, v2

    invoke-static {v0}, Lcom/google/android/exoplayer2/h/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9060
    iget-object v0, v4, Lcom/google/android/exoplayer2/f/h;->b:[Lcom/google/android/exoplayer2/Format;

    aget-object v0, v0, v2

    .line 686
    iget v0, v0, Lcom/google/android/exoplayer2/Format;->v:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    move v0, v9

    .line 687
    :goto_2
    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 688
    :goto_3
    if-le v0, v1, :cond_5

    move v1, v2

    move-object v3, v4

    .line 683
    :goto_4
    add-int/lit8 v2, v2, 0x1

    move-object v5, v3

    move v3, v1

    move v1, v0

    goto :goto_1

    :cond_0
    move v0, v6

    .line 686
    goto :goto_2

    :cond_1
    move v0, v9

    .line 687
    goto :goto_3

    .line 680
    :cond_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 696
    :cond_3
    if-nez v5, :cond_4

    :goto_5
    return-object v8

    :cond_4
    new-instance v8, Lcom/google/android/exoplayer2/h/d;

    invoke-direct {v8, v5, v3}, Lcom/google/android/exoplayer2/h/d;-><init>(Lcom/google/android/exoplayer2/f/h;I)V

    goto :goto_5

    :cond_5
    move v0, v1

    move v1, v3

    move-object v3, v5

    goto :goto_4
.end method

.method private static a(Lcom/google/android/exoplayer2/f/i;[[IIIIIZZ)Lcom/google/android/exoplayer2/h/f;
    .locals 15

    .prologue
    .line 532
    const/4 v10, 0x0

    .line 533
    const/4 v8, 0x0

    .line 534
    const/4 v6, -0x1

    .line 535
    const/4 v4, 0x0

    .line 536
    const/4 v3, 0x0

    move v12, v3

    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer2/f/i;->a:I

    if-ge v12, v3, :cond_8

    .line 6051
    iget-object v3, p0, Lcom/google/android/exoplayer2/f/i;->b:[Lcom/google/android/exoplayer2/f/h;

    aget-object v9, v3, v12

    .line 538
    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-static {v9, v0, v1, v2}, Lcom/google/android/exoplayer2/h/c;->a(Lcom/google/android/exoplayer2/f/h;IIZ)Ljava/util/List;

    move-result-object v13

    .line 540
    aget-object v14, p1, v12

    .line 541
    const/4 v7, 0x0

    :goto_1
    iget v3, v9, Lcom/google/android/exoplayer2/f/h;->a:I

    if-ge v7, v3, :cond_7

    .line 542
    aget v3, v14, v7

    invoke-static {v3}, Lcom/google/android/exoplayer2/h/c;->a(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 6060
    iget-object v3, v9, Lcom/google/android/exoplayer2/f/h;->b:[Lcom/google/android/exoplayer2/Format;

    aget-object v5, v3, v7

    .line 544
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v5, Lcom/google/android/exoplayer2/Format;->i:I

    const/4 v11, -0x1

    if-eq v3, v11, :cond_0

    iget v3, v5, Lcom/google/android/exoplayer2/Format;->i:I

    move/from16 v0, p2

    if-gt v3, v0, :cond_2

    :cond_0
    iget v3, v5, Lcom/google/android/exoplayer2/Format;->j:I

    const/4 v11, -0x1

    if-eq v3, v11, :cond_1

    iget v3, v5, Lcom/google/android/exoplayer2/Format;->j:I

    move/from16 v0, p3

    if-gt v3, v0, :cond_2

    :cond_1
    const/4 v3, 0x1

    .line 547
    :goto_2
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Format;->a()I

    move-result v5

    .line 549
    if-eqz v4, :cond_4

    .line 550
    if-eqz v3, :cond_3

    .line 551
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/h/c;->a(II)I

    move-result v11

    if-lez v11, :cond_3

    const/4 v11, 0x1

    .line 557
    :goto_3
    if-eqz v11, :cond_a

    move v4, v5

    move-object v6, v9

    move v5, v7

    .line 541
    :goto_4
    add-int/lit8 v7, v7, 0x1

    move v8, v5

    move-object v10, v6

    move v6, v4

    move v4, v3

    goto :goto_1

    .line 544
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 551
    :cond_3
    const/4 v11, 0x0

    goto :goto_3

    .line 553
    :cond_4
    if-nez v3, :cond_5

    if-eqz p7, :cond_6

    if-eqz v10, :cond_5

    .line 555
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/h/c;->a(II)I

    move-result v11

    if-gez v11, :cond_6

    :cond_5
    const/4 v11, 0x1

    goto :goto_3

    :cond_6
    const/4 v11, 0x0

    goto :goto_3

    .line 536
    :cond_7
    add-int/lit8 v3, v12, 0x1

    move v12, v3

    goto :goto_0

    .line 566
    :cond_8
    if-nez v10, :cond_9

    const/4 v3, 0x0

    :goto_5
    return-object v3

    :cond_9
    new-instance v3, Lcom/google/android/exoplayer2/h/d;

    invoke-direct {v3, v10, v8}, Lcom/google/android/exoplayer2/h/d;-><init>(Lcom/google/android/exoplayer2/f/h;I)V

    goto :goto_5

    :cond_a
    move v3, v4

    move v5, v8

    move v4, v6

    move-object v6, v10

    goto :goto_4
.end method

.method private static a(Lcom/google/android/exoplayer2/f/i;[[ILjava/lang/String;)Lcom/google/android/exoplayer2/h/f;
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 589
    move v8, v6

    move v1, v6

    move v3, v6

    move-object v5, v9

    .line 592
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/f/i;->a:I

    if-ge v8, v0, :cond_5

    .line 7051
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/i;->b:[Lcom/google/android/exoplayer2/f/h;

    aget-object v4, v0, v8

    .line 594
    aget-object v10, p1, v8

    move v2, v6

    .line 595
    :goto_1
    iget v0, v4, Lcom/google/android/exoplayer2/f/h;->a:I

    if-ge v2, v0, :cond_4

    .line 596
    aget v0, v10, v2

    invoke-static {v0}, Lcom/google/android/exoplayer2/h/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7060
    iget-object v0, v4, Lcom/google/android/exoplayer2/f/h;->b:[Lcom/google/android/exoplayer2/Format;

    aget-object v11, v0, v2

    .line 598
    iget v0, v11, Lcom/google/android/exoplayer2/Format;->v:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    move v0, v7

    .line 600
    :goto_2
    invoke-static {v11, p2}, Lcom/google/android/exoplayer2/h/c;->a(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 601
    if-eqz v0, :cond_1

    .line 602
    const/4 v0, 0x4

    .line 611
    :goto_3
    if-le v0, v1, :cond_7

    move v1, v2

    move-object v3, v4

    .line 595
    :goto_4
    add-int/lit8 v2, v2, 0x1

    move-object v5, v3

    move v3, v1

    move v1, v0

    goto :goto_1

    :cond_0
    move v0, v6

    .line 598
    goto :goto_2

    .line 604
    :cond_1
    const/4 v0, 0x3

    goto :goto_3

    .line 606
    :cond_2
    if-eqz v0, :cond_3

    .line 607
    const/4 v0, 0x2

    goto :goto_3

    :cond_3
    move v0, v7

    .line 609
    goto :goto_3

    .line 592
    :cond_4
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 619
    :cond_5
    if-nez v5, :cond_6

    :goto_5
    return-object v9

    :cond_6
    new-instance v9, Lcom/google/android/exoplayer2/h/d;

    invoke-direct {v9, v5, v3}, Lcom/google/android/exoplayer2/h/d;-><init>(Lcom/google/android/exoplayer2/f/h;I)V

    goto :goto_5

    :cond_7
    move v0, v1

    move v1, v3

    move-object v3, v5

    goto :goto_4
.end method

.method private static a(Lcom/google/android/exoplayer2/f/i;[[ILjava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/h/f;
    .locals 11

    .prologue
    .line 627
    const/4 v5, 0x0

    .line 628
    const/4 v3, 0x0

    .line 629
    const/4 v1, 0x0

    .line 630
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/f/i;->a:I

    if-ge v7, v0, :cond_9

    .line 8051
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/i;->b:[Lcom/google/android/exoplayer2/f/h;

    aget-object v4, v0, v7

    .line 632
    aget-object v8, p1, v7

    .line 633
    const/4 v2, 0x0

    :goto_1
    iget v0, v4, Lcom/google/android/exoplayer2/f/h;->a:I

    if-ge v2, v0, :cond_8

    .line 634
    aget v0, v8, v2

    invoke-static {v0}, Lcom/google/android/exoplayer2/h/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 8060
    iget-object v0, v4, Lcom/google/android/exoplayer2/f/h;->b:[Lcom/google/android/exoplayer2/Format;

    aget-object v9, v0, v2

    .line 636
    iget v0, v9, Lcom/google/android/exoplayer2/Format;->v:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 637
    :goto_2
    iget v6, v9, Lcom/google/android/exoplayer2/Format;->v:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    .line 639
    :goto_3
    invoke-static {v9, p2}, Lcom/google/android/exoplayer2/h/c;->a(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 640
    if-eqz v0, :cond_2

    .line 641
    const/4 v0, 0x6

    .line 661
    :goto_4
    if-le v0, v1, :cond_b

    move v1, v2

    move-object v3, v4

    .line 633
    :goto_5
    add-int/lit8 v2, v2, 0x1

    move-object v5, v3

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 636
    :cond_0
    const/4 v0, 0x0

    goto :goto_2

    .line 637
    :cond_1
    const/4 v6, 0x0

    goto :goto_3

    .line 642
    :cond_2
    if-nez v6, :cond_3

    .line 646
    const/4 v0, 0x5

    goto :goto_4

    .line 648
    :cond_3
    const/4 v0, 0x4

    goto :goto_4

    .line 650
    :cond_4
    if-eqz v0, :cond_5

    .line 651
    const/4 v0, 0x3

    goto :goto_4

    .line 652
    :cond_5
    if-eqz v6, :cond_7

    .line 653
    invoke-static {v9, p3}, Lcom/google/android/exoplayer2/h/c;->a(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 654
    const/4 v0, 0x2

    goto :goto_4

    .line 656
    :cond_6
    const/4 v0, 0x1

    goto :goto_4

    .line 659
    :cond_7
    const/4 v0, 0x0

    goto :goto_4

    .line 630
    :cond_8
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 669
    :cond_9
    if-nez v5, :cond_a

    const/4 v0, 0x0

    :goto_6
    return-object v0

    :cond_a
    new-instance v0, Lcom/google/android/exoplayer2/h/d;

    invoke-direct {v0, v5, v3}, Lcom/google/android/exoplayer2/h/d;-><init>(Lcom/google/android/exoplayer2/f/h;I)V

    goto :goto_6

    :cond_b
    move v0, v1

    move v1, v3

    move-object v3, v5

    goto :goto_5
.end method

.method private static a(Lcom/google/android/exoplayer2/f/h;IIZ)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/f/h;",
            "IIZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 714
    new-instance v4, Ljava/util/ArrayList;

    iget v0, p0, Lcom/google/android/exoplayer2/f/h;->a:I

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 715
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/f/h;->a:I

    if-ge v0, v1, :cond_0

    .line 716
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 719
    :cond_0
    const v0, 0x7fffffff

    if-eq p1, v0, :cond_1

    const v0, 0x7fffffff

    if-ne p2, v0, :cond_2

    :cond_1
    move-object v0, v4

    .line 755
    :goto_1
    return-object v0

    .line 724
    :cond_2
    const v1, 0x7fffffff

    .line 725
    const/4 v0, 0x0

    :goto_2
    iget v2, p0, Lcom/google/android/exoplayer2/f/h;->a:I

    if-ge v0, v2, :cond_7

    .line 10060
    iget-object v2, p0, Lcom/google/android/exoplayer2/f/h;->b:[Lcom/google/android/exoplayer2/Format;

    aget-object v6, v2, v0

    .line 730
    iget v2, v6, Lcom/google/android/exoplayer2/Format;->i:I

    if-lez v2, :cond_3

    iget v2, v6, Lcom/google/android/exoplayer2/Format;->j:I

    if-lez v2, :cond_3

    .line 731
    iget v7, v6, Lcom/google/android/exoplayer2/Format;->i:I

    iget v8, v6, Lcom/google/android/exoplayer2/Format;->j:I

    .line 10764
    if-eqz p3, :cond_b

    if-le v7, v8, :cond_4

    const/4 v2, 0x1

    move v3, v2

    :goto_3
    if-le p1, p2, :cond_5

    const/4 v2, 0x1

    :goto_4
    if-eq v3, v2, :cond_b

    move v3, p1

    move v5, p2

    .line 10771
    :goto_5
    mul-int v2, v7, v3

    mul-int v9, v8, v5

    if-lt v2, v9, :cond_6

    .line 10773
    new-instance v2, Landroid/graphics/Point;

    mul-int v3, v5, v8

    invoke-static {v3, v7}, Lcom/google/android/exoplayer2/j/r;->a(II)I

    move-result v3

    invoke-direct {v2, v5, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 733
    :goto_6
    iget v3, v6, Lcom/google/android/exoplayer2/Format;->i:I

    iget v5, v6, Lcom/google/android/exoplayer2/Format;->j:I

    mul-int/2addr v3, v5

    .line 734
    iget v5, v6, Lcom/google/android/exoplayer2/Format;->i:I

    iget v7, v2, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    const v8, 0x3f7ae148    # 0.98f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    if-lt v5, v7, :cond_3

    iget v5, v6, Lcom/google/android/exoplayer2/Format;->j:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    const v6, 0x3f7ae148    # 0.98f

    mul-float/2addr v2, v6

    float-to-int v2, v2

    if-lt v5, v2, :cond_3

    if-ge v3, v1, :cond_3

    move v1, v3

    .line 725
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 10764
    :cond_4
    const/4 v2, 0x0

    move v3, v2

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    .line 10776
    :cond_6
    new-instance v2, Landroid/graphics/Point;

    mul-int v5, v3, v7

    invoke-static {v5, v8}, Lcom/google/android/exoplayer2/j/r;->a(II)I

    move-result v5

    invoke-direct {v2, v5, v3}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_6

    .line 745
    :cond_7
    const v0, 0x7fffffff

    if-eq v1, v0, :cond_a

    .line 746
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_7
    if-ltz v2, :cond_a

    .line 747
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 11060
    iget-object v3, p0, Lcom/google/android/exoplayer2/f/h;->b:[Lcom/google/android/exoplayer2/Format;

    aget-object v0, v3, v0

    .line 748
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format;->a()I

    move-result v0

    .line 749
    const/4 v3, -0x1

    if-eq v0, v3, :cond_8

    if-le v0, v1, :cond_9

    .line 750
    :cond_8
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 746
    :cond_9
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_7

    :cond_a
    move-object v0, v4

    .line 755
    goto/16 :goto_1

    :cond_b
    move v3, p2

    move v5, p1

    goto :goto_5
.end method

.method private static a(I)Z
    .locals 2

    .prologue
    .line 701
    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 706
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/j/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IIII)Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 523
    invoke-static {p2}, Lcom/google/android/exoplayer2/h/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    and-int v0, p2, p3

    if-eqz v0, :cond_3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    .line 524
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/j/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->i:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/Format;->i:I

    if-gt v0, p4, :cond_3

    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->j:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/exoplayer2/Format;->j:I

    if-gt v0, p5, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    .line 523
    goto :goto_0
.end method

.method private static b(Lcom/google/android/exoplayer2/f/h;[IILjava/lang/String;IILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/f/h;",
            "[II",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 512
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    :goto_0
    if-ltz v6, :cond_1

    .line 513
    invoke-interface {p6, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5060
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/h;->b:[Lcom/google/android/exoplayer2/Format;

    aget-object v0, v0, v1

    .line 514
    aget v2, p1, v1

    move-object v1, p3

    move v3, p2

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/h/c;->a(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    invoke-interface {p6, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 512
    :cond_0
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_0

    .line 519
    :cond_1
    return-void
.end method


# virtual methods
.method protected final a([Lcom/google/android/exoplayer2/m;[Lcom/google/android/exoplayer2/f/i;[[[I)[Lcom/google/android/exoplayer2/h/f;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d;
        }
    .end annotation

    .prologue
    .line 380
    move-object/from16 v0, p1

    array-length v1, v0

    new-array v0, v1, [Lcom/google/android/exoplayer2/h/f;

    move-object/from16 v19, v0

    .line 381
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/h/c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/google/android/exoplayer2/h/c$a;

    .line 382
    const/4 v1, 0x0

    move v12, v1

    :goto_0
    move-object/from16 v0, p1

    array-length v1, v0

    if-ge v12, v1, :cond_a

    .line 383
    aget-object v1, p1, v12

    invoke-interface {v1}, Lcom/google/android/exoplayer2/m;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 402
    aget-object v1, p2, v12

    aget-object v2, p3, v12

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/h/c;->a(Lcom/google/android/exoplayer2/f/i;[[I)Lcom/google/android/exoplayer2/h/f;

    move-result-object v1

    aput-object v1, v19, v12

    .line 382
    :goto_1
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto :goto_0

    .line 385
    :pswitch_0
    aget-object v2, p1, v12

    aget-object v20, p2, v12

    aget-object v21, p3, v12

    iget v5, v11, Lcom/google/android/exoplayer2/h/c$a;->e:I

    iget v6, v11, Lcom/google/android/exoplayer2/h/c$a;->f:I

    iget-boolean v3, v11, Lcom/google/android/exoplayer2/h/c$a;->d:Z

    iget-boolean v4, v11, Lcom/google/android/exoplayer2/h/c$a;->c:Z

    iget v0, v11, Lcom/google/android/exoplayer2/h/c$a;->h:I

    move/from16 v22, v0

    iget v8, v11, Lcom/google/android/exoplayer2/h/c$a;->i:I

    iget-boolean v9, v11, Lcom/google/android/exoplayer2/h/c$a;->j:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/h/c;->d:Lcom/google/android/exoplayer2/h/f$a;

    move-object/from16 v23, v0

    iget-boolean v10, v11, Lcom/google/android/exoplayer2/h/c$a;->g:Z

    .line 1418
    const/4 v1, 0x0

    .line 1419
    if-eqz v23, :cond_0

    .line 1437
    if-eqz v3, :cond_2

    const/16 v3, 0xc

    .line 1440
    :goto_2
    if-eqz v4, :cond_3

    .line 1441
    invoke-interface {v2}, Lcom/google/android/exoplayer2/m;->l()I

    move-result v1

    and-int/2addr v1, v3

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    move v13, v1

    .line 1442
    :goto_3
    const/4 v1, 0x0

    move v14, v1

    :goto_4
    move-object/from16 v0, v20

    iget v1, v0, Lcom/google/android/exoplayer2/f/i;->a:I

    if-ge v14, v1, :cond_9

    .line 2051
    move-object/from16 v0, v20

    iget-object v1, v0, Lcom/google/android/exoplayer2/f/i;->b:[Lcom/google/android/exoplayer2/f/h;

    aget-object v1, v1, v14

    .line 1444
    aget-object v2, v21, v14

    .line 2457
    iget v4, v1, Lcom/google/android/exoplayer2/f/h;->a:I

    const/4 v7, 0x2

    if-ge v4, v7, :cond_4

    .line 2458
    sget-object v2, Lcom/google/android/exoplayer2/h/c;->c:[I

    .line 1447
    :goto_5
    array-length v4, v2

    if-lez v4, :cond_8

    .line 1448
    move-object/from16 v0, v23

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/h/f$a;->a(Lcom/google/android/exoplayer2/f/h;[I)Lcom/google/android/exoplayer2/h/f;

    move-result-object v1

    .line 1425
    :cond_0
    :goto_6
    if-nez v1, :cond_1

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    move/from16 v7, v22

    .line 1426
    invoke-static/range {v3 .. v10}, Lcom/google/android/exoplayer2/h/c;->a(Lcom/google/android/exoplayer2/f/i;[[IIIIIZZ)Lcom/google/android/exoplayer2/h/f;

    move-result-object v1

    .line 385
    :cond_1
    aput-object v1, v19, v12

    goto :goto_1

    .line 1437
    :cond_2
    const/16 v3, 0x8

    goto :goto_2

    .line 1441
    :cond_3
    const/4 v1, 0x0

    move v13, v1

    goto :goto_3

    .line 2461
    :cond_4
    move/from16 v0, v22

    invoke-static {v1, v0, v8, v9}, Lcom/google/android/exoplayer2/h/c;->a(Lcom/google/android/exoplayer2/f/h;IIZ)Ljava/util/List;

    move-result-object v7

    .line 2463
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    const/4 v15, 0x2

    if-ge v4, v15, :cond_5

    .line 2464
    sget-object v2, Lcom/google/android/exoplayer2/h/c;->c:[I

    goto :goto_5

    .line 2467
    :cond_5
    const/16 v17, 0x0

    .line 2468
    if-nez v13, :cond_c

    .line 2470
    new-instance v24, Ljava/util/HashSet;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashSet;-><init>()V

    .line 2471
    const/16 v16, 0x0

    .line 2472
    const/4 v4, 0x0

    move/from16 v18, v4

    :goto_7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_6

    .line 2473
    move/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3060
    iget-object v15, v1, Lcom/google/android/exoplayer2/f/h;->b:[Lcom/google/android/exoplayer2/Format;

    aget-object v4, v15, v4

    .line 2474
    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    .line 2475
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b

    .line 2476
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2477
    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/h/c;->a(Lcom/google/android/exoplayer2/f/h;[IILjava/lang/String;IILjava/util/List;)I

    move-result v15

    .line 2480
    move/from16 v0, v16

    if-le v15, v0, :cond_b

    move/from16 v25, v15

    move-object v15, v4

    move/from16 v4, v25

    .line 2472
    :goto_8
    add-int/lit8 v16, v18, 0x1

    move/from16 v18, v16

    move-object/from16 v17, v15

    move/from16 v16, v4

    goto :goto_7

    :cond_6
    move-object/from16 v4, v17

    .line 2489
    :goto_9
    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/h/c;->b(Lcom/google/android/exoplayer2/f/h;[IILjava/lang/String;IILjava/util/List;)V

    .line 2492
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x2

    if-ge v2, v4, :cond_7

    sget-object v2, Lcom/google/android/exoplayer2/h/c;->c:[I

    goto/16 :goto_5

    :cond_7
    invoke-static {v7}, Lcom/google/android/exoplayer2/j/r;->a(Ljava/util/List;)[I

    move-result-object v2

    goto/16 :goto_5

    .line 1442
    :cond_8
    add-int/lit8 v1, v14, 0x1

    move v14, v1

    goto/16 :goto_4

    .line 1451
    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_6

    .line 393
    :pswitch_1
    aget-object v1, p2, v12

    aget-object v2, p3, v12

    iget-object v3, v11, Lcom/google/android/exoplayer2/h/c$a;->a:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/h/c;->a(Lcom/google/android/exoplayer2/f/i;[[ILjava/lang/String;)Lcom/google/android/exoplayer2/h/f;

    move-result-object v1

    aput-object v1, v19, v12

    goto/16 :goto_1

    .line 397
    :pswitch_2
    aget-object v1, p2, v12

    aget-object v2, p3, v12

    iget-object v3, v11, Lcom/google/android/exoplayer2/h/c$a;->b:Ljava/lang/String;

    iget-object v4, v11, Lcom/google/android/exoplayer2/h/c$a;->a:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/exoplayer2/h/c;->a(Lcom/google/android/exoplayer2/f/i;[[ILjava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/h/f;

    move-result-object v1

    aput-object v1, v19, v12

    goto/16 :goto_1

    .line 407
    :cond_a
    return-object v19

    :cond_b
    move/from16 v4, v16

    move-object/from16 v15, v17

    goto :goto_8

    :cond_c
    move-object/from16 v4, v17

    goto :goto_9

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
