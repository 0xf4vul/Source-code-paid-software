.class final Lcom/google/android/exoplayer2/c/f/p$b;
.super Lcom/google/android/exoplayer2/c/f/p$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/c/f/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/c/f/g;

.field private final b:Lcom/google/android/exoplayer2/c/n;

.field private final c:Lcom/google/android/exoplayer2/j/j;

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:Z

.field private l:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/c/f/g;Lcom/google/android/exoplayer2/c/n;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 565
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/c/f/p$d;-><init>(B)V

    .line 566
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/f/p$b;->a:Lcom/google/android/exoplayer2/c/f/g;

    .line 567
    iput-object p2, p0, Lcom/google/android/exoplayer2/c/f/p$b;->b:Lcom/google/android/exoplayer2/c/n;

    .line 568
    new-instance v0, Lcom/google/android/exoplayer2/j/j;

    const/16 v1, 0xa

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j/j;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/p$b;->c:Lcom/google/android/exoplayer2/j/j;

    .line 569
    iput v2, p0, Lcom/google/android/exoplayer2/c/f/p$b;->d:I

    .line 570
    return-void
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 648
    iput p1, p0, Lcom/google/android/exoplayer2/c/f/p$b;->d:I

    .line 649
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/c/f/p$b;->e:I

    .line 650
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/j/k;[BI)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 662
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v1

    iget v2, p0, Lcom/google/android/exoplayer2/c/f/p$b;->e:I

    sub-int v2, p3, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 663
    if-gtz v1, :cond_1

    .line 671
    :cond_0
    :goto_0
    return v0

    .line 665
    :cond_1
    if-nez p2, :cond_2

    .line 666
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 670
    :goto_1
    iget v2, p0, Lcom/google/android/exoplayer2/c/f/p$b;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/c/f/p$b;->e:I

    .line 671
    iget v1, p0, Lcom/google/android/exoplayer2/c/f/p$b;->e:I

    if-eq v1, p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 668
    :cond_2
    iget v2, p0, Lcom/google/android/exoplayer2/c/f/p$b;->e:I

    invoke-virtual {p1, p2, v2, v1}, Lcom/google/android/exoplayer2/j/k;->a([BII)V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 574
    iput v0, p0, Lcom/google/android/exoplayer2/c/f/p$b;->d:I

    .line 575
    iput v0, p0, Lcom/google/android/exoplayer2/c/f/p$b;->e:I

    .line 576
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/p$b;->h:Z

    .line 577
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/p$b;->a:Lcom/google/android/exoplayer2/c/f/g;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c/f/g;->a()V

    .line 578
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/j/k;ZLcom/google/android/exoplayer2/c/h;)V
    .locals 6

    .prologue
    .line 583
    if-eqz p2, :cond_0

    .line 584
    iget v0, p0, Lcom/google/android/exoplayer2/c/f/p$b;->d:I

    packed-switch v0, :pswitch_data_0

    .line 604
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/c/f/p$b;->a(I)V

    .line 607
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v0

    if-lez v0, :cond_9

    .line 608
    iget v0, p0, Lcom/google/android/exoplayer2/c/f/p$b;->d:I

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 610
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    goto :goto_1

    .line 590
    :pswitch_2
    const-string/jumbo v0, "TsExtractor"

    const-string/jumbo v1, "Unexpected start indicator reading extended header"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 597
    :pswitch_3
    iget v0, p0, Lcom/google/android/exoplayer2/c/f/p$b;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 598
    const-string/jumbo v0, "TsExtractor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unexpected start indicator: expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/android/exoplayer2/c/f/p$b;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " more bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/p$b;->a:Lcom/google/android/exoplayer2/c/f/g;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c/f/g;->b()V

    goto :goto_0

    .line 613
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/p$b;->c:Lcom/google/android/exoplayer2/j/j;

    iget-object v0, v0, Lcom/google/android/exoplayer2/j/j;->a:[B

    const/16 v1, 0x9

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/c/f/p$b;->a(Lcom/google/android/exoplayer2/j/k;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1677
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/p$b;->c:Lcom/google/android/exoplayer2/j/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/j/j;->a(I)V

    .line 1678
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/p$b;->c:Lcom/google/android/exoplayer2/j/j;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/j/j;->c(I)I

    move-result v0

    .line 1679
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 1680
    const-string/jumbo v1, "TsExtractor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unexpected start code prefix: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/c/f/p$b;->j:I

    .line 1682
    const/4 v0, 0x0

    .line 614
    :goto_2
    if-eqz v0, :cond_4

    const/4 v0, 0x2

    :goto_3
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/c/f/p$b;->a(I)V

    goto/16 :goto_1

    .line 1685
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/p$b;->c:Lcom/google/android/exoplayer2/j/j;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/j/j;->b(I)V

    .line 1686
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/p$b;->c:Lcom/google/android/exoplayer2/j/j;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/j/j;->c(I)I

    move-result v0

    .line 1687
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/p$b;->c:Lcom/google/android/exoplayer2/j/j;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/j/j;->b(I)V

    .line 1688
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/p$b;->c:Lcom/google/android/exoplayer2/j/j;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/j/j;->a()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/c/f/p$b;->k:Z

    .line 1689
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/p$b;->c:Lcom/google/android/exoplayer2/j/j;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/j/j;->b(I)V

    .line 1690
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/p$b;->c:Lcom/google/android/exoplayer2/j/j;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/j/j;->a()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/c/f/p$b;->f:Z

    .line 1691
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/p$b;->c:Lcom/google/android/exoplayer2/j/j;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/j/j;->a()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/c/f/p$b;->g:Z

    .line 1694
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/p$b;->c:Lcom/google/android/exoplayer2/j/j;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/j/j;->b(I)V

    .line 1695
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/p$b;->c:Lcom/google/android/exoplayer2/j/j;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/j/j;->c(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/c/f/p$b;->i:I

    .line 1697
    if-nez v0, :cond_3

    .line 1698
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/c/f/p$b;->j:I

    .line 1703
    :goto_4
    const/4 v0, 0x1

    goto :goto_2

    .line 1700
    :cond_3
    add-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, -0x9

    iget v1, p0, Lcom/google/android/exoplayer2/c/f/p$b;->i:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/c/f/p$b;->j:I

    goto :goto_4

    .line 614
    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 618
    :pswitch_5
    const/16 v0, 0xa

    iget v1, p0, Lcom/google/android/exoplayer2/c/f/p$b;->i:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 620
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/p$b;->c:Lcom/google/android/exoplayer2/j/j;

    iget-object v1, v1, Lcom/google/android/exoplayer2/j/j;->a:[B

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/exoplayer2/c/f/p$b;->a(Lcom/google/android/exoplayer2/j/k;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/exoplayer2/c/f/p$b;->i:I

    .line 621
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/c/f/p$b;->a(Lcom/google/android/exoplayer2/j/k;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1707
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/p$b;->c:Lcom/google/android/exoplayer2/j/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/j/j;->a(I)V

    .line 1708
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/f/p$b;->l:J

    .line 1709
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/p$b;->f:Z

    if-eqz v0, :cond_6

    .line 1710
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/p$b;->c:Lcom/google/android/exoplayer2/j/j;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/j/j;->b(I)V

    .line 1711
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/p$b;->c:Lcom/google/android/exoplayer2/j/j;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/j/j;->c(I)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x1e

    shl-long/2addr v0, v2

    .line 1712
    iget-object v2, p0, Lcom/google/android/exoplayer2/c/f/p$b;->c:Lcom/google/android/exoplayer2/j/j;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/j/j;->b(I)V

    .line 1713
    iget-object v2, p0, Lcom/google/android/exoplayer2/c/f/p$b;->c:Lcom/google/android/exoplayer2/j/j;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/j/j;->c(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0xf

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 1714
    iget-object v2, p0, Lcom/google/android/exoplayer2/c/f/p$b;->c:Lcom/google/android/exoplayer2/j/j;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/j/j;->b(I)V

    .line 1715
    iget-object v2, p0, Lcom/google/android/exoplayer2/c/f/p$b;->c:Lcom/google/android/exoplayer2/j/j;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/j/j;->c(I)I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 1716
    iget-object v2, p0, Lcom/google/android/exoplayer2/c/f/p$b;->c:Lcom/google/android/exoplayer2/j/j;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/j/j;->b(I)V

    .line 1717
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/c/f/p$b;->h:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/c/f/p$b;->g:Z

    if-eqz v2, :cond_5

    .line 1718
    iget-object v2, p0, Lcom/google/android/exoplayer2/c/f/p$b;->c:Lcom/google/android/exoplayer2/j/j;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/j/j;->b(I)V

    .line 1719
    iget-object v2, p0, Lcom/google/android/exoplayer2/c/f/p$b;->c:Lcom/google/android/exoplayer2/j/j;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/j/j;->c(I)I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x1e

    shl-long/2addr v2, v4

    .line 1720
    iget-object v4, p0, Lcom/google/android/exoplayer2/c/f/p$b;->c:Lcom/google/android/exoplayer2/j/j;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/j/j;->b(I)V

    .line 1721
    iget-object v4, p0, Lcom/google/android/exoplayer2/c/f/p$b;->c:Lcom/google/android/exoplayer2/j/j;

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/j/j;->c(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0xf

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 1722
    iget-object v4, p0, Lcom/google/android/exoplayer2/c/f/p$b;->c:Lcom/google/android/exoplayer2/j/j;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/j/j;->b(I)V

    .line 1723
    iget-object v4, p0, Lcom/google/android/exoplayer2/c/f/p$b;->c:Lcom/google/android/exoplayer2/j/j;

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/j/j;->c(I)I

    move-result v4

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 1724
    iget-object v4, p0, Lcom/google/android/exoplayer2/c/f/p$b;->c:Lcom/google/android/exoplayer2/j/j;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/j/j;->b(I)V

    .line 1730
    iget-object v4, p0, Lcom/google/android/exoplayer2/c/f/p$b;->b:Lcom/google/android/exoplayer2/c/n;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/exoplayer2/c/n;->a(J)J

    .line 1731
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/c/f/p$b;->h:Z

    .line 1733
    :cond_5
    iget-object v2, p0, Lcom/google/android/exoplayer2/c/f/p$b;->b:Lcom/google/android/exoplayer2/c/n;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/c/n;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/f/p$b;->l:J

    .line 623
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/p$b;->a:Lcom/google/android/exoplayer2/c/f/g;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/f/p$b;->l:J

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/c/f/p$b;->k:Z

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/exoplayer2/c/f/g;->a(JZ)V

    .line 624
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/c/f/p$b;->a(I)V

    goto/16 :goto_1

    .line 628
    :pswitch_6
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v0

    .line 629
    iget v1, p0, Lcom/google/android/exoplayer2/c/f/p$b;->j:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_8

    const/4 v1, 0x0

    .line 630
    :goto_5
    if-lez v1, :cond_7

    .line 631
    sub-int/2addr v0, v1

    .line 2126
    iget v1, p1, Lcom/google/android/exoplayer2/j/k;->b:I

    .line 632
    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/j/k;->b(I)V

    .line 634
    :cond_7
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/p$b;->a:Lcom/google/android/exoplayer2/c/f/g;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/c/f/g;->a(Lcom/google/android/exoplayer2/j/k;)V

    .line 635
    iget v1, p0, Lcom/google/android/exoplayer2/c/f/p$b;->j:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 636
    iget v1, p0, Lcom/google/android/exoplayer2/c/f/p$b;->j:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/google/android/exoplayer2/c/f/p$b;->j:I

    .line 637
    iget v0, p0, Lcom/google/android/exoplayer2/c/f/p$b;->j:I

    if-nez v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/p$b;->a:Lcom/google/android/exoplayer2/c/f/g;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c/f/g;->b()V

    .line 639
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/c/f/p$b;->a(I)V

    goto/16 :goto_1

    .line 629
    :cond_8
    iget v1, p0, Lcom/google/android/exoplayer2/c/f/p$b;->j:I

    sub-int v1, v0, v1

    goto :goto_5

    .line 645
    :cond_9
    return-void

    .line 584
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 608
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
