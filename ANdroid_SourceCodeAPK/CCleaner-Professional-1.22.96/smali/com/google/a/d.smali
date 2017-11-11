.class public final Lcom/google/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private b:I

.field private c:I

.field private d:I

.field private final e:Ljava/io/InputStream;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/a/d;->h:I

    .line 555
    const/16 v0, 0x40

    iput v0, p0, Lcom/google/a/d;->j:I

    .line 558
    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/google/a/d;->k:I

    .line 573
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/a/d;->a:[B

    .line 574
    iput v1, p0, Lcom/google/a/d;->b:I

    .line 575
    iput v1, p0, Lcom/google/a/d;->d:I

    .line 576
    iput v1, p0, Lcom/google/a/d;->g:I

    .line 577
    iput-object p1, p0, Lcom/google/a/d;->e:Ljava/io/InputStream;

    .line 578
    return-void
.end method

.method private constructor <init>([BI)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/a/d;->h:I

    .line 555
    const/16 v0, 0x40

    iput v0, p0, Lcom/google/a/d;->j:I

    .line 558
    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/google/a/d;->k:I

    .line 565
    iput-object p1, p0, Lcom/google/a/d;->a:[B

    .line 566
    add-int/lit8 v0, p2, 0x0

    iput v0, p0, Lcom/google/a/d;->b:I

    .line 567
    iput v1, p0, Lcom/google/a/d;->d:I

    .line 568
    iput v1, p0, Lcom/google/a/d;->g:I

    .line 569
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/d;->e:Ljava/io/InputStream;

    .line 570
    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/google/a/d;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/google/a/d;

    invoke-direct {v0, p0}, Lcom/google/a/d;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static a([BI)Lcom/google/a/d;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/google/a/d;

    invoke-direct {v0, p0, p1}, Lcom/google/a/d;-><init>([BI)V

    .line 77
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/a/d;->c(I)I
    :try_end_0
    .catch Lcom/google/a/i; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 86
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 720
    iget v0, p0, Lcom/google/a/d;->d:I

    iget v3, p0, Lcom/google/a/d;->b:I

    if-ge v0, v3, :cond_0

    .line 721
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "refillBuffer() called when buffer wasn\'t empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 725
    :cond_0
    iget v0, p0, Lcom/google/a/d;->g:I

    iget v3, p0, Lcom/google/a/d;->b:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/google/a/d;->h:I

    if-ne v0, v3, :cond_2

    .line 727
    if-eqz p1, :cond_1

    .line 728
    invoke-static {}, Lcom/google/a/i;->a()Lcom/google/a/i;

    move-result-object v0

    throw v0

    :cond_1
    move v0, v2

    .line 757
    :goto_0
    return v0

    .line 734
    :cond_2
    iget v0, p0, Lcom/google/a/d;->g:I

    iget v3, p0, Lcom/google/a/d;->b:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/a/d;->g:I

    .line 736
    iput v2, p0, Lcom/google/a/d;->d:I

    .line 737
    iget-object v0, p0, Lcom/google/a/d;->e:Ljava/io/InputStream;

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/google/a/d;->b:I

    .line 738
    iget v0, p0, Lcom/google/a/d;->b:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/a/d;->b:I

    if-ge v0, v1, :cond_5

    .line 739
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "InputStream#read(byte[]) returned invalid result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/a/d;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nThe InputStream implementation is buggy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 737
    :cond_4
    iget-object v0, p0, Lcom/google/a/d;->e:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/google/a/d;->a:[B

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_1

    .line 743
    :cond_5
    iget v0, p0, Lcom/google/a/d;->b:I

    if-ne v0, v1, :cond_7

    .line 744
    iput v2, p0, Lcom/google/a/d;->b:I

    .line 745
    if-eqz p1, :cond_6

    .line 746
    invoke-static {}, Lcom/google/a/i;->a()Lcom/google/a/i;

    move-result-object v0

    throw v0

    :cond_6
    move v0, v2

    .line 748
    goto :goto_0

    .line 751
    :cond_7
    invoke-direct {p0}, Lcom/google/a/d;->i()V

    .line 752
    iget v0, p0, Lcom/google/a/d;->g:I

    iget v1, p0, Lcom/google/a/d;->b:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/a/d;->c:I

    add-int/2addr v0, v1

    .line 754
    iget v1, p0, Lcom/google/a/d;->k:I

    if-gt v0, v1, :cond_8

    if-gez v0, :cond_9

    .line 755
    :cond_8
    invoke-static {}, Lcom/google/a/i;->h()Lcom/google/a/i;

    move-result-object v0

    throw v0

    .line 757
    :cond_9
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private e(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 888
    if-gez p1, :cond_0

    .line 889
    invoke-static {}, Lcom/google/a/i;->b()Lcom/google/a/i;

    move-result-object v0

    throw v0

    .line 892
    :cond_0
    iget v0, p0, Lcom/google/a/d;->g:I

    iget v1, p0, Lcom/google/a/d;->d:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/a/d;->h:I

    if-le v0, v1, :cond_1

    .line 894
    iget v0, p0, Lcom/google/a/d;->h:I

    iget v1, p0, Lcom/google/a/d;->g:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/a/d;->d:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/a/d;->e(I)V

    .line 896
    invoke-static {}, Lcom/google/a/i;->a()Lcom/google/a/i;

    move-result-object v0

    throw v0

    .line 899
    :cond_1
    iget v0, p0, Lcom/google/a/d;->b:I

    iget v1, p0, Lcom/google/a/d;->d:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    .line 901
    iget v0, p0, Lcom/google/a/d;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/a/d;->d:I

    .line 919
    :goto_0
    return-void

    .line 904
    :cond_2
    iget v0, p0, Lcom/google/a/d;->b:I

    iget v1, p0, Lcom/google/a/d;->d:I

    sub-int/2addr v0, v1

    .line 905
    iget v1, p0, Lcom/google/a/d;->b:I

    iput v1, p0, Lcom/google/a/d;->d:I

    .line 910
    invoke-direct {p0, v3}, Lcom/google/a/d;->a(Z)Z

    .line 911
    :goto_1
    sub-int v1, p1, v0

    iget v2, p0, Lcom/google/a/d;->b:I

    if-le v1, v2, :cond_3

    .line 912
    iget v1, p0, Lcom/google/a/d;->b:I

    add-int/2addr v0, v1

    .line 913
    iget v1, p0, Lcom/google/a/d;->b:I

    iput v1, p0, Lcom/google/a/d;->d:I

    .line 914
    invoke-direct {p0, v3}, Lcom/google/a/d;->a(Z)Z

    goto :goto_1

    .line 917
    :cond_3
    sub-int v0, p1, v0

    iput v0, p0, Lcom/google/a/d;->d:I

    goto :goto_0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 661
    iget v0, p0, Lcom/google/a/d;->b:I

    iget v1, p0, Lcom/google/a/d;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/a/d;->b:I

    .line 662
    iget v0, p0, Lcom/google/a/d;->g:I

    iget v1, p0, Lcom/google/a/d;->b:I

    add-int/2addr v0, v1

    .line 663
    iget v1, p0, Lcom/google/a/d;->h:I

    if-le v0, v1, :cond_0

    .line 665
    iget v1, p0, Lcom/google/a/d;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/a/d;->c:I

    .line 666
    iget v0, p0, Lcom/google/a/d;->b:I

    iget v1, p0, Lcom/google/a/d;->c:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/a/d;->b:I

    .line 670
    :goto_0
    return-void

    .line 668
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/d;->c:I

    goto :goto_0
.end method

.method private j()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 768
    iget v0, p0, Lcom/google/a/d;->d:I

    iget v1, p0, Lcom/google/a/d;->b:I

    if-ne v0, v1, :cond_0

    .line 769
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/a/d;->a(Z)Z

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/google/a/d;->a:[B

    iget v1, p0, Lcom/google/a/d;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/a/d;->d:I

    aget-byte v0, v0, v1

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 99
    .line 1701
    iget v1, p0, Lcom/google/a/d;->d:I

    iget v2, p0, Lcom/google/a/d;->b:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/google/a/d;->a(Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 99
    :goto_0
    if-eqz v1, :cond_1

    .line 100
    iput v0, p0, Lcom/google/a/d;->f:I

    .line 110
    :goto_1
    return v0

    :cond_0
    move v1, v0

    .line 1701
    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/google/a/d;->f()I

    move-result v0

    iput v0, p0, Lcom/google/a/d;->f:I

    .line 105
    iget v0, p0, Lcom/google/a/d;->f:I

    invoke-static {v0}, Lcom/google/a/r;->b(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 108
    invoke-static {}, Lcom/google/a/i;->d()Lcom/google/a/i;

    move-result-object v0

    throw v0

    .line 110
    :cond_2
    iget v0, p0, Lcom/google/a/d;->f:I

    goto :goto_1
.end method

.method public final a(Lcom/google/a/n;Lcom/google/a/f;)Lcom/google/a/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/a/l;",
            ">(",
            "Lcom/google/a/n",
            "<TT;>;",
            "Lcom/google/a/f;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/google/a/d;->f()I

    move-result v0

    .line 304
    iget v1, p0, Lcom/google/a/d;->i:I

    iget v2, p0, Lcom/google/a/d;->j:I

    if-lt v1, v2, :cond_0

    .line 305
    invoke-static {}, Lcom/google/a/i;->g()Lcom/google/a/i;

    move-result-object v0

    throw v0

    .line 307
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/a/d;->c(I)I

    move-result v1

    .line 308
    iget v0, p0, Lcom/google/a/d;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/d;->i:I

    .line 309
    invoke-interface {p1, p0, p2}, Lcom/google/a/n;->a(Lcom/google/a/d;Lcom/google/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/l;

    .line 310
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/a/d;->a(I)V

    .line 311
    iget v2, p0, Lcom/google/a/d;->i:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/a/d;->i:I

    .line 312
    invoke-virtual {p0, v1}, Lcom/google/a/d;->d(I)V

    .line 313
    return-object v0
.end method

.method public final a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/i;
        }
    .end annotation

    .prologue
    .line 123
    iget v0, p0, Lcom/google/a/d;->f:I

    if-eq v0, p1, :cond_0

    .line 124
    invoke-static {}, Lcom/google/a/i;->e()Lcom/google/a/i;

    move-result-object v0

    throw v0

    .line 126
    :cond_0
    return-void
.end method

.method public final b()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/google/a/d;->f()I

    move-result v0

    return v0
.end method

.method public final b(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 135
    invoke-static {p1}, Lcom/google/a/r;->a(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 157
    invoke-static {}, Lcom/google/a/i;->f()Lcom/google/a/i;

    move-result-object v0

    throw v0

    .line 2198
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/a/d;->f()I

    .line 155
    :goto_0
    return v0

    .line 2486
    :pswitch_1
    invoke-direct {p0}, Lcom/google/a/d;->j()B

    .line 2487
    invoke-direct {p0}, Lcom/google/a/d;->j()B

    .line 2488
    invoke-direct {p0}, Lcom/google/a/d;->j()B

    .line 2489
    invoke-direct {p0}, Lcom/google/a/d;->j()B

    .line 2490
    invoke-direct {p0}, Lcom/google/a/d;->j()B

    .line 2491
    invoke-direct {p0}, Lcom/google/a/d;->j()B

    .line 2492
    invoke-direct {p0}, Lcom/google/a/d;->j()B

    .line 2493
    invoke-direct {p0}, Lcom/google/a/d;->j()B

    goto :goto_0

    .line 143
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/a/d;->f()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/a/d;->e(I)V

    goto :goto_0

    .line 3167
    :cond_0
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/a/d;->a()I

    move-result v1

    .line 3168
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/a/d;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    :cond_1
    invoke-static {p1}, Lcom/google/a/r;->b(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/a/r;->a(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/a/d;->a(I)V

    goto :goto_0

    .line 152
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 3474
    :pswitch_5
    invoke-direct {p0}, Lcom/google/a/d;->j()B

    .line 3475
    invoke-direct {p0}, Lcom/google/a/d;->j()B

    .line 3476
    invoke-direct {p0}, Lcom/google/a/d;->j()B

    .line 3477
    invoke-direct {p0}, Lcom/google/a/d;->j()B

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final c(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/i;
        }
    .end annotation

    .prologue
    .line 645
    if-gez p1, :cond_0

    .line 646
    invoke-static {}, Lcom/google/a/i;->b()Lcom/google/a/i;

    move-result-object v0

    throw v0

    .line 648
    :cond_0
    iget v0, p0, Lcom/google/a/d;->g:I

    iget v1, p0, Lcom/google/a/d;->d:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 649
    iget v1, p0, Lcom/google/a/d;->h:I

    .line 650
    if-le v0, v1, :cond_1

    .line 651
    invoke-static {}, Lcom/google/a/i;->a()Lcom/google/a/i;

    move-result-object v0

    throw v0

    .line 653
    :cond_1
    iput v0, p0, Lcom/google/a/d;->h:I

    .line 655
    invoke-direct {p0}, Lcom/google/a/d;->i()V

    .line 657
    return v1
.end method

.method public final c()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/google/a/d;->f()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Lcom/google/a/c;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x1000

    const/4 v6, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 318
    invoke-virtual {p0}, Lcom/google/a/d;->f()I

    move-result v5

    .line 319
    if-nez v5, :cond_0

    .line 320
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    .line 329
    :goto_0
    return-object v0

    .line 321
    :cond_0
    iget v0, p0, Lcom/google/a/d;->b:I

    iget v2, p0, Lcom/google/a/d;->d:I

    sub-int/2addr v0, v2

    if-gt v5, v0, :cond_1

    if-lez v5, :cond_1

    .line 324
    iget-object v0, p0, Lcom/google/a/d;->a:[B

    iget v1, p0, Lcom/google/a/d;->d:I

    invoke-static {v0, v1, v5}, Lcom/google/a/c;->a([BII)Lcom/google/a/c;

    move-result-object v0

    .line 325
    iget v1, p0, Lcom/google/a/d;->d:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/google/a/d;->d:I

    goto :goto_0

    .line 3781
    :cond_1
    if-gez v5, :cond_2

    .line 3782
    invoke-static {}, Lcom/google/a/i;->b()Lcom/google/a/i;

    move-result-object v0

    throw v0

    .line 3785
    :cond_2
    iget v0, p0, Lcom/google/a/d;->g:I

    iget v2, p0, Lcom/google/a/d;->d:I

    add-int/2addr v0, v2

    add-int/2addr v0, v5

    iget v2, p0, Lcom/google/a/d;->h:I

    if-le v0, v2, :cond_3

    .line 3787
    iget v0, p0, Lcom/google/a/d;->h:I

    iget v1, p0, Lcom/google/a/d;->g:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/a/d;->d:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/a/d;->e(I)V

    .line 3789
    invoke-static {}, Lcom/google/a/i;->a()Lcom/google/a/i;

    move-result-object v0

    throw v0

    .line 3792
    :cond_3
    iget v0, p0, Lcom/google/a/d;->b:I

    iget v2, p0, Lcom/google/a/d;->d:I

    sub-int/2addr v0, v2

    if-gt v5, v0, :cond_4

    .line 3794
    new-array v0, v5, [B

    .line 3795
    iget-object v2, p0, Lcom/google/a/d;->a:[B

    iget v3, p0, Lcom/google/a/d;->d:I

    invoke-static {v2, v3, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3796
    iget v1, p0, Lcom/google/a/d;->d:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/google/a/d;->d:I

    .line 329
    :goto_1
    invoke-static {v0}, Lcom/google/a/c;->a([B)Lcom/google/a/c;

    move-result-object v0

    goto :goto_0

    .line 3798
    :cond_4
    if-ge v5, v11, :cond_6

    .line 3803
    new-array v2, v5, [B

    .line 3804
    iget v0, p0, Lcom/google/a/d;->b:I

    iget v3, p0, Lcom/google/a/d;->d:I

    sub-int/2addr v0, v3

    .line 3805
    iget-object v3, p0, Lcom/google/a/d;->a:[B

    iget v4, p0, Lcom/google/a/d;->d:I

    invoke-static {v3, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3806
    iget v3, p0, Lcom/google/a/d;->b:I

    iput v3, p0, Lcom/google/a/d;->d:I

    .line 3811
    invoke-direct {p0, v6}, Lcom/google/a/d;->a(Z)Z

    .line 3813
    :goto_2
    sub-int v3, v5, v0

    iget v4, p0, Lcom/google/a/d;->b:I

    if-le v3, v4, :cond_5

    .line 3814
    iget-object v3, p0, Lcom/google/a/d;->a:[B

    iget v4, p0, Lcom/google/a/d;->b:I

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3815
    iget v3, p0, Lcom/google/a/d;->b:I

    add-int/2addr v0, v3

    .line 3816
    iget v3, p0, Lcom/google/a/d;->b:I

    iput v3, p0, Lcom/google/a/d;->d:I

    .line 3817
    invoke-direct {p0, v6}, Lcom/google/a/d;->a(Z)Z

    goto :goto_2

    .line 3820
    :cond_5
    iget-object v3, p0, Lcom/google/a/d;->a:[B

    sub-int v4, v5, v0

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3821
    sub-int v0, v5, v0

    iput v0, p0, Lcom/google/a/d;->d:I

    move-object v0, v2

    .line 3823
    goto :goto_1

    .line 3835
    :cond_6
    iget v6, p0, Lcom/google/a/d;->d:I

    .line 3836
    iget v7, p0, Lcom/google/a/d;->b:I

    .line 3839
    iget v0, p0, Lcom/google/a/d;->g:I

    iget v2, p0, Lcom/google/a/d;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/a/d;->g:I

    .line 3840
    iput v1, p0, Lcom/google/a/d;->d:I

    .line 3841
    iput v1, p0, Lcom/google/a/d;->b:I

    .line 3844
    sub-int v0, v7, v6

    sub-int v0, v5, v0

    .line 3845
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v4, v0

    .line 3847
    :goto_3
    if-lez v4, :cond_a

    .line 3848
    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v9, v0, [B

    move v0, v1

    .line 3850
    :goto_4
    array-length v2, v9

    if-ge v0, v2, :cond_9

    .line 3851
    iget-object v2, p0, Lcom/google/a/d;->e:Ljava/io/InputStream;

    if-nez v2, :cond_7

    move v2, v3

    .line 3853
    :goto_5
    if-ne v2, v3, :cond_8

    .line 3854
    invoke-static {}, Lcom/google/a/i;->a()Lcom/google/a/i;

    move-result-object v0

    throw v0

    .line 3851
    :cond_7
    iget-object v2, p0, Lcom/google/a/d;->e:Ljava/io/InputStream;

    array-length v10, v9

    sub-int/2addr v10, v0

    invoke-virtual {v2, v9, v0, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    goto :goto_5

    .line 3856
    :cond_8
    iget v10, p0, Lcom/google/a/d;->g:I

    add-int/2addr v10, v2

    iput v10, p0, Lcom/google/a/d;->g:I

    .line 3857
    add-int/2addr v0, v2

    .line 3858
    goto :goto_4

    .line 3859
    :cond_9
    array-length v0, v9

    sub-int v0, v4, v0

    .line 3860
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v0

    .line 3861
    goto :goto_3

    .line 3864
    :cond_a
    new-array v3, v5, [B

    .line 3867
    sub-int v0, v7, v6

    .line 3868
    iget-object v2, p0, Lcom/google/a/d;->a:[B

    invoke-static {v2, v6, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3871
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 3872
    array-length v5, v0

    invoke-static {v0, v1, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3873
    array-length v0, v0

    add-int/2addr v0, v2

    move v2, v0

    .line 3874
    goto :goto_6

    :cond_b
    move-object v0, v3

    .line 3877
    goto/16 :goto_1
.end method

.method public final d(I)V
    .locals 0

    .prologue
    .line 678
    iput p1, p0, Lcom/google/a/d;->h:I

    .line 679
    invoke-direct {p0}, Lcom/google/a/d;->i()V

    .line 680
    return-void
.end method

.method public final e()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/google/a/d;->f()I

    move-result v0

    .line 4515
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    xor-int/2addr v0, v1

    .line 358
    return v0
.end method

.method public final f()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/google/a/d;->j()B

    move-result v0

    .line 374
    if-ltz v0, :cond_1

    .line 403
    :cond_0
    :goto_0
    return v0

    .line 377
    :cond_1
    and-int/lit8 v0, v0, 0x7f

    .line 378
    invoke-direct {p0}, Lcom/google/a/d;->j()B

    move-result v1

    if-ltz v1, :cond_2

    .line 379
    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_0

    .line 381
    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 382
    invoke-direct {p0}, Lcom/google/a/d;->j()B

    move-result v1

    if-ltz v1, :cond_3

    .line 383
    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_0

    .line 385
    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    .line 386
    invoke-direct {p0}, Lcom/google/a/d;->j()B

    move-result v1

    if-ltz v1, :cond_4

    .line 387
    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_0

    .line 389
    :cond_4
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    .line 390
    invoke-direct {p0}, Lcom/google/a/d;->j()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    .line 391
    if-gez v1, :cond_0

    .line 393
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    .line 394
    invoke-direct {p0}, Lcom/google/a/d;->j()B

    move-result v2

    if-gez v2, :cond_0

    .line 393
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 398
    :cond_5
    invoke-static {}, Lcom/google/a/i;->c()Lcom/google/a/i;

    move-result-object v0

    throw v0
.end method

.method public final g()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    const/4 v2, 0x0

    .line 460
    const-wide/16 v0, 0x0

    .line 461
    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 462
    invoke-direct {p0}, Lcom/google/a/d;->j()B

    move-result v3

    .line 463
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 464
    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    .line 465
    return-wide v0

    .line 467
    :cond_0
    add-int/lit8 v2, v2, 0x7

    .line 468
    goto :goto_0

    .line 469
    :cond_1
    invoke-static {}, Lcom/google/a/i;->c()Lcom/google/a/i;

    move-result-object v0

    throw v0
.end method

.method public final h()I
    .locals 2

    .prologue
    .line 687
    iget v0, p0, Lcom/google/a/d;->h:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 688
    const/4 v0, -0x1

    .line 692
    :goto_0
    return v0

    .line 691
    :cond_0
    iget v0, p0, Lcom/google/a/d;->g:I

    iget v1, p0, Lcom/google/a/d;->d:I

    add-int/2addr v0, v1

    .line 692
    iget v1, p0, Lcom/google/a/d;->h:I

    sub-int v0, v1, v0

    goto :goto_0
.end method
